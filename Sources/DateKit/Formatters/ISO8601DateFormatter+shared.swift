



public extension ISO8601DateFormatter {
    private static let _shared = ISO8601DateFormatter()
    
    static let defaultOptions: Options = {
        let opt1 = Options.withInternetDateTime
        let opt2 = Options.withDashSeparatorInDate
        let opt3 = Options.withColonSeparatorInTime
        let opt4 = Options.withColonSeparatorInTimeZone
        return opt1.union(opt2).union(opt3).union(opt4)
    }()
    
    //MARK: shared formatters
    
    /* by default creates a fmtr object set to the GMT time zone and preconfigured with the RFC 3339 standard format ("yyyy-MM-dd'T'HH:mm:ssXXXXX") using the following options:
     NSISO8601DateFormatWithInternetDateTime | NSISO8601DateFormatWithDashSeparatorInDate | NSISO8601DateFormatWithColonSeparatorInTime | NSISO8601DateFormatWithColonSeparatorInTimeZone
     */
    /// Return a shared fmtr wth set parameters
    /// - Parameters:
    ///   - options: if not given - user / system region is used
    ///   - timeZone: if not given - user / system region is used
    static func shared(options: Options = defaultOptions,
                       _ timeZone: TimeZone = Date.defaultTimeZone) -> ISO8601DateFormatter {
        
        let fmtr = _shared
        //threadSingleton { ISO8601DateFormatter() }
        
        fmtr.timeZone = timeZone
        fmtr.formatOptions = options
        
        return fmtr
    }
}

