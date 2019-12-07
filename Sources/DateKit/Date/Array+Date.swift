

public extension Array where Element == Date  {
    
    /// from oldest to latest
    var sortedByOldest: [Date] {
        sorted(by: < )
    }
    
    /// from latest to oldest
    var sortedByLatest: [Date] {
        sorted(by: > )
    }
    
    /// Return the oldest date in given list (timezone is ignored, comparison uses absolute date).
    var oldest: Date? {
        self.min()
    }
    
    /// Return the latest date in given list (timezone is ignored, comparison uses absolute date).
    var latest: Date? {
        self.max()
    }
}
