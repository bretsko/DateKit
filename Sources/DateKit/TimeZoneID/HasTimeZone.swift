



public protocol HasTimeZone {
    
    var timezone: TimeZone {get}
}

public extension HasTimeZone {
    
    /// The current difference in seconds between the time zone and Greenwich Mean Time.
    func secondsFromGMT(for date: Date) -> Int{
        timezone.secondsFromGMT(for: date)
    }
    
    /// Returns the abbreviation for the time zone at a given date.
    ///
    /// Note that the abbreviation may be different at different dates. For example, during daylight saving time the US/Eastern time zone has an abbreviation of "EDT." At other times, its abbreviation is "EST."
    func abbreviation(for date: Date) -> Str?{
        timezone.abbreviation(for: date)
    }
    
    /// Returns a Boolean value that indicates whether the receiver uses daylight saving time at a given date.
    func isDaylightSavingTime(for date: Date) -> Bool{
        timezone.isDaylightSavingTime(for: date)
    }
    
    /// Returns the daylight saving time offset for a given date.
    func daylightSavingTimeOffset(for date: Date) -> TimeInterval{
        timezone.daylightSavingTimeOffset(for: date)
    }
    
    /// Returns the next daylight saving time transition after a given date.
    ///
    /// - returns: The next daylight saving time transition after `date`. Depending on the time zone, this function may  a change of the time zone's offset from GMT. Returns `nil` if the time zone of the receiver does not observe daylight savings time as of `date`.
    func nextDaylightSavingTimeTransition(after date: Date) -> Date? {
        timezone.nextDaylightSavingTimeTransition(after: date)
    }
    
    /// Returns the date of the next (after the current instant) daylight saving time transition for the time zone. Depending on the time zone, the value of this property may represent a change of the time zone's offset from GMT. Returns `nil` if the time zone does not currently observe daylight saving time.
    var nextDaylightSavingTimeTransition: Date? {
        timezone.nextDaylightSavingTimeTransition
    }
    
    /// Returns the name of the receiver localized for a given locale.
    func localizedName(for style: NSTimeZone.NameStyle,
                       locale: Locale? = nil) -> Str? {
        timezone.localizedName(for: style, locale: locale)
    }
}


//MARK: -


extension TimeZone: HasIdP {}

public extension Calendar {
    var id: Calendar.Identifier {
        identifier
    }
}
