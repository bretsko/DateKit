


//HasCalendar
public extension Date {
    
    var isToday: Bool {
        calendar.isDateInToday(self)
    }
    
    var isTomorrow: Bool {
        calendar.isDateInTomorrow(self)
    }
    
    var isYesterday: Bool {
        calendar.isDateInYesterday(self)
    }
    
    var isFuture: Bool {
        self > Date()
    }
    
    var isPast: Bool {
        self < Date()
    }
    
    var isWeekend: Bool {
        calendar.isDateInWeekend(self)
    }
    
    var isWorkday: Bool {
        !calendar.isDateInWeekend(self)
    }
    
    var isThisWeek: Bool {
        calendar.isDate(self, equalTo: Date(),
                        toGranularity: .weekOfYear)
    }
    
    var isThisMonth: Bool {
        calendar.isDate(self, equalTo: Date(),
                        toGranularity: .month)
    }
    
    var isThisYear: Bool {
        calendar.isDate(self, equalTo: Date(),
                        toGranularity: .year)
    }
    
    //MARK: leap
    
    var isLeapMonth: Bool {
        //TODO: check - Library function for leap contains a bug for Gregorian calendars, implemented workaround ??
        guard calendar.id == CalendarID.gregorian,
              year > 1582 else {
            //remove .day ?
            return comps([.day, .month, .year],
                         from: self).isLeapMonth!
        }
        if let rng = calendar.range(of: .day,
                                    in: .month,
                                    for: self)  {
            return rng.upperBound - rng.lowerBound == 29
        }
        return false
    }
    
    var isLeapYear: Bool {
        //? return Year(year).isLeap
        switch calendar.id {
        //TODO: check  Library function for leap contains a bug for Gregorian calendars, implemented workaround ??
        //case CalendarID.gregorian:
        
        //            var newComps = dateComps
        //            newComps.month = 2
        //            newComps.day = 10
        //            return newComps.isLeapMonth
        
        case CalendarID.chinese:
            /// There are 12 or 13 months in each year and 29 or 30 days in each month.
            /// A 13-month year is a leap year, which meaning more than 376 days is a leap year.
            return resetting(toStartOf: .year)
                .diff(.day, to: resetting(toEndOf: .year))! > 375
            
        default:
            // For other calendars:
            return comps([.day, .month, .year],
                         from: self).isLeapMonth!
        }
    }
    
    
    //MARK: - diff
    
    /// Returns the difference between two dates, using default calendar
    ///
    /// - parameter cmps: Which components to compare.
    func diff(_ cmps: Set<CalendarComp> = Date.allCalendarComps,
              to otherDate: Date) -> DateComps {
        calendar.diffComps(cmps, from: self, to: otherDate.self)
    }
    
    /// Returns the difference between two dates, using default calendar
    ///
    /// - parameter cmps: Which components to compare.
    func diff(_ cmps: [CalendarComp],
              to otherDate: Date) -> DateComps {
        diff(Set(cmps), to: otherDate.self)
    }
    
    
    //MARK: - diffCalendarComps
    
    /// Returns the difference between two dates, using provided comps
    func diffCalendarComps(_ cmps: Set<CalendarComp> = Date.allCalendarComps,
                           to otherDate: Date) -> [CalendarComp: Int] {
        
        diff(cmps, to: otherDate).toCalendarComps()
    }
    
    /// Returns the difference between two dates, using provided comps
    func diffCalendarComps(_ cmps: [CalendarComp],
                           to otherDate: Date) -> [CalendarComp: Int] {
        diff(cmps, to: otherDate).toCalendarComps()
    }
    
    /// Returns the difference between two dates, using provided comp
    func diff(_ comp: CalendarComp,
              to otherDate: Date) -> Int? {
        diff([comp], to: otherDate).value(for: comp)
    }
    
    
    //MARK: -
    
    func isBetween(_ date1: Date,
                   and date2: Date) -> Bool {
        date2 >= date1 && (date1 ... date2).contains(self)
    }
    
    func rounded(on amount: Int,
                 _ component: CalendarComp) -> Date {
        let cal = Calendar.current
        let value = cal.component(component, from: self)
        
        // Compute nearest multiple of amount:
        let roundedValue = lrint(Double(value) / Double(amount)) * amount
        let newDate = cal.date(byAdding: component, value: roundedValue - value, to: self)!
        
        return newDate.flooringAllComponents(before: component)
    }
    
    func flooringAllComponents(before component: CalendarComp) -> Date {
        // All components to round ordered by length
        let comps = [CalendarComp.year, .month, .day, .hour, .minute, .second, .nanosecond]
        
        guard let index = comps.firstIndex(of: component) else {
            fatalError("Wrong component")
        }
        
        let cal = Calendar.current
        var date = self
        
        comps.suffix(from: index + 1).forEach { comp in
            let value = cal.component(comp, from: date) * -1
            date = cal.date(byAdding: comp, value: value, to: date)!
        }
        return date
    }
}


//MARK: - operators

public func + (left: Date, right: DateComps) -> Date? {
    Date.defaultCalendar.date(byAdding: right, to: left)
}

public func - (left: Date, right: DateComps) -> Date? {
    Date.defaultCalendar.date(byAdding: -right, to: left)
}


//public func + (lhs: Date, rhs: DateComps) -> Date {
//     lhs.calendar.date(byAdding: rhs, to: lhs)!
//}
//
//public func + (lhs: Date, rhs: DateComps) -> Date {
//     lhs.calendar.date(byAdding: rhs, to: lhs)!
//}

/// Subtracts two dates and returns the relative comps from `lhs` to `rhs`.
/// Follows this mathematical pattern:
///     let difference = lhs - rhs
///     rhs + difference = lhs
//public func - (lhs: Date, rhs: Date) -> DateComps {
//     Date.defaultCalendar.comps(DateComps.allComponentsSet, from: rhs, to: lhs)
//}


/// Adds date comps to a date and returns a new date.


///// Adds date comps to a date and returns a new date.
//public func + (lhs: DateComps, rhs: Date) -> Date {
//     rhs + lhs
//}
//
///// Subtracts date comps from a date and returns a new date.
//public func - (lhs: Date, rhs: DateComps) -> Date {
//     lhs - rhs
//}
