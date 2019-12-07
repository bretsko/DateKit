//
//
//import Quick
//import Nimble
//
//
//class Date_Math_Spec: QuickSpec {
//
//    override func spec() {
//
//        describe("Date") {
//
//            it("can be truncated") {
//
////                let date = Date("2017-07-22 15:03:50",
////                                format: "yyyy-MM-dd HH:mm:ss",
////                                DateRegion.rome)!
////                guard let date_truncatedAt = date.truncating([.month, .day, .minute]) else {
////                    fail()
////                    return
////                }
////                guard let date_truncatedFrom = date.truncatingAllComponents(startingWith: .hour) else {
////                    fail()
////                    return
////                }
//
//                //TODO: get and compare comps
//
//                //expect(result).to(equal(...))
//
//
//                // let str1 = "{abs_date=\'2017-01-01T14:00:50Z\', rep_date=\'2017-01-01T15:00:50+01:00\', region={calendar=\'gregorian\', timezone=\'Europe/Rome\', locale=\'it\'}"
//
//                // failed - expected to equal <{abs_date='2017-01-01T14:00:50Z', rep_date='2017-01-01T15:00:50+01:00', region={calendar='gregorian', timezone='Europe/Rome', locale='it'}>, got <2017-01-01 13:00:50 +0000>
//
//                //expect(d1_truncatedAt.description).to(equal(str1))
//
//
//                // failed - expected to equal <{abs_date='2017-07-21T22:00:00Z', rep_date='2017-07-22T00:00:00+02:00', region={calendar='gregorian', timezone='Europe/Rome', locale='it'}>, got <2017-07-22 00:00:00 +0000>
//                // let str2 = "{abs_date=\'2017-07-21T22:00:00Z\', rep_date=\'2017-07-22T00:00:00+02:00\', region={calendar=\'gregorian\', timezone=\'Europe/Rome\', locale=\'it\'}"
//                // expect(d1_truncatedFrom.description).to(equal(str2))
//            }
//
//            it("can be rounded") {
////                let format = "yyyy-MM-dd HH:mm:ss"
////
////                // Round down 10m
////                let d1 = Date("2017-07-22 00:03:50", format: format, DateRegion.rome)
////
////                let d1_rounded = d1?.rounded(.to10Mins)
////
////                // Round up 10min
////                let d2 = Date("2015-01-24 15:07:20", format: format, DateRegion.rome)!
////                let d2_roundedup10 = d2.rounded(.to10Mins)
////
////                // Round up 30min
////                let d2_roundedc30 = d2.rounded(.toCeil30Mins)
//
//                //TODO: get and compare comps
//
//                //expect(result).to(equal(...))
//
//                //expect( d1_rounded?.description == "{abs_date=\'2017-07-21T22:00:00Z\', rep_date=\'2017-07-22T00:00:00+02:00\', region={calendar=\'gregorian\', timezone=\'Europe/Rome\', locale=\'it\'}", "Failed to round a date down 10mins")
//
//                // expect( d2_roundedup10?.description == "{abs_date=\'2015-01-24T14:10:00Z\', rep_date=\'2015-01-24T15:10:00+01:00\', region={calendar=\'gregorian\', timezone=\'Europe/Rome\', locale=\'it\'}", "Failed to round a date up 10mins")
//
//                // expect( d2_roundedc30?.description == "{abs_date=\'2015-01-24T14:30:00Z\', rep_date=\'2015-01-24T15:30:00+01:00\', region={calendar=\'gregorian\', timezone=\'Europe/Rome\', locale=\'it\'}", "Failed to round a date ceil 30mins")
//                //
//            }
//
//            it("testDate_MathOperations") {
//
//                let dateFormat = "yyyy-MM-dd HH:mm:ss"
//
//                let region = DateRegion.rome
//                DateRegion.defaultRegion = region
//                let date1 = Date("2017-07-22 00:00:00",
//                                 format: dateFormat, region)!
//                let date2 = Date("2017-07-22 00:00:00",
//                                 format: dateFormat, region)!
//                let date3 = Date("2018-08-23 10:50:20",
//                                 format: dateFormat, region)!
//
//                // TEST #1
//                // (Date - Date) -> DateComponents
//
//                //"Failed to extract comps from math operation between dates"
//                expect(date1.diff(to: date2).allCompsAreZero).to(beTrue())
//
//                //"Failed to extract comps from math operation between dates"
//                expect(date3.diff(to: date2).hour).to(equal(-10))
//
//
//                //"Failed to extract comps from math operation between dates"
//                expect(date3.diff(to: date2).day).to(equal(-1))
//
//                // "Failed to extract comps from math operation between dates"
//                expect(date3.diff(to: date2).year).to(equal(-1))
//
//
//                // TEST #2
//                // (Date + DateComponents) -> Date
////                let comps1 = DateComponents(day: 1, hour: 2, minute: 30)
////
////                let finalDate1 = (date1 + comps1)!.format(format:dateFormat)
//
//                //FIXME: failing
////                // "Failed to sum date to comps and get the exact final date"
////                expect(finalDate1).to(equal("2017-07-23 02:30:00"))
////
////
////                // TEST #3
////                let comps2 = DateComponents(year: 1, weekOfYear: 2)
////
////                let finalDate2 = (date1 + comps2)!.format(format:dateFormat)
////                // "Failed to sum date to comps and get the exact final date"
////                expect(finalDate2).to(equal("2018-08-05 00:00:00"))
////
////
////                // TEST #4
////                // (Date - DateComponents) -> Date
////                let comps3 = DateComponents(day: 30,
////                                            hour: 27)
////                let finalDate3 = (date1 - comps3)!.format(format:dateFormat)
////                // "Failed to minus date to comps and get the exact final date"
////                expect(finalDate3).to(equal("2017-06-20 21:00:00"))
//
//
//
//
//                // TEST #5
////                let finalDate4 = (date1 + [CalendarComp.year: 1]).format(format:dateFormat)
////                // "Failed to add comps dict and get the exact final date"
////                expect(finalDate4).to(equal("2018-07-22 00:00:00"))
////
////
////                // TEST #6
////                let finalDate5 = (date1 + [CalendarComp.day: 20, CalendarComp.hour: 10]).format(format:dateFormat)
////                // "Failed to add comps dict and get the exact final date"
////                expect(finalDate5).to(equal("2017-08-11 10:00:00"))
//            }
//
//            it("testNextWeekday") {
//                //expect(result).to(equal(...))
//                //        let rome = DateRegion.rome
//                //        let dateFormat = "yyyy-MM-dd HH:mm:ss"
//                //
//                //        let date1 = Date("2019-05-11 00:00:00", format: dateFormat, rome)!
//                //        let nextFriday = date1.nextWeekday(.friday)
//                //        expect(nextFriday.isoString() == "2019-05-17T00:00:00+02:00",
//                //                  "Failed to get the next weekday from date")
//            }
//
//
//
//            //TODO:
//            // it("testDateAtWeekdayOrdinal") {
//            //expect(result).to(equal(...))
//            //        let rome = DateRegion.rome
//            //        let dateFormat = "yyyy-MM-dd HH:mm:ss"
//            //
//            //        let date1 = Date("2019-05-11 00:00:00", format: dateFormat, rome)!
//            //        let result = date1.date(at:weekdayOrdinal: 3, weekday: .friday, monthNumber: date1.month + 1)!
//            //        expect(result.isoString() == "2019-06-21T00:00:00+02:00", "Failed to get the next weekday from date")
//        }
//    }
//}
