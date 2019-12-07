




public extension Date {
    
    func rounded(_ mode: RoundingMode) -> Date? {
        
        switch mode {
        case .mins(let minutes):
            let onesDigit = minute % 10
            if onesDigit < 5 {
                return rounded(.floorMins(minutes))
            }
            return rounded(.ceilMins(minutes))
            
        case .ceilMins(let minutes):
            //            guard let second = second else {
            //                return nil
            //            }
            let remain = minute % minutes
            let value = Int(1.minutes.timeInterval) * (minutes - remain) - second
            return adding(value, of: .second)
            
        case .floorMins(let minutes):
            //            guard let second = second else {
            //                return nil
            //            }
            let remain = minute % minutes
            let value = -((Int(1.minutes.timeInterval) * remain) + second)
            return adding(value, of: .second)
        }
    }
}


//MARK: Rounding mode

/// Round off/up (ceil) or down (floor)
public enum RoundingMode {
    
    /// round to given number of minutes
    case mins(Int)
    
    /// round up to given number of minutes
    case ceilMins(Int)
    
    /// round down to given number of minutes
    case floorMins(Int)
}
public extension RoundingMode {
    
    static var to5Mins: Self {
         .mins(5)
    }
    static var to10Mins: Self {
         .mins(10)
    }
    static var to30Mins: Self {
         .mins(30)
    }
    
    static var toCeil5Mins: Self {
         .ceilMins(5)
    }
    static var toCeil10Mins: Self {
         .ceilMins(10)
    }
    static var toCeil30Mins: Self {
         .ceilMins(30)
    }
    
    static var toFloor5Mins: Self {
         .floorMins(5)
    }
    static var toFloor10Mins: Self {
         .floorMins(10)
    }
    static var toFloor30Mins: Self {
         .floorMins(30)
    }
}

