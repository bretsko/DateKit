


public protocol HasDateIntervalP: HasTimeIntervalP {
    
    var dateInterval: DateInterval {get}
}
public extension HasDateIntervalP {
    
    var timeInterval: TimeInterval {
        dateInterval.duration
    }
    
    /// start and end can be equal -> then it's a date
    var isInterval: Bool {
        start == end
    }
    
    var start: Date {
        dateInterval.start
    }
    var end: Date {
        dateInterval.end
    }
}

public protocol HasMutDateIntervalP: HasDateIntervalP {
    
    var dateInterval: DateInterval {get set}
}
//TODO: 
//public extension HasMutDateIntervalP {}

public protocol DateIntervalHashableT: Hashable, HasDateIntervalP {}

public extension DateIntervalHashableT {
    func hash(into hasher: inout Hasher) {
        hasher.combine(dateInterval)
    }
}

