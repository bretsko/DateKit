



public extension Int {
    
    /// Create a `DateComps` with Int value set as nanoseconds
    var nanoseconds: DateComps {
        DateComps(value: self, .nanosecond)
    }
    
    /// Create a `DateComps` with Int value set as seconds
    var seconds: DateComps {
        DateComps(value: self, .second)
    }
    
    /// Create a `DateComps` with Int value set as minutes
    var minutes: DateComps {
        DateComps(value: self, .minute)
    }
    
    /// Create a `DateComps` with Int value set as hours
    var hours: DateComps {
        DateComps(value: self, .hour)
    }
    
    /// Create a `DateComps` with Int value set as days
    var days: DateComps {
        DateComps(value: self, .day)
    }
    
    /// Create a `DateComps` with Int value set as weeks
    var weeks: DateComps {
        DateComps(value: self, .weekOfYear)
    }
    
    /// Create a `DateComps` with Int value set as months
    var months: DateComps {
        DateComps(value: self, .month)
    }
    
    /// Create a `DateComps` with Int value set as years
    var years: DateComps {
        DateComps(value: self, .year)
    }
    
    /// Create a `DateComps` with Int value set as quarters
    var quarters: DateComps {
        DateComps(value: self, .quarter)
    }
}

// MARK: - Internal Extension for UnicodeScalar type

extension UnicodeScalar {
    
    /// current character is a digit (arabic)
    var isDigit: Bool {
        "0"..."9" ~= self
    }
    
    /// current character is a space
    var isSpace: Bool {
        CharSet.whitespaces.contains(self)
    }
}
