



public extension Date {
    
    // MARK: - Comparing Close
    
    /// Decides whether a Date is close to another one passed in parameter, where "Being close" is measured using a precision argument which is initialized a 300 seconds, or 5 minutes.
    ///
    /// - Parameters:
    ///   - precision: The precision of the comparison (default is 5 minutes, or 300 seconds).
    /// - Returns: A boolean; true if close by, false otherwise.
    func compare(to date: Date,
                 precision: TimeInterval = 300) -> Bool {
        abs(seconds(since: date)) < precision
    }
    
    // MARK: - Extendend Compare
    
    /// Compare the date with the rule specified in the `compareType` parameter.
    /// - Returns: nil if date comp is absent
    func evaluate(_ comparison: DateComparison) -> Bool? {
        
        switch comparison {
        case .isToday:
            return evaluate(.isSameDay( Date() ))
            
        case .isTomorrow:
            if let tomorrow = Date().adding(1, of: .day) {
                return evaluate(.isSameDay(tomorrow))
            }
            return nil
            
        case .isYesterday:
            if let yesterday = Date().adding(-1, of: .day) {
                return evaluate(.isSameDay(yesterday))
            }
            return nil
            
        case .isSameDay(let otherDate):
            return calendar.isDate(self, inSameDayAs: otherDate)
            
        case .isThisWeek:
            return evaluate(.isSameWeek(Date()))
            
        case .isNextWeek:
            if let nextWeek = Date().adding(1, of: .weekOfYear) {
                return evaluate(.isSameWeek(nextWeek))
            }
            return nil
            
        case .isLastWeek:
            if let lastWeek = Date().adding(-1, of: .weekOfYear) {
                return evaluate(.isSameWeek(lastWeek))
            }
            return nil
            
        case .isSameWeek(let otherDate):
            guard weekOfYear == otherDate.weekOfYear else {
                return false
            }
            // Ensure time interval is under 1 week
            return abs(self.seconds(since: otherDate)) < 1.weeks.timeInterval
            
        case .isThisMonth:
            return evaluate(.isSameMonth(Date()))
            
        case .isNextMonth:
            if let nextMonth = Date().adding(1, of: .month) {
                return evaluate(.isSameMonth(nextMonth))
            }
            return nil
            
        case .isLastMonth:
            if let lastMonth = Date().adding(-1, of: .month) {
                return evaluate(.isSameMonth(lastMonth))
            }
            return nil
        case .isSameMonth(let otherDate):
            return self.month == otherDate.month
            
        case .isThisYear:
            return evaluate(.isSameYear(Date()))
            
        case .isNextYear:
            if let nextYear = Date().adding(1, of: .year) {
                return evaluate(.isSameYear(nextYear))
            }
            return nil
            
        case .isLastYear:
            if let lastYear = Date().adding(-1, of: .year) {
                return evaluate(.isSameYear(lastYear))
            }
            return nil
            
        case .isSameYear(let otherDate):
            return self.year == otherDate.year
            
        case .isInTheFuture:
            return evaluate(.isLater(than: Date()))
            
        case .isInThePast:
            return evaluate(.isEarlier(than: Date()))
            
        case .isEarlier(let otherDate):
            return self < otherDate
            
        case .isLater(let otherDate):
            return self > otherDate
            
        case .isWeekday:
            if let r = evaluate(.isWeekend) {
                return !r
            }
            return nil
            
        case .isWeekend:
            let range = calendar.maximumRange(of: CalendarComp.weekday)!
            return weekday == range.lowerBound ||
                weekday == range.upperBound - range.lowerBound
            
        case .isInDST:
            return self.timeZone.isDaylightSavingTime(for: self)
            
        case .isMorning:
            guard let hour = hour else {
                return nil
            }
            return hour >= 5 && hour < 12
            
        case .isAfternoon:
            guard let hour = hour else {
                return nil
            }
            return hour >= 12 && hour < 17
            
        case .isEvening:
            guard let hour = hour else {
                return nil
            }
            return hour >= 17 && hour < 21
            
        case .isNight:
            guard let hour = hour else {
                return nil
            }
            return hour >= 21 || hour < 5
        }
    }
    
    /// Returns a ComparisonResult value that indicates the ordering of two given dates based on
    /// their comps down to a given unit granularity.
    ///
    /// - parameter granularity: The smallest unit that must, along with all larger units be less for the given dates
    func compare(to otherDate: Date,
                 granularity: CalendarComp) -> ComparisonResult {
        switch granularity {
        case .nanosecond:
            // There is a possible rounding error using Calendar to compare two dates below the minute granularity
            // So we've added this trick and use standard Date compare which return correct results in this case
            // https://github.com/malcommac/DateRegion/issues/346
            return compare(otherDate)
        default:
            return calendar.compare(self,
                                    to: otherDate,
                                    toGranularity: granularity)
        }
    }
    
    /// Compares whether the  is before/before equal `date` based on their comps down to a given unit granularity.
    ///
    /// - Parameters:
    ///   - granularity: smallest unit that must, along with all larger units, be less for the given dates
    func isBefore(_ otherDate: Date,
                  orEqual: Bool = false,
                  granularity: CalendarComp) -> Bool {
        let r = compare(to: otherDate, granularity: granularity)
        
        if orEqual {
            return r == .orderedSame || r == .orderedAscending
        }
        return r == .orderedAscending
    }
    
    /// Compares whether the  is after `date` based on their comps down to a given unit granularity.
    ///
    /// - Parameters:
    ///   - granularity: Smallest unit that must, along with all larger units, be greater for the given dates.
    func isAfter(_ date: Date,
                 orEqual: Bool = false,
                 granularity: CalendarComp) -> Bool {
        
        let r = compare(to: date, granularity: granularity)
        
        if orEqual {
            return r == .orderedSame || r == .orderedDescending
        }
        return r == .orderedDescending
    }
    
    /// Return true if  date is contained in the range specified by two dates.
    ///
    /// - Parameters:
    ///   - granularity: smallest unit that must, along with all larger units, be greater for the given dates.
    func isInRange(between startDate: Date,
                   and endDate: Date,
                   strictEquality: Bool = false,
                   granularity: CalendarComp = .nanosecond) -> Bool {
        
        let r1 = isAfter(startDate, orEqual: strictEquality, granularity: granularity)
        let r2 = isBefore(endDate, orEqual: strictEquality, granularity: granularity)
        return r1 && r2
    }
    
    /// Compares equality of two given dates based on their comps down to a given unit granularity.
    ///
    /// - parameter granularity: The smallest unit that must, along with all larger units, be equal for the given dates to be considered the same.
    ///
    /// - returns: `true` if the dates are the same down to the given granularity, otherwise `false`
    func isInside(_ otherDate: Date,
                  granularity: CalendarComp) -> Bool {
        compare(to: otherDate,
                granularity: granularity) == .orderedSame
    }
}

public extension Date {
    
    /// Returns the difference in the calendar comps given (like day, month and year) with respect to the other date as dictionary with the calendar comp as the key and the diffrence as a positive integer as the value
    /// If no difference returns nil
    func difference(in cmps: Set<CalendarComp>,
                    from otherDate: Date) -> [CalendarComp: Int]? {
        
        let dateComps: DateComps
        if self < otherDate {
            dateComps = diffComps(cmps,
                                  from: self,
                                  to: otherDate)
        } else {
            dateComps = diffComps(cmps,
                                  from: otherDate,
                                  to: self)
        }
        
        var diffs = [CalendarComp: Int]()
        cmps.forEach { comp in
            
            if let value = comp.getCorrespondingDateCompValue(dateComps) {
                diffs[comp] = value
            }
        }
        return diffs
    }
    
    func difference(in cmps: [CalendarComp],
                    from otherDate: Date) -> [CalendarComp: Int]? {
        difference(in: Set(cmps),
                   from: otherDate)
    }
    
    /// Returns the difference in the calendar comp given (like day, month or year) with respect to the other date as a positive integer.
    /// If no difference returns nil
    func difference(in comp: CalendarComp,
                    from otherDate: Date) -> Int? {
        difference(in: [comp],
                   from: otherDate)?.first?.value
    }
    
    /// Return elapsed time expressed in given comps since the current  and a reference date.
    ///
    /// - Parameters:
    ///   - comp: time unit to extract.
    func interval(to otherDate: Date,
                  in comp: CalendarComp) -> Int {
        
        fatalError()
        //        switch comp {
        //        case .year:
        //            let start = calendar.ordinality(of: .year,
        //                                            in: .era,
        //                                            for: self)
        //            let end = calendar.ordinality(of: .year,
        //                                          in: .era,
        //                                          for: otherDate)
        //
        //
        //            return Int(end! - start!)
        //
        //        case .month:
        //            let start = calendar.ordinality(of: .month,
        //                                            in: .era,
        //                                            for: self)
        //            let end = calendar.ordinality(of: .month,
        //                                          in: .era,
        //                                          for: otherDate)
        //            return Int(end! - start!)
        //
        //        case .day:
        //            let start = calendar.ordinality(of: .day,
        //                                            in: .era,
        //                                            for: self)
        //            let end = calendar.ordinality(of: .day,
        //                                          in: .era,
        //                                          for: otherDate)
        //
        //            return Int(end! - start!)
        //
        //        case .hour:
        //            let interval = otherDate.date.seconds(since: self)
        //            return Int(interval / 1.hours.timeInterval)
        //
        //        case .minute:
        //            let interval = otherDate.date.seconds(since: self)
        //            return Int(interval / 1.minutes.timeInterval)
        //
        //        case .second:
        //            return Int(otherDate.date.seconds(since: self))
        //
        //        case .weekday:
        //            let start = calendar.ordinality(of: .weekday,
        //                                            in: .era,
        //                                            for: self)
        //            let end = calendar.ordinality(of: .weekday,
        //                                          in: .era,
        //                                          for: otherDate)
        //            return Int(end! - start!)
        //
        //        case .weekdayOrdinal:
        //            let start = calendar.ordinality(of: .weekdayOrdinal,
        //                                            in: .era,
        //                                            for: self)
        //            let end = calendar.ordinality(of: .weekdayOrdinal,
        //                                          in: .era,
        //                                          for: otherDate)
        //            return Int(end! - start!)
        //
        //        case .weekOfYear:
        //            let end = calendar.ordinality(of: .weekOfYear,
        //                                          in: .era,
        //                                          for: otherDate)
        //            let start = calendar.ordinality(of: .weekOfYear,
        //                                            in: .era,
        //                                            for: self)
        //            return Int(end! - start!)
        //
        //        default:
        //            debugPrint("Passed comp cannot be used to extract values using interval() function between two dates. Returning 0.")
        //            return 0
        //        }
    }
}

extension CalendarComp {
    
    func getCorrespondingDateCompValue(_ comps: DateComps) -> Int? {
        switch self {
        case .era:
            return comps.era
        case .year:
            return comps.year
        case .month:
            return comps.month
        case .day:
            return comps.day
        case .hour:
            return comps.hour
        case .minute:
            return comps.minute
        case .second:
            return comps.second
        case .weekday:
            return comps.weekday
        case .weekdayOrdinal:
            return comps.weekdayOrdinal
        case .quarter:
            return comps.quarter
        case .weekOfMonth:
            return comps.weekOfMonth
        case .weekOfYear:
            return comps.weekOfYear
        case .yearForWeekOfYear:
            return comps.yearForWeekOfYear
        case .nanosecond:
            return comps.nanosecond
        case .calendar, .timeZone:
            return nil
        @unknown default:
            assert(false, "unknown date comp")
        }
        return nil
    }
}
