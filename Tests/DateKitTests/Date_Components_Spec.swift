

import DateKit
import Quick
import Nimble

class Date_Components_Spec: QuickSpec {
    
    override func spec() {
        
        describe("Date") {
            
            it("testDate_Components") {
                //        let london = DateRegion(CalendarID.gregorian, TimeZoneID.europeLondon, LID.italian)
                //		let dateFormat = "yyyy-MM-dd HH:mm:ss"
                //
                //		// TEST #1: Date In Italian
                //        let dateA = Date("2018-02-05 23:14:45", format: dateFormat, london)!
                //		XCTValidateDateComponents(date: dateA, expectedComps: ExpectedValues {
                //			$0.year = 2018
                //			$0.month = 2
                //			$0.day = 5
                //			$0.hour = 23
                //			$0.minute = 14
                //			$0.second = 45
                //			$0.monthNameDefault = "febbraio"
                //			$0.monthNameDefaultStd = "febbraio"
                //			$0.monthNameShort = "feb"
                //			$0.monthNameStandaloneShort = "feb"
                //			$0.msInDay = 83_686_000
                //			$0.weekday = 2
                //			$0.weekdayNameShort = "lun"
                //			$0.weekdayNameVeryShort = "L"
                //			$0.weekOfMonth = 2
                //			$0.eraNameShort = "a.C."
                //			$0.weekdayOrdinal = 1
                //			$0.nearestHour = 23
                //			$0.firstDayOfWeek = 5
                //			$0.lastDayOfWeek = 11
                //			$0.yearForWeekOfYear = 2018
                //			$0.quarter = 1
                //		})
                //
                //		// TEST #1: Date In French
                //        let paris = DateRegion(CalendarID.gregorian, TimeZoneID.europeParis, LID.french)
                //        let dateB = Date("2018-02-05 23:14:45", format: dateFormat, paris)!
                //		XCTValidateDateComponents(date: dateB, expectedComps: ExpectedValues {
                //			$0.monthNameDefault = "février"
                //			$0.monthNameShort = "févr."
                //			$0.eraNameShort = "av. J.-C."
                //			$0.weekdayNameDefault = "lundi"
                //		})
                //
                //		// TEST #3: Other comps
                //expect(result).to(equal(...))
                
                //		expect( (dateB.region == paris), "Failed to assign correct region to date")
                //		expect( (dateB.calendar.id == paris.calendar.id), "Failed to assign correct region's calendar to date")
                //		expect( (dateB.quarterName(.standard) == "1er trimestre"), "Failed to get quarterName in default")
                //		expect( (dateB.quarterName(.short) == "T1"), "Failed to get quarterName in short")
                //        expect( (dateB.quarterName(.standard, locale: LID.italian) == "1º trimestre"), "Failed to get quarterName with overwrite of locale")
            }
            
            it("testDate_isLeapMonth") {
                //        let rome = DateRegion.rome
                //		let dateFormat = "yyyy-MM-dd HH:mm:ss"
                //
                //        let dateA = Date("2018-02-05 00:00:00", format: dateFormat, rome)!
                //        let dateB = Date("2016-02-22 00:00:00", format: dateFormat, rome)!
                //        let dateC = Date("2017-12-10 00:00:00", format: dateFormat, rome)!
                //		expect( dateA.isLeapMonth == false, "Failed to evaluate is date isLeapMonth == false")
                //		expect( dateC.isLeapMonth == false, "Failed to evaluate is date isLeapMonth == false")
                //		expect( dateB.isLeapMonth, "Failed to evaluate is date isLeapMonth")
                //	}
                
                // it("testDate_dateBySet") {
                //expect(result).to(equal(...))
                //		let originalDate = "2018-10-10T12:02:16.024".parseISODate()
                //		let newDate = originalDate?.changing(hour: nil, min: nil, secs: nil, ms: 7)
                //		expect( newDate?.isoString([.withInternetDateTimeExtended]) == "2018-10-10T12:02:16.007Z", "Failed to set milliseconds")
                //expect(result).to(equal(...))
            }
            
            it("testDate_isLeapYear") {
                //expect(result).to(equal(...))
                //        let rome = DateRegion.rome
                //		let dateFormat = "yyyy-MM-dd HH:mm:ss"
                //
                //        let dateA = Date("2018-04-05 00:00:00", format: dateFormat, rome)!
                //        let dateB = Date("2016-07-22 00:00:00", format: dateFormat, rome)!
                //        let dateC = Date("2017-12-10 00:00:00", format: dateFormat, rome)!
                //		expect( dateA.isLeapYear == false, "Failed to evaluate is date isLeapYear == false")
                //		expect( dateC.isLeapYear == false, "Failed to evaluate is date isLeapYear == false")
                //		expect( dateB.isLeapYear, "Failed to evaluate is date isLeapYear")
            }
            
            
            it("test_ordinalDay") {
                //expect(result).to(equal(...))
                //        let newYork = DateRegion(CalendarID.gregorian, TimeZoneID.americaNewYork, LID.englishUnitedStates)
                //
                //		let localDate = Date(comps: {
                //			$0.year = 2002
                //			$0.month = 3
                //			$0.day = 1
                //			$0.hour = 5
                //			$0.minute = 30
                //        }, newYork)!
                //		expect(localDate.ordinalDay == "1st", "Failed to get the correct value of the ordinalDay for a date")
                //
                //		let localDate2 = Date(comps: {
                //			$0.year = 2002
                //			$0.month = 3
                //			$0.day = 2
                //			$0.hour = 5
                //			$0.minute = 30
                //        }, newYork)!
                //		expect(localDate2.ordinalDay == "2nd", "Failed to get the correct value of the ordinalDay for a date")
                //
                //		let localDate3 = Date(comps: {
                //			$0.year = 2002
                //			$0.month = 3
                //			$0.day = 3
                //			$0.hour = 5
                //			$0.minute = 30
                //        }, newYork)!
                //		expect(localDate3.ordinalDay == "3rd", "Failed to get the correct value of the ordinalDay for a date")
                //
                //		let localDate4 = Date(comps: {
                //			$0.year = 2002
                //			$0.month = 3
                //			$0.day = 4
                //			$0.hour = 5
                //			$0.minute = 30
                //        }, newYork)!
                //		expect(localDate4.ordinalDay == "4th", "Failed to get the correct value of the ordinalDay for a date")
                //
                //        let rome = DateRegion.rome
                //		let localDate5 = Date(comps: {
                //			$0.year = 2002
                //			$0.month = 3
                //			$0.day = 2
                //			$0.hour = 5
                //			$0.minute = 30
                //        }, rome)!
                //		expect(localDate5.ordinalDay == "2º", "Failed to get the correct value of the ordinalDay for a date")
            }
            
            it("testDate_ISOFormatterAlt") {
                //expect(result).to(equal(...))
                //        let rome = DateRegion.rome
                //		let dateFormat = "yyyy-MM-dd HH:mm:ss"
                //        let date = Date("2017-07-22 00:00:00", format: dateFormat, rome)!
                //
                //		expect( date.isoString() == "2017-07-22T00:00:00+02:00", "Failed to format ISO")
                //		expect( date.isoString([.withFullDate]) == "2017-07-22", "Failed to format ISO")
                //		expect( date.isoString([.withFullDate, .withFullTime, .withDashSeparatorInDate, .withSpaceBetweenDateAndTime]) == "2017-07-22 00:00:00+02:00", "Failed to format ISO")
            }
            
            it("testDate_getIntervalForComponentBetweenDates") {
                //expect(result).to(equal(...))
                //        let rome = DateRegion.rome
                //		let dateFormat = "yyyy-MM-dd HH:mm:ss"
                //
                //        let dateA = Date("2017-07-22 00:00:00", format: dateFormat, rome)!
                //        let dateB = Date("2017-07-23 12:00:00", format: dateFormat, rome)!
                //        let dateC = Date("2017-09-23 12:00:00", format: dateFormat, rome)!
                //        let dateD = Date("2017-09-23 12:54:00", format: dateFormat, rome)!
                //
                //        expect( (dateA.getInterval(to: dateB, comp: .hour) == 36), "Failed to evaluate is hours interval")
                //        expect( (dateA.getInterval(to: dateB, comp: .day) == 2), "Failed to evaluate is days interval") // 1 days, 12 hours
                //        expect( (dateB.getInterval(to: dateC, comp: .month) == 2), "Failed to evaluate is months interval")
                //        expect( (dateB.getInterval(to: dateC, comp: .day) == 62), "Failed to evaluate is days interval")
                //        expect( (dateB.getInterval(to: dateC, comp: .year) == 0), "Failed to evaluate is years interval")
                //        expect( (dateB.getInterval(to: dateC, comp: .weekOfYear) == 9), "Failed to evaluate is weeksOfYear interval")
                //        expect( (dateC.getInterval(to: dateD, comp: .minute) == 54), "Failed to evaluate is minutes interval")
                //        expect( (dateC.getInterval(to: dateD, comp: .hour) == 0), "Failed to evaluate is hours interval")
                //        expect( (dateA.getInterval(to: dateD, comp: .minute) == 91494), "Failed to evaluate is minutes interval")
            }
            
            it("testDate_timeIntervalSince") {
                //expect(result).to(equal(...))
                // let rome = DateRegion.rome
                //        let london = DateRegion(CalendarID.gregorian, TimeZoneID.europeLondon, LID.english)
                //		let dateFormat = "yyyy-MM-dd HH:mm:ss"
                //
                //        let dateA = Date("2017-07-22 00:00:00", format: dateFormat, rome)!
                //        let dateB = Date("2017-07-22 00:00:00", format: dateFormat, rome)!
                //        let dateC = Date("2017-07-23 13:20:15", format: dateFormat, london)!
                //        let dateD = Date("2017-07-23 13:20:20", format: dateFormat, london)!
                //
                //        expect( dateA.timeInterval(since:dateC) == -138015.0, "Failed to evaluate is minutes interval")
                //		expect( dateA.timeInterval(since:dateB) == 0, "Failed to evaluate is minutes interval")
                //		expect( dateC.timeInterval(since:dateD) == -5, "Failed to evaluate is minutes interval")
            }
            
            it("testQuarter") {
                //expect(result).to(equal(...))
                //        let london = DateRegion(CalendarID.gregorian, TimeZoneID.europeLondon, LID.english)
                //		let dateFormat = "yyyy-MM-dd HH:mm:ss"
                //
                //        let dateA = Date("2018-02-05 23:14:45", format: dateFormat, london)!
                //        let dateB = Date("2018-09-05 23:14:45", format: dateFormat, london)!
                //        let dateC = Date("2018-12-05 23:14:45", format: dateFormat, london)!
                //
                //		expect( dateA.quarter == 1, "Failed to evaluate quarter property")
                //		expect( dateB.quarter == 3, "Failed to evaluate quarter property")
                //		expect( dateC.quarter == 4, "Failed to evaluate quarter property")
            }
            
            it("testAbsoluteDateISOFormatting") {
                //expect(result).to(equal(...))
                //		let now = Date()
                //		let iso8601_string = now.isoString([.withInternetDateTime])
                //		let absoluteDate = now.date
                //		let absoluteDate_iso8601_string = absoluteDate.isoString([.withInternetDateTime])
                //		expect( absoluteDate_iso8601_string == iso8601_string, "Failed respect the absolute ISO date")
            }
            
            //TODO:
            // it("testDate_julianDayAndModifiedJulianDay") {
            //expect(result).to(equal(...))
            //        // swiftlint:disable nesting
            //        struct ExpectedJulian {
            //            var dateISO: String
            //            var julianDay: Double
            //            var modifiedJulianDay: Double
            //        }
            //
            //        let dates = [
            //            ExpectedJulian(dateISO: "2017-12-22T00:06:18+01:00", julianDay: 2_458_109.462_708_333_5, modifiedJulianDay: 58108.962_708_333_51),
            //            ExpectedJulian(dateISO: "2018-06-02T02:14:45+02:00", julianDay: 2_458_271.510_243_055_4, modifiedJulianDay: 58271.010_243_055_41),
            //            ExpectedJulian(dateISO: "2018-04-04T13:31:12+02:00", julianDay: 2_458_212.98, modifiedJulianDay: 58212.479_999_999_98),
            //            ExpectedJulian(dateISO: "2018-03-18T10:11:10+01:00", julianDay: 2_458_195.882_754_629_5, modifiedJulianDay: 58195.382_754_629_48),
            //            ExpectedJulian(dateISO: "2018-03-10T18:03:22+01:00", julianDay: 2_458_188.210_671_296_3, modifiedJulianDay: 58187.710_671_296_34),
            //            ExpectedJulian(dateISO: "2017-07-14T06:33:47+02:00", julianDay: 2_457_948.690_127_315, modifiedJulianDay: 57948.190_127_315),
            //            ExpectedJulian(dateISO: "2018-02-14T16:51:14+01:00", julianDay: 2_458_164.160_578_703_5, modifiedJulianDay: 58163.660_578_703_51),
            //            ExpectedJulian(dateISO: "2017-08-15T17:41:44+02:00", julianDay: 2_457_981.153_981_481_7, modifiedJulianDay: 57980.653_981_481_68),
            //            ExpectedJulian(dateISO: "2018-03-04T09:54:54+01:00", julianDay: 2_458_181.871_458_333, modifiedJulianDay: 58181.371_458_332_986),
            //            ExpectedJulian(dateISO: "2017-09-23T08:18:15+02:00", julianDay: 2_458_019.762_673_611, modifiedJulianDay: 58019.262_673_610_82),
            //            ExpectedJulian(dateISO: "2017-12-10T10:29:42+01:00", julianDay: 2_458_097.895625, modifiedJulianDay: 58097.395_624_999_89),
            //            ExpectedJulian(dateISO: "2017-11-11T02:49:41+01:00", julianDay: 2_458_068.576_168_981_4, modifiedJulianDay: 58068.076_168_981_38),
            //            ExpectedJulian(dateISO: "2017-07-06T04:05:39+02:00", julianDay: 2_457_940.587_256_944_7, modifiedJulianDay: 57940.087_256_944_74),
            //            ExpectedJulian(dateISO: "2017-12-02T00:23:52+01:00", julianDay: 2_458_089.474_907_407_5, modifiedJulianDay: 58088.974_907_407_54),
            //            ExpectedJulian(dateISO: "2017-11-14T17:59:46+01:00", julianDay: 2_458_072.208_171_296_4, modifiedJulianDay: 58071.708_171_296_4),
            //            ExpectedJulian(dateISO: "2018-03-02T10:53:52+01:00", julianDay: 2_458_179.912_407_407_5, modifiedJulianDay: 58179.412_407_407_54),
            //            ExpectedJulian(dateISO: "2018-04-14T23:46:35+02:00", julianDay: 2_458_223.407_349_537, modifiedJulianDay: 58222.907_349_537_13),
            //            ExpectedJulian(dateISO: "2018-04-28T07:25:22+02:00", julianDay: 2_458_236.725_949_074, modifiedJulianDay: 58236.225_949_074_14),
            //            ExpectedJulian(dateISO: "2018-01-06T14:36:53+01:00", julianDay: 2_458_125.067_280_092_3, modifiedJulianDay: 58124.567_280_092_28),
            //            ExpectedJulian(dateISO: "2017-09-24T19:58:19+02:00", julianDay: 2_458_021.248_831_019, modifiedJulianDay: 58020.748_831_018_806),
            //            ExpectedJulian(dateISO: "2017-12-17T21:12:31+01:00", julianDay: 2_458_105.342_025_463, modifiedJulianDay: 58104.842_025_463_004),
            //            ExpectedJulian(dateISO: "2018-05-04T02:28:42+02:00", julianDay: 2_458_242.519_930_555_5, modifiedJulianDay: 58242.019_930_555_485),
            //            ExpectedJulian(dateISO: "2018-01-21T18:41:34+01:00", julianDay: 2_458_140.237_199_074, modifiedJulianDay: 58139.737_199_074_12),
            //            ExpectedJulian(dateISO: "2018-04-05T02:36:54+02:00", julianDay: 2_458_213.525625, modifiedJulianDay: 58213.025_624_999_78),
            //            ExpectedJulian(dateISO: "2018-02-07T13:35:16+01:00", julianDay: 2_458_157.024_490_741, modifiedJulianDay: 58156.524_490_741_08),
            //            ExpectedJulian(dateISO: "2017-11-30T00:58:20+01:00", julianDay: 2_458_087.498_842_592_4, modifiedJulianDay: 58086.998_842_592_35),
            //            ExpectedJulian(dateISO: "2018-04-10T07:10:34+02:00", julianDay: 2_458_218.715_671_296, modifiedJulianDay: 58218.215_671_296_23),
            //            ExpectedJulian(dateISO: "2017-08-11T09:36:56+02:00", julianDay: 2_457_976.817_314_815, modifiedJulianDay: 57976.317_314_814_776),
            //            ExpectedJulian(dateISO: "2018-04-28T12:30:18+02:00", julianDay: 2_458_236.937_708_333, modifiedJulianDay: 58236.437_708_333_135),
            //            ExpectedJulian(dateISO: "2017-09-17T11:59:29+02:00", julianDay: 2_458_013.916_307_870_3, modifiedJulianDay: 58013.416_307_870_3)
            //        ]
            //
            //        dates.forEach {
            //            let date = $0.dateISO.parseISODate()!
            //            guard date.julianDay == $0.julianDay else {
            //                fail("Failed to evaluate julianDay of '\($0.dateISO)'. Got '\(date.julianDay)', expected '\($0.julianDay)'")
            //                return
            //            }
            //            guard date.modifiedJulianDay == $0.modifiedJulianDay else {
            //                fail("Failed to evaluate modifiedJulianDay of '\($0.dateISO)'. Got '\(date.modifiedJulianDay)', expected '\($0.modifiedJulianDay)'")
            //                return
            //            }
            //        }
            //    }
            
        }
    }
}
