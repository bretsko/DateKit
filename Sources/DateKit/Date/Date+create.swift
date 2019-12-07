



public extension Date {
    
    /**
     Returns the interval between the date object and 00:00:00 UTC on 1 January 2001.
     
     This property's value is negative if the date object is earlier than the system's absolute reference date (00:00:00 UTC on 1 January 2001).
     */
    var secondsSinceReferenceDate: TimeInterval {
        timeIntervalSinceReferenceDate
    }
    
    /**
     Returns the interval between the receiver and another given date.
     
     - Parameter another: The date with which to compare the receiver.
     
     - Returns: The interval between the receiver and the `another` parameter. If the receiver is earlier than `anotherDate`, the return value is negative. If `anotherDate` is `nil`, the results are undefined.
     */
    func seconds(since date: Date) -> TimeInterval {
        timeIntervalSince(date)
    }
    
    /**
     The time interval between the date and the current date and time.
     
     If the date is earlier than the current date and time, this property's value is negative.
     */
    var secondsSinceNow: TimeInterval {
        timeIntervalSinceNow
    }
    
    /**
     The interval between the date object and 00:00:00 UTC on 1 January 1970.
     
     This property's value is negative if the date object is earlier than 00:00:00 UTC on 1 January 1970.
     */
    var secondsSince1970: TimeInterval {
        timeIntervalSince1970
    }
    
    
    //MARK: - start of comp
    
    /**
     *  Return a date set to the start of a given component.
     *
     *  - parameter component: The date component (second, minute, hour, day, month, or year)
     *
     *  - returns: A date retaining the value of the given component and all larger components, with all smaller components set to their minimum
     */
    func resetting(toStartOf comp: CalendarComp) -> Date {
        
        var newDate = self
        
        switch comp {
        case .second:
            //newDate.second = 0 // nanosecond?
            break
            
        case .minute:
            newDate.second = 0
            
        case .hour:
            newDate.second = 0
            newDate.minute = 0
            
        case .day:
            newDate.second = 0
            newDate.minute = 0
            newDate.hour = 0
            
        case .month:
            newDate.second = 0
            newDate.minute = 0
            newDate.hour = 0
            newDate.day = 1
            
        case .year:
            newDate.second = 0
            newDate.minute = 0
            newDate.hour = 0
            newDate.day = 1
            newDate.month = 1
        default:
            break
        }
        return newDate
    }
    
    //???
    /// Returns a new Date that is initialized at the start of a specified unit of time.
    ///
    /// - Returns: instance at the beginning of the time unit; nil if fails.
    //    func dateAtStart / resetting(toStartOf comp: CalendarComp) -> Date? {
    //
    //        //TODO: improve
    //        #if os(Linux)
    //        guard let result = (calendar as NSCalendar).range(of: unit.nsCalendarUnit, for: date) else {
    //            return nil
    //        }
    //        return result.start
    //        #else
    //        var start: NSDate?
    //        var interval: TimeInterval = 0
    //        guard (calendar as NSCalendar).range(of: comp.nsCalendarUnit, start: &start, interval: &interval, for: date),
    //            let startDate = start else {
    //                return nil
    //        }
    //        return startDate as Date
    //        #endif
    //    }
    
    
    //MARK: - end of comp
    
    /**
     *  Return a date set to the end of a given component.
     *
     *  - parameter component: The date component (second, minute, hour, day, month, or year)
     *
     *  - returns: A date retaining the value of the given component and all larger components, with all smaller components set to their maximum
     */
    func resetting(toEndOf comp: CalendarComp) -> Date {
        
        var newDate = self
        switch comp {
        case .second:
            newDate.second += 1
            newDate -= 0.001
            
        case .minute:
            newDate.second = 60
            newDate -= 0.001
            
        case .hour:
            newDate.second = 60
            newDate -= 0.001
            newDate.minute = 59
            
        case .day:
            newDate.second = 60
            newDate -= 0.001
            newDate.minute = 59
            newDate.hour = 23
            
        case .month:
            newDate.second = 60
            newDate -= 0.001
            newDate.minute = 59
            newDate.hour = 23
            newDate.day = newDate.daysInMonth()
            
        case .year:
            newDate.second = 60
            newDate -= 0.001
            newDate.minute = 59
            newDate.hour = 23
            newDate.month = 12
            newDate.day = 31
        default:
            break
        }
        return newDate
    }
    
    
    //TODO:
    /// Return a new Date that is initialized at the start of the specified comps executed in order.
    ///
    /// - Parameter units: sequence of transformations as time unit comps
    /// - Returns: new date at the beginning of the passed comps, intermediate results if fails.
    //    func resetting(toStartOf units: [CalendarComp]) -> Date? {
    //        return units.reduce(self) { (curDate, curUnit) -> Date in
    //            return curDate.resetting(toStartOf: curUnit)
    //        }
    //    }
    
    //??
    /// Returns a new Date that is initialized at the end of a specified unit of time.
    //    func dateAtEndOf / resetting(toEndOf comp: CalendarComp) -> Date? {
    //
    //        //TODO: improve
    //
    //        // RangeOfUnit returns the start of the next unit; we will subtract one thousandth of a second
    //        #if os(Linux)
    //        guard let result = (calendar as NSCalendar).range(of: unit.nsCalendarUnit, for: date) else {
    //            return nil
    //        }
    //        let startOfNextUnit = result.start.adding(result.duration)
    //        let endOfThisUnit = Date(timeInterval: -0.001, since: startOfNextUnit)
    //        return endOfThisUnit
    //        #else
    //        var start: NSDate?
    //        var interval: TimeInterval = 0
    //        guard (self.calendar as NSCalendar).range(of: comp.nsCalendarUnit, start: &start, interval: &interval, for: date),
    //            let startDate = start else {
    //                return nil
    //        }
    //        let startOfNextUnit = startDate.addingTimeInterval(interval)
    //        let endOfThisUnit = Date(timeInterval: -0.001, since: startOfNextUnit as Date)
    //        return endOfThisUnit
    //        #endif
    //    }
    
    /// Return a new Date that is initialized at the end of the specified comps
    /// executed in order.
    ///
    /// - Parameter units: sequence of transformations as time unit comps
    /// - Returns: new date at the end of the passed comps, intermediate results if fails.
    func resetting(toEndOf comps: [CalendarComp]) -> Date? {
        comps.reduce(self) { (currentDate, currentComp) -> Date in
            currentDate.resetting(toEndOf: currentComp)
        }
    }
}

