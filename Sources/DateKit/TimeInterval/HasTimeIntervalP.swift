

public protocol HasTimeIntervalP {

    var timeInterval: TimeInterval {get}
}
public extension HasTimeIntervalP {
    
    var seconds: Double {
        timeInterval
    }
    // may conflict with other extensions ?
    //    var minutes: Double {
    //         timeInterval.minutes
    //    }
    //    var hours: Double {
    //         timeInterval.hours
    //    }
    //    var days: Double {
    //         timeInterval.days
    //    }
    //    var weeks: Double {
    //         timeInterval.weeks
    //    }
}

public protocol HasMutTimeIntervalP: HasTimeIntervalP {
    
    var timeInterval: TimeInterval {get set}
}
//TODO: 
//public extension HasMutTimeIntervalP {}

public protocol TimeIntervalHashableT: Hashable, HasTimeIntervalP {}

public extension TimeIntervalHashableT {
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(timeInterval)
    }
}

