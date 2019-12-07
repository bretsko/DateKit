



public protocol HasDateP {
    
    var date: Date {get}
}

public protocol HasMutDateP: HasDateP {
    
    var date: Date {get set}
}

public protocol DateHashableT: HasDateP, Hashable {}
public extension DateHashableT {
    func hash(into hasher: inout Hasher) {
        hasher.combine(date)
    }
}

public protocol DateComparableT: HasDateP, Comparable {}
public extension DateComparableT {
    static func < (lhs: Self, rhs: Self) -> Bool {
        lhs.date < rhs.date
    }
}


public protocol HasDate_P {
    var _date: Date? {get}
}

