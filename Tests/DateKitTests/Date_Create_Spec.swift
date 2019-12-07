

import DateKit
import Quick
import Nimble

class Date_Create_Spec: QuickSpec {
    
    override func spec() {
        
        describe("Date") {
            
            it("testDate_DateBySetTime") {
                //expect(result).to(equal(...))
                
                //        let rome = DateRegion.rome
                //        let date1 = Date("2010-01-01 00:00:00", format: "yyyy-MM-dd HH:mm:ss", rome)!
                //        guard let date1a = date1.changing(hour: 20, min: 13, secs: 15) else {
                //            fail("Failed to alter date's time")
                //            return
                //        }
                //        expect( (date1a.hour == 20 && date1a.minute == 13 && date1a.second == 15 ), "Failed to alter date's time")
                //
                //        // altering only one comp
                //        guard let date2a = date1.changing(hour: 20, min: nil, secs: nil) else {
                //            fail("Failed to alter date's time")
                //            return
                //        }
                //        expect( (date2a.hour == 20 && date2a.minute == 00 && date2a.second == 00 ), "Failed to alter date's time")
                //expect(result).to(equal(...))
                
            }
            
            it("testDate_DateBySet") {
                //        // swiftlint:disable nesting
                //        struct ExpectDateBySet {
                //            var comps: [CalendarComp: Int?] = [:]
                //
                //            init() {
                //                let allCmps: [CalendarComp] = [.second, .minute, .hour, .day, .month, .year]
                //                for i in 0..<allCmps.count {
                //                    let componentToAlter = allCmps[i]
                //                    let range: ClosedRange<Int>?
                //                    switch componentToAlter {
                //                    case .second, .minute:    range = 0...50
                //                    case .hour:                range = 0...20
                //                    case .day:                range = 1...28
                //                    case .month:            range = 1...12
                //                    case .year:                range = 2000...2050
                //                    default:                range = nil
                //                    }
                //                    if let range = range {
                //                        let value = randomNumber(inRange: range)
                //                        comps[componentToAlter] = value
                //                    }
                //                }
                //            }
                //
                //            func verify(date: Date) {
                //                comps.keys.forEach {
                //                    if let value = date.dateComps.value(for: $0), let expected = comps[$0] as? Int {
                //                        if value != expected {
                //                            fail("Failed to set value of comp \($0). Got \(value), expected \(expected)")
                //                            return
                //                        }
                //                    }
                //                }
                //            }
                //        }
                //
                //        for _ in 0..<50 {
                //            let randomDate = "2041-05-18T18:00:25Z".parseISODate()! //Date.randomDate(region: rome)
                //            let alterComponents = ExpectDateBySet()
                //            if let alteredDate = randomDate.changing(alterComponents.comps) {
                //                alterComponents.verify(date: alteredDate)
                //            }
                //        }
                //expect(result).to(equal(...))
            }
            
            it("testDate_RandomDatesInRange") {
                //        // Random dates
                //        let regionNorw = DateRegion(CalendarID.gregorian, TimeZoneID.europeOslo, LID.norwegianBokmlSvalbardJanMayen)
                //        let randomDateAny = Date.randomDate(region: regionNorw)
                //        guard randomDateAny.region == regionNorw else {
                //            fail("Failed to generate a random date in region")
                //            return
                //        }
                //
                //        // Random dates in range
                //        let rome = DateRegion.rome
                //        let upperLimit = Date("2015-01-01 00:00:00", format: "yyyy-MM-dd HH:mm:ss", rome)!
                //        let lowerLimit = Date("2010-01-01 00:00:00", format: "yyyy-MM-dd HH:mm:ss", rome)!
                //
                //        let randomDates = Date.randomDates(count: 50, between: lowerLimit, and: upperLimit, rome)
                //        randomDates.forEach {
                //            guard $0.isInRange(between: lowerLimit, and: upperLimit) else {
                //                fail("Random date '\($0)' is not in given range")
                //                return
                //            }
                //        }
            }
            
            it("testDate_RandomDatesBackToDays") {
                //        for _ in 0..<50 {
                //            let daysBack = Int.random(in: 0..<365) + 1
                //            let randomDate = Date.randomDate(withinDaysBeforeToday: daysBack)
                //            guard randomDate.getInterval(to: Date(), comp: .day) <= daysBack else {
                //                fail("Failed to generate a random back date back to max \(daysBack) days")
                //                return
                //            }
                //        }
                //expect(result).to(equal(...))
            }
            
            it("testDate_EnumerateDates") {
                //        let rome = DateRegion.rome
                //
                //        // TEST DATE #1
                //        // +1 days
                //        let fromDate1 = Date("2015-01-01 00:00:00",
                //                              format: "yyyy-MM-dd HH:mm:ss",
                //                              rome)!
                //        let toDate1 = Date("2015-01-02 03:00:00",
                //                            format: "yyyy-MM-dd HH:mm:ss",
                //                            rome)!
                //
                //        let increment1 = DateComponents.create {
                //            $0.hour = 1
                //        }
                //        let enumeratedDates1 = Date.enumerateDates(from: fromDate1, to: toDate1, increment: increment1)
                //        let expectedDates1 = [
                //            "2015-01-01 00:00:00",
                //            "2015-01-01 01:00:00",
                //            "2015-01-01 02:00:00",
                //            "2015-01-01 03:00:00",
                //            "2015-01-01 04:00:00",
                //            "2015-01-01 05:00:00",
                //            "2015-01-01 06:00:00",
                //            "2015-01-01 07:00:00",
                //            "2015-01-01 08:00:00",
                //            "2015-01-01 09:00:00",
                //            "2015-01-01 10:00:00",
                //            "2015-01-01 11:00:00",
                //            "2015-01-01 12:00:00",
                //            "2015-01-01 13:00:00",
                //            "2015-01-01 14:00:00",
                //            "2015-01-01 15:00:00",
                //            "2015-01-01 16:00:00",
                //            "2015-01-01 17:00:00",
                //            "2015-01-01 18:00:00",
                //            "2015-01-01 19:00:00",
                //            "2015-01-01 20:00:00",
                //            "2015-01-01 21:00:00",
                //            "2015-01-01 22:00:00",
                //            "2015-01-01 23:00:00",
                //            "2015-01-02 00:00:00",
                //            "2015-01-02 01:00:00",
                //            "2015-01-02 02:00:00",
                //            "2015-01-02 03:00:00"]
                //        XCTExpectedFormattedDates(enumeratedDates1, expected: expectedDates1)
                //
                //        // TEST DATE #2
                //        // +1 hour, +30 minutes, +10 seconds
                //        let increment2 = DateComponents.create {
                //            $0.hour = 1
                //            $0.minute = 30
                //            $0.second = 10
                //        }
                //        let fromDate2 = Date("2015-01-01 10:00:00",
                //                              format: "yyyy-MM-dd HH:mm:ss",
                //                              rome)!
                //
                //        let toDate2 = Date("2015-01-02 03:00:00",
                //                            format: "yyyy-MM-dd HH:mm:ss",
                //                            rome)!
                //
                //        let enumeratedDates2 = Date.enumerateDates(from: fromDate2,
                //                                                    to: toDate2,
                //                                                    increment: increment2)
                //        let expectedDates2 = [
                //            "2015-01-01 10:00:00",
                //            "2015-01-01 11:30:10",
                //            "2015-01-01 13:00:20",
                //            "2015-01-01 14:30:30",
                //            "2015-01-01 16:00:40",
                //            "2015-01-01 17:30:50",
                //            "2015-01-01 19:01:00",
                //            "2015-01-01 20:31:10",
                //            "2015-01-01 22:01:20",
                //            "2015-01-01 23:31:30",
                //            "2015-01-02 01:01:40",
                //            "2015-01-02 02:31:50"
                //        ]
                //        XCTExpectedFormattedDates(enumeratedDates2, expected: expectedDates2)
                //
                //        // TEST DATE #3
                //        // +1 month
                //        let increment3 = DateComponents.create {
                //            $0.month = 1
                //        }
                //        let fromDate3 = Date("2015-01-01 01:00:00", format: "yyyy-MM-dd HH:mm:ss", rome)!
                //        let toDate3 = Date("2016-02-05 02:00:00", format: "yyyy-MM-dd HH:mm:ss", rome)!
                //        let enumeratedDates3 = Date.enumerateDates(from: fromDate3, to: toDate3, increment: increment3)
                //        let expectedDates3 = [
                //            "2015-01-01 01:00:00",
                //            "2015-02-01 01:00:00",
                //            "2015-03-01 01:00:00",
                //            "2015-04-01 01:00:00",
                //            "2015-05-01 01:00:00",
                //            "2015-06-01 01:00:00",
                //            "2015-07-01 01:00:00",
                //            "2015-08-01 01:00:00",
                //            "2015-09-01 01:00:00",
                //            "2015-10-01 01:00:00",
                //            "2015-11-01 01:00:00",
                //            "2015-12-01 01:00:00",
                //            "2016-01-01 01:00:00",
                //            "2016-02-01 01:00:00"
                //        ]
                //        XCTExpectedFormattedDates(enumeratedDates3, expected: expectedDates3)
                //    }
                //
                //    func XCTExpectedFormattedDates(_ list: [Date],
                //                                   expected expectedDates: [String]) {
                //        list.enumerated().forEach {
                //            let formatted = $0.element.format(format: "yyyy-MM-dd HH:mm:ss")!
                //            let expected = expectedDates[$0.offset]
                //            guard expected == formatted else {
                //                fail("Failed to enumerate dates. Got '\(formatted)' expected '\(expected)")
                //                return
                //            }
                //        }
            }
            
            it("testDate_oldestAndNewestAndSortsIn") {
                //expect(result).to(equal(...))
                //        let rome = DateRegion.rome
                //        let london = DateRegion(CalendarID.gregorian, TimeZoneID.europeLondon, LID.english)
                //        let regionNY = DateRegion(CalendarID.gregorian, TimeZoneID.americaNewYork, LID.english)
                //
                //        let datesArrayFormat = "yyyy-MM-dd HH:mm:ss"
                //
                //        let date1 = Date("2015-09-24 13:20:55", format: datesArrayFormat, rome)!
                //        let date2 = Date("2015-11-14 14:44:00", format: datesArrayFormat, rome)!
                //        let date3 = Date("2017-01-01 00:00:00", format: datesArrayFormat, rome)!
                //        let date4 = Date("2015-09-24 13:00:55", format: datesArrayFormat, regionNY)!
                //        let date5 = Date("2017-11-30 20:00:40", format: datesArrayFormat, regionNY)!
                //        let date6 = Date("2017-11-29 23:59:59", format: datesArrayFormat, london)!
                //        let datesArray = [date1, date2, date3, date4, date5, date6]
                //
                //        // Oldest and Newest
                //        expect( datesArray.oldest == date1, "Failed to get the oldest date in list")
                //        expect( datesArray.latest == date5, "Failed to get the latest date in list")
                //
                //        // Order by latest
                //        let orderedByNewest = datesArray.sortedByLatest
                //        XCTSameDateArray([date5, date6, date3, date2, date4, date1], orderedByNewest)
                //
                //        // Order by oldest
                //        let orderedByOldest = datesArray.sortedByOldest
                //        XCTSameDateArray([date1, date4, date2, date3, date6, date5], orderedByOldest)
                //    }
                //
                //    @discardableResult
                //    func XCTSameDateArray(_ left: [Date], _ right: [Date]) -> Bool {
                //        guard left.count == right.count else { return false }
                //        // swiftlint:disable for_where
                //        for idx in 0..<left.count {
                //            if left[idx] != right[idx] {
                //                fail("At index \(idx). Expected date = {\(left[idx].date)}, got = {\(right[idx].date)}")
                //                return false
                //            }
                //        }
                //        return true
            }
            
            it("testDate_DateForWeekdays") {
                //        func validateArrayOfISODates(_ found: [String], _ expected: [String]) {
                //            guard found.count == expected.count else {
                //                fail("Failed to validate array of dates. Different in number.")
                //                return
                //            }
                //            for i in expected.indices {
                //                guard found[i] == expected[i] else {
                //                    fail("Failed to validate item '\(i)'. Found '\(found[i])', expecting '\(expected[i])'")
                //                    return
                //                }
                //            }
                //        }
                //
                //        let mondaysInJan2019 = Date.dates(for: .monday,
                //                                           inMonth: 1, ofYear: 2019,
                //                                           .UTC)!
                //        let isoDateStrings = mondaysInJan2019.map { $0.isoString() }.compactMap({$0})
                //        validateArrayOfISODates(isoDateStrings, [
                //            "2019-01-07T00:00:00Z",
                //            "2019-01-14T00:00:00Z",
                //            "2019-01-21T00:00:00Z",
                //            "2019-01-28T00:00:00Z"
                //        ])
                //
                //        let fromDate = Date(year: 2019, month: 5, day: 27, hour: 0, minute: 0)!
                //        let toDate = Date(year: 2019, month: 6, day: 8, hour: 0, minute: 0)!
                //
                //        let fridaysInJunePartial = Date.dates(for: .friday, from: fromDate, to: toDate, .UTC).map {
                //            $0.isoString()
                //        }.compactMap({$0})
                //        validateArrayOfISODates(fridaysInJunePartial, [
                //            "2019-05-31T00:00:00Z",
                //            "2019-06-07T00:00:00Z"
                //        ])
                //expect(result).to(equal(...))
            }
        }
    }
}


func randomNumber<T: SignedInteger>(inRange range: ClosedRange<T> = 1...6) -> T {
    let length = Int64(range.upperBound - range.lowerBound + 1)
    let value = Int64.random(in: 0..<Int64.max) % length + Int64(range.lowerBound)
    return T(value)
}
