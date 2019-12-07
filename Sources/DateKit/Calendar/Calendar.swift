



public extension Calendar {
    typealias Cal = Calendar
    typealias CalId = Cal.Identifier
    
    init(_ id: Identifier) {
        self.init(identifier: id)
    }
    
    //MARK: -
    
    ///  Returns number of days in the month for a specified date
    func numDaysInMonth(for date: Date) -> Int {
        range(of: .day, in: .month, for: date)?.count ?? 0
    }
    
    /// Returns the difference between two dates.
    ///
    /// - parameter components: Which components to compare.
    func diffComps(_ cmps: Set<Calendar.Component>,
                   from start: Date,
                   to end: Date) -> DateComps {
        dateComponents(cmps, from: start, to: end)
    }
    
    /// Returns all the date components of a date, using the calendar time zone.
    ///
    /// - note: If you want "date information in a given time zone" in order to display it, you should use `DateFormatter` to format the date.
    /// - parameter date: The `Date` to use.
    func comps(_ cmps: Set<CalendarComp>,
               from date: Date) -> DateComps {
        dateComponents(cmps, from: date)
    }
    
    
    /// Returns the number of days in the month of this date, using the given calendar
    func daysInMonth(for date: Date) -> Int {
        range(of: .day, in: .month, for: date)!.count
    }
    
    //MARK: static cotrs
    
    static var gregorian: Cal { Cal(.gregorian) }
    
    static var buddhist: Cal { Cal(.buddhist) }
    
    static var chinese: Cal { Cal(.chinese) }
    
    static var coptic: Cal { Cal(.coptic) }
    
    static var ethiopicAmeteMihret: Cal { Cal(.ethiopicAmeteMihret) }
    
    static var ethiopicAmeteAlem: Cal { Cal(.ethiopicAmeteAlem) }
    
    static var hebrew: Cal { Cal(.hebrew) }
    
    static var iso8601: Cal { Cal(.iso8601) }
    
    static var indian: Cal { Cal(.indian) }
    
    static var islamic: Cal { Cal(.islamic) }
    
    static var islamicCivil: Cal { Cal(.islamicCivil) }
    
    static var japanese: Cal { Cal(.japanese) }
    
    static var persian: Cal { Cal(.persian) }
    
    static var republicOfChina: Cal { Cal(.republicOfChina) }
    
    
    /// does not nullify
    var lid: LID? {
        get {
            locale?.lid
        }
        set {
            if let a = newValue {
                locale = a.locale
            }
        }
    }
}

//public extension Calendar {
//
//    /// Return the number of days in the month for a specified 'Date'.
//    ///
//    /// - Parameter date: the date form which the number of days in month is calculated.
//    /// - Returns: The number of days in the month of 'Date'.
//    func numberOfDaysInMonth(for date: Date) -> Int {
//         range(of: .day, in: .month, for: date)!.count
//    }
//}

