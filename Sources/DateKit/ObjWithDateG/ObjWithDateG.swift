

public protocol ObjWithDateGT: HasDateP, HasObjT {}


public struct ObjWithDateG<T>: ObjWithDateGT {
    
    public var obj: T
    
    public var date: Date
}
public extension ObjWithDateG {
    
    init(_ obj: T,
         _ date: Date) {
        self.obj = obj
        self.date = date
    }
}


public extension ObjWithDateGT where Self: Comparable {
    static func < (lhs: Self, rhs: Self) -> Bool {
        lhs.date < rhs.date
    }
}
