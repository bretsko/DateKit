




//TODO: consider adding generic arg  T: Date, Equatable / Hashable - to make DateComparison Equatable / Hashable

public enum DateComparison {
    
    // Days
    case isToday
    case isTomorrow
    case isYesterday
    case isSameDay(Date)
    
    // Weeks
    case isThisWeek
    case isNextWeek
    case isLastWeek
    case isSameWeek(Date)
    
    // Months
    case isThisMonth
    case isNextMonth
    case isLastMonth
    case isSameMonth(Date)
    
    // Years
    case isThisYear
    case isNextYear
    case isLastYear
    case isSameYear(Date)
    
    // Relative Time
    case isInTheFuture
    case isInThePast
    case isEarlier(than: Date)
    case isLater(than: Date)
    case isWeekday
    case isWeekend
    
    //MARK: Day time
    
    /// date is in the morning (>=5 - <12)
    case isMorning
    
    /// date is in the afternoon (>=12 - <17)
    case isAfternoon
    
    /// date is in the morning (>=17 - <21)
    case isEvening
    
    /// date is in the morning (>=21 - <5)
    case isNight
    
    // TZ
    
    /// date uses daylight saving time
    case isInDST
}
