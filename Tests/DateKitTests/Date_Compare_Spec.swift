
import DateKit
import Quick
import Nimble

class Date_Compare_Spec: QuickSpec {
    
    override func spec() {
        
        describe("Date") {
            
            it("can evaluate with precision") {
                
//                let dateFormat = "yyyy-MM-dd HH:mm:ss"
//
//                let date = Date("2015-01-01 00:00:00",
//                                 format: dateFormat,
//                                 DateRegion.rome)!
//
//                let dateA = Date("2015-01-01 01:00:00",
//                                  format: dateFormat,
//                                  DateRegion.rome)!
//
//                let dateB = Date("2014-12-31 22:30:00",
//                                  format: dateFormat,
//                                  DateRegion.rome)!
//
//                let dateC = Date("2015-01-01 04:00:00",
//                                  format: dateFormat,
//                                  DateRegion.rome)!
//                var r = dateA.compare(to: date, precision: 1.hours.timeInterval)
//                expect(r).to(beTrue())
//
//                r = dateB.compare(to: date, precision: 1.hours.timeInterval)
//                expect(r).to(beFalse())
//
//                r = dateC.compare(to: date, precision: 3.hours.timeInterval)
//                expect(r).to(beFalse())
//
//                r = dateA.compare(to:date, precision: 1.hours.timeInterval)
//                expect(r).to(beTrue())
            }
            
            it("can evaluate with granularity") {
                
//                let dateFormat = "yyyy-MM-dd HH:mm:ss"
//
//                // Same day/month/year granularity
//                let date1 = Date("2018-06-19 01:00:00",
//                                  format: dateFormat,
//                                  DateRegion.rome)!
//
//                let date2 = Date("2018-06-19 20:00:00",
//                                  format: dateFormat,
//                                  DateRegion.rome)!
//
//                expect(date1.compare(to: date2, granularity: .day))
//                    .to(equal(.orderedSame))
//
//                expect(date1.compare(to: date2, granularity: .month))
//                    .to(equal(.orderedSame))
//
//                expect(date1.compare(to: date2, granularity: .year))
//                    .to(equal(.orderedSame))
//
//                // Different day
//
//                let date3 = Date("2018-06-21 20:00:00",
//                                  format: dateFormat,
//                                  DateRegion.rome)!
//
//                expect(date2.compare(to: date3, granularity: .day))
//                    .to(equal(.orderedAscending))
//
//                expect(date2.compare(to: date3, granularity: .month))
//                    .to(equal(.orderedSame))
//
//                expect(date2.compare(to: date3, granularity: .hour))
//                    .to(equal(.orderedAscending))
            }
            
            it("can check which date is earlier") {
                
//                let dateFormat = "yyyy-MM-dd HH:mm:ss"
//
//                let date1 = Date("2018-06-19 01:00:00",
//                                  format: dateFormat,
//                                  DateRegion.rome)!
//
//                let date2 = Date("2018-06-19 01:00:00",
//                                  format: dateFormat,
//                                  DateRegion.london)!
//
//                let date3 = Date("2018-06-21 01:10:00",
//                                  format: dateFormat,
//                                  DateRegion.rome)!
//
//                expect(date1.isBefore(date2, granularity: .hour))
//                    .to(beTrue())
//
//                expect(date1.isBefore(date3, granularity: .hour))
//                    .to(beTrue())
//
//                expect(date1.isBefore(date2, granularity: .day))
//                    .to(beFalse())
            }
            
            it("can check which date is later") {
                
//                let dateFormat = "yyyy-MM-dd HH:mm:ss"
//
//                let date1 = Date("2018-06-19 01:00:00",
//                                  format: dateFormat,
//                                  DateRegion.rome)!
//
//                let date2 = Date("2018-06-19 01:00:00",
//                                  format: dateFormat,
//                                  DateRegion.london)!
//
//                let date3 = Date("2018-06-21 01:10:00",
//                                  format: dateFormat,
//                                  DateRegion.rome)!
//
//                let date4 = Date("2018-06-30 00:00:00",
//                                  format: dateFormat,
//                                  DateRegion.rome)!
//
//                let date5 = Date("2018-06-30 00:00:00",
//                                  format: dateFormat,
//                                  DateRegion.london)!
//
//                expect(date3.isAfter(date1, granularity: .day))
//                    .to(beTrue())
//
//                expect(date1.isAfter(date3, granularity: .month))
//                    .to(beFalse())
//
//                expect(date4.isAfter(date5, granularity: .month))
//                    .to(beFalse())
//
//                expect(date2.isAfter(date1, granularity: .year))
                   // .to(beFalse())
            }
            
            it("can check date in range") {
                
//                let dateFormat = "yyyy-MM-dd HH:mm:ss"
//
//                let lowerBound = Date("2018-05-31 23:00:00",
//                                       format: dateFormat,
//                                       DateRegion.rome)!
//                let upperBound = Date("2018-06-01 01:00:00",
//                                       format: dateFormat,
//                                       DateRegion.rome)!
//
//                let testDate1 = Date("2018-06-01 00:02:00",
//                                      format: dateFormat,
//                                      DateRegion.rome)!
//
//                var r = testDate1.isInRange(between: lowerBound,
//                                            and: upperBound,
//                                            strictEquality: true,
//                                            granularity: .hour)
//                expect(r).to(beTrue())
//
//                let testDate2 = Date("2018-06-01 00:02:00",
//                                      format: dateFormat,
//                                      DateRegion.london)!
//
//                r = testDate2.isInRange(between: lowerBound,
//                                        and: upperBound,
//                                        strictEquality: true,
//                                        granularity: .hour)
//                expect(r).to(beTrue())
//
//                let testDate3 = Date("2018-06-01 01:00:01",
//                                      format: dateFormat,
//                                      DateRegion.london)!
//                r = testDate3.isInRange(between: lowerBound,
//                                        and: upperBound,
//                                        strictEquality: true,
//                                        granularity: .hour)
//                expect(r).to(beFalse())
            }
            
            it("can check that date is in range") {
                
//                let dateFormat = "yyyy-MM-dd HH:mm:ss"
//
//                let date1 = Date("2018-01-01 00:10:00",
//                                  format: dateFormat,
//                                  DateRegion.rome)!
//
//                let date2 = Date("2017-12-31 23:00:00",
//                                  format: dateFormat,
//                                  DateRegion.rome)!
//
//                let date3 = Date("2018-01-01 00:20:00",
//                                  format: dateFormat,
//                                  DateRegion.newYork)!
//
//                expect(date1 >= date2).to(beTrue())
//                expect(date1 > date2).to(beTrue())
//                expect(date3 >= date1).to(beTrue())
//                expect(date3 == date3).to(beTrue())
//                expect(date3 >= date3).to(beTrue())
//                expect(date3 <= date3).to(beTrue())
//                expect(date1 <= date3).to(beTrue())
            }
            
            
            it("can evaluate Dates") {
                
                // isToday
//                expect(Date().evaluate(.isToday)).to(beTrue())
//
//                var r = (Date() - 2.days).evaluate(.isToday)
//                expect(r).to(beFalse())
//
//                // isTomorrow
//                r = (Date() + 1.days + 5.minutes).evaluate(.isTomorrow)
//                expect(r).to(beTrue())
//
//                r = Date().date(at: .endOfDay)!.evaluate(.isTomorrow)
//                expect(r).to(beFalse())
//
//                //isYesterday
//                r = (Date().date(at:.startOfDay)! - 1.days).evaluate(.isYesterday)
//                expect(r).to(beTrue())
//
//                r = Date().date(at:.startOfDay)!.evaluate(.isYesterday)
//                expect(r).to(beFalse())
//
//                //isThisWeek
//                expect(Date().evaluate(.isThisWeek)).to(beTrue())
//                r = Date().date(at: .startOfWeek)!.evaluate(.isThisWeek)
//                expect(r).to(beTrue())
//
//                // isNextWeek
//                r = (Date() + 7.days).evaluate(.isNextWeek)
//                expect(r).to(beTrue())
//
//                r = (Date().date(at: .endOfWeek)! + 1.days).evaluate(.isNextWeek)
//                expect(r).to(beTrue())
//
//                // isLastWeek
//                r = (Date() - 7.days).evaluate(.isLastWeek)
//                expect(r).to(beTrue())
//                r = (Date().date(at: .startOfWeek)! - 1.days).evaluate(.isLastWeek)
//                expect(r).to(beTrue())
//
//                // isSameWeek
//                let dateFormat = "yyyy-MM-dd HH:mm:ss"
//
//                let dateA = Date("2018-06-19 01:00:00",format: dateFormat, DateRegion.rome)!
//
//                let dateB = Date("2018-06-23 22:30:00",format: dateFormat, DateRegion.rome)!
//
//                let dateC = Date("2018-06-17 23:59:00",format: dateFormat, DateRegion.rome)!
//
//                expect(dateA.evaluate(.isSameWeek(dateB))).to(beTrue())
//                expect(dateA.evaluate(.isSameWeek(dateC))).to(beFalse())
//
//                // isThisMonth
//                r = (Date().date(at:.startOfMonth)! + 6.days).evaluate(.isThisMonth)
//                expect(r).to(beTrue())
//
//                r = Date().evaluate(.isThisMonth)!
//                expect(r).to(beTrue())
//
//                r = (Date().date(at:.startOfMonth)! - 1.days).evaluate(.isThisMonth)
//                expect(r).to(beFalse())
//
//
//                // isNextMonth
//                r = (Date().date(at:.startOfMonth)! - 1.days).evaluate(.isNextMonth)
//                expect(r).to(beFalse())
//
//                r = (Date().date(at:.endOfMonth)! + 5.days).evaluate(.isNextMonth)
//                expect(r).to(beTrue())
//
//                expect(Date().evaluate(.isNextMonth)).to(beFalse())
//
//                // isLastMonth
//                r = (Date().date(at:.startOfMonth)! - 1.days).evaluate(.isLastMonth)
//                expect(r).to(beTrue())
//
//                r = (Date().date(at:.endOfMonth)! + 5.days).evaluate(.isLastMonth)
//                expect(r).to(beFalse())
//
//                r = Date().evaluate(.isLastMonth)
//                expect(r).to(beFalse())
//
//                // isSameMonth
//                let dateA1 = Date("2018-06-19 01:00:00",
//                                   format: dateFormat,
//                                   DateRegion.rome)!
//
//                let dateB1 = Date("2018-06-23 22:30:00",
//                                   format: dateFormat,
//                                   DateRegion.rome)!
//
////                let dateC1 = Date("2018-07-01 00:00:00",
////                                   format: dateFormat,
////                                   DateRegion.rome)!
//
//                r = dateA1.evaluate(.isSameMonth(dateB1))
//                expect(r).to(beTrue())
//
//                //FIXME:
//                // r = dateB1.evaluate(.isSameMonth(dateC1))
//                // expect(r).to(beFalse())
//
//                // prevWeek/nextWeek
//                expect(dateA1.date(at:.prevWeek)!.isoString())
//                    .to(equal("2018-06-11T00:00:00+02:00"))
//
//                expect(dateA1.date(at:.nextWeek)!.isoString())
//                    .to(equal("2018-06-25T00:00:00+02:00"))
//
//                // isThisYear
//                expect(Date().evaluate(.isThisYear)).to(beTrue())
//
//                r = (Date() + 1.years).evaluate(.isThisYear)
//                expect(r).to(beFalse())
//
//                r = (Date() - 1.years).evaluate(.isThisYear)
//                expect(r).to(beFalse())
//
//                // isSameYear
////                let dateA2 = Date("2018-01-01 00:00:00",
////                                   format: dateFormat,
////                                   DateRegion.rome)!
//                let dateB2 = Date("2017-12-31 23:59:59",
//                                   format: dateFormat,
//                                   DateRegion.rome)!
//                let dateC2 = Date("2018-12-31 23:59:59",
//                                   format: dateFormat,
//                                   DateRegion.rome)!
//
//                //FIXME:
//                //                r = dateA2.evaluate(.isSameYear(dateB2))
//                //                expect(r).to(beFalse())
//                //
//                //                r = dateA2.evaluate(.isSameYear(dateC2))
//                //                expect(r).to(beTrue())
//
//                r = dateB2.evaluate(.isSameYear(dateC2))
//                expect(r).to(beFalse())
//
//                // isInTheFuture
//                r = (Date() + 1.seconds).evaluate(.isInTheFuture)
//                expect(r).to(beTrue())
//
//                r = (Date() - 1.seconds).evaluate(.isInTheFuture)
//                expect(r).to(beFalse())
//
//                r = (Date() + 1.years).evaluate(.isInTheFuture)
//                expect(r).to(beTrue())
//
//                // isInThePast
//                r = (Date() - 1.seconds).evaluate(.isInThePast)
//                expect(r).to(beTrue())
//
//                r = (Date() + 1.seconds).evaluate(.isInThePast)
//                expect(r).to(beFalse())
//
//                r = (Date() - 1.years).evaluate(.isInThePast)
//                expect(r).to(beTrue())
//
//                // isEarlier
//                let dateA3 = Date("2018-01-01 00:00:00",
//                                   format: dateFormat,
//                                   DateRegion.rome)!
//
//                let dateB3 = Date("2017-12-31 23:59:59",
//                                   format: dateFormat,
//                                   DateRegion.rome)!
//
//                r = dateA3.evaluate(.isEarlier(than: dateB3))
//                expect(r).to(beFalse())
//
//                r = dateB3.evaluate(.isEarlier(than: dateA3))
//                expect(r).to(beTrue())
//
//
//                // isLater
//                r = dateA3.evaluate(.isLater(than: dateB3))
//                expect(r).to(beTrue())
//
//                r = dateB3.evaluate(.isLater(than: dateA3))
//                expect(r).to(beFalse())
//
//                // isWeekday
//                r = Date().date(at:.endOfWeek)!.evaluate(.isWeekday)
//                expect(r).to(beFalse())
//
//                r = (Date().date(at:.startOfWeek)! + 1.days).evaluate(.isWeekday)
//                expect(r).to(beTrue())
//
//                // isWeekend
//                r = Date().date(at:.endOfWeek)!.evaluate(.isWeekend)
//                expect(r).to(beTrue())
//
//                r = (Date().date(at:.startOfWeek)! + 1.days).evaluate(.isWeekend)
//                expect(r).to(beFalse())
//
//                r = Date().date(at:.endOfWeek)!.evaluate(.isWeekend)
//                expect(r).to(beTrue())
//
//                // isInDST
//                // DateRegion rome:
//                // 	25 Mar 2018 - Daylight Saving Time Started
//                // 	28 Oct 2018 - Daylight Saving Time Ends
//
//                let dateA4 = Date("2018-03-26 00:00:00",
//                                   format: dateFormat,
//                                   DateRegion.rome)!
//                let dateB4 = Date("2018-06-01 00:00:00",
//                                   format: dateFormat,
//                                   DateRegion.rome)!
//
//                expect(dateA4.evaluate(.isInDST)).to(beTrue())
//                expect(dateA4.evaluate(.isInDST)).to(beTrue())
//
//
//                let dateC4 = Date("2018-10-29 00:00:00",
//                                   format: dateFormat,
//                                   DateRegion.rome)!
//                let dateD4 = Date("2018-12-01 00:00:00",
//                                   format: dateFormat,
//                                   DateRegion.rome)!
//
//                expect(dateA4.evaluate(.isInDST)).to(beTrue())
//                expect(dateB4.evaluate(.isInDST)).to(beTrue())
//                expect(dateC4.evaluate(.isInDST)).to(beFalse())
//                expect(dateD4.evaluate(.isInDST)).to(beFalse())
//
//
//                // isMorning
//                let dateA5 = Date("2018-03-26 05:00:00",
//                                   format: dateFormat,
//                                   DateRegion.rome)!
//                let dateA6 = Date("2018-03-26 10:00:00",
//                                   format: dateFormat,
//                                   DateRegion.rome)!
//                let dateA7 = Date("2018-03-26 11:59:00",
//                                   format: dateFormat,
//                                   DateRegion.rome)!
//                let dateA8 = Date("2018-03-26 13:59:00",
//                                   format: dateFormat,
//                                   DateRegion.rome)!
//                let dateA9 = Date("2018-03-26 17:59:00",
//                                   format: dateFormat,
//                                   DateRegion.rome)!
//                let dateA10 = Date("2018-03-26 23:00:00",
//                                    format: dateFormat,
//                                    DateRegion.rome)!
//                let dateA11 = Date("2018-03-26 04:00:00",
//                                    format: dateFormat,
//                                    DateRegion.rome)!
//
//                expect(dateA5.evaluate(.isMorning)).to(beTrue())
//                expect(dateA6.evaluate(.isMorning)).to(beTrue())
//                expect(dateA7.evaluate(.isMorning)).to(beTrue())
//                expect(dateA8.evaluate(.isMorning)).to(beFalse())
//
//                // isAfternoon
//                expect(dateA5.evaluate(.isAfternoon)).to(beFalse())
//                expect(dateA8.evaluate(.isAfternoon)).to(beTrue())
//                expect(dateA9.evaluate(.isAfternoon)).to(beFalse())
//
//                // isEvening
//                expect(dateA9.evaluate(.isEvening)).to(beTrue())
//                expect(dateA10.evaluate(.isEvening)).to(beFalse())
//
//                // isNight
//                expect(dateA5.evaluate(.isNight)).to(beFalse())
//                expect(dateA11.evaluate(.isNight)).to(beTrue())
//                expect(dateA10.evaluate(.isNight)).to(beTrue())
            }
            
            //TODO:
            //            it("check Date is in range with granurality") {
            //                let startTime = Date(secondsSince1970: 1_538_344_800.0) // 2018-09-30 22:00:00 +0000
            //
            //                let endTime = Date(secondsSince1970: 1_540_940_400.0 + (60 * 60 * 3)) // 2018-10-31 02:00:00 +0000
            //
            //                let checkStart = Date(secondsSince1970: 1_540_976_400.0) // 2018-10-31 09:00:00 +0000
            //
            //                let isInside = checkStart.isInRange(between: startTime, and: endTime, strictEquality: true, granularity: .day)
            //                // ?? should return false even if its true
            //                expect(isInside).to(beTrue())
            //            }
        }
    }
}
