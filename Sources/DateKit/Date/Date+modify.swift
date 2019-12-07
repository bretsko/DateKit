



public extension Date {
    
    /// - warning: This only adjusts an absolute value. If you wish to add calendrical concepts like hours, days, months then you must use a `Calendar`. That will take into account complexities like daylight saving time, months with different numbers of days, and more.
    func adding(seconds: TimeInterval) -> Date {
        addingTimeInterval(seconds)
    }
    
    /// - warning: This only adjusts an absolute value. If you wish to add calendrical concepts like hours, days, months then you must use a `Calendar`. That will take into account complexities like daylight saving time, months with different numbers of days, and more.
    func adding(milliseconds: TimeInterval) -> Date {
        addingTimeInterval(milliseconds / 1000.0)
    }
    
    /// - warning: This only adjusts an absolute value. If you wish to add calendrical concepts like hours, days, months then you must use a `Calendar`. That will take into account complexities like daylight saving time, months with different numbers of days, and more.
    mutating func add(seconds: TimeInterval) {
        addTimeInterval(seconds)
    }
    
    /// - warning: This only adjusts an absolute value. If you wish to add calendrical concepts like hours, days, months then you must use a `Calendar`. That will take into account complexities like daylight saving time, months with different numbers of days, and more.
    mutating func add(milliseconds: TimeInterval) {
        addTimeInterval(milliseconds / 1000.0)
    }
    
    
    //MARK: changing
    
    /// Create a new date by altering specified comps of the .
    /// Note: `calendar` and `timezone` are ignored.
    /// Note: some comps may alter the date cyclically (like setting both `.year` and `.yearForWeekOfYear`) and
    /// may results in a wrong evaluated date.
    ///
    /// - Parameter comps: comps to alter with their new values.
    func changing(_ comps: [CalendarComp: Int?]) -> Date? {
        var dateComps = DateComps()
        dateComps.year = comps[.year] ?? year
        dateComps.month = comps[.month] ?? month
        dateComps.day = comps[.day] ?? day
        dateComps.hour = comps[.hour] ?? hour
        dateComps.minute = comps[.minute] ?? minute
        dateComps.second = comps[.second] ?? second
        //        dateComps.nanosecond = comps[.nanosecond] ?? nanosecond
        
        // Some comps may interfer with others, so we'll set it them only if explicitly set.
        if let weekday = comps[.weekday] {
            dateComps.weekday = weekday
        }
        if let weekOfYear = comps[.weekOfYear] {
            dateComps.weekOfYear = weekOfYear
        }
        if let weekdayOrdinal = comps[.weekdayOrdinal] {
            dateComps.weekdayOrdinal = weekdayOrdinal
        }
        if let yearForWeekOfYear = comps[.yearForWeekOfYear] {
            dateComps.yearForWeekOfYear = yearForWeekOfYear
        }
        
        return calendar.date(from: dateComps)
    }
    
    /// uses default calendar
    func changing(year: Int? = nil,
                  month: Int? = nil,
                  day: Int? = nil,
                  hour: Int? = nil,
                  minute: Int? = nil,
                  second: Int? = nil,
                  nanosecond: Int? = nil) -> Date? {
        
        var comps1 = allComps
        comps1.year = year ?? self.year
        comps1.month = month ?? self.month
        comps1.day = day ?? self.day
        comps1.hour = hour ?? self.hour
        comps1.minute = minute ?? self.minute
        comps1.second = second ?? self.second
        //comps1.nanosecond = nanosecond ?? self.nanoSecond
        
        return calendar.date(from: comps1)
    }
    
    
    /// Create a new date by altering specified time comps.
    ///
    /// - Parameters:
    ///   - hour: hour to set (`nil` to leave it unaltered)
    ///   - min: min to set (`nil` to leave it unaltered)
    ///   - secs: sec to set (`nil` to leave it unaltered)
    ///   - ms: milliseconds to set (`nil` to leave it unaltered)
    func changing(hour: Int?,
                  min: Int?,
                  secs: Int?,
                  ms: Int? = nil,
                  _ options: Calendar.SearchPolicy = Calendar.SearchPolicy()) -> Date? {
        
        let newDate = calendar.date(bySettingHour: (hour ?? self.hour),
                                    minute: (min ?? self.minute),
                                    second: (secs ?? self.second),
                                    of: self,
                                    matchingPolicy: options.matchingPolicy,
                                    repeatedTimePolicy: options.repeatedTimePolicy,
                                    direction: options.direction)
        
        guard let date = newDate else { return nil }
        
        guard let ms = ms else {
            return date
        }
        var timestamp = date.secondsSince1970.rounded(.down)
        timestamp += Double(ms) / 1000.0
        return Date(secondsSince1970: timestamp)
    }
    
    //MARK: truncating
    
    func truncating(_ comp: CalendarComp) -> Date? {
        switch comp {
        case .month:
            return truncating([.month, .day, .hour, .minute, .second, .nanosecond])
        case .day:
            return truncating([.day, .hour, .minute, .second, .nanosecond])
        case .hour:
            return truncating([.hour, .minute, .second, .nanosecond])
        case .minute:
            return truncating([.minute, .second, .nanosecond])
        case .second:
            return truncating([.second, .nanosecond])
        case .nanosecond:
            return truncating([.nanosecond])
        default:
            return nil
        }
    }
    
    
    func truncating(_ comps: [CalendarComp]) -> Date? {
        var dateComps = self.dateComps
        
        for comp in comps {
            switch comp {
            case .month:
                dateComps.month = 1
            case .day:
                dateComps.day = 1
            case .hour:
                dateComps.hour = 0
            case .minute:
                dateComps.minute = 0
            case .second:
                dateComps.second = 0
            case .nanosecond:
                dateComps.nanosecond = 0
            default:
                continue
            }
        }
        return calendar.date(from: dateComps)
    }
    
    
    /// Creates a new instance by truncating the comps starting from given comps down the granurality.
    func truncatingAllComponents(startingWith comp: CalendarComp) -> Date? {
        switch comp {
        case .month:
            return truncating([.month, .day, .hour, .minute, .second, .nanosecond])
        case .day:
            return truncating([.day, .hour, .minute, .second, .nanosecond])
        case .hour:
            return truncating([.hour, .minute, .second, .nanosecond])
        case .minute:
            return truncating([.minute, .second, .nanosecond])
        case .second:
            return truncating([.second, .nanosecond])
        case .nanosecond:
            return truncating([.nanosecond])
        default:
            return nil
        }
    }
    
    
    //MARK: adding
    
    /// Offset a date by n calendar comps.
    /// Note: This operation can be functionally chained.
    func adding(_ count: Int,
                of comp: CalendarComp) -> Date? {
        var newComp = DateComps()
        switch comp {
        case .era:
            newComp = DateComps(era: count)
        case .year:
            newComp = DateComps(year: count)
        case .month:
            newComp = DateComps(month: count)
        case .day:
            newComp = DateComps(day: count)
        case .hour:
            newComp = DateComps(hour: count)
        case .minute:
            newComp = DateComps(minute: count)
        case .second:
            newComp = DateComps(second: count)
        case .weekday:
            newComp = DateComps(weekday: count)
        case .weekdayOrdinal:
            newComp = DateComps(weekdayOrdinal: count)
        case .quarter:
            newComp = DateComps(quarter: count)
        case .weekOfMonth:
            newComp = DateComps(weekOfMonth: count)
        case .weekOfYear:
            newComp = DateComps(weekOfYear: count)
        case .yearForWeekOfYear:
            newComp = DateComps(yearForWeekOfYear: count)
        case .nanosecond:
            newComp = DateComps(nanosecond: count)
        default:
            // .calendar and .timezone do nothing in this context
            break
        }
        
        return calendar.date(byAdding: newComp, to: self)
    }
    
    /// Create a new instance of the date in the same region with time shifted by given time interval.
    func adding(_ interval: TimeInterval) -> Date {
        addingTimeInterval(interval)
    }
    
    
    //    func changing(weekday: Int) -> Date? {
    //        return self - (self.weekday - weekday).days
    //    }
    
    //    func truncating(_ comps: [CalendarComp]) -> Date? {
    //        var comps1 = self.comps
    //
    //        comps.forEach { comp in
    //            switch comp {
    //            case .month:
    //                comps1.month = 1
    //            case .day:
    //                comps1.day = 1
    //            case .hour:
    //                comps1.hour = 0
    //            case .minute:
    //                comps1.minute = 0
    //            case .second:
    //                comps1.second = 0
    //            case .nanosecond:
    //                comps1.nanosecond = 0
    //            default:
    //                return
    //            }
    //        }
    //
    //        return userCal.date(from: comps1)
    //    }
    
    
    //TODO: test API, if these are not needed - remove
    //    func changing(year: Int) -> Date? {
    //         changing(year: year,
    //                        month: nil,
    //                        day: nil,
    //                        hour: nil,
    //                        minute: nil,
    //                        second: nil,
    //                        nanosecond: nil)
    //    }
    //
    //    func changing(month: Int) -> Date? {
    //         changing(year: nil,
    //                        month: month,
    //                        day: nil,
    //                        hour: nil,
    //                        minute: nil,
    //                        second: nil,
    //                        nanosecond: nil)
    //    }
    //
    //    func changing(day: Int) -> Date? {
    //         changing(year: nil,
    //                        month: nil,
    //                        day: day,
    //                        hour: nil,
    //                        minute: nil,
    //                        second: nil,
    //                        nanosecond: nil)
    //    }
    //
    //    func changing(hour: Int) -> Date? {
    //         changing(year: nil,
    //                        month: nil,
    //                        day: nil,
    //                        hour: hour,
    //                        minute: nil,
    //                        second: nil,
    //                        nanosecond: nil)
    //    }
    //
    //    func changing(minute: Int) -> Date? {
    //         changing(year: nil,
    //                        month: nil,
    //                        day: nil,
    //                        hour: nil,
    //                        minute: minute,
    //                        second: nil,
    //                        nanosecond: nil)
    //    }
    //
    //    func changing(second: Int) -> Date? {
    //         changing(year: nil,
    //                        month: nil,
    //                        day: nil,
    //                        hour: nil,
    //                        minute: nil,
    //                        second: second,
    //                        nanosecond: nil)
    //    }
    //
    //    func changing(nanosecond: Int) -> Date? {
    //         changing(year: nil,
    //                        month: nil,
    //                        day: nil,
    //                        hour: nil,
    //                        minute: nil,
    //                        second: nil,
    //                        nanosecond: nanosecond)
    //    }
}

public extension Calendar {
    
    struct SearchPolicy {
        
        /// Specifies the technique the search algorithm uses to find result
        public var matchingPolicy: Calendar.MatchingPolicy
        
        /// Specifies the behavior when multiple matches are found
        public var repeatedTimePolicy: Calendar.RepeatedTimePolicy
        
        /// Specifies the direction in time to search
        public var direction: Calendar.SearchDirection
        
        public init(matching: Calendar.MatchingPolicy = .nextTime,
                    repeatedTimePolicy: Calendar.RepeatedTimePolicy = .first,
                    _ direction: Calendar.SearchDirection = .forward) {
            self.matchingPolicy = matching
            self.repeatedTimePolicy = repeatedTimePolicy
            self.direction = direction
        }
    }
}

