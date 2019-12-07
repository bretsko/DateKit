


public extension Array where Element: ObjWithDateGT & Comparable {
    
    func getObjs(before date: Date) -> [ObjT]? {
        getUnits(before: date)?.objs
    }
    func getObjs(after date: Date) -> [ObjT]? {
        getUnits(after: date)?.objs
    }
    func getObjs(between date1: Date,
                 and date2: Date) -> [ObjT]? {
        getUnits(between: date1, and: date2)?.objs
    }
}


public extension Set where Element: ObjWithDateGT & Comparable {
    
    func getObjs(before date: Date) -> [ObjT]? {
        array.getObjs(before: date)
    }
    func getObjs(after date: Date) -> [ObjT]? {
        array.getObjs(after: date)
    }
    func getObjs(between date1: Date,
                 and date2: Date) -> [ObjT]? {
        array.getObjs(between: date1, and: date2)
    }
}

