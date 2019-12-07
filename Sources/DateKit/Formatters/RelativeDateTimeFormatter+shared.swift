


public extension RelativeDateTimeFormatter {
    private static let _shared = RelativeDateTimeFormatter()

    /// RelativeDatetimeFormatter takes the most significant date component and displays it in terms of past or future tense (“1 day ago” / “in 1 day”).
    /// Return a shared formatter to format ordinal numbers wth set locale
    /// - Parameter calendar:
    /// - Parameter dateTimeStyle: when set .named - prefers localized deictic expressions — “tomorrow”, “yesterday”, “next week” — whenever one exists.
    /// - Parameter unitsStyle:
    /// full     “1 month ago”
    /// abbreviated     “1 mo. ago” *
    /// short     “1 mo. ago”
    /// spellOut     “one month ago”
    static func shared(dateTimeStyle: DateTimeStyle = .numeric,
                       unitsStyle: UnitsStyle = .full,
                       calendar: Calendar = Date.defaultCalendar,
                       _ lid: LIDP = Date.defaultLID) -> RelativeDateTimeFormatter {
        
        let formatter = _shared //threadSingleton { RelativeDateTimeFormatter() }
        formatter.dateTimeStyle = dateTimeStyle
        formatter.unitsStyle = unitsStyle
        formatter.calendar = calendar
        formatter.lid = LID(lid)
        return formatter
    }
    
    //TODO: func interfaces for
    //open var dateTimeStyle: DateTimeStyle
    //open var unitsStyle: UnitsStyle
    //open var formattingContext: Formatter.Context
    
    var lid: LID {
        get {
            locale.lid
        }
        set {
            locale = newValue.locale
        }
    }
}

//TODO: better interface -> func string  with date/comps

//Examples for Style.numeric
//formatter.localizedString(from: DateComponents(day: 1, hour: 1)) // "in 1 day"
//formatter.localizedString(from: DateComponents(day: -1)) // "1 day ago"
//formatter.localizedString(from: DateComponents(hour: 3)) // "in 3 hours"
//formatter.localizedString(from: DateComponents(minute: 60)) // "in 60 minutes"



//Examples for Style.named
//formatter.localizedString(from: DateComponents(day: -1)) // "1 day ago"
//
//formatter.dateTimeStyle = .named
//formatter.localizedString(from: DateComponents(day: -1)) // "yesterday"
//
//This just goes to show that beyond calendrical and temporal relativity, RelativeDateTimeFormatter is a real whiz at linguistic relativity, too! For example, English doesn’t have a word to describe the day before yesterday, whereas other languages, like German, do.
//
//formatter.localizedString(from: DateComponents(day: -2)) // "2 days ago"
//
//formatter.locale = Locale(identifier: "de_DE")
//formatter.localizedString(from: DateComponents(day: -2)) // "vorgestern"



//BUG
//For the most part, this seems to work really well. However, its handling of nil, zero, and net-zero values leaves something to be desired…
//
//formatter.localizedString(from: DateComponents(hour: 0)) // "in 0 hours"
//formatter.localizedString(from: DateComponents(day: 1, hour: -24)) // "in 1 day"
//formatter.localizedString(from: DateComponents()) // ""




//Formatter.Context
// standalone     “About 2 hours”
// listItem     “About 2 hours”
// beginningOfSentence     “About 2 hours”
// middleOfSentence     “about 2 hours”

// dynamic     Depends*
//* A Dynamic context changes capitalization automatically depending on where it appears in the text for locales that may position strings differently depending on the content.
