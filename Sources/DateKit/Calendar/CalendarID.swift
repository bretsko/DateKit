


public typealias CalendarID = Calendar.Identifier
public typealias CalendarComp = Calendar.Component

// MARK: - Support for CalendarID encoding with Codable

extension CalendarID: HasDescrP {}
public extension CalendarID {
    
    private enum StringID: Str, StrEnumT {
        
        /// The common calendar in Europe, the Western Hemisphere, and elsewhere.
        case gregorian
        
        case buddhist
        
        case chinese
        
        case coptic
        
        case ethiopicAmeteMihret
        
        case ethiopicAmeteAlem
        
        case hebrew
        
        case iso8601
        
        case indian
        
        case islamic
        
        case islamicCivil
        
        case japanese
        
        case persian
        
        case republicOfChina
        
        /// A simple tabular Islamic calendar using the astronomical/Thursday epoch of CE 622 July 15
        case islamicTabular
        
        /// The Islamic Umm al-Qura calendar used in Saudi Arabia. This is based on astronomical calculation, instead of tabular behavior.
        case islamicUmmAlQura
    }
    
    var descr: Str {
        switch self {
        case .gregorian:
            return StringID.gregorian.s
        case .buddhist:
            return StringID.buddhist.s
        case .chinese:
            return StringID.chinese.s
        case .coptic:
            return StringID.coptic.s
        case .ethiopicAmeteMihret:
            return StringID.ethiopicAmeteMihret.s
        case .ethiopicAmeteAlem:
            return StringID.ethiopicAmeteAlem.s
        case .hebrew:
            return StringID.hebrew.s
        case .iso8601:
            return StringID.iso8601.s
        case .indian:
            return StringID.indian.s
        case .islamic:
            return StringID.islamic.s
        case .islamicCivil:
            return StringID.islamicCivil.s
        case .japanese:
            return StringID.japanese.s
        case .persian:
            return StringID.persian.s
        case .republicOfChina:
            return StringID.republicOfChina.s
        case .islamicTabular:
            return StringID.islamicTabular.s
        case .islamicUmmAlQura:
            return StringID.islamicUmmAlQura.s
        @unknown default:
            fatalError("Unsupported calendar \(self)")
        }
    }
    
    init(_ rawValue: Str) {
        let value = StringID(rawValue: rawValue)!
        
        switch value {
        case .gregorian:
            self = .gregorian
        case .buddhist:
            self = .buddhist
        case .chinese:
            self = .chinese
        case .coptic:
            self = .coptic
        case .ethiopicAmeteMihret:
            self = .ethiopicAmeteMihret
        case .ethiopicAmeteAlem:
            self = .ethiopicAmeteAlem
        case .hebrew:
            self = .hebrew
        case .iso8601:
            self = .iso8601
        case .indian:
            self = .indian
        case .islamic:
            self = .islamic
        case .islamicCivil:
            self = .islamicCivil
        case .japanese:
            self = .japanese
        case .persian:
            self = .persian
        case .republicOfChina:
            self = .republicOfChina
        case .islamicTabular:
            self = .islamicTabular
        case .islamicUmmAlQura:
            self = .islamicUmmAlQura
        }
    }
}


extension CalendarID: HasCalendar {
    
    public var calendar: Calendar {
        Calendar(identifier: self)
    }
}

