


extension Date: HasDateCompsP {
    public var dateComps: DateComps {
        allComps
    }
}

public extension Date {
    
    /// using default calendar
    var allComps: DateComps {
        allComps(with: Self.defaultCalendar)
    }
    
    static var allCalendarComps: Set<CalendarComp> {
        [.era, .year, .month, .day, .hour, .minute,
         .second, .weekday, .weekdayOrdinal, .quarter,
         .weekOfMonth, .weekOfYear, .yearForWeekOfYear,
         .nanosecond, .calendar, .timeZone]
        //  [ .year, .month, .day, .weekOfYear, .hour, .minute, .second, .weekday, .weekdayOrdinal, .weekOfYear ]
    }
    
    
    func comps(_ cmps: Set<CalendarComp>,
               with calendar: Calendar) -> DateComps {
        comps(cmps, from: self)
    }
    
    func comps(_ cmps: [CalendarComp],
               with calendar: Calendar) -> DateComps {
        comps(Set(cmps), with: calendar)
    }
    
    /// using default calendar
    func comps(_ cmps: [CalendarComp]) -> DateComps {
        comps(cmps, with: Date.defaultCalendar)
    }
    
    /// returns all dateComps using the provided calendar
    func allComps(with calendar: Calendar) -> DateComps {
        comps(Date.allCalendarComps,
              with: calendar)
    }
    
    func componentValue(_ comp: CalendarComp) -> Int {
        calendar.component(comp, from: self)
    }
    func componentValue(_ comp: CalendarComp,
                        with calendar: Calendar) -> Int {
        calendar.component(comp, from: self)
    }
    
    
    /// Convenient accessor of the date's `Calendar` components ordinality.
    /// - returns: The ordinal number of a smaller calendar component within a specified larger calendar component
    func ordinality(of smaller: CalendarComp,
                    in larger: CalendarComp,
                    for date: Date) -> Int? {
        calendar.ordinality(of: smaller,
                            in: larger,
                            for: date)
    }
    
    /// Convenient accessor of the date's `Calendar` components ordinality.
    /// - returns: The ordinal number of a smaller calendar component within a specified larger calendar component
    func ordinality(of smaller: CalendarComp,
                    in larger: CalendarComp) -> Int? {
        calendar.ordinality(of: smaller, in: larger, for: self)
    }
    
    // MARK: - Components
    
    /// - important: Invalid data in setter is ignored
    var year: Int {
        get{
            componentValue(.year)
        }
        set {
            if let d = Date(year: newValue,
                            month: month,
                            day: day,
                            hour: hour,
                            minute: minute,
                            second: second) {
                self = d
            }
        }
    }
    
    /// - important: Invalid data in setter is ignored
    var month: Int {
        get {
            componentValue(.month)
        }
        set {
            if let d = Date(year: year,
                            month: newValue,
                            day: day,
                            hour: hour,
                            minute: minute,
                            second: second) {
                self = d
            }
        }
    }
    
    /// - important: Invalid data in setter is ignored
    var day: Int {
        get {
            componentValue(.day)
        }
        set {
            if let d = Date(year: year,
                            month: month,
                            day: newValue,
                            hour: hour,
                            minute: minute,
                            second: second) {
                self = d
            }
        }
    }
    
    /// - important: Invalid data in setter is ignored
    var hour: Int {
        get {
            componentValue(.hour)
        }
        set {
            if let d = Date(year: year,
                            month: month,
                            day: day,
                            hour: newValue,
                            minute: minute,
                            second: second) {
                self = d
            }
        }
    }
    
    /// - important: Invalid data in setter is ignored
    var minute: Int {
        get {
            componentValue(.minute)
        }
        set {
            if let d = Date(year: year,
                            month: month,
                            day: day,
                            hour: hour,
                            minute: newValue,
                            second: second) {
                self = d
            }
        }
    }
    
    /// - important: Invalid data in setter is ignored
    var second: Int {
        get {
            componentValue(.second)
        }
        set {
            if let d = Date(year: year,
                            month: month,
                            day: second,
                            hour: hour,
                            minute: minute,
                            second: newValue) {
                self = d
            }
        }
    }
    
    
    var weekday: Int {
        componentValue(.weekday)
    }
    
    /// describes ordinal position within the month unit of the corresponding weekday unit.
    /// For example, in the Gregorian calendar a weekday ordinal unit of 2 for a weekday unit 3 indicates “the second Tuesday in the month”.
    var weekdayOrdinal: Int {
        componentValue(.weekdayOrdinal)
    }
    
    var weekOfMonth: Int {
        componentValue(.weekOfMonth)
    }
    
    var weekOfYear: Int {
        componentValue(.weekOfYear)
    }
    
    var yearForWeekOfYear: Int {
        componentValue(.yearForWeekOfYear)
    }
    
    ///-  important: it's largely unimplemented, and is not recommended for use (from Foundation.Calendar)
    var quarter: Int {
        componentValue(.quarter)
    }
    
    var era: Int {
        componentValue(.era)
    }
    
    
    //MARK: -
    
    var monthDays: Int? {
        calendar.range(of: .day, in: .month, for: self)?.count
    }
    
    var dayOfYear: Int? {
        calendar.ordinality(of: .day, in: .year, for: self)
    }
    
    var secondsInDay: Int? {
        calendar.ordinality(of: .second, in: .day, for: self)
    }
    
    var msInDay: Int? {
        if let a = secondsInDay {
            return a * 1000
        }
        return nil
    }
    
    
    //    var quarter: Int? {
    //        let monthsInQuarter = Double(calendar.monthSymbols.count) / 4.0
    //         Int(ceil( Double(month) / monthsInQuarter))
    //    }
    
    
    /// Returns the number of days in the month of this date, using the given calendar
    func daysInMonth(with calendar: Calendar = Date.defaultCalendar) -> Int {
        calendar.daysInMonth(for: self)
    }
    
    
    //MARK: DaylightSavingTime
    
    /// Returns the daylight saving time offset for a given date.
    var DSTOffset: TimeInterval {
        timeZone.daylightSavingTimeOffset(for: self)
    }
    
    /// Returns a Boolean value that indicates whether the receiver uses daylight saving time at this date.
    var isDaylightSavingTime: Bool {
        timeZone.isDaylightSavingTime(for: self)
    }
    
    /// Returns the next daylight saving time transition after this date.
    ///
    /// - info: Depending on the time zone, this function may return a change of the time zone's offset from GMT. Returns `nil` if the time zone of the receiver does not observe daylight savings time as of `date`.
    var nextDSTTransition: Date? {
        timeZone.nextDaylightSavingTimeTransition(after: self)
    }
    
}


//TODO: check, test

//public extension Date {
//
//    /**
//     *  Use calendar components to determine how many units of a smaller component are inside 1 larger unit.
//     *
//     *  Ex. If used on a date in the month of February in a leap year (regardless of the day), the method would
//     *  return 29 days.
//     *
//     *  - parameter smaller: The smaller calendar component to access from the date
//     *  - parameter larger: The larger calendar component to access from the date
//     *
//     *  - returns: The number of smaller units required to equal in 1 larger unit, given the date called on
//     *
//     */
//    func count(_ smallerUnits: CalendarComp,
//              in largerUnits: CalendarComp,
//              _ calendar: Calendar = Date.defaultCalendar) -> Int? {
//
//        guard largerUnits.hashValue < smallerUnits.hashValue else {
//            return nil
//        }
//
//        var units = 1
//        var unitRange: Range<Int>?
//        for x in largerUnits.hashValue..<smallerUnits.hashValue {
//
//            switch(x) {
//            case 0:
//                unitRange = calendar.range(of: .year,
//                                           in: .era,
//                                           for: self)
//            case 1:
//                //??
//                if smallerUnits.hashValue <= 2 {
//                    unitRange = calendar.range(of: .month,
//                                               in: .year,
//                                               for: self)
//                }
//            case 2:
//                //??
//                if largerUnits.hashValue < 2 {
//                    unitRange = Range(uncheckedBounds: (lower: 0, upper: (isLeapYear ? 366 : 365)))
//
//                } else {
//                    unitRange = calendar.range(of: .day,
//                                               in: .month,
//                                               for: self)
//                }
//            case 3:
//                unitRange = calendar.range(of: .hour,
//                                           in: .day,
//                                           for: self)
//            case 4:
//                unitRange = calendar.range(of: .minute,
//                                           in: .hour,
//                                           for: self)
//            case 5:
//                unitRange = calendar.range(of: .second,
//                                           in: .minute,
//                                           for: self)
//            default:
//                return nil
//            }
//
//            if let cnt = unitRange?.count {
//                units *= cnt
//            }
//        }
//        return units
//    }
//}



//    /// Date().quarter -> 3 // date in third quarter of the year.
//    var quarter: Int {
//        let month = userCal.component(.month, from: self).d
//        let numMonths = userCal.monthSymbols.len.d
//        let numMonthsInQuarter = numMonths / 4
//        return Int(ceil(month / numMonthsInQuarter))
//    }
//
//    /// Date().weekOfYear -> 2 // second week in the year.
//    var weekOfYear: Int {
//         userCal.component(.weekOfYear, from: self)
//    }
//
//    /// Date().weekOfMonth -> 3 // date is in third week of the month.
//    var weekOfMonth: Int {
//         userCal.component(.weekOfMonth, from: self)
//    }
//
//    /// Date().year -> 2017
//    /// var someDate = Date()
//    /// someDate.year = 2000 // sets someDate's year to 2000
//    var year: Int {
//        get {
//             userCal.component(.year, from: self)
//        }
//        set {
//            guard newValue > 0 else { return }
//            let curYear = userCal.component(.year, from: self)
//            let yearsToAdd = newValue - curYear
//            if let a = userCal.date(byAdding: .year, value: yearsToAdd, to: self) {
//                self = a
//            }
//        }
//    }
//
//    /// Date().month -> 1
//    /// var someDate = Date()
//    /// someDate.month = 10 // sets someDate's month to 10.
//    var month: Int {
//        get {
//             userCal.component(.month, from: self)
//        }
//        set {
//            let allowed = userCal.range(of: .month, in: .year, for: self)!
//            guard allowed.contains(newValue) else { return }
//
//            let curMonth = userCal.component(.month, from: self)
//            let monthsToAdd = newValue - curMonth
//            if let a = userCal.date(byAdding: .month, value: monthsToAdd, to: self) {
//                self = a
//            }
//        }
//    }
//
//    /// Date().day -> 12
//    /// var someDate = Date()
//    /// someDate.day = 1 // sets someDate's day of month to 1.
//    var day: Int {
//        get {
//             userCal.component(.day, from: self)
//        }
//        set {
//            let allowed = userCal.range(of: .day, in: .month, for: self)!
//            guard allowed.contains(newValue) else { return }
//
//            let curDay = userCal.component(.day, from: self)
//            let daysToAdd = newValue - curDay
//            if let a = userCal.date(byAdding: .day, value: daysToAdd, to: self) {
//                self = a
//            }
//        }
//    }
//
//    /// Date().weekday -> 5 // fifth day in the current week.
//    var weekday: Int {
//         userCal.component(.weekday, from: self)
//    }
//
//    /// Date().hour -> 17 // 5 pm
//    /// var someDate = Date()
//    /// someDate.hour = 13 // sets someDate's hour to 1 pm.
//    var hour: Int {
//        get {
//            return userCal.component(.hour, from: self)
//        }
//        set {
//            let allowed = userCal.range(of: .hour, in: .day, for: self)!
//            guard allowed.contains(newValue) else { return }
//
//            let curHour = userCal.component(.hour, from: self)
//            let hoursToAdd = newValue - curHour
//            if let a = userCal.date(byAdding: .hour, value: hoursToAdd, to: self) {
//                self = a
//            }
//        }
//    }
//
//    /// Date().minute -> 39
//    /// var someDate = Date()
//    /// someDate.minute = 10 // sets someDate's minutes to 10.
//    var minute: Int {
//        get {
//             userCal.component(.minute, from: self)
//        }
//        set {
//            let allowed = userCal.range(of: .minute, in: .hour, for: self)!
//            guard allowed.contains(newValue) else { return }
//
//            let curMinutes = userCal.component(.minute, from: self)
//            let minsToAdd = newValue - curMinutes
//            if let a = userCal.date(byAdding: .minute, value: minsToAdd, to: self) {
//                self = a
//            }
//        }
//    }
//
//    /// Date().second -> 55
//    /// var someDate = Date()
//    /// someDate.second = 15 // sets someDate's seconds to 15.
//    var second: Int {
//        get {
//             userCal.component(.second, from: self)
//        }
//        set {
//            let allowed = userCal.range(of: .second, in: .minute, for: self)!
//            guard allowed.contains(newValue) else { return }
//
//            let curSecs = userCal.component(.second, from: self)
//            let secsToAdd = newValue - curSecs
//            if let a = userCal.date(byAdding: .second, value: secsToAdd, to: self) {
//                self = a
//            }
//        }
//    }
//
//    /// Date().nanosecond -> 981379985
//    /// var someDate = Date()
//    /// someDate.nanosecond = 981379985 // sets someDate's Secs to 981379985.
//    var nanoSecond: Int {
//        get {
//             userCal.component(.nanosecond, from: self)
//        }
//        set {
//            let allowed = userCal.range(of: .nanosecond, in: .second, for: self)!
//            guard allowed.contains(newValue) else { return }
//
//            let curNanoSecs = userCal.component(.nanosecond, from: self)
//            let nanoSecsToAdd = newValue - curNanoSecs
//
//            if let a = userCal.date(byAdding: .nanosecond, value: nanoSecsToAdd, to: self) {
//                self = a
//            }
//        }
//    }
//
//    /// Date().millisecond -> 68
//    /// var someDate = Date()
//    /// someDate.millisecond = 68 // sets someDate's nanosecond to 68000000.
//    var milliSecond: Int {
//        get {
//             userCal.component(.nanosecond, from: self) / 1_000_000
//        }
//        set {
//            let ns = newValue * 1_000_000
//            let allowed = userCal.range(of: .nanosecond, in: .second, for: self)!
//            guard allowed.contains(ns) else { return }
//
//            if let a = userCal.date(bySetting: .nanosecond, value: ns, of: self) {
//                self = a
//            }
//        }
//    }


//MARK: Julian calendar

/// Julian day is the continuous count of days since the beginning of
/// the Julian Period used primarily by astronomers.
//    var julianDay: Double {
//        let destRegion = DateRegion.english
//        let utc = convert(to: destRegion)
//
//        let year = Double(utc.year)
//        let month = Double(utc.month)
//        let day = Double(utc.day)
//        let hour = Double(utc.hour) + Double(utc.minute) / 60.0 + (Double(utc.second) + Double(utc.nanosecond) / 1e9) / 3600.0
//
//        var jd = 367.0 * year - floor( 7.0 * ( year + floor((month + 9.0) / 12.0)) / 4.0 )
//        jd -= floor( 3.0 * (floor( (year + (month - 9.0) / 7.0) / 100.0 ) + 1.0) / 4.0 )
//        jd += floor(275.0 * month / 9.0) + day + 1_721_028.5 + hour / 24.0
//
//        return jd
//    }
//
//    /// The Modified Julian Date (MJD) was introduced by the Smithsonian Astrophysical Observatory
//    /// in 1957 to record the orbit of Sputnik via an IBM 704 (36-bit machine)
//    /// and using only 18 bits until August 7, 2576.
//    var modifiedJulianDay: Double {
//         julianDay - 2_400_000.5
//    }

