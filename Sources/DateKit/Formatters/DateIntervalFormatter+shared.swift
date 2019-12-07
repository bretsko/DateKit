

public extension DateIntervalFormatter {
    private static let _shared = DateIntervalFormatter()
    
    /// Return a shared fmtr to format ordinal numbers wth set locale
    static func shared(calendar: Calendar = Date.defaultCalendar,
                       _ lid: LIDP = Date.defaultLID) -> DateIntervalFormatter {
        
        let fmtr = _shared //threadSingleton { DateIntervalFormatter() }
        fmtr.calendar = calendar
        fmtr.lid = LID(lid)
        return fmtr
    }
    
    var lid: LID {
        get {
            locale.lid
        }
        set {
            locale = newValue.locale
        }
    }
}
