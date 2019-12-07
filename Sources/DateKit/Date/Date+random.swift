

public extension Date {
    
    // MARK: - Random Date Generator
    
    /// Generate a sequence of dates in the range.
    ///
    /// - Parameters:
    ///   - count: number of dates to generate.
    ///   - region: region of the dates.
    static func randomDates(count: Int,
                            between date1: Date,
                            and date2: Date,
                            _ calendar: Calendar = Date.defaultCalendar) -> [Date] {
        
        var list: [Date] = []
        count.times {
            let date = randomDate(between: date1,
                                  and: date2, calendar)
            list.append(date)
        }
        return list
    }
    
    /// Return a date between now and a specified amount days ealier.
    ///
    /// - Parameters:
    ///   - days: days range
    static func randomDate(withinDaysBeforeToday days: Int,
                           _ calendar: Calendar = Date.defaultCalendar) -> Date {
        let interval = TimeInterval(-days * 24 * 60 * 60)
        let date = Date().addingTimeInterval(interval)
        return randomDate(between: date,
                          and: Date())
    }
    
    /// Generate a random date in given region.
    static func randomDate(_ calendar: Calendar = Date.defaultCalendar) -> Date {
        let randomTime = TimeInterval(UInt32.random(in: UInt32.min..<UInt32.max))
        return Date(secondsSince1970: randomTime)
    }
    
    /// Generate a random date between two intervals.
    ///
    /// - Parameters:
    ///   - initial: lower bound date
    ///   - final: upper bound date
    static func randomDate(between date1: Date,
                           and date2: Date,
                           _ calendar: Calendar = Date.defaultCalendar) -> Date {
        let interval = date2.seconds(since: date1)
        let randomInterval = TimeInterval(UInt32.random(in: UInt32.min..<UInt32(interval)))
        return date1.adding(randomInterval)
    }
}
