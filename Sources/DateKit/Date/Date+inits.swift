

public extension Date {
    
    /// uses provided calendar to try make date a date
    init?(_ comps: DateComps,
          _ calendar: Calendar) {
        
        if let date = calendar.date(from: comps) {
            self = date
        } else {
            return nil
        }
    }
    
    /// uses provided components and calendar to try make a date
    init?(year: Int? = nil,
          month: Int? = nil,
          day: Int? = nil,
          hour: Int? = nil,
          minute: Int? = nil,
          second: Int? = nil,
          nanosecond: Int? = nil,
          _ calendar: Calendar = Date.defaultCalendar,
          _ timeZone: TimeZone? = nil) {
        
        let comps = DateComps(calendar: calendar,
                              timeZone: timeZone,
                              era: nil,
                              year: year,
                              month: month,
                              day: day,
                              hour: hour,
                              minute: minute,
                              second: second,
                              nanosecond: nanosecond,
                              weekday: nil,
                              weekdayOrdinal: nil,
                              quarter: nil,
                              weekOfMonth: nil,
                              weekOfYear: nil,
                              yearForWeekOfYear: nil)
        
        self.init(comps, calendar)
    }
    
    //MARK: conv inits
    
    /// Returns a `Date` initialized relative to the current date and time by a given number of seconds.
    init(secondsSinceNow secs: TimeInterval) {
        self.init(timeIntervalSinceNow: secs)
    }
    
    /// Returns a `Date` initialized relative to 00:00:00 UTC on 1 January 1970 by a given number of seconds.
    init(secondsSince1970 secs: TimeInterval) {
        self.init(timeIntervalSince1970: secs)
    }
    
    /// Returns a `Date` initialized relative to 00:00:00 UTC on 1 January 1970 by a given number of seconds.
    init(seconds: Double) {
        self.init(secondsSince1970: seconds)
    }
    
    /// Returns a `Date` initialized relative to 00:00:00 UTC on 1 January 1970 by a given number of seconds.
    init(seconds: Int) {
        self.init(seconds: Double(seconds))
    }
    
    /// Returns a `Date` initialized relative to 00:00:00 UTC on 1 January 1970 by a given number of milliseconds.
    init(milliseconds: Double) {
        self.init(seconds: milliseconds / 1000)
    }
    
    /**
     Returns a `Date` initialized relative to another given date by a given number of seconds.
     
     - Parameter timeInterval: The number of seconds to add to `date`. A negative value means the receiver will be earlier than `date`.
     - Parameter date: The reference date.
     */
    init(seconds: TimeInterval, since date: Date) {
        self.init(timeInterval: seconds, since: date)
    }
    
    /// Returns a `Date` initialized relative to 00:00:00 UTC on 1 January 2001 by a given number of seconds.
    init(secondsSinceReferenceDate secs: TimeInterval) {
        self.init(timeIntervalSinceReferenceDate: secs)
    }
    
    //MARK: -
    
    /// Create new date object from UNIX timestamp.
    /// - Parameter unixTimestamp: UNIX timestamp, for ex. 1484239783.922743) -> "Jan 12, 2017, 7:49 PM"
    init(unixTimestamp: Double) {
        self.init(timeIntervalSince1970: unixTimestamp)
    }
}

