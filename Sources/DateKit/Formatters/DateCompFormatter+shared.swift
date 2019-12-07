



public extension DateComponentsFormatter {
    private static let _shared = DateComponentsFormatter()
    
    /// Returns a shared fmtr with set parameters
    /// - Parameters:
    ///   - calendar: if not given Date.defaultCalendar is used
    ///   - includesApproximationPhrase: whether to indicate that the allowed units/insignificant units choices lead to inexact results. In some languages, simply prepending "about " to the string will produce incorrect results; this handles those cases correctly. Default is NO.
    ///   - includesTimeRemainingPhrase:  whether to produce strings like "35 minutes remaining". Default is NO.
    ///   - allowsFractionalUnits: whether non-integer units should be used to handle display of values that can't be exactly represented with the allowed units. For example, if minutes aren't allowed, then "1h 30m" could be formatted as "1.5h". Default is NO.
    static func shared(includesApproximationPhrase: Bool = false,
                       includesTimeRemainingPhrase: Bool = false,
                       allowsFractionalUnits: Bool = false,
                       _ calendar: Calendar = Date.defaultCalendar) -> DateComponentsFormatter {
                //_ locale: Locale = Date.defaultLocale)
        
        let fmtr = _shared //threadSingleton{ DateComponentsFormatter() }
        
        fmtr.calendar = calendar
        //calendar.locale = locale

        fmtr.includesApproximationPhrase = includesApproximationPhrase
        fmtr.includesTimeRemainingPhrase = includesTimeRemainingPhrase
        fmtr.allowsFractionalUnits = allowsFractionalUnits
        return fmtr
    }
}



//TODO: check my units
/* Bitmask of units to include. Set to 0 to get the default behavior. Note that, especially if the maximum number of units is low, unit collapsing is on, or zero dropping is on, not all allowed units may actually be used for a given NSDateComponents. Default value is the components of the passed-in NSDateComponents object, or years | months | weeks | days | hours | minutes | seconds if passed an NSTimeInterval or pair of NSDates.
 
   Allowed units are:
 
    NSCalendarUnitYear
    NSCalendarUnitMonth
    NSCalendarUnitWeekOfMonth (used to mean "quantity of weeks")
    NSCalendarUnitDay
    NSCalendarUnitHour
    NSCalendarUnitMinute
    NSCalendarUnitSecond
 
   Specifying any other NSCalendarUnits will result in an exception.
 */
//open var allowedUnits: NSCalendar.Unit


//TODO: add args
/* Choose how to indicate units. For example, 1h 10m vs 1:10. Default is NSDateComponentsFormatterUnitsStylePositional.
 */
//open var unitsStyle: DateComponentsFormatter.UnitsStyle



//TODO: check how I impl it
/* Bitmask specifying how to handle zeros in units. This includes both padding and dropping zeros so that a consistent number digits are displayed, causing updating displays to remain more stable. Default is NSDateComponentsFormatterZeroFormattingBehaviorDefault.
 
   If the combination of zero formatting behavior and style would lead to ambiguous date formats (for example, 1:10 meaning 1 hour, 10 seconds), NSDateComponentsFormatter will throw an exception.
 */
//open var zeroFormattingBehavior: DateComponentsFormatter.ZeroFormattingBehavior



//TODO: add arg ?
/*  Where units have variable length (number of days in a month, number of hours in a day, etc...), NSDateComponentsFormatter will calculate as though counting from the date specified by the referenceDate in the appropriate calendar. Defaults to [NSDate dateWithTimeIntervalSinceReferenceDate:0] at the time of the -stringForObjectValue: call if not set. Set to nil to get the default behavior.
 */
//@available(OSX 10.13, *)
//open var referenceDate: Date?



//TODO: add arg
/* Choose whether or not, and at which point, to round small units in large values to zero.
   Examples:
    1h 10m 30s, maximumUnitCount set to 0: "1h 10m 30s"
    1h 10m 30s, maximumUnitCount set to 2: "1h 10m"
    10m 30s, maximumUnitCount set to 0: "10m 30s"
    10m 30s, maximumUnitCount set to 2: "10m 30s"

   Default is 0, which is interpreted as unlimited.
 */
//open var maximumUnitCount: Int


//TODO: add arg
/* Choose whether to express largest units just above the threshold for the next lowest unit as a larger quantity of the lower unit. For example: "1m 3s" vs "63s". Default is NO.
 */
//open var collapsesLargestUnit: Bool


//TODO: func interface for approx phrase,
/* Choose whether to indicate that the allowed units/insignificant units choices lead to inexact results. In some languages, simply prepending "about " to the string will produce incorrect results; this handles those cases correctly. Default is NO.
 */
//open var includesApproximationPhrase: Bool


//TODO: func interface for time remaining phrase,
/* Choose whether to produce strings like "35 minutes remaining". Default is NO.
 */
//open var includesTimeRemainingPhrase: Bool


//TODO: func interface for fractionalUnits,
/* Choose whether non-integer units should be used to handle display of values that can't be exactly represented with the allowed units. For example, if minutes aren't allowed, then "1h 30m" could be formatted as "1.5h". Default is NO.
 */
//open var allowsFractionalUnits: Bool
