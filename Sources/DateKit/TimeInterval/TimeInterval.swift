

public extension TimeInterval {
    
    /// Extract requested time units comps from given interval.
    /// Reference date's calendar is used to make the extraction.
    ///
    /// NOTE:
    ///		Extraction is calendar/date based; if you specify a `date` calculation is made
    /// 	between the `date` and `date + interval`.
    /// 	If `date` is `nil` evaluation is made from `now()` and `now() + interval` in the context
    /// 	of the `DateRegion.defaultRegion` set.
    ///
    /// - Parameters:
    ///   - units: units to extract
    ///   - from: starting reference date, `nil` means `now()` in the context of the default region set.
    /// - Returns: dictionary with extracted comps
    func diff(_ comps: Set<CalendarComp>,
              to date: Date = Date()) -> [CalendarComp: Int] {
        
        let dateFrom = date.adding(-self)
        let comps = dateFrom.calendar.diffComps(comps, from: dateFrom, to: date)
        return comps.toCalendarComps()
    }
    
    /// Express a time interval (expressed in seconds) in another time unit you choose.
    /// Reference date's calendar is used to make the extraction.
    ///
    /// - parameter comp: time unit in which you want to express the calendar comp
    /// - parameter from: starting reference date, `nil` means `now()` in the context of the default region set.
    ///
    /// - returns: the value of interval expressed in selected `CalendarComp`
    func diff(_ comp: CalendarComp,
              to date: Date = Date()) -> Int? {
        diff([comp], to: date)[comp]
    }
    
    //MARK: conv inits
    
    init(minutes: Double) {
        self.init(minutes * 60)
    }
    init(hours: Double) {
        self.init(minutes: hours * 60)
    }
    init(days: Double) {
        self.init(hours: days * 24)
    }
    init(weeks: Double) {
        self.init(days: weeks * 7)
    }
    
    //MARK: properties
    
    var minutes: Double {
        self / 60.0
    }
    var hours: Double {
        minutes / 60.0
    }
    var days: Double {
        hours / 24.0
    }
    var weeks: Double {
        days / 7.0
    }
    
    
    //MARK: cotrs
    
    static func minutes(_ minutes: Double) -> TimeInterval {
        TimeInterval(minutes: minutes)
    }
    static func hours(_ hours: Double) -> TimeInterval {
        TimeInterval(hours: hours)
    }
    static func days(_ days: Double) -> TimeInterval {
        TimeInterval(days: days)
    }
    static func weeks(_ weeks: Double) -> TimeInterval {
        TimeInterval(weeks: weeks)
    }
}
