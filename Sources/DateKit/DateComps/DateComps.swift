
public typealias DateComps = DateComponents

public extension DateComps {
    
    init(value: Int, _ comp: CalendarComp) {
        self.init()
        setValue(value, for: comp)
    }
    
    static let allComponents: [CalendarComp] = [
        .nanosecond, .second, .minute, .hour, .day, .month, .year, .yearForWeekOfYear, .weekOfYear, .weekday, .quarter, .weekdayOrdinal, .weekOfMonth ]
    
    /// Shortcut for 'all calendar comps'.
    static var allComponentsSet: Set<CalendarComp> {
        Date.allCalendarComps
    }
    
    
    /// Return the current date plus the receive's interval
    /// The default calendar used is the `DateRegion.defaultRegion`'s calendar.
    var fromNow: Date {
        Date.defaultCalendar.date(byAdding: self,
                              to: Date())!
    }
    
    /// Returns the current date minus the receiver's interval
    /// The default calendar used is the `DateRegion.defaultRegion`'s calendar.
    var ago: Date {
        Date.defaultCalendar.date(byAdding: -self,
                              to: Date())!
    }

    /// Return `true` if all interval comps are zeroes
    var allCompsAreZero: Bool {
        DateComps.allComponents.allSatisfy {
            if let v = value(for: $0) {
                return v == 0
            }
            return true
        }
    }
    
    /// Transform a `DateComps` instance to a dictionary where key is the `CalendarComp` and value is the value associated.
    ///
    /// - returns: a new `[CalendarComp : Int]` dict representing source `DateComps` instance
    func toCalendarComps() -> [CalendarComp: Int] {
        
        var list: [CalendarComp: Int] = [:]
        DateComps.allComponents.forEach { comp in
            
            if let value = value(for: comp),
               value != Int(NSDateComponentUndefined) {
                list[comp] = value
            }
        }
        return list
    }
    
    /// Alter date comps specified into passed dictionary.
    ///
    /// - Parameter comps: comps dictionary with their values.
    mutating func setCalendarComps(_ comps: [CalendarComp: Int?]) {
        comps.forEach {
            if let v = $0.value {
                setValue(v, for: $0.key)
            }
        }
    }
    
    //MARK: -
    
    /// Express a `DateComps` instance in another time unit you choose.
    /// - returns: the value of interval expressed in selected `CalendarComp`
    func express(as comp: CalendarComp,
                 of calendar: Calendar = Date.defaultCalendar) -> Int? {
        
        let dateFrom = Date()
        let dateTo = (dateFrom + self)!
        return calendar.diffComps(Set([comp]),
                                  from: dateFrom,
                                  to: dateTo).value(for: comp)
    }
    
    /// Express a `DateComps` instance in a set of time units you choose.
    /// - Returns: a dictionary of extracted values.
    func express(as comps: Set<CalendarComp>,
                 of calendar: Calendar = Date.defaultCalendar) -> [CalendarComp: Int] {
        
        let dateFrom = Date()
        let dateTo = (dateFrom + self)!
        let extractedCmps = calendar.diffComps(comps,
                                               from: dateFrom,
                                               to: dateTo)
        return extractedCmps.toCalendarComps()
    }
    
    //MARK: operators
    
    /// Adds two NSDateComponents and returns their combined individual comps.
    static func + (lhs: DateComps, rhs: DateComps) -> DateComps {
        combine(lhs, rhs, transform: +)
    }
    
    /// Subtracts two NSDateComponents and returns the relative difference between them.
    static func - (lhs: DateComps, rhs: DateComps) -> DateComps {
        lhs + (-rhs)
    }
    
    /// Applies the `transform` to the two `T` provided, defaulting either of them if it's
    /// `nil`
    internal static func bimap<T>(_ a: T?, _ b: T?,
                                  defaultValue: T,
                                  _ transform: (T, T) -> T) -> T? {
        if a == nil && b == nil { return nil }
        return transform(a ?? defaultValue, b ?? defaultValue)
    }
    
    /// - returns: a new `NSDateComponents` that represents the negative of all values within the
    /// comps that are not `NSDateComponentUndefined`.
    static prefix func - (rhs: DateComps) -> DateComps {
        var comps = DateComps()
        comps.era = rhs.era.map(-)
        comps.year = rhs.year.map(-)
        comps.month = rhs.month.map(-)
        comps.day = rhs.day.map(-)
        comps.hour = rhs.hour.map(-)
        comps.minute = rhs.minute.map(-)
        comps.second = rhs.second.map(-)
        comps.nanosecond = rhs.nanosecond.map(-)
        comps.weekday = rhs.weekday.map(-)
        comps.weekdayOrdinal = rhs.weekdayOrdinal.map(-)
        comps.quarter = rhs.quarter.map(-)
        comps.weekOfMonth = rhs.weekOfMonth.map(-)
        comps.weekOfYear = rhs.weekOfYear.map(-)
        comps.yearForWeekOfYear = rhs.yearForWeekOfYear.map(-)
        return comps
    }
    
    /// Combines two date comps using the provided `transform` on all
    /// values within the comps that are not `NSDateComponentUndefined`.
    private static func combine(_ lhs: DateComps,
                                _ rhs: DateComps,
                                transform: (Int, Int) -> Int) -> DateComps {
        var comps = DateComps()
        comps.era = bimap(lhs.era, rhs.era, defaultValue: 0, transform)
        comps.year = bimap(lhs.year, rhs.year, defaultValue: 0, transform)
        comps.month = bimap(lhs.month, rhs.month, defaultValue: 0, transform)
        comps.day = bimap(lhs.day, rhs.day, defaultValue: 0, transform)
        comps.hour = bimap(lhs.hour, rhs.hour, defaultValue: 0, transform)
        comps.minute = bimap(lhs.minute, rhs.minute, defaultValue: 0, transform)
        comps.second = bimap(lhs.second, rhs.second, defaultValue: 0, transform)
        comps.nanosecond = bimap(lhs.nanosecond, rhs.nanosecond, defaultValue: 0, transform)
        comps.weekday = bimap(lhs.weekday, rhs.weekday, defaultValue: 0, transform)
        comps.weekdayOrdinal = bimap(lhs.weekdayOrdinal, rhs.weekdayOrdinal, defaultValue: 0, transform)
        comps.quarter = bimap(lhs.quarter, rhs.quarter, defaultValue: 0, transform)
        comps.weekOfMonth = bimap(lhs.weekOfMonth, rhs.weekOfMonth, defaultValue: 0, transform)
        comps.weekOfYear = bimap(lhs.weekOfYear, rhs.weekOfYear, defaultValue: 0, transform)
        comps.yearForWeekOfYear = bimap(lhs.yearForWeekOfYear, rhs.yearForWeekOfYear, defaultValue: 0, transform)
        return comps
    }
    
    /// Subscription support for `DateComps` instances.
    /// ie. `cmps[.day] = 5`
    ///
    /// Note: This does not take into account any built-in errors, `nil` returned instead of `nil`.
    ///
    /// - Parameter comp: comp to get
    subscript(comp: CalendarComp) -> Int? {
        switch comp {
        case .era:
            return era
        case .year:
            return year
        case .month:
            return month
        case .day:
            return day
        case .hour:
            return hour
        case .minute:
            return minute
        case .second:
            return second
        case .weekday:
            return weekday
        case .weekdayOrdinal:
            return weekdayOrdinal
        case .quarter:
            return quarter
        case .weekOfMonth:
            return weekOfMonth
        case .weekOfYear:
            return weekOfYear
        case .yearForWeekOfYear:
            return yearForWeekOfYear
        case .nanosecond:
            return nanosecond
        default:
            return nil
        // `calendar` and `timezone` are ignored in this context
        }
    }
}

//public extension DateComps {
//
//    var ago: Date? {
//         Calendar.current.date(byAdding: -self, to: Date())
//    }
//
//    var later: Date? {
//         Calendar.current.date(byAdding: self, to: Date())
//    }
//
//    /// Creates inverse `DateComps`
//    static prefix func -(rhs: DateComps) -> DateComps {
//        var dcomps = DateComps()
//
//        if let year = rhs.year {
//            dcomps.year = -year
//        }
//        if let month = rhs.month {
//            dcomps.month = -month
//        }
//        if let day = rhs.day {
//            dcomps.day = -day
//        }
//        if let hour = rhs.hour {
//            dcomps.hour = -hour
//        }
//        if let minute = rhs.minute {
//            dcomps.minute = -minute
//        }
//        if let second = rhs.second {
//            dcomps.second = -second
//        }
//        if let nanosecond = rhs.nanosecond {
//            dcomps.nanosecond = -nanosecond
//        }
//        return dcomps
//    }
//
//    /// Creates a instance calculated by the addition of `right` and `left`
//    static func + (left: DateComps, right: DateComps) -> DateComps {
//        var dcomps = left
//
//        if let year = right.year {
//            dcomps.year = (dcomps.year ?? 0) + year
//        }
//        if let month = right.month {
//            dcomps.month = (dcomps.month ?? 0) + month
//        }
//        if let day = right.day {
//            dcomps.day = (dcomps.day ?? 0) + day
//        }
//        if let hour = right.hour {
//            dcomps.hour = (dcomps.hour ?? 0) + hour
//        }
//        if let minute = right.minute {
//            dcomps.minute = (dcomps.minute ?? 0) + minute
//        }
//        if let second = right.second {
//            dcomps.second = (dcomps.second ?? 0) + second
//        }
//        if let nanosecond = right.nanosecond {
//            dcomps.nanosecond = (dcomps.nanosecond ?? 0) + nanosecond
//        }
//        return dcomps
//    }
//
//    /// Creates a instance calculated by the subtraction from `right` to `left`
//    static func - (left: DateComps, right: DateComps) -> DateComps {
//        return left + (-right)
//    }
//
//    /// Creates a `Str` instance representing the receiver formatted in given units style.
//    func string(in unitsStyle: DateComponentsFormatter.UnitsStyle) -> Str? {
//        let df = DateComponentsFormatter.shared()
//        df.unitsStyle = unitsStyle
//        df.allowedUnits = [.year, .month, .weekOfMonth, .day, .hour, .minute, .second]
//
//        return df.string(from: self)
//    }
//}


//TODO:
//public extension Array where Element == DateComps {
//
//}
//
//public extension Set where Element == DateComps  {
//
//}
