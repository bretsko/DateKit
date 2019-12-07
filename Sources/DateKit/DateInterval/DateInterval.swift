


public extension DateInterval {
    
    /// sets start and end dates equal -> meaning Date (not DateInterval)
    init(_ date: Date) {
        self.init(start: date, duration: 0)
    }

    /// crashes if from >= to
    init(_ start: Date, _ end: Date) {
        // crashIfFalse (start < to) - impl-d in DateInterval?
        self.init(start: start, end: end)
    }
}

    //??
    //     var dates: [Date] {
    //        return Array(from...to)
    //    }
    
    //TODO: len days, weeks, etc
    //     var len: Int {
    //        return from - len
    //    }
    
    
    //MARK: -
    
    /// wider or equal
    //     func isSuperSet(of range: Rng,
    //                           strict: Bool = false) -> Bool {
    //        if strict {
    //            return from < range.from && to > range.to
    //        }
    //        return from <= range.from && to >= range.to
    //    }
    //
    //    /// narrower or equal
    //     func isSubSet(of range: Rng,
    //                         strict: Bool = false) -> Bool {
    //        if strict {
    //            return from > range.from && to < range.to
    //        }
    //        return from >= range.from && to <= range.to
    //    }
    //
    //    /// if supplied indices are wider in any direction, they override the old indices
    //    @discardableResult
    //     mutating func merge(with range: Rng) -> Bool {
    //        guard range.from < from || range.to > to else {
    //            return false
    //        }
    //        if range.from < from {
    //            from = range.from
    //        }
    //        if range.to > to {
    //            to = range.to
    //        }
    //        return true
    //    }




// TODO: can regard as IntervalT
//extension DateInterval: HasDescrP {
//    public var descr: Str {
//        return "DateInterval from: \(start), to: \(end)"
//    }
//}


//TODO:
//public extension Array where Element == DateInterval {
//
//}
//
//public extension Set where Element == DateInterval  {
//
//}
