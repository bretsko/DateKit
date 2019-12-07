


public extension DateFormatter {
    private static let _shared = DateFormatter()
    
    
    /// Return a shared fmtr wth set parameters
    /// - Parameters:
    ///   - calendar: if not given - user / system region is used
    ///   - locale: if not given - user / system region is used
    ///   - timeZone: if not given - user / system region is used
    ///   - format: optional format used to set the `dateFormat` property.
    static func shared(format: Str,
                       calendar: Calendar = Date.defaultCalendar,
                       _ lid: LIDP = Date.defaultLID) -> DateFormatter {
                
        let fmtr = _shared 
        fmtr.calendar = calendar
        fmtr.lid = LID(lid)
        fmtr.dateFormat = format
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
