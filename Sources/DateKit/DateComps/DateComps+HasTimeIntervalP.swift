




extension DateComps: HasTimeIntervalP {
    
    /// This function return the absolute amount of seconds described by the comps of the .
    /// Note:     evaluated value maybe not strictly exact because it ignore the context (calendar/date) of
    ///         the date comps. In details:
    ///         - The following keys are ignored: `era`,`weekday`,`weekdayOrdinal`,
    ///                `weekOfYear`, `yearForWeekOfYear`, `calendar`, `timezone
    ///
    /// Some other values dependant from dates are fixed. This is a complete table:
    ///            - `year` is 365.0 `days`
    ///            - `month` is 30.4167 `days` (or 43800 minutes)
    ///            - `quarter` is 91.25 `days`
    ///            - `weekOfMonth` is 7 `days`
    ///            - `day` is 86400 `seconds`
    ///            - `hour` is 3600 `seconds`
    ///            - `minute` is 60 `seconds`
    ///            - `nanosecond` is 1e-9 `seconds`
    public var timeInterval: TimeInterval {
        var total: TimeInterval = 0
        
        DateComps.allComponents.forEach { comp in
            
            if let multipler = comp.timeInterval,
                let value = value(for: comp),
                value != Int(NSDateComponentUndefined) {
                
                total += (TimeInterval(value) * multipler)
            }
        }
        return total
    }
    
    /// This function return the absolute amount of seconds described by the comps of the .
    /// Note:     evaluated value maybe not strictly exact because it ignore the context (calendar/date) of
    ///         the date comps. In details:
    ///         - The following keys are ignored: `era`,`weekday`,`weekdayOrdinal`,
    ///                `weekOfYear`, `yearForWeekOfYear`, `calendar`, `timezone
    ///
    /// Some other values dependant from dates are fixed. This is a complete table:
    ///            - `year` is 365.0 `days`
    ///            - `month` is 30.4167 `days` (or 43800 minutes)
    ///            - `quarter` is 91.25 `days`
    ///            - `weekOfMonth` is 7 `days`
    ///            - `day` is 86400 `seconds`
    ///            - `hour` is 3600 `seconds`
    ///            - `minute` is 60 `seconds`
    ///            - `nanosecond` is 1e-9 `seconds`
    public var seconds: Double {
        return timeInterval
    }
}
