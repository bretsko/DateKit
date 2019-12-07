




public protocol ObjWithDateIntervalGT: HasDateIntervalP, HasObjT {}

public struct ObjWithDateIntervalG<T>: ObjWithDateIntervalGT {
    
    public var obj: T
    
    public var dateInterval: DateInterval
}
public extension ObjWithDateIntervalG {
    
    init(_ obj: T,
         _ dateInterval: DateInterval) {
        self.obj = obj
        self.dateInterval = dateInterval
    }
    
    /// Initialize a `DateInterval` with the specified start and end date.
    ///
    /// - precondition: `end >= start`
    init(_ obj: T,
         start: Date, end: Date) {
        self.init(obj, DateInterval(start: start,
                                    end: end))
    }
    
    /// Initialize a `DateInterval` with the specified start date and duration.
    ///
    /// - precondition: `duration >= 0`
    init(_ obj: T,
         start: Date, duration: TimeInterval) {
        self.init(obj, DateInterval(start: start,
                                    duration: duration))
    }
}

public extension ObjWithDateIntervalGT where Self: Comparable {
    
    static func < (lhs: Self, rhs: Self) -> Bool {
        lhs.dateInterval < rhs.dateInterval
    }
}
