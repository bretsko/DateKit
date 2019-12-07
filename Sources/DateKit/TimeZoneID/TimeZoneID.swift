

@_exported import LocalBase

public enum TimeZoneID: Str, StrEnumT { //HasTimeZone
    
	case current
	case autoUpdating
    
	case africaAbidjan = "Africa/Abidjan"
	case africaAccra = "Africa/Accra"
	case africaAddisAbaba = "Africa/Addis_Ababa"
	case africaAlgiers = "Africa/Algiers"
	case africaAsmara = "Africa/Asmara"
	case africaBamako = "Africa/Bamako"
	case africaBangui = "Africa/Bangui"
	case africaBanjul = "Africa/Banjul"
	case africaBissau = "Africa/Bissau"
	case africaBlantyre = "Africa/Blantyre"
	case africaBrazzaville = "Africa/Brazzaville"
	case africaBujumbura = "Africa/Bujumbura"
	case africaCairo = "Africa/Cairo"
	case africaCasablanca = "Africa/Casablanca"
	case africaCeuta = "Africa/Ceuta"
	case africaConakry = "Africa/Conakry"
	case africaDakar = "Africa/Dakar"
	case africaDarEsSalaam = "Africa/Dar_es_Salaam"
	case africaDjibouti = "Africa/Djibouti"
	case africaDouala = "Africa/Douala"
	case africaElAaiun = "Africa/El_Aaiun"
	case africaFreetown = "Africa/Freetown"
	case africaGaborone = "Africa/Gaborone"
	case africaHarare = "Africa/Harare"
	case africaJohannesburg = "Africa/Johannesburg"
	case africaJuba = "Africa/Juba"
	case africaKampala = "Africa/Kampala"
	case africaKhartoum = "Africa/Khartoum"
	case fricaKigali = "Africa/Kigali"
	case africaKinshasa = "Africa/Kinshasa"
	case africaLagos = "Africa/Lagos"
	case africaLibreville = "Africa/Libreville"
	case africaLome = "Africa/Lome"
	case africaLuanda = "Africa/Luanda"
	case africaLubumbashi = "Africa/Lubumbashi"
	case africaLusaka = "Africa/Lusaka"
	case africaMalabo = "Africa/Malabo"
	case africaMaputo = "Africa/Maputo"
	case africaMaseru = "Africa/Maseru"
	case africaMbabane = "Africa/Mbabane"
	case africaMogadishu = "Africa/Mogadishu"
	case africaMonrovia = "Africa/Monrovia"
	case africaNairobi = "Africa/Nairobi"
	case africaNdjamena = "Africa/Ndjamena"
	case africaNiamey = "Africa/Niamey"
	case africaNouakchott = "Africa/Nouakchott"
	case africaOuagadougou = "Africa/Ouagadougou"
	case africaPortoNovo = "Africa/Porto-Novo"
	case africaSaoTome = "Africa/Sao_Tome"
	case africaTripoli = "Africa/Tripoli"
	case africaTunis = "Africa/Tunis"
	case africaWindhoek = "Africa/Windhoek"
	case americaAdak = "America/Adak"
	case americaAnchorage = "America/Anchorage"
	case americaAnguilla = "America/Anguilla"
	case americaAntigua = "America/Antigua"
	case americaAraguaina = "America/Araguaina"
	case americaArgentinaBuenosAires = "America/Argentina/Buenos_Aires"
	case americaArgentinaCatamarca = "America/Argentina/Catamarca"
	case americaArgentinaCordoba = "America/Argentina/Cordoba"
	case americaArgentinaJujuy = "America/Argentina/Jujuy"
	case americaArgentinaLaRioja = "America/Argentina/La_Rioja"
	case americaArgentinaMendoza = "America/Argentina/Mendoza"
	case americaArgentinaRioGallegos = "America/Argentina/Rio_Gallegos"
	case americaArgentinaSalta = "America/Argentina/Salta"
	case americaArgentinaSanJuan = "America/Argentina/San_Juan"
	case americaArgentinaSanLuis = "America/Argentina/San_Luis"
	case americaArgentinaTucuman = "America/Argentina/Tucuman"
	case americaArgentinaUshuaia = "America/Argentina/Ushuaia"
	case americaAruba = "America/Aruba"
	case americaAsuncion = "America/Asuncion"
	case americaAtikokan = "America/Atikokan"
	case americaBahia = "America/Bahia"
	case americaBahiaBanderas = "America/Bahia_Banderas"
	case americaBarbados = "America/Barbados"
	case americaBelem = "America/Belem"
	case americaBelize = "America/Belize"
	case americaBlancSablon = "America/Blanc-Sablon"
	case americaBoaVista = "America/Boa_Vista"
	case americaBogota = "America/Bogota"
	case americaBoise = "America/Boise"
	case americaCambridgeBay = "America/Cambridge_Bay"
	case americaCampoGrande = "America/Campo_Grande"
	case americaCancun = "America/Cancun"
	case americaCaracas = "America/Caracas"
	case americaCayenne = "America/Cayenne"
	case americaCayman = "America/Cayman"
	case americaChicago = "America/Chicago"
	case americaChihuahua = "America/Chihuahua"
	case americaCostaRica = "America/Costa_Rica"
	case americaCreston = "America/Creston"
	case americaCuiaba = "America/Cuiaba"
	case americaCuracao = "America/Curacao"
	case americaDanmarkshavn = "America/Danmarkshavn"
	case americaDawson = "America/Dawson"
	case americaDawsonCreek = "America/Dawson_Creek"
	case americaDenver = "America/Denver"
	case americaDetroit = "America/Detroit"
	case americaDominica = "America/Dominica"
	case americaEdmonton = "America/Edmonton"
	case americaEirunepe = "America/Eirunepe"
	case americaElSalvador = "America/El_Salvador"
	case americaFortNelson = "America/Fort_Nelson"
	case americaFortaleza = "America/Fortaleza"
	case americaGlaceBay = "America/Glace_Bay"
	case americaGodthab = "America/Godthab"
	case americaGooseBay = "America/Goose_Bay"
	case americaGrandTurk = "America/Grand_Turk"
	case americaGrenada = "America/Grenada"
	case americaGuadeloupe = "America/Guadeloupe"
	case americaGuatemala = "America/Guatemala"
	case americaGuayaquil = "America/Guayaquil"
	case americaGuyana = "America/Guyana"
	case americaHalifax = "America/Halifax"
	case americaHavana = "America/Havana"
	case americaHermosillo = "America/Hermosillo"
	case americaIndianaIndianapolis = "America/Indiana/Indianapolis"
	case americaIndianaKnox = "America/Indiana/Knox"
	case americaIndianaMarengo = "America/Indiana/Marengo"
	case americaIndianaPetersburg = "America/Indiana/Petersburg"
	case americaIndianaTellCity = "America/Indiana/Tell_City"
	case americaIndianaVevay = "America/Indiana/Vevay"
	case americaIndianaVincennes = "America/Indiana/Vincennes"
	case americaIndianaWinamac = "America/Indiana/Winamac"
	case americaInuvik = "America/Inuvik"
	case americaIqaluit = "America/Iqaluit"
	case americaJamaica = "America/Jamaica"
	case americaJuneau = "America/Juneau"
	case americaKentuckyLouisville = "America/Kentucky/Louisville"
	case americaKentuckyMonticello = "America/Kentucky/Monticello"
	case americaKralendijk = "America/Kralendijk"
	case americaLaPaz = "America/La_Paz"
	case americaLima = "America/Lima"
	case americaLosAngeles = "America/Los_Angeles"
	case americaLowerPrinces = "America/Lower_Princes"
	case americaMaceio = "America/Maceio"
	case americaManagua = "America/Managua"
	case americaManaus = "America/Manaus"
	case americaMarigot = "America/Marigot"
	case americaMartinique = "America/Martinique"
	case americaMatamoros = "America/Matamoros"
	case americaMazatlan = "America/Mazatlan"
	case americaMenominee = "America/Menominee"
	case americaMerida = "America/Merida"
	case americaMetlakatla = "America/Metlakatla"
	case americaMexicoCity = "America/Mexico_City"
	case americaMiquelon = "America/Miquelon"
	case americaMoncton = "America/Moncton"
	case americaMonterrey = "America/Monterrey"
	case americaMontevideo = "America/Montevideo"
	case americaMontreal = "America/Montreal"
	case americaMontserrat = "America/Montserrat"
	case americaNassau = "America/Nassau"
	case americaNewYork = "America/New_York"
	case americaNipigon = "America/Nipigon"
	case americaNome = "America/Nome"
	case americaNoronha = "America/Noronha"
	case americaNorthDakotaBeulah = "America/North_Dakota/Beulah"
	case americaNorthDakotaCenter = "America/North_Dakota/Center"
	case americaNorthDakotaNewSalem = "America/North_Dakota/New_Salem"
	case americaOjinaga = "America/Ojinaga"
	case americaPanama = "America/Panama"
	case americaPangnirtung = "America/Pangnirtung"
	case americaParamaribo = "America/Paramaribo"
	case americaPhoenix = "America/Phoenix"
	case americaPortAuPrince = "America/Port-au-Prince"
	case americaPortOfSpain = "America/Port_of_Spain"
	case americaPortoVelho = "America/Porto_Velho"
	case americaPuertoRico = "America/Puerto_Rico"
	case americaRainyRiver = "America/Rainy_River"
	case americaRankinInlet = "America/Rankin_Inlet"
	case americaRecife = "America/Recife"
	case americaRegina = "America/Regina"
	case americaResolute = "America/Resolute"
	case americaRioBranco = "America/Rio_Branco"
	case americaSantaIsabel = "America/Santa_Isabel"
	case americaSantarem = "America/Santarem"
	case americaSantiago = "America/Santiago"
	case americaSantoDomingo = "America/Santo_Domingo"
	case americaSaoPaulo = "America/Sao_Paulo"
	case americaScoresbysund = "America/Scoresbysund"
	case americaShiprock = "America/Shiprock"
	case americaSitka = "America/Sitka"
	case americaStBarthelemy = "America/St_Barthelemy"
	case americaStJohns = "America/St_Johns"
	case americaStKitts = "America/St_Kitts"
	case americaStLucia = "America/St_Lucia"
	case americaStThomas = "America/St_Thomas"
	case americaStVincent = "America/St_Vincent"
	case americaSwiftCurrent = "America/Swift_Current"
	case americaTegucigalpa = "America/Tegucigalpa"
	case americaThule = "America/Thule"
	case americaThunderBay = "America/Thunder_Bay"
	case americaTijuana = "America/Tijuana"
	case americaToronto = "America/Toronto"
	case americaTortola = "America/Tortola"
	case americaVancouver = "America/Vancouver"
	case americaWhitehorse = "America/Whitehorse"
	case americaWinnipeg = "America/Winnipeg"
	case americaYakutat = "America/Yakutat"
	case americaYellowknife = "America/Yellowknife"
	case antarcticaCasey = "Antarctica/Casey"
	case antarcticaDavis = "Antarctica/Davis"
	case antarcticaDumontdurville = "Antarctica/DumontDUrville"
	case antarcticaMacquarie = "Antarctica/Macquarie"
	case antarcticaMawson = "Antarctica/Mawson"
	case antarcticaMcmurdo = "Antarctica/McMurdo"
	case antarcticaPalmer = "Antarctica/Palmer"
	case antarcticaRothera = "Antarctica/Rothera"
	case antarcticaSouthPole = "Antarctica/South_Pole"
	case antarcticaSyowa = "Antarctica/Syowa"
	case antarcticaTroll = "Antarctica/Troll"
	case antarcticaVostok = "Antarctica/Vostok"
	case arcticLongyearbyen = "Arctic/Longyearbyen"
	case asiaAden = "Asia/Aden"
	case asiaAlmaty = "Asia/Almaty"
	case asiaAmman = "Asia/Amman"
	case asiaAnadyr = "Asia/Anadyr"
	case asiaAqtau = "Asia/Aqtau"
	case asiaAqtobe = "Asia/Aqtobe"
	case asiaAshgabat = "Asia/Ashgabat"
	case asiaBaghdad = "Asia/Baghdad"
	case asiaBahrain = "Asia/Bahrain"
	case asiaBaku = "Asia/Baku"
	case asiaBangkok = "Asia/Bangkok"
	case asiaBeirut = "Asia/Beirut"
	case asiaBishkek = "Asia/Bishkek"
	case asiaBrunei = "Asia/Brunei"
	case asiaChita = "Asia/Chita"
	case asiaChoibalsan = "Asia/Choibalsan"
	case asiaChongqing = "Asia/Chongqing"
	case asiaColombo = "Asia/Colombo"
	case asiaDamascus = "Asia/Damascus"
	case asiaDhaka = "Asia/Dhaka"
	case asiaDili = "Asia/Dili"
	case asiaDubai = "Asia/Dubai"
	case asiaDushanbe = "Asia/Dushanbe"
	case asiaGaza = "Asia/Gaza"
	case asiaHarbin = "Asia/Harbin"
	case asiaHebron = "Asia/Hebron"
	case asiaHoChiMinh = "Asia/Ho_Chi_Minh"
	case asiaSaigon = "Asia/Saigon"
	case asiaHongKong = "Asia/Hong_Kong"
	case asiaHovd = "Asia/Hovd"
	case asiaIrkutsk = "Asia/Irkutsk"
	case asiaJakarta = "Asia/Jakarta"
	case asiaJayapura = "Asia/Jayapura"
	case asiaJerusalem = "Asia/Jerusalem"
	case asiaKabul = "Asia/Kabul"
	case asiaKamchatka = "Asia/Kamchatka"
	case asiaKarachi = "Asia/Karachi"
	case asiaKashgar = "Asia/Kashgar"
	case asiaKathmandu = "Asia/Kathmandu"
	case asiaKatmandu = "Asia/Katmandu"
	case asiaKhandyga = "Asia/Khandyga"
	case asiaKolkata = "Asia/Kolkata"
	case asiaKrasnoyarsk = "Asia/Krasnoyarsk"
	case asiaKualaLumpur = "Asia/Kuala_Lumpur"
	case asiaKuching = "Asia/Kuching"
	case asiaKuwait = "Asia/Kuwait"
	case asiaMacau = "Asia/Macau"
	case asiaMagadan = "Asia/Magadan"
	case asiaMakassar = "Asia/Makassar"
	case asiaManila = "Asia/Manila"
	case asiaMuscat = "Asia/Muscat"
	case asiaNicosia = "Asia/Nicosia"
	case asiaNovokuznetsk = "Asia/Novokuznetsk"
	case asiaNovosibirsk = "Asia/Novosibirsk"
	case asiaOmsk = "Asia/Omsk"
	case asiaOral = "Asia/Oral"
	case asiaPhnomPenh = "Asia/Phnom_Penh"
	case asiaPontianak = "Asia/Pontianak"
	case asiaPyongyang = "Asia/Pyongyang"
	case asiaQatar = "Asia/Qatar"
	case asiaQyzylorda = "Asia/Qyzylorda"
	case asiaRangoon = "Asia/Rangoon"
	case asiaRiyadh = "Asia/Riyadh"
	case asiaSakhalin = "Asia/Sakhalin"
	case asiaSamarkand = "Asia/Samarkand"
	case asiaSeoul = "Asia/Seoul"
	case asiaShanghai = "Asia/Shanghai"
	case asiaSingapore = "Asia/Singapore"
	case asiaSrednekolymsk = "Asia/Srednekolymsk"
	case asiaTaipei = "Asia/Taipei"
	case asiaTashkent = "Asia/Tashkent"
	case asiaTbilisi = "Asia/Tbilisi"
	case asiaTehran = "Asia/Tehran"
	case asiaThimphu = "Asia/Thimphu"
	case asiaTokyo = "Asia/Tokyo"
	case asiaUlaanbaatar = "Asia/Ulaanbaatar"
	case asiaUrumqi = "Asia/Urumqi"
	case asiaUstNera = "Asia/Ust-Nera"
	case asiaVientiane = "Asia/Vientiane"
	case asiaVladivostok = "Asia/Vladivostok"
	case asiaYakutsk = "Asia/Yakutsk"
	case asiaYekaterinburg = "Asia/Yekaterinburg"
	case asiaYerevan = "Asia/Yerevan"
	case atlanticAzores = "Atlantic/Azores"
	case atlanticBermuda = "Atlantic/Bermuda"
	case atlanticCanary = "Atlantic/Canary"
	case atlanticCapeVerde = "Atlantic/Cape_Verde"
	case atlanticFaroe = "Atlantic/Faroe"
	case atlanticMadeira = "Atlantic/Madeira"
	case atlanticReykjavik = "Atlantic/Reykjavik"
	case atlanticSouthGeorgia = "Atlantic/South_Georgia"
	case atlanticStHelena = "Atlantic/St_Helena"
	case atlanticStanley = "Atlantic/Stanley"
	case australiaAdelaide = "Australia/Adelaide"
	case australiaBrisbane = "Australia/Brisbane"
	case australiaBrokenHill = "Australia/Broken_Hill"
	case australiaCurrie = "Australia/Currie"
	case australiaDarwin = "Australia/Darwin"
	case australiaEucla = "Australia/Eucla"
	case australiaHobart = "Australia/Hobart"
	case australiaLindeman = "Australia/Lindeman"
	case australiaLordHowe = "Australia/Lord_Howe"
	case australiaMelbourne = "Australia/Melbourne"
	case australiaPerth = "Australia/Perth"
	case australiaSydney = "Australia/Sydney"
	case europeAmsterdam = "Europe/Amsterdam"
	case europeAndorra = "Europe/Andorra"
	case europeAthens = "Europe/Athens"
	case europeBelgrade = "Europe/Belgrade"
	case europeBerlin = "Europe/Berlin"
	case europeBratislava = "Europe/Bratislava"
	case europeBrussels = "Europe/Brussels"
	case europeBucharest = "Europe/Bucharest"
	case europeBudapest = "Europe/Budapest"
	case europeBusingen = "Europe/Busingen"
	case europeChisinau = "Europe/Chisinau"
	case europeCopenhagen = "Europe/Copenhagen"
	case europeDublin = "Europe/Dublin"
	case europeGibraltar = "Europe/Gibraltar"
	case europeGuernsey = "Europe/Guernsey"
	case europeHelsinki = "Europe/Helsinki"
	case europeIsleOfMan = "Europe/Isle_of_Man"
	case europeIstanbul = "Europe/Istanbul"
	case europeJersey = "Europe/Jersey"
	case europeKaliningrad = "Europe/Kaliningrad"
	case europeKiev = "Europe/Kiev"
	case europeLisbon = "Europe/Lisbon"
	case europeLjubljana = "Europe/Ljubljana"
	case europeLondon = "Europe/London"
	case europeLuxembourg = "Europe/Luxembourg"
	case europeMadrid = "Europe/Madrid"
	case europeMalta = "Europe/Malta"
	case europeMariehamn = "Europe/Mariehamn"
	case europeMinsk = "Europe/Minsk"
	case europeMonaco = "Europe/Monaco"
	case europeMoscow = "Europe/Moscow"
	case europeOslo = "Europe/Oslo"
	case europeParis = "Europe/Paris"
	case europePodgorica = "Europe/Podgorica"
	case europePrague = "Europe/Prague"
	case europeRiga = "Europe/Riga"
	case europeRome = "Europe/Rome"
	case europeSamara = "Europe/Samara"
	case europeSanMarino = "Europe/San_Marino"
	case europeSarajevo = "Europe/Sarajevo"
	case europeSimferopol = "Europe/Simferopol"
	case europeSkopje = "Europe/Skopje"
	case europeSofia = "Europe/Sofia"
	case europeStockholm = "Europe/Stockholm"
	case europeTallinn = "Europe/Tallinn"
	case europeTirane = "Europe/Tirane"
	case europeUzhgorod = "Europe/Uzhgorod"
	case europeVaduz = "Europe/Vaduz"
	case europeVatican = "Europe/Vatican"
	case europeVienna = "Europe/Vienna"
	case europeVilnius = "Europe/Vilnius"
	case europeVolgograd = "Europe/Volgograd"
	case europeWarsaw = "Europe/Warsaw"
	case europeZagreb = "Europe/Zagreb"
	case europeZaporozhye = "Europe/Zaporozhye"
	case europeZurich = "Europe/Zurich"
    
    //???
	//case gmt = "GMT"
    case utc = "UTC"
    
	case indianAntananarivo = "Indian/Antananarivo"
	case indianChagos = "Indian/Chagos"
	case indianChristmas = "Indian/Christmas"
	case indianCocos = "Indian/Cocos"
	case indianComoro = "Indian/Comoro"
	case indianKerguelen = "Indian/Kerguelen"
	case indianMahe = "Indian/Mahe"
	case indianMaldives = "Indian/Maldives"
	case indianMauritius = "Indian/Mauritius"
	case indianMayotte = "Indian/Mayotte"
	case indianReunion = "Indian/Reunion"
	case pacificApia = "Pacific/Apia"
	case pacificAuckland = "Pacific/Auckland"
	case pacificBougainville = "Pacific/Bougainville"
	case pacificChatham = "Pacific/Chatham"
	case pacificChuuk = "Pacific/Chuuk"
	case pacificEaster = "Pacific/Easter"
	case pacificEfate = "Pacific/Efate"
	case pacificEnderbury = "Pacific/Enderbury"
	case pacificFakaofo = "Pacific/Fakaofo"
	case pacificFiji = "Pacific/Fiji"
	case pacificFunafuti = "Pacific/Funafuti"
	case pacificGalapagos = "Pacific/Galapagos"
	case pacificGambier = "Pacific/Gambier"
	case pacificGuadalcanal = "Pacific/Guadalcanal"
	case pacificGuam = "Pacific/Guam"
	case pacificHonolulu = "Pacific/Honolulu"
	case pacificJohnston = "Pacific/Johnston"
	case pacificKiritimati = "Pacific/Kiritimati"
	case pacificKosrae = "Pacific/Kosrae"
	case pacificKwajalein = "Pacific/Kwajalein"
	case pacificMajuro = "Pacific/Majuro"
	case pacificMarquesas = "Pacific/Marquesas"
	case pacificMidway = "Pacific/Midway"
	case pacificNauru = "Pacific/Nauru"
	case pacificNiue = "Pacific/Niue"
	case pacificNorfolk = "Pacific/Norfolk"
	case pacificNoumea = "Pacific/Noumea"
	case pacificPagoPago = "Pacific/Pago_Pago"
	case pacificPalau = "Pacific/Palau"
	case pacificPitcairn = "Pacific/Pitcairn"
	case pacificPohnpei = "Pacific/Pohnpei"
	case pacificPonape = "Pacific/Ponape"
	case pacificPortMoresby = "Pacific/Port_Moresby"
	case pacificRarotonga = "Pacific/Rarotonga"
	case pacificSaipan = "Pacific/Saipan"
	case pacificTahiti = "Pacific/Tahiti"
	case pacificTarawa = "Pacific/Tarawa"
	case pacificTongatapu = "Pacific/Tongatapu"
	case pacificTruk = "Pacific/Truk"
	case pacificWake = "Pacific/Wake"
	case pacificWallis = "Pacific/Wallis"
}

public extension TimeZoneID {
    
    // HasTimeZone
    var timezone: TimeZone {
        switch self {
        case .current:
            return .current
        case .autoUpdating:
            return .autoupdatingCurrent
        default:
            return TimeZone(identifier: rawValue)!
        }
    }
}

// all time zones so far, from TimeZone.knownTimeZoneIdentifiers
//["Africa/Abidjan", "Africa/Accra", "Africa/Addis_Ababa", "Africa/Algiers", "Africa/Asmara", "Africa/Bamako", "Africa/Bangui", "Africa/Banjul", "Africa/Bissau", "Africa/Blantyre", "Africa/Brazzaville", "Africa/Bujumbura", "Africa/Cairo", "Africa/Casablanca", "Africa/Ceuta", "Africa/Conakry", "Africa/Dakar", "Africa/Dar_es_Salaam", "Africa/Djibouti", "Africa/Douala", "Africa/El_Aaiun", "Africa/Freetown", "Africa/Gaborone", "Africa/Harare", "Africa/Johannesburg", "Africa/Juba", "Africa/Kampala", "Africa/Khartoum", "Africa/Kigali", "Africa/Kinshasa", "Africa/Lagos", "Africa/Libreville", "Africa/Lome", "Africa/Luanda", "Africa/Lubumbashi", "Africa/Lusaka", "Africa/Malabo", "Africa/Maputo", "Africa/Maseru", "Africa/Mbabane", "Africa/Mogadishu", "Africa/Monrovia", "Africa/Nairobi", "Africa/Ndjamena", "Africa/Niamey", "Africa/Nouakchott", "Africa/Ouagadougou", "Africa/Porto-Novo", "Africa/Sao_Tome", "Africa/Tripoli", "Africa/Tunis", "Africa/Windhoek", "America/Adak", "America/Anchorage", "America/Anguilla", "America/Antigua", "America/Araguaina", "America/Argentina/Buenos_Aires", "America/Argentina/Catamarca", "America/Argentina/Cordoba", "America/Argentina/Jujuy", "America/Argentina/La_Rioja", "America/Argentina/Mendoza", "America/Argentina/Rio_Gallegos", "America/Argentina/Salta", "America/Argentina/San_Juan", "America/Argentina/San_Luis", "America/Argentina/Tucuman", "America/Argentina/Ushuaia", "America/Aruba", "America/Asuncion", "America/Atikokan", "America/Bahia", "America/Bahia_Banderas", "America/Barbados", "America/Belem", "America/Belize", "America/Blanc-Sablon", "America/Boa_Vista", "America/Bogota", "America/Boise", "America/Cambridge_Bay", "America/Campo_Grande", "America/Cancun", "America/Caracas", "America/Cayenne", "America/Cayman", "America/Chicago", "America/Chihuahua", "America/Costa_Rica", "America/Creston", "America/Cuiaba", "America/Curacao", "America/Danmarkshavn", "America/Dawson", "America/Dawson_Creek", "America/Denver", "America/Detroit", "America/Dominica", "America/Edmonton", "America/Eirunepe", "America/El_Salvador", "America/Fort_Nelson", "America/Fortaleza", "America/Glace_Bay", "America/Godthab", "America/Goose_Bay", "America/Grand_Turk", "America/Grenada", "America/Guadeloupe", "America/Guatemala", "America/Guayaquil", "America/Guyana", "America/Halifax", "America/Havana", "America/Hermosillo", "America/Indiana/Indianapolis", "America/Indiana/Knox", "America/Indiana/Marengo", "America/Indiana/Petersburg", "America/Indiana/Tell_City", "America/Indiana/Vevay", "America/Indiana/Vincennes", "America/Indiana/Winamac", "America/Inuvik", "America/Iqaluit", "America/Jamaica", "America/Juneau", "America/Kentucky/Louisville", "America/Kentucky/Monticello", "America/Kralendijk", "America/La_Paz", "America/Lima", "America/Los_Angeles", "America/Lower_Princes", "America/Maceio", "America/Managua", "America/Manaus", "America/Marigot", "America/Martinique", "America/Matamoros", "America/Mazatlan", "America/Menominee", "America/Merida", "America/Metlakatla", "America/Mexico_City", "America/Miquelon", "America/Moncton", "America/Monterrey", "America/Montevideo", "America/Montreal", "America/Montserrat", "America/Nassau", "America/New_York", "America/Nipigon", "America/Nome", "America/Noronha", "America/North_Dakota/Beulah", "America/North_Dakota/Center", "America/North_Dakota/New_Salem", "America/Ojinaga", "America/Panama", "America/Pangnirtung", "America/Paramaribo", "America/Phoenix", "America/Port-au-Prince", "America/Port_of_Spain", "America/Porto_Velho", "America/Puerto_Rico", "America/Punta_Arenas", "America/Rainy_River", "America/Rankin_Inlet", "America/Recife", "America/Regina", "America/Resolute", "America/Rio_Branco", "America/Santa_Isabel", "America/Santarem", "America/Santiago", "America/Santo_Domingo", "America/Sao_Paulo", "America/Scoresbysund", "America/Shiprock", "America/Sitka", "America/St_Barthelemy", "America/St_Johns", "America/St_Kitts", "America/St_Lucia", "America/St_Thomas", "America/St_Vincent", "America/Swift_Current", "America/Tegucigalpa", "America/Thule", "America/Thunder_Bay", "America/Tijuana", "America/Toronto", "America/Tortola", "America/Vancouver", "America/Whitehorse", "America/Winnipeg", "America/Yakutat", "America/Yellowknife", "Antarctica/Casey", "Antarctica/Davis", "Antarctica/DumontDUrville", "Antarctica/Macquarie", "Antarctica/Mawson", "Antarctica/McMurdo", "Antarctica/Palmer", "Antarctica/Rothera", "Antarctica/South_Pole", "Antarctica/Syowa", "Antarctica/Troll", "Antarctica/Vostok", "Arctic/Longyearbyen", "Asia/Aden", "Asia/Almaty", "Asia/Amman", "Asia/Anadyr", "Asia/Aqtau", "Asia/Aqtobe", "Asia/Ashgabat", "Asia/Atyrau", "Asia/Baghdad", "Asia/Bahrain", "Asia/Baku", "Asia/Bangkok", "Asia/Barnaul", "Asia/Beirut", "Asia/Bishkek", "Asia/Brunei", "Asia/Calcutta", "Asia/Chita", "Asia/Choibalsan", "Asia/Chongqing", "Asia/Colombo", "Asia/Damascus", "Asia/Dhaka", "Asia/Dili", "Asia/Dubai", "Asia/Dushanbe", "Asia/Famagusta", "Asia/Gaza", "Asia/Harbin", "Asia/Hebron", "Asia/Ho_Chi_Minh", "Asia/Hong_Kong", "Asia/Hovd", "Asia/Irkutsk", "Asia/Jakarta", "Asia/Jayapura", "Asia/Jerusalem", "Asia/Kabul", "Asia/Kamchatka", "Asia/Karachi", "Asia/Kashgar", "Asia/Kathmandu", "Asia/Katmandu", "Asia/Khandyga", "Asia/Krasnoyarsk", "Asia/Kuala_Lumpur", "Asia/Kuching", "Asia/Kuwait", "Asia/Macau", "Asia/Magadan", "Asia/Makassar", "Asia/Manila", "Asia/Muscat", "Asia/Nicosia", "Asia/Novokuznetsk", "Asia/Novosibirsk", "Asia/Omsk", "Asia/Oral", "Asia/Phnom_Penh", "Asia/Pontianak", "Asia/Pyongyang", "Asia/Qatar", "Asia/Qostanay", "Asia/Qyzylorda", "Asia/Rangoon", "Asia/Riyadh", "Asia/Sakhalin", "Asia/Samarkand", "Asia/Seoul", "Asia/Shanghai", "Asia/Singapore", "Asia/Srednekolymsk", "Asia/Taipei", "Asia/Tashkent", "Asia/Tbilisi", "Asia/Tehran", "Asia/Thimphu", "Asia/Tokyo", "Asia/Tomsk", "Asia/Ulaanbaatar", "Asia/Urumqi", "Asia/Ust-Nera", "Asia/Vientiane", "Asia/Vladivostok", "Asia/Yakutsk", "Asia/Yangon", "Asia/Yekaterinburg", "Asia/Yerevan", "Atlantic/Azores", "Atlantic/Bermuda", "Atlantic/Canary", "Atlantic/Cape_Verde", "Atlantic/Faroe", "Atlantic/Madeira", "Atlantic/Reykjavik", "Atlantic/South_Georgia", "Atlantic/St_Helena", "Atlantic/Stanley", "Australia/Adelaide", "Australia/Brisbane", "Australia/Broken_Hill", "Australia/Currie", "Australia/Darwin", "Australia/Eucla", "Australia/Hobart", "Australia/Lindeman", "Australia/Lord_Howe", "Australia/Melbourne", "Australia/Perth", "Australia/Sydney", "Europe/Amsterdam", "Europe/Andorra", "Europe/Astrakhan", "Europe/Athens", "Europe/Belgrade", "Europe/Berlin", "Europe/Bratislava", "Europe/Brussels", "Europe/Bucharest", "Europe/Budapest", "Europe/Busingen", "Europe/Chisinau", "Europe/Copenhagen", "Europe/Dublin", "Europe/Gibraltar", "Europe/Guernsey", "Europe/Helsinki", "Europe/Isle_of_Man", "Europe/Istanbul", "Europe/Jersey", "Europe/Kaliningrad", "Europe/Kiev", "Europe/Kirov", "Europe/Lisbon", "Europe/Ljubljana", "Europe/London", "Europe/Luxembourg", "Europe/Madrid", "Europe/Malta", "Europe/Mariehamn", "Europe/Minsk", "Europe/Monaco", "Europe/Moscow", "Europe/Oslo", "Europe/Paris", "Europe/Podgorica", "Europe/Prague", "Europe/Riga", "Europe/Rome", "Europe/Samara", "Europe/San_Marino", "Europe/Sarajevo", "Europe/Saratov", "Europe/Simferopol", "Europe/Skopje", "Europe/Sofia", "Europe/Stockholm", "Europe/Tallinn", "Europe/Tirane", "Europe/Ulyanovsk", "Europe/Uzhgorod", "Europe/Vaduz", "Europe/Vatican", "Europe/Vienna", "Europe/Vilnius", "Europe/Volgograd", "Europe/Warsaw", "Europe/Zagreb", "Europe/Zaporozhye", "Europe/Zurich", "GMT", "Indian/Antananarivo", "Indian/Chagos", "Indian/Christmas", "Indian/Cocos", "Indian/Comoro", "Indian/Kerguelen", "Indian/Mahe", "Indian/Maldives", "Indian/Mauritius", "Indian/Mayotte", "Indian/Reunion", "Pacific/Apia", "Pacific/Auckland", "Pacific/Bougainville", "Pacific/Chatham", "Pacific/Chuuk", "Pacific/Easter", "Pacific/Efate", "Pacific/Enderbury", "Pacific/Fakaofo", "Pacific/Fiji", "Pacific/Funafuti", "Pacific/Galapagos", "Pacific/Gambier", "Pacific/Guadalcanal", "Pacific/Guam", "Pacific/Honolulu", "Pacific/Johnston", "Pacific/Kiritimati", "Pacific/Kosrae", "Pacific/Kwajalein", "Pacific/Majuro", "Pacific/Marquesas", "Pacific/Midway", "Pacific/Nauru", "Pacific/Niue", "Pacific/Norfolk", "Pacific/Noumea", "Pacific/Pago_Pago", "Pacific/Palau", "Pacific/Pitcairn", "Pacific/Pohnpei", "Pacific/Ponape", "Pacific/Port_Moresby", "Pacific/Rarotonga", "Pacific/Saipan", "Pacific/Tahiti", "Pacific/Tarawa", "Pacific/Tongatapu", "Pacific/Truk", "Pacific/Wake", "Pacific/Wallis"]
