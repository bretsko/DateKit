
public extension CalendarComp {
    
    /// Return a description of the calendar comp in seconds.
    /// Note: 	Values for `era`,`weekday`,`weekdayOrdinal`, `yearForWeekOfYear`, `calendar`, `timezone` are `nil`.
    /// For `weekOfYear` it return the same value of `weekOfMonth`.
    var timeInterval: Double? {
        switch self {
        case .era:
            return nil
        case .year:
            return Self.day.timeInterval! * 365.0
        case .month:
            return Self.minute.timeInterval! * 43800
        case .day:
            return 86400
        case .hour:
            return 3600
        case .minute:
            return 60
        case .second:
            return 1
        case .quarter:
            return Self.day.timeInterval! * 91.25
        case .weekOfMonth, .weekOfYear:
            return Self.day.timeInterval! * 7
        case .nanosecond:
            return 1e-9
        default:
            return nil
        }
    }
    
    var nsCalendarUnit: NSCalendar.Unit {
        switch self {
        case .era:
            return .era
        case .year:
            return .year
        case .month:
            return .month
        case .day:
            return .day
        case .hour:
            return .hour
        case .minute:
            return .minute
        case .second:
            return .second
        case .weekday:
            return .weekday
        case .weekdayOrdinal:
            return .weekdayOrdinal
        case .quarter:
            return .quarter
        case .weekOfMonth:
            return .weekOfMonth
        case .weekOfYear:
            return .weekOfYear
        case .yearForWeekOfYear:
            return .yearForWeekOfYear
        case .nanosecond:
            return .nanosecond
        case .calendar:
            return .calendar
        case .timeZone:
            return .timeZone
        @unknown default:
            fatalError("Unsupported type \(self)")
        }
    }
}


//??
//    /// Return the localized id of a calendar comp,
//    /// the plural or singular form of the time unit used to compose a valid id for search a localized string in resource bundle
//    internal func localizedKey(for value: Int) -> Str {
//
//        switch abs(value) {
//        case 0:
//            // zero difference for this unit
//            return "0\(localizedKey)"
//        case 1:
//            // one unit of difference
//            return localizedKey
//        default:
//            // more than 1 unit of difference
//            return "\(localizedKey)\(localizedKey)"
//        }
//    }
//
//    internal var localizedKey: Str {
//        switch self {
//        case .year:
//            return "y"
//        case .month:
//            return "m"
//        case .weekOfYear:
//            return "w"
//        case .day:
//            return "d"
//        case .hour:
//            return "h"
//        case .minute:
//            return "M"
//        case .second:
//            return "s"
//        default:
//            return ""
//        }
//    }
