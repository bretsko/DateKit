


public extension Array where Element: HasDateP {
    
    /// sorted
    var dates: [Date] {
        map{$0.date}.sorted()
    }
    var minDate: Date? {
        dates.first
    }
    var maxDate: Date? {
        dates.last
    }
    
    var sortedByDate: [E] {
        sorted(by: {$0.date < $1.date})
    }
    var unitWithMinDate: E? {
        sortedByDate.first
    }
    var unitWithMaxDate: E? {
        sortedByDate.last
    }
    
    func getUnits(before date: Date) -> Array? {
        filterSth{ $0.date < date }
    }
    func getUnits(after date: Date) -> Array? {
        filterSth{ $0.date > date }
    }
    func getUnits(between date1: Date,
                  and date2: Date) -> Array? {
        filterSth{ $0.date > date1 && $0.date < date2 }
    }
}

public extension Set where Element: HasDateP {
    
    /// sorted
    var dates: [Date] {
        array.dates
    }
    var minDate: Date? {
        dates.first
    }
    var maxDate: Date? {
        dates.last
    }
    
    var sortedByDate: [E] {
        array.sortedByDate
    }
    var unitWithMinDate: E? {
        sortedByDate.first
    }
    var unitWithMaxDate: E? {
        sortedByDate.last
    }
    
    func getUnits(before date: Date) -> Set? {
        filter{ $0.date < date }.sth
    }
    func getUnits(after date: Date) -> Set? {
        filter{ $0.date > date }.sth
    }
    func getUnits(between date1: Date,
                  and date2: Date) -> Set? {
        filter{ $0.date > date1 && $0.date < date2 }.sth
    }
}

