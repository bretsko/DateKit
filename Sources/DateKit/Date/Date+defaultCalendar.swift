



public extension Date {
    
    /// this default calendar is used by all convenient parsing/init operations which require calendar
    static var defaultCalendar: Calendar = .autoupdatingCurrent
}
extension Date: HasCalendar {
    public var calendar: Calendar {
        Self.defaultCalendar
    }
}

public extension Date {
    
    static var defaultTimeZone: TimeZone {
        get {
            defaultCalendar.timeZone
        }
        set {
            defaultCalendar.timeZone = newValue
        }
    }
    
    /// Returns locale of the defaultCalendar, or Locale.current if it's nil
    static var defaultLID: LID {
        get {
            defaultCalendar.locale?.lid ?? .current
        }
        set {
            defaultCalendar.locale = newValue.locale
        }
    }
}
