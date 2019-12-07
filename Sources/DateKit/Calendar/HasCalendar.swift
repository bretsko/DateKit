



public protocol HasCalendar { //: HasLID, HasTimeZone
    
    var calendar: Calendar {get}
}
public extension HasCalendar {
    
    // conv gettters
    var timeZone: TimeZone {
        calendar.timeZone
    }
    var lid: LID? {
        calendar.lid
    }
    
    ///  Returns number of days in the month for a specified date
    func daysInMonth(for date: Date) -> Int {
        calendar.numDaysInMonth(for: date)
    }
    
    //MARK: comps
    
    /// Returns the difference between two dates, using default calendar
    ///
    /// - parameter cmps: Which components to compare.
    func diffComps(_ cmps: Set<CalendarComp> = Date.allCalendarComps,
                   from start: Date,
                   to end: Date) -> DateComps {
        calendar.diffComps(cmps, from: start, to: end)
    }
    
    /// Returns the difference between two dates, using default calendar
    ///
    /// - parameter cmps: Which components to compare.
    func diffComps(_ cmps: [CalendarComp],
                   from start: Date,
                   to end: Date) -> DateComps {
        diffComps(Set(cmps), from: start, to: end)
    }
    
    /// Returns all the specified components of a date, using default calendar and time zone.
    ///
    /// - note: If you want "date information in a given time zone" in order to display it, you should use `DateFormatter` to format the date.
    /// - parameter date: The `Date` to use.
    func comps(_ cmps: Set<CalendarComp>,
               from date: Date) -> DateComps {
        calendar.comps(cmps, from: date)
    }
    
    /// Returns all the specified components of a date, using default calendar and time zone.
    ///
    /// - note: If you want "date information in a given time zone" in order to display it, you should use `DateFormatter` to format the date.
    func comps(_ cmps: [CalendarComp],
               from date: Date) -> DateComps {
        calendar.comps(Set(cmps), from: date)
    }
}
