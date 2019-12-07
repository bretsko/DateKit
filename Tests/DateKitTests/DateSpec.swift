//
//import DateKit
//import Quick
//import Nimble
//
//class DateSpec: QuickSpec {
//
//    override func spec() {
//
//        describe("Date") {
//
//            it("can parse with any locale") {
//
//                let dateItStr = "15 Settembre 2001"
//                let format = "dd MMM yyyy"
//                let dateIt = dateItStr.parseDate(format: format,
//                                                 DateRegion.rome)
//                expect(dateIt).toNot(beNil())
//
//                let dateEnStr = "10 July 2005"
//
//                // positive test
//                let dateEnSuccess = dateEnStr.parseDate(format: format,
//                                                        DateRegion.romeEnglish)
//                expect(dateEnSuccess).toNot(beNil())
//
//                // negative test
//                let dateEnFail = dateEnStr.parseDate(format: format,
//                                                     DateRegion.rome)
//                expect(dateEnFail).to(beNil())
//            }
//
//
//
//            it("can init with default region") {
//
//                DateRegion.defaultRegion = DateRegion(CalendarID.buddhist, TimeZoneID.indianCocos, LID.nepaliIndia)
//
//                let date = Date()
//
//                expect(date.region.timeZone)
//                    .to(equal(TimeZoneID.indianCocos.timezone))
//
//                expect(date.region.locale)
//                    .to(equal(LID.nepaliIndia.locale))
//                expect(date.calendar.id)
//                    .to(equal(CalendarID.buddhist.calendar.id))
//            }
//
//            it("can init with defaultRegion, from components") {
//
//                var comps = DateComponents()
//                comps.year = 1995
//                comps.month = 6
//                comps.day = 15
//                comps.hour = 16
//                comps.minute = 30
//                comps.second = 55
//
//                DateRegion.defaultRegion = DateRegion.rome
//
//                guard let dateInRome = Date(comps, DateRegion.rome) else {
//                    fail()
//                    return
//                }
//
//                //FIXME: failing
//
//                //Date must be expressed in Rome Time Zone which is UTC+1 for given date (1995/06/15)
//                //So we expect the same comps of the date comps and given hour -1 in absolute date (UTC)
//                expect(dateInRome.year).to(equal(comps.year!))
//                expect(dateInRome.month).to(equal(comps.month!))
//                expect(dateInRome.day).to(equal(comps.day!))
//                expect(dateInRome.hour).to(equal(comps.hour!))
//                expect(dateInRome.minute).to(equal(comps.minute!))
//                expect(dateInRome.second).to(equal(comps.second!))
//
//                //let regionUTC = DateRegion.UTC
//                // let date = dateInRome.date.rdate(in: regionUTC).hour
//                // expect(date).to(equal(14))
//            }
//
//            it("can init with defaultRegion, from params") {
//
//                //init with fixed parameters in a given region
//                let aDayInLondon = Date(year: 2001, month: 1, day: 5, hour: 23, minute: 30, second: 0, DateRegion.london)!
//                DateRegion.defaultRegion = DateRegion.london
//
//                let validDateLondon = aDayInLondon.year! == 2001 && aDayInLondon.month! == 1 && aDayInLondon.day! == 5 && aDayInLondon.hour! == 23 && aDayInLondon.minute! == 30 && aDayInLondon.second! == 0
//
//                expect(validDateLondon).to(beTrue())
//
//                //init with fixed parameters (and some other missings) in default region
//                DateRegion.defaultRegion = DateRegion.newYork
//                let aDayInNY = Date(year: 1995, month: 1, day: 5)!
//                let validDateNY = aDayInNY.year! == 1995 && aDayInNY.month! == 1 && aDayInNY.day! == 5 && aDayInNY.hour! == 0 && aDayInNY.minute! == 0 && aDayInNY.second! == 0
//
//                expect(validDateNY).to(beTrue())
//                expect(aDayInNY.region).to(equal(DateRegion.defaultRegion))
//            }
//
//            it("provides date components, using defaultRegion") {
//                DateRegion.defaultRegion = DateRegion.paris
//                let aDayInParis = Date(year: 2018, month: 5, day: 1, DateRegion.paris)!
//
//                // Components of the date are expressed into the context of the region in which the date is created
//                let comps = aDayInParis.dateComps
//                let areValidComponents = comps.day! == 1 && comps.month! == 5 && comps.year! == 2018 && comps.hour! == 0 && comps.minute! == 0 && comps.second! == 0
//                expect(areValidComponents).to(beTrue())
//            }
//
//            it("can init with components") {
//
//                // From comps in fixed region
//                let comps = DateComponents(calendar: nil, timeZone: nil, era: nil, year: 2001, month: 9, day: 11, hour: 12, minute: 0, second: 5, nanosecond: nil, weekday: nil, weekdayOrdinal: nil, quarter: nil, weekOfMonth: nil, weekOfYear: nil, yearForWeekOfYear: nil)
//
//                // uses region's calendar to make Date
//                guard let dateInRome = Date(comps, DateRegion.rome) else {
//                    fail()
//                    return
//                }
//                DateRegion.defaultRegion = DateRegion.rome
//
//                expect(dateInRome.year).to(equal(2001))
//                expect(dateInRome.month).to(equal(9))
//                expect(dateInRome.day).to(equal(11))
//                expect(dateInRome.hour).to(equal(12))
//                expect(dateInRome.minute).to(equal(0))
//                expect(dateInRome.second).to(equal(5))
//            }
//
//            it("can init from comps in default region") {
//
//                let comps1 = DateComponents(year: 2001,
//                                            month: 9,
//                                            day: 11,
//                                            hour: 12,
//                                            minute: 0,
//                                            second: 5)
//
//                 DateRegion.defaultRegion = DateRegion.utc
//
//                guard let dateInNY = Date(comps1, DateRegion.utc)  else {
//                    fail("Failed to create valid date from comps callback init")
//                    return
//                }
//
//                expect(dateInNY.year).to(equal(2001))
//                expect(dateInNY.month).to(equal(9))
//                expect(dateInNY.day).to(equal(11))
//                expect(dateInNY.hour).to(equal(12))
//                expect(dateInNY.minute).to(equal(0))
//                expect(dateInNY.second).to(equal(5))
//            }
//
//            it("can extract components") {
//
//                DateRegion.defaultRegion = DateRegion.paris
//
//                let date = Date(year: 2006,
//                                month: 1,
//                                day: 1,
//                                hour: 0,
//                                minute: 45,
//                                second: 30,
//                                DateRegion.paris)!
//
//                // Validate in local region
//                let comps = date.dateComps
//
//                expect(comps.year!).to(equal(2006))
//                expect(comps.month!).to(equal(1))
//                expect(comps.day!).to(equal(1))
//                expect(comps.hour!).to(equal(0))
//                expect(comps.minute!).to(equal(45))
//                expect(comps.second!).to(equal(30))
//
//                // Validate in UTC
//                DateRegion.defaultRegion = DateRegion.utc
//                let compsUTC = date.date.dateComps
//
//                expect(compsUTC.year!).to(equal(2005))
//                expect(compsUTC.month!).to(equal(12))
//                expect(compsUTC.day!).to(equal(31))
//                expect(compsUTC.hour!).to(equal(23))
//                expect(compsUTC.minute!).to(equal(45))
//                expect(compsUTC.second!).to(equal(30))
//            }
//
//            it("can init with string autoformat") {
//
//                //        // init with no format (yyyy-MM-dd'T'HH:mm:ssZZZZZ)
//                //        let expectedResult = ExpectedValues {
//                //            $0.year = 2015
//                //            $0.month = 9
//                //            $0.day = 24
//                //            $0.hour = 13
//                //            $0.minute = 20
//                //            $0.second = 55
//                //        }
//                //
//                //        XCTValidateParse(string: "1:20 48055000", format: nil, regionParis, expectedComps: ExpectedValues {
//                //            $0.hour = 13
//                //            $0.minute = 20
//                //            $0.msInDay = 48_056_000
//                //        }) // h:mm A
//                //        XCTValidateParse(string: "après Jésus-Christ-[4]04-jeu.", format: nil, regionParis, expectedComps: ExpectedValues {
//                //            $0.day = 27
//                //            $0.era = 1
//                //        }) // GGGG-[W]WW-E
//                //        XCTValidateParse(string: "après Jésus-Christ-[4]04", format: nil, regionParis, expectedComps: ExpectedValues {
//                //            $0.era = 1
//                //        }) // GGGG-[W]WW
//                //        XCTValidateParse(string: "2015-09-24T13:20:55+02:00", format: nil, regionParis, expectedComps: expectedResult) // yyyy-MM-dd'T'HH:mm:ssZZZZZ
//                //        XCTValidateParse(string: "2015-09-24T13:20:55Z", format: nil, regionParis, expectedComps: expectedResult) // yyyy'-'MM'-'dd'T'HH':'mm':'ss'Z'
//                //        XCTValidateParse(string: "2015-09-24T13:20:55.000Z", format: nil, regionParis, expectedComps: expectedResult) // yyyy'-'MM'-'dd'T'HH':'mm':'ss'.'SSS'Z'
//                //        XCTValidateParse(string: "2015-09-24T13:20:55.000+0200", format: nil, regionParis, expectedComps: expectedResult) // yyyy-MM-dd'T'HH:mm:ss.SSSZ
//                //        XCTValidateParse(string: "2015-09-24", format: nil, regionParis, expectedComps: ExpectedValues {
//                //            $0.year = 2015
//                //            $0.month = 9
//                //            $0.day = 24
//                //        }) // yyyy-MM-dd
//                //        XCTValidateParse(string: "2015-09-24 13:20:55", format: nil, regionParis, expectedComps: expectedResult) // yyyy-MM-dd HH:mm:ss
//                //        XCTValidateParse(string: "1:20:55 48055000", format: nil, regionParis, expectedComps: ExpectedValues {
//                //            $0.hour = 13
//                //            $0.minute = 20
//                //            $0.second = 55
//                //            $0.msInDay = 48_056_000
//                //        }) // h:mm:ss A
//                //        XCTValidateParse(string: "09/24/2015", format: nil, regionParis, expectedComps: ExpectedValues {
//                //            $0.month = 9
//                //            $0.day = 24
//                //            $0.year = 2015
//                //            $0.hour = 0
//                //            $0.minute = 0
//                //            $0.second = 0
//                //        }) // MM/dd/yyyy
//                //        XCTValidateParse(string: "septembre 24, 2015", format: nil, regionParis, expectedComps: ExpectedValues {
//                //            $0.month = 9
//                //            $0.day = 24
//                //            $0.year = 2015
//                //            $0.hour = 0
//                //            $0.minute = 0
//                //            $0.second = 0
//                //        }) // MMMM d, yyyy
//                //        XCTValidateParse(string: "002015-09-24", format: nil, regionParis, expectedComps: ExpectedValues {
//                //            $0.month = 9
//                //            $0.day = 24
//                //            $0.year = 2015
//                //            $0.hour = 0
//                //            $0.minute = 0
//                //            $0.second = 0
//                //        }) // yyyyyy-MM-dd
//                //        XCTValidateParse(string: "2015-09-24", format: nil, regionParis, expectedComps: ExpectedValues {
//                //            $0.month = 9
//                //            $0.day = 24
//                //            $0.year = 2015
//                //            $0.hour = 0
//                //            $0.minute = 0
//                //            $0.second = 0
//                //        }) // yyyy-MM-dd
//                //        XCTValidateParse(string: "2015-024", format: nil, regionParis, expectedComps: ExpectedValues {
//                //            $0.dayOfYear = 24
//                //            $0.year = 2015
//                //            $0.hour = 0
//                //            $0.minute = 0
//                //            $0.second = 0
//                //        }) // yyyy-ddd
//                //        XCTValidateParse(string: "13:20:55.0000", format: nil, regionParis, expectedComps: ExpectedValues {
//                //            $0.hour = 13
//                //            $0.minute = 20
//                //            $0.second = 55
//                //        }) // HH:mm:ss.SSSS
//                //        XCTValidateParse(string: "13:20:55", format: nil, regionParis, expectedComps: ExpectedValues {
//                //            $0.hour = 13
//                //            $0.minute = 20
//                //            $0.second = 55
//                //        }) // HH:mm:ss
//                //        XCTValidateParse(string: "13:20", format: nil, regionParis, expectedComps: ExpectedValues {
//                //            $0.hour = 13
//                //            $0.minute = 20
//                //        }) // HH:mm
//                //        XCTValidateParse(string: "13", format: nil, regionParis, expectedComps: ExpectedValues {
//                //            $0.hour = 13
//                //        }) // HH
//                //expect(result).to(equal(...))
//            }
//
//            it("is hashable") {
//
//                //                let aDayInParis = Date(year: 2018, month: 5, day: 1, DateRegion.regionParis)!
//                //                let sameDayInParis = Date(year: aDayInParis.year,
//                //                                           month: aDayInParis.month,
//                //                                           day: aDayInParis.day,
//                //                                           DateRegion.regionParis)
//                //
//                //                let r = aDayInParis.hashValue == sameDayInParis.hashValue
//                //                expect(r).to(beFalse(), description: "Failed to extract hash value from different date with same values")
//            }
//
//
//            it("has description") {
//
//                //                let aDayInParis = Date(year: 2018, month: 5, day: 1, DateRegion.regionParis)!
//                //
//                //                let expectedDescription = "{abs_date='2018-04-30T22:00:00Z', rep_date='2018-05-01T00:00:00+02:00', region={calendar='gregorian', timezone='Europe/Paris', locale='fr_FR'}"
//                //
//                //                expect(aDayInParis).to(equal(expectedDescription))
//            }
//
//            //??
//            //            it("can create distant past and future") {
//            //
//            //                expect(Date.past.date).to(equal(Date.distantPast), description: "Failed to create Date with distant past date")
//            //
//            //                    expect( (Date.future.date == Date.distantFuture), "Failed to create Date with distant future date")
//            //                //expect(result).to(equal(...))
//            //            }
//        }
//
//        //TODO:
//        it("can calculate difference between Dates") {
//            // let date1 = "2019-01-04".parseDate()!.date
//            // let date2 = "2019-01-05".parseDate()!.date
//            // let result = date1.difference(in: .day, from: date2)
//            // expect(result).to(equal(...))
//        }
//
//        it("can calculate difference between Dates") {
//            // add hour to dates
//            //                let date1 = "2019-01-04".parseDate()!.date
//            //                let date2 = "2019-01-05".parseDate()!.date
//            //                let result = date1.difference(in: [.hour, .day, .month], from: date2)
//            // expect(result).to(equal(...))
//        }
//    }
//}
