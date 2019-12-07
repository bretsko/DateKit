



public protocol HasDateCompsP {
    var dateComps: DateComponents { get }
}

public extension HasDateCompsP {
    
    /// assumes default calendar
    var year: Int? {
        dateComps.year
    }
    
    /// assumes default calendar
    var month: Int? {
        dateComps.month
    }
    
    /// assumes default calendar
    var day: Int? {
        dateComps.day
    }
    
    /// assumes default calendar
    var hour: Int? {
        dateComps.hour
    }
    
    /// assumes default calendar
    var minute: Int? {
        dateComps.minute
    }
    
    /// assumes default calendar
    var second: Int? {
        dateComps.second
    }
    
    /// assumes default calendar
    var nanosecond: Int? {
        dateComps.nanosecond
    }
    
    /// assumes default calendar
    var weekday: Int? {
        dateComps.weekday
    }
    
    /// assumes default calendar
    var weekOfYear: Int? {
        dateComps.weekOfYear
    }
    
    /// assumes default calendar
    var weekOfMonth: Int? {
        dateComps.weekOfMonth
    }
    
    /// assumes default calendar
    var weekdayOrdinal: Int? {
        dateComps.weekdayOrdinal
    }
    
    /// assumes default calendar
    var yearForWeekOfYear: Int? {
        dateComps.yearForWeekOfYear
    }
    
    /// assumes default calendar
    var era: Int? {
        dateComps.era
    }
    
    //TODO:
    /// assumes default calendar
    /// returns nil if minute is nil
    //    var nearestHour: Int? {
    //        guard let min = minute,
    //            let date = Date(dateComps) else {
    //             nil
    //        }
    //        let newDate = date + (min >= 30 ? 60 - min : -min).minutes
    //         newDate?.hour
    //    }
}
