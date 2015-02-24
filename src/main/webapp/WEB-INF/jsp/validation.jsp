<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script type="text/javascript">
    //<![CDATA[

    if (!window.eK) {
        eK = {
            $: function (id) {
                return document.getElementById(id);
            }
        }
    }

    var panstwa = [{
        k: "TF",
        w: "FRANCUSKIE TERYTORIA POŁUDNIOWE I ANTARKTYCZNE",
        a: true,
        s: false,
        u: false
    }, {k: "RKS", w: "KOCOBO", a: true, s: false, u: false}, {
        k: "PM",
        w: "SAINT PIERRE I MIQUELON",
        a: true,
        s: false,
        u: false
    }, {k: "PM", w: "SAINT PIERRE I MIQUELON ", a: true, s: false, u: false}, {
        k: "WS",
        w: "SAMOA",
        a: true,
        s: false,
        u: false
    }, {k: "AUS", w: "АВСТРАЛИЯ", a: true, s: false, u: false}, {
        k: "AUT",
        w: "АВСТРИЯ",
        a: true,
        s: true,
        u: true
    }, {k: "AZE", w: "АЗЕРБАЙДЖАН", a: true, s: false, u: false}, {
        k: "ALB",
        w: "АЛБАНИЯ",
        a: true,
        s: false,
        u: false
    }, {k: "DZA", w: "АЛЖИР", a: true, s: false, u: false}, {
        k: "AIA",
        w: "АНГИЛЬЯ",
        a: true,
        s: false,
        u: false
    }, {k: "AGO", w: "АНГОЛА", a: true, s: false, u: false}, {
        k: "AND",
        w: "АНДОРРА",
        a: true,
        s: false,
        u: false
    }, {k: "ATA", w: "АНТАРКТИДА", a: true, s: false, u: false}, {
        k: "ATG",
        w: "АНТИГУА И БАРБУДА",
        a: true,
        s: false,
        u: false
    }, {k: "XXA", w: "АПАТРИДЫ", a: true, s: false, u: false}, {
        k: "ARG",
        w: "АРГЕНТИНА",
        a: true,
        s: false,
        u: false
    }, {k: "ARM", w: "АРМЕНИЯ", a: true, s: false, u: false}, {
        k: "ABW",
        w: "АРУБА",
        a: true,
        s: false,
        u: false
    }, {k: "AFG", w: "АФГАНИСТАН", a: true, s: false, u: false}, {
        k: "BYS",
        w: "Б. БЕЛАРУССКАЯ ССР",
        a: false,
        s: false,
        u: false
    }, {k: "YUG", w: "Б. СЕРБИЯ И ЧЕРНОГОРИЯ", a: false, s: false, u: false}, {
        k: "SUN",
        w: "Б. СССР",
        a: false,
        s: false,
        u: false
    }, {k: "CSK", w: "Б. ЧЕХОСЛОВАКИЯ", a: false, s: false, u: false}, {
        k: "XYU",
        w: "Б. ЮГОСЛАВИЯ",
        a: false,
        s: false,
        u: false
    }, {k: "BHS", w: "БАГАМСКИЕ ОСТРОВА", a: true, s: false, u: false}, {
        k: "BGD",
        w: "БАНГЛАДЕШ",
        a: true,
        s: false,
        u: false
    }, {k: "BRB", w: "БАРБАДОС", a: true, s: false, u: false}, {
        k: "BHR",
        w: "БАХРАЙН",
        a: true,
        s: false,
        u: false
    }, {k: "XXC", w: "БЕЖЕНЦЫ (ВНЕ КОНВЕНЦИИ)", a: true, s: false, u: false}, {
        k: "XXB",
        w: "БЕЖЕНЦЫ (КОНВЕНЦИЯ 1954 Г.)",
        a: true,
        s: false,
        u: false
    }, {k: "BLR", w: "БЕЛАРУСЬ", a: true, s: false, u: false}, {
        k: "BLZ",
        w: "БЕЛИЗ",
        a: true,
        s: false,
        u: false
    }, {k: "BEL", w: "БЕЛЬГИЯ", a: true, s: true, u: true}, {
        k: "BEN",
        w: "БЕНИН (ДАГОМЕЯ)",
        a: true,
        s: false,
        u: false
    }, {k: "CIV", w: "БЕРЕГ СЛОНОВОЙ КОСТИ", a: true, s: false, u: false}, {
        k: "BMU",
        w: "БЕРМУДСКИЕ ОСТРОВА",
        a: true,
        s: false,
        u: false
    }, {k: "MMR", w: "БИРМА (МЬЯНМА)", a: true, s: false, u: false}, {
        k: "BGR",
        w: "БОЛГАРИЯ",
        a: true,
        s: false,
        u: true
    }, {k: "BOL", w: "БОЛИВИЯ", a: true, s: false, u: false}, {
        k: "BIH",
        w: "БОСНИЯ И ГЕРЦЕГОВИНА",
        a: true,
        s: false,
        u: false
    }, {k: "BWA", w: "БОТСВАНА", a: true, s: false, u: false}, {
        k: "BRA",
        w: "БРАЗИЛИЯ",
        a: true,
        s: false,
        u: false
    }, {k: "IOT", w: "БРИТАНСКАЯ ТЕРРИТОРИЯ В ИНДИЙСКОМ ОКЕАНЕ", a: true, s: false, u: false}, {
        k: "BRN",
        w: "БРУНЕЙ",
        a: true,
        s: false,
        u: false
    }, {k: "BVT", w: "БУВЕТСКИЕ ОСТРОВА", a: true, s: false, u: false}, {
        k: "BFA",
        w: "БУРКИНА-ФАСО",
        a: true,
        s: false,
        u: false
    }, {k: "BDI", w: "БУРУНДИ", a: true, s: false, u: false}, {
        k: "BTN",
        w: "БУТАН",
        a: true,
        s: false,
        u: false
    }, {k: "VUT", w: "ВАНУАТУ", a: true, s: false, u: false}, {
        k: "VAT",
        w: "ВАТИКАН",
        a: true,
        s: false,
        u: false
    }, {k: "GBR", w: "ВЕЛИКОБРИТАНИЯ", a: true, s: false, u: true}, {
        k: "GBD",
        w: "ВЕЛИКОБРИТАНИЯ - ГРАЖДАНИН ЗАВИСИМОЙ ТЕРРИТОРИИ",
        a: true,
        s: false,
        u: false
    }, {k: "GBO", w: "ВЕЛИКОБРИТАНИЯ - ЗАМОРСКИЕ ТЕРРИТОРИИ", a: true, s: false, u: false}, {
        k: "GBP",
        w: "ВЕЛИКОБРИТАНИЯ - ЛИЦО, ИМЕЮЩЕЕ ЗАЩИТУ",
        a: true,
        s: false,
        u: false
    }, {k: "HUN", w: "ВЕНГРИЯ", a: true, s: true, u: true}, {
        k: "VEN",
        w: "ВЕНЕСУЭЛА",
        a: true,
        s: false,
        u: false
    }, {k: "VIR", w: "ВИРГИНСКИЕ ОСТРОВА ВЛАД. СОЕДИНЕННЫХ ШТАТОВ", a: true, s: false, u: false}, {
        k: "VGB",
        w: "ВИРГИНСКИЕ СОТРОВА ВЛАД. ВЕЛИКОБРИТАНИИ",
        a: true,
        s: false,
        u: false
    }, {k: "TMP", w: "ВОСТОЧНЫЙ ТИМОР", a: true, s: false, u: false}, {
        k: "VNM",
        w: "ВЬЕТНАМ",
        a: true,
        s: false,
        u: false
    }, {k: "GAB", w: "ГАБОН", a: true, s: false, u: false}, {
        k: "HTI",
        w: "ГАИТИ",
        a: true,
        s: false,
        u: false
    }, {k: "GMB", w: "ГАМБИЯ", a: true, s: false, u: false}, {
        k: "GHA",
        w: "ГАНА",
        a: true,
        s: false,
        u: false
    }, {k: "GLP", w: "ГВАДЕЛУПА", a: true, s: false, u: false}, {
        k: "GTM",
        w: "ГВАТЕМАЛА",
        a: true,
        s: false,
        u: false
    }, {k: "GIN", w: "ГВИНЕЯ", a: true, s: false, u: false}, {
        k: "GNB",
        w: "ГВИНЕЯ-БИССАУ",
        a: true,
        s: false,
        u: false
    }, {k: "DEU", w: "ГЕРМАНИЯ", a: true, s: true, u: true}, {
        k: "GIB",
        w: "ГИБРАЛТАР",
        a: true,
        s: false,
        u: false
    }, {k: "ANT", w: "ГОЛЛАНДСКИЕ АНТИЛЬСКИЕ ОСТРОВА", a: true, s: false, u: false}, {
        k: "HND",
        w: "ГОНДУРАС",
        a: true,
        s: false,
        u: false
    }, {k: "HKG", w: "ГОНКОНГ", a: true, s: false, u: false}, {
        k: "GRD",
        w: "ГРЕНАДА",
        a: true,
        s: false,
        u: false
    }, {k: "GRL", w: "ГРЕНЛАНДИЯ", a: true, s: false, u: false}, {
        k: "GRC",
        w: "ГРЕЦИЯ",
        a: true,
        s: true,
        u: true
    }, {k: "GEO", w: "ГРУЗИЯ", a: true, s: false, u: false}, {
        k: "GUM",
        w: "ГУАМ",
        a: true,
        s: false,
        u: false
    }, {k: "GUY", w: "ГУЯНА", a: true, s: false, u: false}, {
        k: "DNK",
        w: "ДАНИЯ",
        a: true,
        s: true,
        u: true
    }, {k: "DJI", w: "ДЖИБУТИ", a: true, s: false, u: false}, {
        k: "DMA",
        w: "ДОМИНИКА",
        a: true,
        s: false,
        u: false
    }, {k: "DOM", w: "ДОМИНИКАНСКАЯ РЕСПУБЛИКА", a: true, s: false, u: false}, {
        k: "EGY",
        w: "ЕГИПЕТ",
        a: true,
        s: false,
        u: false
    }, {k: "ZMB", w: "ЗАМБИЯ", a: true, s: false, u: false}, {
        k: "ESH",
        w: "ЗАПАДНАЯ САХАРА",
        a: true,
        s: false,
        u: false
    }, {k: "ZWE", w: "ЗИМБАБВЕ", a: true, s: false, u: false}, {
        k: "ISR",
        w: "ИЗРАИЛЬ",
        a: true,
        s: false,
        u: false
    }, {k: "IND", w: "ИНДИЯ", a: true, s: false, u: false}, {
        k: "IDN",
        w: "ИНДОНЕЗИЯ",
        a: true,
        s: false,
        u: false
    }, {k: "JOR", w: "ИОРДАНИЯ", a: true, s: false, u: false}, {
        k: "IRQ",
        w: "ИРАК",
        a: true,
        s: false,
        u: false
    }, {k: "IRN", w: "ИРАН", a: true, s: false, u: false}, {
        k: "IRL",
        w: "ИРЛАНДИЯ",
        a: true,
        s: true,
        u: true
    }, {k: "ISL", w: "ИСЛАНДИЯ", a: true, s: true, u: true}, {
        k: "ESP",
        w: "ИСПАНИЯ",
        a: true,
        s: true,
        u: true
    }, {k: "ITA", w: "ИТАЛИЯ", a: true, s: true, u: true}, {
        k: "YEM",
        w: "ЙЕМЕН",
        a: true,
        s: false,
        u: false
    }, {k: "KAZ", w: "КАЗАХСТАН", a: true, s: false, u: false}, {
        k: "CYM",
        w: "КАЙМАН ОСТРОВА",
        a: true,
        s: false,
        u: false
    }, {k: "KHM", w: "КАМБОДЖА (КАМПУЧИЯ)", a: true, s: false, u: false}, {
        k: "CMR",
        w: "КАМЕРУН",
        a: true,
        s: false,
        u: false
    }, {k: "CAN", w: "КАНАДА", a: true, s: false, u: false}, {
        k: "QAT",
        w: "КАТАР",
        a: true,
        s: false,
        u: false
    }, {k: "KEN", w: "КЕНИЯ", a: true, s: false, u: false}, {
        k: "CYP",
        w: "КИПР",
        a: true,
        s: false,
        u: false
    }, {k: "KGZ", w: "КИРГИСТАН", a: true, s: false, u: false}, {
        k: "KIR",
        w: "КИРИБАТИ",
        a: true,
        s: false,
        u: false
    }, {k: "CHN", w: "КИТАЙ", a: true, s: false, u: false}, {
        k: "CCK",
        w: "КОКОСОВЫЕ ОСТРОВА",
        a: true,
        s: false,
        u: false
    }, {k: "COL", w: "КОЛУМБИЯ", a: true, s: false, u: false}, {
        k: "COM",
        w: "КОМОРСКИЕ ОСТРОВА",
        a: true,
        s: false,
        u: false
    }, {k: "COG", w: "КОНГО", a: true, s: false, u: false}, {
        k: "ZAR",
        w: "КОНГО (ДЕМОКР. РЕСП. (Б. ЗАИР)",
        a: true,
        s: false,
        u: false
    }, {k: "CRI", w: "КОСТА-РИКА", a: true, s: false, u: false}, {
        k: "CUB",
        w: "КУБА",
        a: true,
        s: false,
        u: false
    }, {k: "KWT", w: "КУВЕЙТ", a: true, s: false, u: false}, {
        k: "LAO",
        w: "ЛАОС",
        a: true,
        s: false,
        u: false
    }, {k: "LVA", w: "ЛАТВИЯ", a: true, s: true, u: true}, {
        k: "LSO",
        w: "ЛЕСОТО",
        a: true,
        s: false,
        u: false
    }, {k: "LBR", w: "ЛИБЕРИЯ", a: true, s: false, u: false}, {
        k: "LBN",
        w: "ЛИВАН",
        a: true,
        s: false,
        u: false
    }, {k: "LBY", w: "ЛИВИЯ", a: true, s: false, u: false}, {
        k: "LTU",
        w: "ЛИТВА",
        a: true,
        s: true,
        u: true
    }, {k: "LIE", w: "ЛИХТЕНШТЕЙН", a: true, s: false, u: false}, {
        k: "LUX",
        w: "ЛЮКСЕМБУРГ",
        a: true,
        s: true,
        u: true
    }, {k: "MUS", w: "МАВРИКИЙ", a: true, s: false, u: false}, {
        k: "MRT",
        w: "МАВРИТАНИЯ",
        a: true,
        s: false,
        u: false
    }, {k: "MDG", w: "МАДАГАСКАР", a: true, s: false, u: false}, {
        k: "MYT",
        w: "МАЙОТТА",
        a: true,
        s: false,
        u: false
    }, {k: "MAC", w: "МАКАО", a: true, s: false, u: false}, {
        k: "MKD",
        w: "МАКЕДОНИЯ (ФИРОМ)",
        a: true,
        s: false,
        u: false
    }, {k: "MWI", w: "МАЛАВИ", a: true, s: false, u: false}, {
        k: "MYS",
        w: "МАЛАЙЗИЯ",
        a: true,
        s: false,
        u: false
    }, {k: "MLI", w: "МАЛИ", a: true, s: false, u: false}, {
        k: "MDV",
        w: "МАЛЬДИВЫ",
        a: true,
        s: false,
        u: false
    }, {k: "MLT", w: "МАЛЬТА", a: true, s: true, u: true}, {
        k: "MAR",
        w: "МАРОККО",
        a: true,
        s: false,
        u: false
    }, {k: "MTQ", w: "МАРТИНИКА", a: true, s: false, u: false}, {
        k: "MHL",
        w: "МАРШАЛЛОВЫ ОСТРОВА",
        a: true,
        s: false,
        u: false
    }, {k: "CRC", w: "МЕЖДУНАРОДНЫЙ КОМИТЕТ КРАСНОГО КРЕСТА", a: true, s: false, u: false}, {
        k: "MEX",
        w: "МЕКСИКА",
        a: true,
        s: false,
        u: false
    }, {k: "FSM", w: "МИКРОНЕЗИЯ", a: true, s: false, u: false}, {
        k: "UMI",
        w: "МИНОР",
        a: true,
        s: false,
        u: false
    }, {k: "MOZ", w: "МОЗАМБИК", a: true, s: false, u: false}, {
        k: "MDA",
        w: "МОЛДОВА",
        a: true,
        s: false,
        u: false
    }, {k: "MCO", w: "МОНАКО", a: true, s: false, u: false}, {
        k: "MNG",
        w: "МОНГОЛИЯ",
        a: true,
        s: false,
        u: false
    }, {k: "MSR", w: "МОНТСЕРРАТ", a: true, s: false, u: false}, {
        k: "NAM",
        w: "НАМИБИЯ",
        a: true,
        s: false,
        u: false
    }, {k: "NRU", w: "НАУРУ", a: true, s: false, u: false}, {
        k: "NTZ",
        w: "НЕЙТРАЛЬНАЯ ЗОНА",
        a: true,
        s: false,
        u: false
    }, {k: "XXX", w: "НЕОПРЕДЕЛЕННОЙ НАЦИОНАЛЬНОСТИ", a: true, s: false, u: false}, {
        k: "NPL",
        w: "НЕПАЛ",
        a: true,
        s: false,
        u: false
    }, {k: "NER", w: "НИГЕР", a: true, s: false, u: false}, {
        k: "NGA",
        w: "НИГЕРИЯ",
        a: true,
        s: false,
        u: false
    }, {k: "NLD", w: "НИДЕРЛАНДЫ", a: true, s: true, u: true}, {
        k: "NIC",
        w: "НИКАРАГУА",
        a: true,
        s: false,
        u: false
    }, {k: "NIU", w: "НИУЭ", a: true, s: false, u: false}, {
        k: "NZL",
        w: "НОВАЯ ЗЕЛАНДИЯ",
        a: true,
        s: false,
        u: false
    }, {k: "NCL", w: "НОВАЯ КАЛЕДОНИЯ", a: true, s: false, u: false}, {
        k: "NOR",
        w: "НОРВЕГИЯ",
        a: true,
        s: true,
        u: false
    }, {k: "ARE", w: "ОБЪЕДИНЕННЫЕ АРАБСКИЕ ЭМИРАТЫ", a: true, s: false, u: false}, {
        k: "FRO",
        w: "ОВЕЧЬИ ОСТРОВА",
        a: true,
        s: false,
        u: false
    }, {k: "OMN", w: "ОМАН", a: true, s: false, u: false}, {
        k: "UNO",
        w: "ОРГАНИЗАЦИЯ ОБЪЕДИНЕННЫХ НАЦИЙ",
        a: true,
        s: false,
        u: false
    }, {k: "ZKM", w: "ОРДЕН МАЛЬТИЙСКИХ КАВАЛЕРОВ", a: true, s: false, u: false}, {
        k: "NFK",
        w: "ОСТРОВ НОРФОЛК",
        a: true,
        s: false,
        u: false
    }, {k: "CXR", w: "ОСТРОВ РОЖДЕСТВА", a: true, s: false, u: false}, {
        k: "SHN",
        w: "ОСТРОВ СВЯТОЙ ЕЛЕНЫ",
        a: true,
        s: false,
        u: false
    }, {k: "COK", w: "ОСТРОВА КУКА", a: true, s: false, u: false}, {
        k: "STP",
        w: "ОСТРОВА СВЯТОГО ФОМЫ И КНЯЖЕСКИЕ",
        a: true,
        s: false,
        u: false
    }, {k: "WLF", w: "ОСТРОВА УОЛЛИС И ФУТУНА", a: true, s: false, u: false}, {
        k: "HMD",
        w: "ОСТРОВА ХЕРД И МАКДОНАЛЬД",
        a: true,
        s: false,
        u: false
    }, {k: "PAK", w: "ПАКИСТАН", a: true, s: false, u: false}, {
        k: "PLW",
        w: "ПАЛАУ",
        a: true,
        s: false,
        u: false
    }, {k: "XXP", w: "ПАЛЕСТИНА", a: true, s: false, u: false}, {
        k: "PAN",
        w: "ПАНАМА",
        a: true,
        s: false,
        u: false
    }, {k: "PNG", w: "ПАПУА - НОВАЯ ГВИНЕЯ", a: true, s: false, u: false}, {
        k: "PRY",
        w: "ПАРАГВАЙ",
        a: true,
        s: false,
        u: false
    }, {k: "PER", w: "ПЕРУ", a: true, s: false, u: false}, {
        k: "PCN",
        w: "ПИТКЭРН",
        a: true,
        s: false,
        u: false
    }, {k: "POL", w: "ПОЛЬША", a: true, s: true, u: true}, {
        k: "PRT",
        w: "ПОРТУГАЛИЯ",
        a: true,
        s: true,
        u: true
    }, {k: "PRI", w: "ПУЭРТО-РИКО", a: true, s: false, u: false}, {
        k: "CPV",
        w: "РЕСПУБЛИКА ОСТРОВА ЗЕЛЕНОГО МЫСА",
        a: true,
        s: false,
        u: false
    }, {k: "REU", w: "РЕУНЬОН", a: true, s: false, u: false}, {
        k: "RUS",
        w: "РОССИЯ",
        a: true,
        s: false,
        u: false
    }, {k: "RWA", w: "РУАНДА", a: true, s: false, u: false}, {
        k: "ROM",
        w: "РУМЫНИЯ",
        a: true,
        s: false,
        u: true
    }, {k: "SLB", w: "САЛОМОНОВЫ ОСТРОВА", a: true, s: false, u: false}, {
        k: "SLV",
        w: "САЛЬВАДОР",
        a: true,
        s: false,
        u: false
    }, {k: "AS", w: "САМОА", a: true, s: false, u: false}, {
        k: "SMR",
        w: "САН-МАРИНО",
        a: true,
        s: false,
        u: false
    }, {k: "SAU", w: "САУДОВСКАЯ АРАВИЯ", a: true, s: false, u: false}, {
        k: "SWZ",
        w: "СВАЗИЛЕНД",
        a: true,
        s: false,
        u: false
    }, {k: "SJM", w: "СВАЛЬБАРД И ЯН-МАЙЕН", a: true, s: false, u: false}, {
        k: "PRK",
        w: "СЕВЕРНАЯ КОРЕЯ (КОРЕЙСКАЯ НАРОДНО-ДЕМОКР. РЕСП.)",
        a: true,
        s: false,
        u: false
    }, {k: "MNP", w: "СЕВЕРНЫЕ МАРИАНСКИЕ ОСТРОВА", a: true, s: false, u: false}, {
        k: "SYC",
        w: "СЕЙШЕЛЬСКИЕ ОСТРОВА",
        a: true,
        s: false,
        u: false
    }, {k: "SEN", w: "СЕНЕГАЛ", a: true, s: false, u: false}, {
        k: "VCT",
        w: "СЕНТ-ВИНСЕНТ И ГРЕНАДИНЫ",
        a: true,
        s: false,
        u: false
    }, {k: "KNA", w: "СЕНТ-КИТС И НЕВИС", a: true, s: false, u: false}, {
        k: "LCA",
        w: "СЕНТ-ЛЮСИЯ",
        a: true,
        s: false,
        u: false
    }, {k: "SRB", w: "СЕРБИЯ", a: true, s: false, u: false}, {
        k: "SGP",
        w: "СИНГАПУР",
        a: true,
        s: false,
        u: false
    }, {k: "SYR", w: "СИРИЯ", a: true, s: false, u: false}, {
        k: "SVK",
        w: "СЛОВАКИЯ",
        a: true,
        s: true,
        u: true
    }, {k: "SVN", w: "СЛОВЕНИЯ", a: true, s: true, u: true}, {
        k: "USA",
        w: "СОЕДИНЕННЫЕ ШТАТЫ АМЕРИКИ",
        a: true,
        s: false,
        u: false
    }, {k: "SOM", w: "СОМАЛИЯ", a: true, s: false, u: false}, {
        k: "SDN",
        w: "СУДАН",
        a: true,
        s: false,
        u: false
    }, {k: "SUR", w: "СУРИНАМ", a: true, s: false, u: false}, {
        k: "SLE",
        w: "СЬЕРРА-ЛЕОНЕ",
        a: true,
        s: false,
        u: false
    }, {k: "TJK", w: "ТАДЖИКИСТАН", a: true, s: false, u: false}, {
        k: "THA",
        w: "ТАИЛАНД",
        a: true,
        s: false,
        u: false
    }, {k: "TWN", w: "ТАЙВАНЬ", a: true, s: false, u: false}, {
        k: "TZA",
        w: "ТАНЗАНИЯ",
        a: true,
        s: false,
        u: false
    }, {k: "TCA", w: "ТЕРКС И КАЙКОС", a: true, s: false, u: false}, {
        k: "XXT",
        w: "ТИБЕТ",
        a: false,
        s: false,
        u: false
    }, {k: "TGO", w: "ТОГО", a: true, s: false, u: false}, {
        k: "TKL",
        w: "ТОКЕЛАУ",
        a: true,
        s: false,
        u: false
    }, {k: "TON", w: "ТОНГА", a: true, s: false, u: false}, {
        k: "TTO",
        w: "ТРИНИДАД И ТОБАГО",
        a: true,
        s: false,
        u: false
    }, {k: "TUV", w: "ТУВАЛУ", a: true, s: false, u: false}, {
        k: "TUN",
        w: "ТУНИС",
        a: true,
        s: false,
        u: false
    }, {k: "TKM", w: "ТУРКМЕНИСТАН", a: true, s: false, u: false}, {
        k: "TUR",
        w: "ТУРЦИЯ",
        a: true,
        s: false,
        u: false
    }, {k: "UNR", w: "УВК ООН ПО ДЕЛАМ БЕЖЕНЦЕВ", a: true, s: false, u: false}, {
        k: "UGA",
        w: "УГАНДА",
        a: true,
        s: false,
        u: false
    }, {k: "UZB", w: "УЗБЕКИСТАН", a: true, s: false, u: false}, {
        k: "UKR",
        w: "УКРАИНА",
        a: true,
        s: false,
        u: false
    }, {k: "URY", w: "УРУГВАЙ", a: true, s: false, u: false}, {
        k: "FJI",
        w: "ФИДЖИ",
        a: true,
        s: false,
        u: false
    }, {k: "PHL", w: "ФИЛИППИНЫ", a: true, s: false, u: false}, {
        k: "FIN",
        w: "ФИНЛЯНДИЯ",
        a: true,
        s: true,
        u: true
    }, {k: "FLK", w: "ФОЛКЛЕНДСКИЕ (МАЛЬВИНСКИЕ) ОСТРОВА", a: true, s: false, u: false}, {
        k: "FRA",
        w: "ФРАНЦИЯ",
        a: true,
        s: true,
        u: true
    }, {k: "GUF", w: "ФРАНЦУЗСКАЯ ГВИАНА", a: true, s: false, u: false}, {
        k: "PYF",
        w: "ФРАНЦУЗСКАЯ ПОЛИНЕЗИЯ",
        a: true,
        s: false,
        u: false
    }, {k: "FXX", w: "ФРАНЦУЗСКИЕ ЗАМОРСКИЕ ТЕРРИТОРИИ", a: true, s: false, u: false}, {
        k: "HRV",
        w: "ХОРВАТИЯ",
        a: true,
        s: false,
        u: false
    }, {k: "CAF", w: "ЦЕНТРАЛЬНО-АФРИКАНСКАЯ РЕСПУБЛИКА", a: true, s: false, u: false}, {
        k: "TCD",
        w: "ЧАД",
        a: true,
        s: false,
        u: false
    }, {k: "MNE", w: "ЧЕРНОГОРИЯ", a: true, s: false, u: false}, {
        k: "CZE",
        w: "ЧЕХИЯ",
        a: true,
        s: true,
        u: true
    }, {k: "CHL", w: "ЧИЛИ", a: true, s: false, u: false}, {
        k: "CHE",
        w: "ШВЕЙЦАРИЯ",
        a: true,
        s: true,
        u: false
    }, {k: "SWE", w: "ШВЕЦИЯ", a: true, s: true, u: true}, {
        k: "LKA",
        w: "ШРИ-ЛАНКА",
        a: true,
        s: false,
        u: false
    }, {k: "ECU", w: "ЭКВАДОР", a: true, s: false, u: false}, {
        k: "GNQ",
        w: "ЭКВАТОРИАЛЬНАЯ ГВИНЕЯ",
        a: true,
        s: false,
        u: false
    }, {k: "ERI", w: "ЭРИТРЕЯ", a: true, s: false, u: false}, {
        k: "EST",
        w: "ЭСТОНИЯ",
        a: true,
        s: true,
        u: true
    }, {k: "ETH", w: "ЭФИОПИЯ", a: true, s: false, u: false}, {
        k: "SGS",
        w: "ЮЖНАЯ ДЖОРДЖИЯ И ЮЖНЫЕ САНДВИЧЕВЫ ОСТРОВА",
        a: true,
        s: false,
        u: false
    }, {k: "KOR", w: "ЮЖНАЯ КОРЕЯ (РЕСПУБЛИКА КОРЕЯ)", a: true, s: false, u: false}, {
        k: "ZAF",
        w: "ЮЖНО-АФРИКАНСКАЯ РЕСПУБЛИКА",
        a: true,
        s: false,
        u: false
    }, {k: "SSD", w: "Южный Судан", a: true, s: false, u: false}, {
        k: "JAM",
        w: "ЯМАЙКА",
        a: true,
        s: false,
        u: false
    }, {k: "JPN", w: "ЯПОНИЯ", a: true, s: false, u: false}];

    function ZbindujPanstwa(obj, filtr, value) {
        addOption(obj, "", "", true);

        for (var i = 0; i < panstwa.length; i++) {
            var a = panstwa[i].a;
            var s = panstwa[i].s;
            var u = panstwa[i].u;

            if (!(eval(filtr)))
                continue;

            addOption(obj, panstwa[i].k, panstwa[i].w, panstwa[i].k == value);
        }
    }

    function addOption(obj, val, txt, sel) {
        var option = document.createElement("option");
        option.value = val;
        option.text = txt;
        option.selected = sel;
        if (obj == undefined || obj.options == undefined) {

        } else
            obj.options.add(option);
    }

    function WebForm_OnSubmit() {
        /*if (typeof(ValidatorOnSubmit) == "function" && ValidatorOnSubmit() == false) return false;
         return true;*/
        window.scrollTo(0, 0);
        if (!Page_ClientValidate()) {
            alert('В анкете содержатся ошибки');
            return false;
        }
        return true;
    }

    function strToDate(dates) {
        regDate = /(\d{4})-(\d{2})-(\d{2})/g;
        dateAr = regDate.exec(dates);
        date = new Date(dateAr[1], dateAr[2] - 1, dateAr[3]);
        return date;
    }
    function Powrot() {
        var cont = eK.$('cp_f_panelFormularz');
        var elements = cont.getElementsByTagName('input');
        for (var i = 0; i < elements.length; i++) {
            if (typeof(elements[i].readonly) != 'undefined' || elements[i].readonly != null) {
                elements[i].readonly.parentNode.removeChild(elements[i].readonly);
                elements[i].style.display = 'inline';
                elements[i].readonly = null
            }
        }
        var elements = cont.getElementsByTagName('select');
        for (var i = 0; i < elements.length; i++) {
            if (typeof(elements[i].readonly) != 'undefined' || elements[i].readonly != null) {
                elements[i].readonly.parentNode.removeChild(elements[i].readonly);
                elements[i].style.display = 'inline';
                elements[i].readonly = null
            }
        }
        eK.$('cp_f_cmdDalej').value = 'Далее';
        eK.$('cp_f_cmdDalej').onclick = Dalej;
        eK.$('cp_f_cmdZakoncz').style.display = 'none';
    }
    function ValidateStatementChk(source, arguments) {
        if (source.id == 'cp_f_cvOswiadczenie')arguments.IsValid = eK.$('cp_f_chk44Oswiadczenie1').checked;
        if (source.id == 'cp_f_CustomValidator1')arguments.IsValid = eK.$('cp_f_chk44Oswiadczenie2').checked;
        if (source.id == 'cp_f_CustomValidator2')arguments.IsValid = eK.$('cp_f_chk44Oswiadczenie3').checked;
    }
    function ValidateSrodki(source, arguments) {
        arguments.IsValid = true;
    }
    function ValidateCelPodrozy(source, arguments) {
        arguments.IsValid = false;
        for (var i = 0; i < 11; i++)arguments.IsValid |= eK.$('cp_f_rbl29_' + i) !=null && eK.$('cp_f_rbl29_' + i).checked;
    }
    function ValidateSponsor(source, arguments) {
        arguments.IsValid = eK.$('cp_f_lbl35a_inny').checked | eK.$('cp_f_lbl35a_okreslony').checked;
    }
    function DisableControl(control, state) {
        if (typeof(Page_Validators) == 'undefined')return;
        if (state) {
            if (typeof(control.type) != 'undefined') {
                if (control.type == 'text')control.value = ''; else if (control.type == 'radio' || control.type == 'checkbox')control.checked = false;
            }
        }
        control.disabled = state;
        for (var i = 0; i < Page_Validators.length; i++) {
            if (Page_Validators[i].controltovalidate == control.id)EnableValidator(Page_Validators[i], !state)
        }
    }

    var Page_Validators = new Array(document.getElementById("ctl00_cp_f_daneOs_revTxtNazwisko"), document.getElementById("ctl00_cp_f_daneOs_rfvTxtNazwisko"), document.getElementById("ctl00_cp_f_daneOs_revTxtNazwiskoRodowe"), document.getElementById("ctl00_cp_f_daneOs_rfvTxtNazwiskoRodowe"), document.getElementById("ctl00_cp_f_daneOs_revTxtImiona"), document.getElementById("ctl00_cp_f_daneOs_rfvTxtImiona"), document.getElementById("ctl00_cp_f_daneOs_rvTxtDataUrodzin"), document.getElementById("ctl00_cp_f_daneOs_revTxtDataUrodzin"), document.getElementById("ctl00_cp_f_daneOs_rfvTxtDataUrodzin"), document.getElementById("ctl00_cp_f_daneOs_revTxtMiejsceUrodzenia"), document.getElementById("ctl00_cp_f_daneOs_rfvTxtMiejsceUrodzenia"), document.getElementById("ctl00_cp_f_daneOs_rfvCbKrajUrodzenia"), document.getElementById("ctl00_cp_f_daneOs_rfvCbObecneObywatelstwo"), document.getElementById("ctl00_cp_f_daneOs_rfvCbPosiadaneObywatelstwo"), document.getElementById("ctl00_cp_f_daneOs_rfvRbPlec"), document.getElementById("ctl00_cp_f_daneOs_rfvRbStanCywilny"), document.getElementById("ctl00_cp_f_RegularExpressionValidatorNrIdentyfikacyjny"), document.getElementById("ctl00_cp_f_rfvNrIdentyfikacyjny"), document.getElementById("ctl00_cp_f_rfv_13"), document.getElementById("ctl00_cp_f_rfv_13a"), document.getElementById("ctl00_cp_f_rfvKonsultacja1"), document.getElementById("ctl00_cp_f_rfv_14"), document.getElementById("ctl00_cp_f_rfvKonsultacja9"), document.getElementById("ctl00_cp_f_rfv_16"), document.getElementById("ctl00_cp_f_rev16"), document.getElementById("ctl00_cp_f_rfv_17"), document.getElementById("ctl00_cp_f_cv17b"), document.getElementById("ctl00_cp_f_rev17"), document.getElementById("ctl00_cp_f_rfvWydanyPrzez"), document.getElementById("ctl00_cp_f_rfvKonsultacja10"), document.getElementById("ctl00_cp_f_opiekunowie_rfvCbObywatelstwo1"), document.getElementById("ctl00_cp_f_opiekunowie_rfvTxtImie1"), document.getElementById("ctl00_cp_f_opiekunowie_rfvTxtNazwisko1"), document.getElementById("ctl00_cp_f_opiekunowie_rfvCbPanstwo1"), document.getElementById("ctl00_cp_f_opiekunowie_rfvTxtMiejscowosc1"), document.getElementById("ctl00_cp_f_opiekunowie_rfvTxtKod1"), document.getElementById("ctl00_cp_f_opiekunowie_rfvTxtAdres1"), document.getElementById("ctl00_cp_f_opiekunowie_rfvCbObywatelstwo2"), document.getElementById("ctl00_cp_f_opiekunowie_rfvTxtImie2"), document.getElementById("ctl00_cp_f_opiekunowie_rfvTxtNazwisko2"), document.getElementById("ctl00_cp_f_opiekunowie_rfvCbPanstwo2"), document.getElementById("ctl00_cp_f_opiekunowie_rfvTxtMiejscowosc2"), document.getElementById("ctl00_cp_f_opiekunowie_rfvTxtKod2"), document.getElementById("ctl00_cp_f_opiekunowie_rfvTxtAdres2"), document.getElementById("ctl00_cp_f_rfv45a"), document.getElementById("ctl00_cp_f_rfv17Stan"), document.getElementById("ctl00_cp_f_rfv45c"), document.getElementById("ctl00_cp_f_rfv45d"), document.getElementById("ctl00_cp_f_rfv45e"), document.getElementById("ctl00_cp_f_RequiredFieldValidator3"), document.getElementById("ctl00_cp_f_RegularExpressionValidator1"), document.getElementById("ctl00_cp_f_rfv17prtel"), document.getElementById("ctl00_cp_f_rfv17telnr"), document.getElementById("ctl00_cp_f_rfv18"), document.getElementById("ctl00_cp_f_rfv18a"), document.getElementById("ctl00_cp_f_rfv18b"), document.getElementById("ctl00_cp_f_rev18b"), document.getElementById("ctl00_cp_f_rfv_19_zawod"), document.getElementById("ctl00_cp_f_rfv_20_panstwo"), document.getElementById("ctl00_cp_f_rfv_20_stan"), document.getElementById("ctl00_cp_f_rfv_20_miejscowosc"), document.getElementById("ctl00_cp_f_rfv_20_kodpocztowy"), document.getElementById("ctl00_cp_f_rfv_20_adres"), document.getElementById("ctl00_cp_f_rfv_20_prefix"), document.getElementById("ctl00_cp_f_rfv_20_telefon"), document.getElementById("ctl00_cp_f_rfv_20_nazwa"), document.getElementById("ctl00_cp_f_rfv_20Email"), document.getElementById("ctl00_cp_f_rfv29b"), document.getElementById("ctl00_cp_f_cv29"), document.getElementById("ctl00_cp_f_rfvKonsultacja11"), document.getElementById("ctl00_cp_f_rfv_21"), document.getElementById("ctl00_cp_f_RequiredFieldValidator1"), document.getElementById("ctl00_cp_f_rvl24"), document.getElementById("ctl00_cp_f_rfv_25"), document.getElementById("ctl00_cp_f_rvLotniskowa"), document.getElementById("ctl00_cp_f_rfv30"), document.getElementById("ctl00_cp_f_rev30"), document.getElementById("ctl00_cp_f_rev31"), document.getElementById("ctl00_cp_f_RequiredFieldValidator2"), document.getElementById("ctl00_cp_f_rfv26"), document.getElementById("ctl00_cp_f_rfv27WydanePrzez"), document.getElementById("ctl00_cp_f_rfv27WazneOd"), document.getElementById("ctl00_cp_f_rev27WazneOd"), document.getElementById("ctl00_cp_f_rfv27WazneDo"), document.getElementById("ctl00_cp_f_rev27WazneDo"), document.getElementById("ctl00_cp_f_ctrl31__rfv34Rodzaj"), document.getElementById("ctl00_cp_f_ctrl31__rfv34_1"), document.getElementById("ctl00_cp_f_ctrl31__rfvKonsultacja6"), document.getElementById("ctl00_cp_f_ctrl31__rfv34Imie"), document.getElementById("ctl00_cp_f_ctrl31__rfvKonsultacja7"), document.getElementById("ctl00_cp_f_ctrl31__rfv34Nazwisko"), document.getElementById("ctl00_cp_f_ctrl31__rfvKonsultacja8"), document.getElementById("ctl00_cp_f_ctrl31__rfv34_2"), document.getElementById("ctl00_cp_f_ctrl31__rfv34_3"), document.getElementById("ctl00_cp_f_ctrl31__rfvKonsultacja9"), document.getElementById("ctl00_cp_f_ctrl31__rfv34_4"), document.getElementById("ctl00_cp_f_ctrl31__rfvKonsultacja10"), document.getElementById("ctl00_cp_f_ctrl31__rfvKonsultacja11"), document.getElementById("ctl00_cp_f_ctrl31__rfvKonsultacja12"), document.getElementById("ctl00_cp_f_ctrl31__rfvKonsultacja13"), document.getElementById("ctl00_cp_f_ctrl31__rfvKonsultacja14"), document.getElementById("ctl00_cp_f_ctrl31__rfv34_5"), document.getElementById("ctl00_cp_f_ctrl31__rfvKonsultacja15"), document.getElementById("ctl00_cp_f_ctrl31__rfvKonsultacja16"), document.getElementById("ctl00_cp_f_ctrl31__rfvKonsultacja17"), document.getElementById("ctl00_cp_f_ctrl31__rfvKonsultacja18"), document.getElementById("ctl00_cp_f_rfv35Wybor"), document.getElementById("ctl00_cp_f_cv35"), document.getElementById("ctl00_cp_f_rfv35Sponsor"), document.getElementById("ctl00_cp_f_cv36"), document.getElementById("ctl00_cp_f_rev36Data"), document.getElementById("ctl00_cp_f_rfv36_waznedo"), document.getElementById("ctl00_cp_f_rfv43_Nazwisko"), document.getElementById("ctl00_cp_f_rfvKonsultacja12"), document.getElementById("ctl00_cp_f_rfv43Imie"), document.getElementById("ctl00_cp_f_rfvKonsultacja13"), document.getElementById("ctl00_cp_f_rfv43DataUrodzenia"), document.getElementById("ctl00_cp_f_rev43DataUrodzenia"), document.getElementById("ctl00_cp_f_rfv43NumerPaszportu"), document.getElementById("ctl00_cp_f_rfvKonsultacja14"), document.getElementById("ctl00_cp_f_rfv43"), document.getElementById("ctl00_cp_f_rvl25"), document.getElementById("ctl00_cp_f_cvOswiadczenie"), document.getElementById("ctl00_cp_f_CustomValidator1"), document.getElementById("ctl00_cp_f_CustomValidator2"));
    //]]>
</script>

<script type="text/javascript">
    //<![CDATA[
    var ctl00_cp_f_daneOs_revTxtNazwisko = document.all ? document.all["ctl00_cp_f_daneOs_revTxtNazwisko"] : document.getElementById("ctl00_cp_f_daneOs_revTxtNazwisko");
    ctl00_cp_f_daneOs_revTxtNazwisko.controltovalidate = "ctl00_cp_f_daneOs_txtNazwisko";
    ctl00_cp_f_daneOs_revTxtNazwisko.errormessage = "Неправильное значение";
    ctl00_cp_f_daneOs_revTxtNazwisko.display = "Dynamic";
    ctl00_cp_f_daneOs_revTxtNazwisko.evaluationfunction = "RegularExpressionValidatorEvaluateIsValid";
    ctl00_cp_f_daneOs_revTxtNazwisko.validationexpression = "^([A-Za-z \\-\\\']*)$";
    var ctl00_cp_f_daneOs_rfvTxtNazwisko = document.all ? document.all["ctl00_cp_f_daneOs_rfvTxtNazwisko"] : document.getElementById("ctl00_cp_f_daneOs_rfvTxtNazwisko");
    ctl00_cp_f_daneOs_rfvTxtNazwisko.controltovalidate = "ctl00_cp_f_daneOs_txtNazwisko";
    ctl00_cp_f_daneOs_rfvTxtNazwisko.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_daneOs_rfvTxtNazwisko.display = "Dynamic";
    ctl00_cp_f_daneOs_rfvTxtNazwisko.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ctl00_cp_f_daneOs_rfvTxtNazwisko.initialvalue = "";
    var ctl00_cp_f_daneOs_revTxtNazwiskoRodowe = document.all ? document.all["ctl00_cp_f_daneOs_revTxtNazwiskoRodowe"] : document.getElementById("ctl00_cp_f_daneOs_revTxtNazwiskoRodowe");
    ctl00_cp_f_daneOs_revTxtNazwiskoRodowe.controltovalidate = "ctl00_cp_f_daneOs_txtNazwiskoRodowe";
    ctl00_cp_f_daneOs_revTxtNazwiskoRodowe.errormessage = "Неправильное значение";
    ctl00_cp_f_daneOs_revTxtNazwiskoRodowe.display = "Dynamic";
    ctl00_cp_f_daneOs_revTxtNazwiskoRodowe.evaluationfunction = "RegularExpressionValidatorEvaluateIsValid";
    ctl00_cp_f_daneOs_revTxtNazwiskoRodowe.validationexpression = "^([A-Za-z \\-\\\']*)$";
    var ctl00_cp_f_daneOs_rfvTxtNazwiskoRodowe = document.all ? document.all["ctl00_cp_f_daneOs_rfvTxtNazwiskoRodowe"] : document.getElementById("ctl00_cp_f_daneOs_rfvTxtNazwiskoRodowe");
    ctl00_cp_f_daneOs_rfvTxtNazwiskoRodowe.controltovalidate = "ctl00_cp_f_daneOs_txtNazwiskoRodowe";
    ctl00_cp_f_daneOs_rfvTxtNazwiskoRodowe.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_daneOs_rfvTxtNazwiskoRodowe.display = "Dynamic";
    ctl00_cp_f_daneOs_rfvTxtNazwiskoRodowe.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ctl00_cp_f_daneOs_rfvTxtNazwiskoRodowe.initialvalue = "";
    var ctl00_cp_f_daneOs_revTxtImiona = document.all ? document.all["ctl00_cp_f_daneOs_revTxtImiona"] : document.getElementById("ctl00_cp_f_daneOs_revTxtImiona");
    ctl00_cp_f_daneOs_revTxtImiona.controltovalidate = "ctl00_cp_f_daneOs_txtImiona";
    ctl00_cp_f_daneOs_revTxtImiona.errormessage = "Неправильное значение";
    ctl00_cp_f_daneOs_revTxtImiona.display = "Dynamic";
    ctl00_cp_f_daneOs_revTxtImiona.evaluationfunction = "RegularExpressionValidatorEvaluateIsValid";
    ctl00_cp_f_daneOs_revTxtImiona.validationexpression = "^([A-Za-z \\-\\\']*)$";
    var ctl00_cp_f_daneOs_rfvTxtImiona = document.all ? document.all["ctl00_cp_f_daneOs_rfvTxtImiona"] : document.getElementById("ctl00_cp_f_daneOs_rfvTxtImiona");
    ctl00_cp_f_daneOs_rfvTxtImiona.controltovalidate = "ctl00_cp_f_daneOs_txtImiona";
    ctl00_cp_f_daneOs_rfvTxtImiona.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_daneOs_rfvTxtImiona.display = "Dynamic";
    ctl00_cp_f_daneOs_rfvTxtImiona.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ctl00_cp_f_daneOs_rfvTxtImiona.initialvalue = "";
    var ctl00_cp_f_daneOs_rvTxtDataUrodzin = document.all ? document.all["ctl00_cp_f_daneOs_rvTxtDataUrodzin"] : document.getElementById("ctl00_cp_f_daneOs_rvTxtDataUrodzin");
    ctl00_cp_f_daneOs_rvTxtDataUrodzin.controltovalidate = "ctl00_cp_f_daneOs_txtDataUrodzin";
    ctl00_cp_f_daneOs_rvTxtDataUrodzin.errormessage = "Неправильное значение";
    ctl00_cp_f_daneOs_rvTxtDataUrodzin.display = "Dynamic";
    ctl00_cp_f_daneOs_rvTxtDataUrodzin.type = "Date";
    ctl00_cp_f_daneOs_rvTxtDataUrodzin.dateorder = "dmy";
    ctl00_cp_f_daneOs_rvTxtDataUrodzin.cutoffyear = "2029";
    ctl00_cp_f_daneOs_rvTxtDataUrodzin.century = "2000";
    ctl00_cp_f_daneOs_rvTxtDataUrodzin.evaluationfunction = "RangeValidatorEvaluateIsValid";
    ctl00_cp_f_daneOs_rvTxtDataUrodzin.maximumvalue = "2013-04-06";
    ctl00_cp_f_daneOs_rvTxtDataUrodzin.minimumvalue = "1893-04-06";
    var ctl00_cp_f_daneOs_revTxtDataUrodzin = document.all ? document.all["ctl00_cp_f_daneOs_revTxtDataUrodzin"] : document.getElementById("ctl00_cp_f_daneOs_revTxtDataUrodzin");
    ctl00_cp_f_daneOs_revTxtDataUrodzin.controltovalidate = "ctl00_cp_f_daneOs_txtDataUrodzin";
    ctl00_cp_f_daneOs_revTxtDataUrodzin.errormessage = "Неправильное значение";
    ctl00_cp_f_daneOs_revTxtDataUrodzin.display = "Dynamic";
    ctl00_cp_f_daneOs_revTxtDataUrodzin.evaluationfunction = "RegularExpressionValidatorEvaluateIsValid";
    ctl00_cp_f_daneOs_revTxtDataUrodzin.validationexpression = "^(?:(?:1[7-9]|20)\\d\\d)-(?:(?:02-(?:[01]\\d|2[0-8]))|(?:(?:0[469]|11)-(?:[0-2]\\d|30))|(?:(?:0[13578]|1[02])-(?:[0-2]\\d|3[0-1])))$|^(?:(?:(?:(?:1[7-9]|20)(?:[02468][48]|[2468][048]|[13579][26]))|2000)-02-29)$";
    var ctl00_cp_f_daneOs_rfvTxtDataUrodzin = document.all ? document.all["ctl00_cp_f_daneOs_rfvTxtDataUrodzin"] : document.getElementById("ctl00_cp_f_daneOs_rfvTxtDataUrodzin");
    ctl00_cp_f_daneOs_rfvTxtDataUrodzin.controltovalidate = "ctl00_cp_f_daneOs_txtDataUrodzin";
    ctl00_cp_f_daneOs_rfvTxtDataUrodzin.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_daneOs_rfvTxtDataUrodzin.display = "Dynamic";
    ctl00_cp_f_daneOs_rfvTxtDataUrodzin.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ctl00_cp_f_daneOs_rfvTxtDataUrodzin.initialvalue = "";
    var ctl00_cp_f_daneOs_revTxtMiejsceUrodzenia = document.all ? document.all["ctl00_cp_f_daneOs_revTxtMiejsceUrodzenia"] : document.getElementById("ctl00_cp_f_daneOs_revTxtMiejsceUrodzenia");
    ctl00_cp_f_daneOs_revTxtMiejsceUrodzenia.controltovalidate = "ctl00_cp_f_daneOs_txtMiejsceUrodzenia";
    ctl00_cp_f_daneOs_revTxtMiejsceUrodzenia.errormessage = "Неправильное значение";
    ctl00_cp_f_daneOs_revTxtMiejsceUrodzenia.display = "Dynamic";
    ctl00_cp_f_daneOs_revTxtMiejsceUrodzenia.evaluationfunction = "RegularExpressionValidatorEvaluateIsValid";
    ctl00_cp_f_daneOs_revTxtMiejsceUrodzenia.validationexpression = "^([A-Za-z0-9 .,:;/-@]*)$";
    var ctl00_cp_f_daneOs_rfvTxtMiejsceUrodzenia = document.all ? document.all["ctl00_cp_f_daneOs_rfvTxtMiejsceUrodzenia"] : document.getElementById("ctl00_cp_f_daneOs_rfvTxtMiejsceUrodzenia");
    ctl00_cp_f_daneOs_rfvTxtMiejsceUrodzenia.controltovalidate = "ctl00_cp_f_daneOs_txtMiejsceUrodzenia";
    ctl00_cp_f_daneOs_rfvTxtMiejsceUrodzenia.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_daneOs_rfvTxtMiejsceUrodzenia.display = "Dynamic";
    ctl00_cp_f_daneOs_rfvTxtMiejsceUrodzenia.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ctl00_cp_f_daneOs_rfvTxtMiejsceUrodzenia.initialvalue = "";
    var ctl00_cp_f_daneOs_rfvCbKrajUrodzenia = document.all ? document.all["ctl00_cp_f_daneOs_rfvCbKrajUrodzenia"] : document.getElementById("ctl00_cp_f_daneOs_rfvCbKrajUrodzenia");
    ctl00_cp_f_daneOs_rfvCbKrajUrodzenia.controltovalidate = "ctl00_cp_f_daneOs_cbKrajUrodzenia";
    ctl00_cp_f_daneOs_rfvCbKrajUrodzenia.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_daneOs_rfvCbKrajUrodzenia.display = "Dynamic";
    ctl00_cp_f_daneOs_rfvCbKrajUrodzenia.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ctl00_cp_f_daneOs_rfvCbKrajUrodzenia.initialvalue = "";
    var ctl00_cp_f_daneOs_rfvCbObecneObywatelstwo = document.all ? document.all["ctl00_cp_f_daneOs_rfvCbObecneObywatelstwo"] : document.getElementById("ctl00_cp_f_daneOs_rfvCbObecneObywatelstwo");
    ctl00_cp_f_daneOs_rfvCbObecneObywatelstwo.controltovalidate = "ctl00_cp_f_daneOs_cbObecneObywatelstwo";
    ctl00_cp_f_daneOs_rfvCbObecneObywatelstwo.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_daneOs_rfvCbObecneObywatelstwo.display = "Dynamic";
    ctl00_cp_f_daneOs_rfvCbObecneObywatelstwo.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ctl00_cp_f_daneOs_rfvCbObecneObywatelstwo.initialvalue = "";
    var ctl00_cp_f_daneOs_rfvCbPosiadaneObywatelstwo = document.all ? document.all["ctl00_cp_f_daneOs_rfvCbPosiadaneObywatelstwo"] : document.getElementById("ctl00_cp_f_daneOs_rfvCbPosiadaneObywatelstwo");
    ctl00_cp_f_daneOs_rfvCbPosiadaneObywatelstwo.controltovalidate = "ctl00_cp_f_daneOs_cbPosiadaneObywatelstwo";
    ctl00_cp_f_daneOs_rfvCbPosiadaneObywatelstwo.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_daneOs_rfvCbPosiadaneObywatelstwo.display = "Dynamic";
    ctl00_cp_f_daneOs_rfvCbPosiadaneObywatelstwo.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ctl00_cp_f_daneOs_rfvCbPosiadaneObywatelstwo.initialvalue = "";
    var ctl00_cp_f_daneOs_rfvRbPlec = document.all ? document.all["ctl00_cp_f_daneOs_rfvRbPlec"] : document.getElementById("ctl00_cp_f_daneOs_rfvRbPlec");
    ctl00_cp_f_daneOs_rfvRbPlec.controltovalidate = "ctl00_cp_f_daneOs_rbPlec";
    ctl00_cp_f_daneOs_rfvRbPlec.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_daneOs_rfvRbPlec.display = "Dynamic";
    ctl00_cp_f_daneOs_rfvRbPlec.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ctl00_cp_f_daneOs_rfvRbPlec.initialvalue = "";
    var ctl00_cp_f_daneOs_rfvRbStanCywilny = document.all ? document.all["ctl00_cp_f_daneOs_rfvRbStanCywilny"] : document.getElementById("ctl00_cp_f_daneOs_rfvRbStanCywilny");
    ctl00_cp_f_daneOs_rfvRbStanCywilny.controltovalidate = "ctl00_cp_f_daneOs_rbStanCywilny";
    ctl00_cp_f_daneOs_rfvRbStanCywilny.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_daneOs_rfvRbStanCywilny.display = "Dynamic";
    ctl00_cp_f_daneOs_rfvRbStanCywilny.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ctl00_cp_f_daneOs_rfvRbStanCywilny.initialvalue = "";
    var ctl00_cp_f_RegularExpressionValidatorNrIdentyfikacyjny = document.all ? document.all["ctl00_cp_f_RegularExpressionValidatorNrIdentyfikacyjny"] : document.getElementById("ctl00_cp_f_RegularExpressionValidatorNrIdentyfikacyjny");
    ctl00_cp_f_RegularExpressionValidatorNrIdentyfikacyjny.controltovalidate = "ctl00_cp_f_txt5NumerDowodu";
    ctl00_cp_f_RegularExpressionValidatorNrIdentyfikacyjny.errormessage = "*";
    ctl00_cp_f_RegularExpressionValidatorNrIdentyfikacyjny.display = "Dynamic";
    ctl00_cp_f_RegularExpressionValidatorNrIdentyfikacyjny.enabled = "False";
    ctl00_cp_f_RegularExpressionValidatorNrIdentyfikacyjny.evaluationfunction = "RegularExpressionValidatorEvaluateIsValid";
    ctl00_cp_f_RegularExpressionValidatorNrIdentyfikacyjny.validationexpression = "[a-zA-Z0-9]+";
    var ctl00_cp_f_rfvNrIdentyfikacyjny = document.all ? document.all["ctl00_cp_f_rfvNrIdentyfikacyjny"] : document.getElementById("ctl00_cp_f_rfvNrIdentyfikacyjny");
    ctl00_cp_f_rfvNrIdentyfikacyjny.controltovalidate = "ctl00_cp_f_txt5NumerDowodu";
    ctl00_cp_f_rfvNrIdentyfikacyjny.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_rfvNrIdentyfikacyjny.display = "Dynamic";
    ctl00_cp_f_rfvNrIdentyfikacyjny.enabled = "False";
    ctl00_cp_f_rfvNrIdentyfikacyjny.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ctl00_cp_f_rfvNrIdentyfikacyjny.initialvalue = "";
    var ctl00_cp_f_rfv_13 = document.all ? document.all["ctl00_cp_f_rfv_13"] : document.getElementById("ctl00_cp_f_rfv_13");
    ctl00_cp_f_rfv_13.controltovalidate = "ctl00_cp_f_rbl13";
    ctl00_cp_f_rfv_13.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_rfv_13.display = "Dynamic";
    ctl00_cp_f_rfv_13.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ctl00_cp_f_rfv_13.initialvalue = "";
    var ctl00_cp_f_rfvKonsultacja1 = document.all ? document.all["ctl00_cp_f_rfvKonsultacja1"] : document.getElementById("ctl00_cp_f_rfvKonsultacja1");
    ctl00_cp_f_rfvKonsultacja1.controltovalidate = "ctl00_cp_f_txt13Rodzaj";
    ctl00_cp_f_rfvKonsultacja1.errormessage = "Неправильное значение";
    ctl00_cp_f_rfvKonsultacja1.display = "Dynamic";
    ctl00_cp_f_rfvKonsultacja1.evaluationfunction = "RegularExpressionValidatorEvaluateIsValid";
    ctl00_cp_f_rfvKonsultacja1.validationexpression = "^([A-Za-z0-9 .,:;/-@]*)$";
    var ctl00_cp_f_rfv_14 = document.all ? document.all["ctl00_cp_f_rfv_14"] : document.getElementById("ctl00_cp_f_rfv_14");
    ctl00_cp_f_rfv_14.controltovalidate = "ctl00_cp_f_txt14NumerPaszportu";
    ctl00_cp_f_rfv_14.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_rfv_14.display = "Dynamic";
    ctl00_cp_f_rfv_14.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ctl00_cp_f_rfv_14.initialvalue = "";
    var ctl00_cp_f_rfvKonsultacja9 = document.all ? document.all["ctl00_cp_f_rfvKonsultacja9"] : document.getElementById("ctl00_cp_f_rfvKonsultacja9");
    ctl00_cp_f_rfvKonsultacja9.controltovalidate = "ctl00_cp_f_txt14NumerPaszportu";
    ctl00_cp_f_rfvKonsultacja9.errormessage = "Неправильное значение";
    ctl00_cp_f_rfvKonsultacja9.display = "Dynamic";
    ctl00_cp_f_rfvKonsultacja9.evaluationfunction = "RegularExpressionValidatorEvaluateIsValid";
    ctl00_cp_f_rfvKonsultacja9.validationexpression = "^[A-Za-z0-9]*$";
    var ctl00_cp_f_rfv_16 = document.all ? document.all["ctl00_cp_f_rfv_16"] : document.getElementById("ctl00_cp_f_rfv_16");
    ctl00_cp_f_rfv_16.controltovalidate = "ctl00_cp_f_txt16WydanyDnia";
    ctl00_cp_f_rfv_16.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_rfv_16.display = "Dynamic";
    ctl00_cp_f_rfv_16.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ctl00_cp_f_rfv_16.initialvalue = "";
    var ctl00_cp_f_rev16 = document.all ? document.all["ctl00_cp_f_rev16"] : document.getElementById("ctl00_cp_f_rev16");
    ctl00_cp_f_rev16.controltovalidate = "ctl00_cp_f_txt16WydanyDnia";
    ctl00_cp_f_rev16.errormessage = "Неправильное значение";
    ctl00_cp_f_rev16.display = "Dynamic";
    ctl00_cp_f_rev16.evaluationfunction = "RegularExpressionValidatorEvaluateIsValid";
    ctl00_cp_f_rev16.validationexpression = "^(?:(?:1[7-9]|20)\\d\\d)-(?:(?:02-(?:[01]\\d|2[0-8]))|(?:(?:0[469]|11)-(?:[0-2]\\d|30))|(?:(?:0[13578]|1[02])-(?:[0-2]\\d|3[0-1])))$|^(?:(?:(?:(?:1[7-9]|20)(?:[02468][48]|[2468][048]|[13579][26]))|2000)-02-29)$";
    var ctl00_cp_f_rfv_17 = document.all ? document.all["ctl00_cp_f_rfv_17"] : document.getElementById("ctl00_cp_f_rfv_17");
    ctl00_cp_f_rfv_17.controltovalidate = "ctl00_cp_f_txt17WaznyDo";
    ctl00_cp_f_rfv_17.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_rfv_17.display = "Dynamic";
    ctl00_cp_f_rfv_17.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ctl00_cp_f_rfv_17.initialvalue = "";
    var ctl00_cp_f_cv17b = document.all ? document.all["ctl00_cp_f_cv17b"] : document.getElementById("ctl00_cp_f_cv17b");
    ctl00_cp_f_cv17b.controltovalidate = "ctl00_cp_f_txt17WaznyDo";
    ctl00_cp_f_cv17b.errormessage = "Неправильное значение";
    ctl00_cp_f_cv17b.display = "Dynamic";
    ctl00_cp_f_cv17b.type = "Date";
    ctl00_cp_f_cv17b.dateorder = "dmy";
    ctl00_cp_f_cv17b.cutoffyear = "2029";
    ctl00_cp_f_cv17b.century = "2000";
    ctl00_cp_f_cv17b.evaluationfunction = "CompareValidatorEvaluateIsValid";
    ctl00_cp_f_cv17b.valuetocompare = "2013-04-06";
    ctl00_cp_f_cv17b.operator = "GreaterThanEqual";
    var ctl00_cp_f_rev17 = document.all ? document.all["ctl00_cp_f_rev17"] : document.getElementById("ctl00_cp_f_rev17");
    ctl00_cp_f_rev17.controltovalidate = "ctl00_cp_f_txt17WaznyDo";
    ctl00_cp_f_rev17.errormessage = "Неправильное значение";
    ctl00_cp_f_rev17.display = "Dynamic";
    ctl00_cp_f_rev17.evaluationfunction = "RegularExpressionValidatorEvaluateIsValid";
    ctl00_cp_f_rev17.validationexpression = "^(?:(?:1[7-9]|20)\\d\\d)-(?:(?:02-(?:[01]\\d|2[0-8]))|(?:(?:0[469]|11)-(?:[0-2]\\d|30))|(?:(?:0[13578]|1[02])-(?:[0-2]\\d|3[0-1])))$|^(?:(?:(?:(?:1[7-9]|20)(?:[02468][48]|[2468][048]|[13579][26]))|2000)-02-29)$";
    var ctl00_cp_f_rfvWydanyPrzez = document.all ? document.all["ctl00_cp_f_rfvWydanyPrzez"] : document.getElementById("ctl00_cp_f_rfvWydanyPrzez");
    ctl00_cp_f_rfvWydanyPrzez.controltovalidate = "ctl00_cp_f_txt15WydanyPrzez";
    ctl00_cp_f_rfvWydanyPrzez.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_rfvWydanyPrzez.display = "Dynamic";
    ctl00_cp_f_rfvWydanyPrzez.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ctl00_cp_f_rfvWydanyPrzez.initialvalue = "";
    var ctl00_cp_f_rfvKonsultacja10 = document.all ? document.all["ctl00_cp_f_rfvKonsultacja10"] : document.getElementById("ctl00_cp_f_rfvKonsultacja10");
    ctl00_cp_f_rfvKonsultacja10.controltovalidate = "ctl00_cp_f_txt15WydanyPrzez";
    ctl00_cp_f_rfvKonsultacja10.errormessage = "Неправильное значение";
    ctl00_cp_f_rfvKonsultacja10.display = "Dynamic";
    ctl00_cp_f_rfvKonsultacja10.evaluationfunction = "RegularExpressionValidatorEvaluateIsValid";
    ctl00_cp_f_rfvKonsultacja10.validationexpression = "^([-A-Za-z0-9 \\\'.,:;/-@]*)$";
    var ctl00_cp_f_rfv45a = document.all ? document.all["ctl00_cp_f_rfv45a"] : document.getElementById("ctl00_cp_f_rfv45a");
    ctl00_cp_f_rfv45a.controltovalidate = "ctl00_cp_f_ddl45Panstwo";
    ctl00_cp_f_rfv45a.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_rfv45a.display = "Dynamic";
    ctl00_cp_f_rfv45a.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ctl00_cp_f_rfv45a.initialvalue = "";
    var ctl00_cp_f_rfv17Stan = document.all ? document.all["ctl00_cp_f_rfv17Stan"] : document.getElementById("ctl00_cp_f_rfv17Stan");
    ctl00_cp_f_rfv17Stan.controltovalidate = "ctl00_cp_f_txt45StanProwincja";
    ctl00_cp_f_rfv17Stan.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_rfv17Stan.display = "Dynamic";
    ctl00_cp_f_rfv17Stan.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ctl00_cp_f_rfv17Stan.initialvalue = "";
    var ctl00_cp_f_rfv45c = document.all ? document.all["ctl00_cp_f_rfv45c"] : document.getElementById("ctl00_cp_f_rfv45c");
    ctl00_cp_f_rfv45c.controltovalidate = "ctl00_cp_f_txt45Miejscowosc";
    ctl00_cp_f_rfv45c.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_rfv45c.display = "Dynamic";
    ctl00_cp_f_rfv45c.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ctl00_cp_f_rfv45c.initialvalue = "";
    var ctl00_cp_f_rfv45d = document.all ? document.all["ctl00_cp_f_rfv45d"] : document.getElementById("ctl00_cp_f_rfv45d");
    ctl00_cp_f_rfv45d.controltovalidate = "ctl00_cp_f_txt45Kod";
    ctl00_cp_f_rfv45d.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_rfv45d.display = "Dynamic";
    ctl00_cp_f_rfv45d.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ctl00_cp_f_rfv45d.initialvalue = "";
    var ctl00_cp_f_rfv45e = document.all ? document.all["ctl00_cp_f_rfv45e"] : document.getElementById("ctl00_cp_f_rfv45e");
    ctl00_cp_f_rfv45e.controltovalidate = "ctl00_cp_f_txt45Adres";
    ctl00_cp_f_rfv45e.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_rfv45e.display = "Dynamic";
    ctl00_cp_f_rfv45e.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ctl00_cp_f_rfv45e.initialvalue = "";
    var ctl00_cp_f_RequiredFieldValidator3 = document.all ? document.all["ctl00_cp_f_RequiredFieldValidator3"] : document.getElementById("ctl00_cp_f_RequiredFieldValidator3");
    ctl00_cp_f_RequiredFieldValidator3.controltovalidate = "ctl00_cp_f_txt17Email";
    ctl00_cp_f_RequiredFieldValidator3.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_RequiredFieldValidator3.display = "Dynamic";
    ctl00_cp_f_RequiredFieldValidator3.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ctl00_cp_f_RequiredFieldValidator3.initialvalue = "";
    var ctl00_cp_f_RegularExpressionValidator1 = document.all ? document.all["ctl00_cp_f_RegularExpressionValidator1"] : document.getElementById("ctl00_cp_f_RegularExpressionValidator1");
    ctl00_cp_f_RegularExpressionValidator1.controltovalidate = "ctl00_cp_f_txt17Email";
    ctl00_cp_f_RegularExpressionValidator1.errormessage = "Неправильное значение";
    ctl00_cp_f_RegularExpressionValidator1.display = "Dynamic";
    ctl00_cp_f_RegularExpressionValidator1.evaluationfunction = "RegularExpressionValidatorEvaluateIsValid";
    ctl00_cp_f_RegularExpressionValidator1.validationexpression = "^(?:[A-Za-z0-9!#$%&\'*+/=?^_`{|}~-]+(?:\\.[A-Za-z0-9!#$%&\'*+/=?^_`{|}~-]+)*|\"(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21\\x23-\\x5b\\x5d-\\x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])*\")@(?:(?:[A-Za-z0-9](?:[A-Za-z0-9-]*[A-Za-z0-9])?\\.)+[A-Za-z0-9](?:[A-Za-z0-9-]*[A-Za-z0-9])?|\\[(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?|[A-Za-z0-9-]*[A-Za-z0-9]:(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21-\\x5a\\x53-\\x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])+)\\])$";
    var ctl00_cp_f_rfv17prtel = document.all ? document.all["ctl00_cp_f_rfv17prtel"] : document.getElementById("ctl00_cp_f_rfv17prtel");
    ctl00_cp_f_rfv17prtel.controltovalidate = "ctl00_cp_f_txt46TelefonPrefiks0";
    ctl00_cp_f_rfv17prtel.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_rfv17prtel.display = "Dynamic";
    ctl00_cp_f_rfv17prtel.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ctl00_cp_f_rfv17prtel.initialvalue = "";
    var ctl00_cp_f_rfv17telnr = document.all ? document.all["ctl00_cp_f_rfv17telnr"] : document.getElementById("ctl00_cp_f_rfv17telnr");
    ctl00_cp_f_rfv17telnr.controltovalidate = "ctl00_cp_f_txt46TelefonNumer0";
    ctl00_cp_f_rfv17telnr.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_rfv17telnr.display = "Dynamic";
    ctl00_cp_f_rfv17telnr.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ctl00_cp_f_rfv17telnr.initialvalue = "";
    var ctl00_cp_f_rfv18 = document.all ? document.all["ctl00_cp_f_rfv18"] : document.getElementById("ctl00_cp_f_rfv18");
    ctl00_cp_f_rfv18.controltovalidate = "ctl00_cp_f_rbl18";
    ctl00_cp_f_rfv18.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_rfv18.display = "Dynamic";
    ctl00_cp_f_rfv18.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ctl00_cp_f_rfv18.initialvalue = "";
    var ctl00_cp_f_rfv_19_zawod = document.all ? document.all["ctl00_cp_f_rfv_19_zawod"] : document.getElementById("ctl00_cp_f_rfv_19_zawod");
    ctl00_cp_f_rfv_19_zawod.controltovalidate = "ctl00_cp_f_ddl19WykonywanyZawod";
    ctl00_cp_f_rfv_19_zawod.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_rfv_19_zawod.display = "Dynamic";
    ctl00_cp_f_rfv_19_zawod.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ctl00_cp_f_rfv_19_zawod.initialvalue = "";
    var ctl00_cp_f_rfv_20_panstwo = document.all ? document.all["ctl00_cp_f_rfv_20_panstwo"] : document.getElementById("ctl00_cp_f_rfv_20_panstwo");
    ctl00_cp_f_rfv_20_panstwo.controltovalidate = "ctl00_cp_f_dd20bPanstwo";
    ctl00_cp_f_rfv_20_panstwo.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_rfv_20_panstwo.display = "Dynamic";
    ctl00_cp_f_rfv_20_panstwo.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ctl00_cp_f_rfv_20_panstwo.initialvalue = "";
    var ctl00_cp_f_rfv_20_stan = document.all ? document.all["ctl00_cp_f_rfv_20_stan"] : document.getElementById("ctl00_cp_f_rfv_20_stan");
    ctl00_cp_f_rfv_20_stan.controltovalidate = "ctl00_cp_f_txt20cStanProwincja";
    ctl00_cp_f_rfv_20_stan.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_rfv_20_stan.display = "Dynamic";
    ctl00_cp_f_rfv_20_stan.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ctl00_cp_f_rfv_20_stan.initialvalue = "";
    var ctl00_cp_f_rfv_20_miejscowosc = document.all ? document.all["ctl00_cp_f_rfv_20_miejscowosc"] : document.getElementById("ctl00_cp_f_rfv_20_miejscowosc");
    ctl00_cp_f_rfv_20_miejscowosc.controltovalidate = "ctl00_cp_f_txt20dMiejscowosc";
    ctl00_cp_f_rfv_20_miejscowosc.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_rfv_20_miejscowosc.display = "Dynamic";
    ctl00_cp_f_rfv_20_miejscowosc.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ctl00_cp_f_rfv_20_miejscowosc.initialvalue = "";
    var ctl00_cp_f_rfv_20_kodpocztowy = document.all ? document.all["ctl00_cp_f_rfv_20_kodpocztowy"] : document.getElementById("ctl00_cp_f_rfv_20_kodpocztowy");
    ctl00_cp_f_rfv_20_kodpocztowy.controltovalidate = "ctl00_cp_f_txt20eKodPocztowy";
    ctl00_cp_f_rfv_20_kodpocztowy.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_rfv_20_kodpocztowy.display = "Dynamic";
    ctl00_cp_f_rfv_20_kodpocztowy.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ctl00_cp_f_rfv_20_kodpocztowy.initialvalue = "";
    var ctl00_cp_f_rfv_20_adres = document.all ? document.all["ctl00_cp_f_rfv_20_adres"] : document.getElementById("ctl00_cp_f_rfv_20_adres");
    ctl00_cp_f_rfv_20_adres.controltovalidate = "ctl00_cp_f_txt20fAdres";
    ctl00_cp_f_rfv_20_adres.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_rfv_20_adres.display = "Dynamic";
    ctl00_cp_f_rfv_20_adres.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ctl00_cp_f_rfv_20_adres.initialvalue = "";
    var ctl00_cp_f_rfv_20_prefix = document.all ? document.all["ctl00_cp_f_rfv_20_prefix"] : document.getElementById("ctl00_cp_f_rfv_20_prefix");
    ctl00_cp_f_rfv_20_prefix.controltovalidate = "ctl00_cp_f_txt20gPrefix";
    ctl00_cp_f_rfv_20_prefix.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_rfv_20_prefix.display = "Dynamic";
    ctl00_cp_f_rfv_20_prefix.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ctl00_cp_f_rfv_20_prefix.initialvalue = "";
    var ctl00_cp_f_rfv_20_telefon = document.all ? document.all["ctl00_cp_f_rfv_20_telefon"] : document.getElementById("ctl00_cp_f_rfv_20_telefon");
    ctl00_cp_f_rfv_20_telefon.controltovalidate = "ctl00_cp_f_txt20hTelefon";
    ctl00_cp_f_rfv_20_telefon.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_rfv_20_telefon.display = "Dynamic";
    ctl00_cp_f_rfv_20_telefon.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ctl00_cp_f_rfv_20_telefon.initialvalue = "";
    var ctl00_cp_f_rfv_20_nazwa = document.all ? document.all["ctl00_cp_f_rfv_20_nazwa"] : document.getElementById("ctl00_cp_f_rfv_20_nazwa");
    ctl00_cp_f_rfv_20_nazwa.controltovalidate = "ctl00_cp_f_txt20Nazwa";
    ctl00_cp_f_rfv_20_nazwa.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_rfv_20_nazwa.display = "Dynamic";
    ctl00_cp_f_rfv_20_nazwa.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ctl00_cp_f_rfv_20_nazwa.initialvalue = "";
    var ctl00_cp_f_rfv_20Email = document.all ? document.all["ctl00_cp_f_rfv_20Email"] : document.getElementById("ctl00_cp_f_rfv_20Email");
    ctl00_cp_f_rfv_20Email.controltovalidate = "ctl00_cp_f_txt20Email";
    ctl00_cp_f_rfv_20Email.errormessage = "Неправильное значение";
    ctl00_cp_f_rfv_20Email.display = "Dynamic";
    ctl00_cp_f_rfv_20Email.evaluationfunction = "RegularExpressionValidatorEvaluateIsValid";
    ctl00_cp_f_rfv_20Email.validationexpression = "^(?:[A-Za-z0-9!#$%&\'*+/=?^_`{|}~-]+(?:\\.[A-Za-z0-9!#$%&\'*+/=?^_`{|}~-]+)*|\"(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21\\x23-\\x5b\\x5d-\\x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])*\")@(?:(?:[A-Za-z0-9](?:[A-Za-z0-9-]*[A-Za-z0-9])?\\.)+[A-Za-z0-9](?:[A-Za-z0-9-]*[A-Za-z0-9])?|\\[(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?|[A-Za-z0-9-]*[A-Za-z0-9]:(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21-\\x5a\\x53-\\x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])+)\\])$";
    var ctl00_cp_f_rfvKonsultacja11 = document.all ? document.all["ctl00_cp_f_rfvKonsultacja11"] : document.getElementById("ctl00_cp_f_rfvKonsultacja11");
    ctl00_cp_f_rfvKonsultacja11.controltovalidate = "ctl00_cp_f_txt29CelPodrozy";
    ctl00_cp_f_rfvKonsultacja11.errormessage = "Неправильное значение";
    ctl00_cp_f_rfvKonsultacja11.display = "Dynamic";
    ctl00_cp_f_rfvKonsultacja11.evaluationfunction = "RegularExpressionValidatorEvaluateIsValid";
    ctl00_cp_f_rfvKonsultacja11.validationexpression = "^([A-Za-z0-9 .,:;/-@]*)$";
    var ctl00_cp_f_rfv_21 = document.all ? document.all["ctl00_cp_f_rfv_21"] : document.getElementById("ctl00_cp_f_rfv_21");
    ctl00_cp_f_rfv_21.controltovalidate = "ctl00_cp_f_ddl21KrajDocelowy";
    ctl00_cp_f_rfv_21.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_rfv_21.display = "Dynamic";
    ctl00_cp_f_rfv_21.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ctl00_cp_f_rfv_21.initialvalue = "";
    var ctl00_cp_f_RequiredFieldValidator1 = document.all ? document.all["ctl00_cp_f_RequiredFieldValidator1"] : document.getElementById("ctl00_cp_f_RequiredFieldValidator1");
    ctl00_cp_f_RequiredFieldValidator1.controltovalidate = "ctl00_cp_f_ddl21KrajDocelowy";
    ctl00_cp_f_RequiredFieldValidator1.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_RequiredFieldValidator1.display = "Dynamic";
    ctl00_cp_f_RequiredFieldValidator1.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ctl00_cp_f_RequiredFieldValidator1.initialvalue = "";
    var ctl00_cp_f_rvl24 = document.all ? document.all["ctl00_cp_f_rvl24"] : document.getElementById("ctl00_cp_f_rvl24");
    ctl00_cp_f_rvl24.controltovalidate = "ctl00_cp_f_rbl24";
    ctl00_cp_f_rvl24.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_rvl24.display = "Dynamic";
    ctl00_cp_f_rvl24.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ctl00_cp_f_rvl24.initialvalue = "";
    var ctl00_cp_f_rfv_25 = document.all ? document.all["ctl00_cp_f_rfv_25"] : document.getElementById("ctl00_cp_f_rfv_25");
    ctl00_cp_f_rfv_25.controltovalidate = "ctl00_cp_f_txt25OkresPobytu";
    ctl00_cp_f_rfv_25.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_rfv_25.display = "Dynamic";
    ctl00_cp_f_rfv_25.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ctl00_cp_f_rfv_25.initialvalue = "";
    var ctl00_cp_f_rvLotniskowa = document.all ? document.all["ctl00_cp_f_rvLotniskowa"] : document.getElementById("ctl00_cp_f_rvLotniskowa");
    ctl00_cp_f_rvLotniskowa.controltovalidate = "ctl00_cp_f_txt25OkresPobytu";
    ctl00_cp_f_rvLotniskowa.errormessage = "Неправильное значение";
    ctl00_cp_f_rvLotniskowa.display = "Dynamic";
    ctl00_cp_f_rvLotniskowa.type = "Integer";
    ctl00_cp_f_rvLotniskowa.evaluationfunction = "RangeValidatorEvaluateIsValid";
    ctl00_cp_f_rvLotniskowa.maximumvalue = "90";
    ctl00_cp_f_rvLotniskowa.minimumvalue = "1";
    var ctl00_cp_f_rfv30 = document.all ? document.all["ctl00_cp_f_rfv30"] : document.getElementById("ctl00_cp_f_rfv30");
    ctl00_cp_f_rfv30.controltovalidate = "ctl00_cp_f_txt30DataWjazdu";
    ctl00_cp_f_rfv30.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_rfv30.display = "Dynamic";
    ctl00_cp_f_rfv30.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ctl00_cp_f_rfv30.initialvalue = "";
    var ctl00_cp_f_rev30 = document.all ? document.all["ctl00_cp_f_rev30"] : document.getElementById("ctl00_cp_f_rev30");
    ctl00_cp_f_rev30.controltovalidate = "ctl00_cp_f_txt30DataWjazdu";
    ctl00_cp_f_rev30.errormessage = "Неправильное значение";
    ctl00_cp_f_rev30.display = "Dynamic";
    ctl00_cp_f_rev30.evaluationfunction = "RegularExpressionValidatorEvaluateIsValid";
    ctl00_cp_f_rev30.validationexpression = "^(?:(?:1[7-9]|20)\\d\\d)-(?:(?:02-(?:[01]\\d|2[0-8]))|(?:(?:0[469]|11)-(?:[0-2]\\d|30))|(?:(?:0[13578]|1[02])-(?:[0-2]\\d|3[0-1])))$|^(?:(?:(?:(?:1[7-9]|20)(?:[02468][48]|[2468][048]|[13579][26]))|2000)-02-29)$";
    var ctl00_cp_f_rev31 = document.all ? document.all["ctl00_cp_f_rev31"] : document.getElementById("ctl00_cp_f_rev31");
    ctl00_cp_f_rev31.controltovalidate = "ctl00_cp_f_txt31DataWyjazdu";
    ctl00_cp_f_rev31.errormessage = "Неправильное значение";
    ctl00_cp_f_rev31.display = "Dynamic";
    ctl00_cp_f_rev31.evaluationfunction = "RegularExpressionValidatorEvaluateIsValid";
    ctl00_cp_f_rev31.validationexpression = "^(?:(?:1[7-9]|20)\\d\\d)-(?:(?:02-(?:[01]\\d|2[0-8]))|(?:(?:0[469]|11)-(?:[0-2]\\d|30))|(?:(?:0[13578]|1[02])-(?:[0-2]\\d|3[0-1])))$|^(?:(?:(?:(?:1[7-9]|20)(?:[02468][48]|[2468][048]|[13579][26]))|2000)-02-29)$";
    var ctl00_cp_f_RequiredFieldValidator2 = document.all ? document.all["ctl00_cp_f_RequiredFieldValidator2"] : document.getElementById("ctl00_cp_f_RequiredFieldValidator2");
    ctl00_cp_f_RequiredFieldValidator2.controltovalidate = "ctl00_cp_f_txt31DataWyjazdu";
    ctl00_cp_f_RequiredFieldValidator2.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_RequiredFieldValidator2.display = "Dynamic";
    ctl00_cp_f_RequiredFieldValidator2.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ctl00_cp_f_RequiredFieldValidator2.initialvalue = "";
    var ctl00_cp_f_rfv26 = document.all ? document.all["ctl00_cp_f_rfv26"] : document.getElementById("ctl00_cp_f_rfv26");
    ctl00_cp_f_rfv26.controltovalidate = "ctl00_cp_f_rbl26";
    ctl00_cp_f_rfv26.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_rfv26.display = "Dynamic";
    ctl00_cp_f_rfv26.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ctl00_cp_f_rfv26.initialvalue = "";
    var ctl00_cp_f_ctrl31__rfv34Rodzaj = document.all ? document.all["ctl00_cp_f_ctrl31__rfv34Rodzaj"] : document.getElementById("ctl00_cp_f_ctrl31__rfv34Rodzaj");
    ctl00_cp_f_ctrl31__rfv34Rodzaj.controltovalidate = "ctl00_cp_f_ctrl31__rbl34";
    ctl00_cp_f_ctrl31__rfv34Rodzaj.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_ctrl31__rfv34Rodzaj.display = "Dynamic";
    ctl00_cp_f_ctrl31__rfv34Rodzaj.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ctl00_cp_f_ctrl31__rfv34Rodzaj.initialvalue = "";
    var ctl00_cp_f_ctrl31__rfv34_2 = document.all ? document.all["ctl00_cp_f_ctrl31__rfv34_2"] : document.getElementById("ctl00_cp_f_ctrl31__rfv34_2");
    ctl00_cp_f_ctrl31__rfv34_2.controltovalidate = "ctl00_cp_f_ctrl31__ddl34panstwo";
    ctl00_cp_f_ctrl31__rfv34_2.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_ctrl31__rfv34_2.display = "Dynamic";
    ctl00_cp_f_ctrl31__rfv34_2.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ctl00_cp_f_ctrl31__rfv34_2.initialvalue = "";
    var ctl00_cp_f_ctrl31__rfv34_3 = document.all ? document.all["ctl00_cp_f_ctrl31__rfv34_3"] : document.getElementById("ctl00_cp_f_ctrl31__rfv34_3");
    ctl00_cp_f_ctrl31__rfv34_3.controltovalidate = "ctl00_cp_f_ctrl31__txt34miejscowosc";
    ctl00_cp_f_ctrl31__rfv34_3.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_ctrl31__rfv34_3.display = "Dynamic";
    ctl00_cp_f_ctrl31__rfv34_3.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ctl00_cp_f_ctrl31__rfv34_3.initialvalue = "";
    var ctl00_cp_f_ctrl31__rfvKonsultacja9 = document.all ? document.all["ctl00_cp_f_ctrl31__rfvKonsultacja9"] : document.getElementById("ctl00_cp_f_ctrl31__rfvKonsultacja9");
    ctl00_cp_f_ctrl31__rfvKonsultacja9.controltovalidate = "ctl00_cp_f_ctrl31__txt34miejscowosc";
    ctl00_cp_f_ctrl31__rfvKonsultacja9.errormessage = "Неправильное значение";
    ctl00_cp_f_ctrl31__rfvKonsultacja9.display = "Dynamic";
    ctl00_cp_f_ctrl31__rfvKonsultacja9.evaluationfunction = "RegularExpressionValidatorEvaluateIsValid";
    ctl00_cp_f_ctrl31__rfvKonsultacja9.validationexpression = "^([A-Za-z0-9 .,:;/-@]*)$";
    var ctl00_cp_f_ctrl31__rfv34_4 = document.all ? document.all["ctl00_cp_f_ctrl31__rfv34_4"] : document.getElementById("ctl00_cp_f_ctrl31__rfv34_4");
    ctl00_cp_f_ctrl31__rfv34_4.controltovalidate = "ctl00_cp_f_ctrl31__txt34kod";
    ctl00_cp_f_ctrl31__rfv34_4.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_ctrl31__rfv34_4.display = "Dynamic";
    ctl00_cp_f_ctrl31__rfv34_4.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ctl00_cp_f_ctrl31__rfv34_4.initialvalue = "";
    var ctl00_cp_f_ctrl31__rfvKonsultacja10 = document.all ? document.all["ctl00_cp_f_ctrl31__rfvKonsultacja10"] : document.getElementById("ctl00_cp_f_ctrl31__rfvKonsultacja10");
    ctl00_cp_f_ctrl31__rfvKonsultacja10.controltovalidate = "ctl00_cp_f_ctrl31__txt34kod";
    ctl00_cp_f_ctrl31__rfvKonsultacja10.errormessage = "Неправильное значение";
    ctl00_cp_f_ctrl31__rfvKonsultacja10.display = "Dynamic";
    ctl00_cp_f_ctrl31__rfvKonsultacja10.evaluationfunction = "RegularExpressionValidatorEvaluateIsValid";
    ctl00_cp_f_ctrl31__rfvKonsultacja10.validationexpression = "^([-A-Za-z0-9 .,:;@]*)$";
    var ctl00_cp_f_ctrl31__rfvKonsultacja11 = document.all ? document.all["ctl00_cp_f_ctrl31__rfvKonsultacja11"] : document.getElementById("ctl00_cp_f_ctrl31__rfvKonsultacja11");
    ctl00_cp_f_ctrl31__rfvKonsultacja11.controltovalidate = "ctl00_cp_f_ctrl31__txt34prefikstel";
    ctl00_cp_f_ctrl31__rfvKonsultacja11.errormessage = "Неправильное значение";
    ctl00_cp_f_ctrl31__rfvKonsultacja11.display = "Dynamic";
    ctl00_cp_f_ctrl31__rfvKonsultacja11.evaluationfunction = "RegularExpressionValidatorEvaluateIsValid";
    ctl00_cp_f_ctrl31__rfvKonsultacja11.validationexpression = "^([A-Za-z0-9 .,:;/-@]*)$";
    var ctl00_cp_f_ctrl31__rfvKonsultacja12 = document.all ? document.all["ctl00_cp_f_ctrl31__rfvKonsultacja12"] : document.getElementById("ctl00_cp_f_ctrl31__rfvKonsultacja12");
    ctl00_cp_f_ctrl31__rfvKonsultacja12.controltovalidate = "ctl00_cp_f_ctrl31__txt34tel";
    ctl00_cp_f_ctrl31__rfvKonsultacja12.errormessage = "Неправильное значение";
    ctl00_cp_f_ctrl31__rfvKonsultacja12.display = "Dynamic";
    ctl00_cp_f_ctrl31__rfvKonsultacja12.evaluationfunction = "RegularExpressionValidatorEvaluateIsValid";
    ctl00_cp_f_ctrl31__rfvKonsultacja12.validationexpression = "^([A-Za-z0-9 .,:;/-@]*)$";
    var ctl00_cp_f_ctrl31__rfvKonsultacja13 = document.all ? document.all["ctl00_cp_f_ctrl31__rfvKonsultacja13"] : document.getElementById("ctl00_cp_f_ctrl31__rfvKonsultacja13");
    ctl00_cp_f_ctrl31__rfvKonsultacja13.controltovalidate = "ctl00_cp_f_ctrl31__txt34prefiksfax";
    ctl00_cp_f_ctrl31__rfvKonsultacja13.errormessage = "Неправильное значение";
    ctl00_cp_f_ctrl31__rfvKonsultacja13.display = "Dynamic";
    ctl00_cp_f_ctrl31__rfvKonsultacja13.evaluationfunction = "RegularExpressionValidatorEvaluateIsValid";
    ctl00_cp_f_ctrl31__rfvKonsultacja13.validationexpression = "^([A-Za-z0-9 .,:;/-@]*)$";
    var ctl00_cp_f_ctrl31__rfvKonsultacja14 = document.all ? document.all["ctl00_cp_f_ctrl31__rfvKonsultacja14"] : document.getElementById("ctl00_cp_f_ctrl31__rfvKonsultacja14");
    ctl00_cp_f_ctrl31__rfvKonsultacja14.controltovalidate = "ctl00_cp_f_ctrl31__txt34fax";
    ctl00_cp_f_ctrl31__rfvKonsultacja14.errormessage = "Неправильное значение";
    ctl00_cp_f_ctrl31__rfvKonsultacja14.display = "Dynamic";
    ctl00_cp_f_ctrl31__rfvKonsultacja14.evaluationfunction = "RegularExpressionValidatorEvaluateIsValid";
    ctl00_cp_f_ctrl31__rfvKonsultacja14.validationexpression = "^([A-Za-z0-9 .,:;/-@]*)$";
    var ctl00_cp_f_ctrl31__rfv34_5 = document.all ? document.all["ctl00_cp_f_ctrl31__rfv34_5"] : document.getElementById("ctl00_cp_f_ctrl31__rfv34_5");
    ctl00_cp_f_ctrl31__rfv34_5.controltovalidate = "ctl00_cp_f_ctrl31__txt34adres";
    ctl00_cp_f_ctrl31__rfv34_5.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_ctrl31__rfv34_5.display = "Dynamic";
    ctl00_cp_f_ctrl31__rfv34_5.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ctl00_cp_f_ctrl31__rfv34_5.initialvalue = "";
    var ctl00_cp_f_ctrl31__rfvKonsultacja15 = document.all ? document.all["ctl00_cp_f_ctrl31__rfvKonsultacja15"] : document.getElementById("ctl00_cp_f_ctrl31__rfvKonsultacja15");
    ctl00_cp_f_ctrl31__rfvKonsultacja15.controltovalidate = "ctl00_cp_f_ctrl31__txt34adres";
    ctl00_cp_f_ctrl31__rfvKonsultacja15.errormessage = "Неправильное значение";
    ctl00_cp_f_ctrl31__rfvKonsultacja15.display = "Dynamic";
    ctl00_cp_f_ctrl31__rfvKonsultacja15.evaluationfunction = "RegularExpressionValidatorEvaluateIsValid";
    ctl00_cp_f_ctrl31__rfvKonsultacja15.validationexpression = "^([A-Za-z0-9 .,:;/-@]*)$";
    var ctl00_cp_f_ctrl31__rfvKonsultacja16 = document.all ? document.all["ctl00_cp_f_ctrl31__rfvKonsultacja16"] : document.getElementById("ctl00_cp_f_ctrl31__rfvKonsultacja16");
    ctl00_cp_f_ctrl31__rfvKonsultacja16.controltovalidate = "ctl00_cp_f_ctrl31__txt34NumerDomu";
    ctl00_cp_f_ctrl31__rfvKonsultacja16.errormessage = "Неправильное значение";
    ctl00_cp_f_ctrl31__rfvKonsultacja16.display = "Dynamic";
    ctl00_cp_f_ctrl31__rfvKonsultacja16.evaluationfunction = "RegularExpressionValidatorEvaluateIsValid";
    ctl00_cp_f_ctrl31__rfvKonsultacja16.validationexpression = "^([A-Za-z0-9 .,:;/-@]*)$";
    var ctl00_cp_f_ctrl31__rfvKonsultacja17 = document.all ? document.all["ctl00_cp_f_ctrl31__rfvKonsultacja17"] : document.getElementById("ctl00_cp_f_ctrl31__rfvKonsultacja17");
    ctl00_cp_f_ctrl31__rfvKonsultacja17.controltovalidate = "ctl00_cp_f_ctrl31__txt34NumerLokalu";
    ctl00_cp_f_ctrl31__rfvKonsultacja17.errormessage = "Неправильное значение";
    ctl00_cp_f_ctrl31__rfvKonsultacja17.display = "Dynamic";
    ctl00_cp_f_ctrl31__rfvKonsultacja17.evaluationfunction = "RegularExpressionValidatorEvaluateIsValid";
    ctl00_cp_f_ctrl31__rfvKonsultacja17.validationexpression = "^([A-Za-z0-9 .,:;/-@]*)$";
    var ctl00_cp_f_ctrl31__rfvKonsultacja18 = document.all ? document.all["ctl00_cp_f_ctrl31__rfvKonsultacja18"] : document.getElementById("ctl00_cp_f_ctrl31__rfvKonsultacja18");
    ctl00_cp_f_ctrl31__rfvKonsultacja18.controltovalidate = "ctl00_cp_f_ctrl31__txt34Email";
    ctl00_cp_f_ctrl31__rfvKonsultacja18.errormessage = "Неправильное значение";
    ctl00_cp_f_ctrl31__rfvKonsultacja18.display = "Dynamic";
    ctl00_cp_f_ctrl31__rfvKonsultacja18.evaluationfunction = "RegularExpressionValidatorEvaluateIsValid";
    ctl00_cp_f_ctrl31__rfvKonsultacja18.validationexpression = "^(?:[A-Za-z0-9!#$%&\'*+/=?^_`{|}~-]+(?:\\.[A-Za-z0-9!#$%&\'*+/=?^_`{|}~-]+)*|\"(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21\\x23-\\x5b\\x5d-\\x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])*\")@(?:(?:[A-Za-z0-9](?:[A-Za-z0-9-]*[A-Za-z0-9])?\\.)+[A-Za-z0-9](?:[A-Za-z0-9-]*[A-Za-z0-9])?|\\[(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?|[A-Za-z0-9-]*[A-Za-z0-9]:(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21-\\x5a\\x53-\\x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])+)\\])$";
    var ctl00_cp_f_rfv35Wybor = document.all ? document.all["ctl00_cp_f_rfv35Wybor"] : document.getElementById("ctl00_cp_f_rfv35Wybor");
    ctl00_cp_f_rfv35Wybor.controltovalidate = "ctl00_cp_f_rbl35";
    ctl00_cp_f_rfv35Wybor.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_rfv35Wybor.display = "Dynamic";
    ctl00_cp_f_rfv35Wybor.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ctl00_cp_f_rfv35Wybor.initialvalue = "";
    var ctl00_cp_f_rfv35Sponsor = document.all ? document.all["ctl00_cp_f_rfv35Sponsor"] : document.getElementById("ctl00_cp_f_rfv35Sponsor");
    ctl00_cp_f_rfv35Sponsor.controltovalidate = "ctl00_cp_f_txt35KtoPokrywaKoszty";
    ctl00_cp_f_rfv35Sponsor.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_rfv35Sponsor.display = "Dynamic";
    ctl00_cp_f_rfv35Sponsor.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ctl00_cp_f_rfv35Sponsor.initialvalue = "";
    var ctl00_cp_f_cv36 = document.all ? document.all["ctl00_cp_f_cv36"] : document.getElementById("ctl00_cp_f_cv36");
    ctl00_cp_f_cv36.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_cv36.display = "Dynamic";
    ctl00_cp_f_cv36.evaluationfunction = "CustomValidatorEvaluateIsValid";
    ctl00_cp_f_cv36.clientvalidationfunction = "ValidateSrodki";
    var ctl00_cp_f_rev36Data = document.all ? document.all["ctl00_cp_f_rev36Data"] : document.getElementById("ctl00_cp_f_rev36Data");
    ctl00_cp_f_rev36Data.controltovalidate = "ctl00_cp_f_txt36WazneDo";
    ctl00_cp_f_rev36Data.errormessage = "Неправильное значение";
    ctl00_cp_f_rev36Data.display = "Dynamic";
    ctl00_cp_f_rev36Data.evaluationfunction = "RegularExpressionValidatorEvaluateIsValid";
    ctl00_cp_f_rev36Data.validationexpression = "^(?:(?:1[7-9]|20)\\d\\d)-(?:(?:02-(?:[01]\\d|2[0-8]))|(?:(?:0[469]|11)-(?:[0-2]\\d|30))|(?:(?:0[13578]|1[02])-(?:[0-2]\\d|3[0-1])))$|^(?:(?:(?:(?:1[7-9]|20)(?:[02468][48]|[2468][048]|[13579][26]))|2000)-02-29)$";
    var ctl00_cp_f_rfv43_Nazwisko = document.all ? document.all["ctl00_cp_f_rfv43_Nazwisko"] : document.getElementById("ctl00_cp_f_rfv43_Nazwisko");
    ctl00_cp_f_rfv43_Nazwisko.controltovalidate = "ctl00_cp_f_txt43Nazwisko";
    ctl00_cp_f_rfv43_Nazwisko.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_rfv43_Nazwisko.display = "Dynamic";
    ctl00_cp_f_rfv43_Nazwisko.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ctl00_cp_f_rfv43_Nazwisko.initialvalue = "";
    var ctl00_cp_f_rfvKonsultacja12 = document.all ? document.all["ctl00_cp_f_rfvKonsultacja12"] : document.getElementById("ctl00_cp_f_rfvKonsultacja12");
    ctl00_cp_f_rfvKonsultacja12.controltovalidate = "ctl00_cp_f_txt43Nazwisko";
    ctl00_cp_f_rfvKonsultacja12.errormessage = "Неправильное значение";
    ctl00_cp_f_rfvKonsultacja12.display = "Dynamic";
    ctl00_cp_f_rfvKonsultacja12.evaluationfunction = "RegularExpressionValidatorEvaluateIsValid";
    ctl00_cp_f_rfvKonsultacja12.validationexpression = "^([A-Za-z0-9 .,:;/-@]*)$";
    var ctl00_cp_f_rfv43Imie = document.all ? document.all["ctl00_cp_f_rfv43Imie"] : document.getElementById("ctl00_cp_f_rfv43Imie");
    ctl00_cp_f_rfv43Imie.controltovalidate = "ctl00_cp_f_txt43Imie";
    ctl00_cp_f_rfv43Imie.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_rfv43Imie.display = "Dynamic";
    ctl00_cp_f_rfv43Imie.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ctl00_cp_f_rfv43Imie.initialvalue = "";
    var ctl00_cp_f_rfvKonsultacja13 = document.all ? document.all["ctl00_cp_f_rfvKonsultacja13"] : document.getElementById("ctl00_cp_f_rfvKonsultacja13");
    ctl00_cp_f_rfvKonsultacja13.controltovalidate = "ctl00_cp_f_txt43Imie";
    ctl00_cp_f_rfvKonsultacja13.errormessage = "Неправильное значение";
    ctl00_cp_f_rfvKonsultacja13.display = "Dynamic";
    ctl00_cp_f_rfvKonsultacja13.evaluationfunction = "RegularExpressionValidatorEvaluateIsValid";
    ctl00_cp_f_rfvKonsultacja13.validationexpression = "^([A-Za-z0-9 .,:;/-@]*)$";
    var ctl00_cp_f_rfv43DataUrodzenia = document.all ? document.all["ctl00_cp_f_rfv43DataUrodzenia"] : document.getElementById("ctl00_cp_f_rfv43DataUrodzenia");
    ctl00_cp_f_rfv43DataUrodzenia.controltovalidate = "ctl00_cp_f_txt43DataUrodzenia";
    ctl00_cp_f_rfv43DataUrodzenia.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_rfv43DataUrodzenia.display = "Dynamic";
    ctl00_cp_f_rfv43DataUrodzenia.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ctl00_cp_f_rfv43DataUrodzenia.initialvalue = "";
    var ctl00_cp_f_rev43DataUrodzenia = document.all ? document.all["ctl00_cp_f_rev43DataUrodzenia"] : document.getElementById("ctl00_cp_f_rev43DataUrodzenia");
    ctl00_cp_f_rev43DataUrodzenia.controltovalidate = "ctl00_cp_f_txt43DataUrodzenia";
    ctl00_cp_f_rev43DataUrodzenia.errormessage = "Неправильное значение";
    ctl00_cp_f_rev43DataUrodzenia.display = "Dynamic";
    ctl00_cp_f_rev43DataUrodzenia.evaluationfunction = "RegularExpressionValidatorEvaluateIsValid";
    ctl00_cp_f_rev43DataUrodzenia.validationexpression = "^(?:(?:1[7-9]|20)\\d\\d)-(?:(?:02-(?:[01]\\d|2[0-8]))|(?:(?:0[469]|11)-(?:[0-2]\\d|30))|(?:(?:0[13578]|1[02])-(?:[0-2]\\d|3[0-1])))$|^(?:(?:(?:(?:1[7-9]|20)(?:[02468][48]|[2468][048]|[13579][26]))|2000)-02-29)$";
    var ctl00_cp_f_rfv43NumerPaszportu = document.all ? document.all["ctl00_cp_f_rfv43NumerPaszportu"] : document.getElementById("ctl00_cp_f_rfv43NumerPaszportu");
    ctl00_cp_f_rfv43NumerPaszportu.controltovalidate = "ctl00_cp_f_txt43Paszport";
    ctl00_cp_f_rfv43NumerPaszportu.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_rfv43NumerPaszportu.display = "Dynamic";
    ctl00_cp_f_rfv43NumerPaszportu.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ctl00_cp_f_rfv43NumerPaszportu.initialvalue = "";
    var ctl00_cp_f_rfvKonsultacja14 = document.all ? document.all["ctl00_cp_f_rfvKonsultacja14"] : document.getElementById("ctl00_cp_f_rfvKonsultacja14");
    ctl00_cp_f_rfvKonsultacja14.controltovalidate = "ctl00_cp_f_txt43Paszport";
    ctl00_cp_f_rfvKonsultacja14.errormessage = "Неправильное значение";
    ctl00_cp_f_rfvKonsultacja14.display = "Dynamic";
    ctl00_cp_f_rfvKonsultacja14.evaluationfunction = "RegularExpressionValidatorEvaluateIsValid";
    ctl00_cp_f_rfvKonsultacja14.validationexpression = "^([A-Za-z0-9 .,:;/-@]*)$";
    var ctl00_cp_f_rfv43 = document.all ? document.all["ctl00_cp_f_rfv43"] : document.getElementById("ctl00_cp_f_rfv43");
    ctl00_cp_f_rfv43.controltovalidate = "ctl00_cp_f_ddl43Obywatelstwo";
    ctl00_cp_f_rfv43.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_rfv43.display = "Dynamic";
    ctl00_cp_f_rfv43.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ctl00_cp_f_rfv43.initialvalue = "";
    var ctl00_cp_f_rvl25 = document.all ? document.all["ctl00_cp_f_rvl25"] : document.getElementById("ctl00_cp_f_rvl25");
    ctl00_cp_f_rvl25.controltovalidate = "ctl00_cp_f_rbl43";
    ctl00_cp_f_rvl25.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_rvl25.display = "Dynamic";
    ctl00_cp_f_rvl25.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ctl00_cp_f_rvl25.initialvalue = "";
    var ctl00_cp_f_cvOswiadczenie = document.all ? document.all["ctl00_cp_f_cvOswiadczenie"] : document.getElementById("ctl00_cp_f_cvOswiadczenie");
    ctl00_cp_f_cvOswiadczenie.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_cvOswiadczenie.display = "Dynamic";
    ctl00_cp_f_cvOswiadczenie.evaluationfunction = "CustomValidatorEvaluateIsValid";
    ctl00_cp_f_cvOswiadczenie.clientvalidationfunction = "ValidateStatementChk";
    var ctl00_cp_f_CustomValidator1 = document.all ? document.all["ctl00_cp_f_CustomValidator1"] : document.getElementById("ctl00_cp_f_CustomValidator1");
    ctl00_cp_f_CustomValidator1.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_CustomValidator1.display = "Dynamic";
    ctl00_cp_f_CustomValidator1.evaluationfunction = "CustomValidatorEvaluateIsValid";
    ctl00_cp_f_CustomValidator1.clientvalidationfunction = "ValidateStatementChk";
    var ctl00_cp_f_CustomValidator2 = document.all ? document.all["ctl00_cp_f_CustomValidator2"] : document.getElementById("ctl00_cp_f_CustomValidator2");
    ctl00_cp_f_CustomValidator2.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_CustomValidator2.display = "Dynamic";
    ctl00_cp_f_CustomValidator2.evaluationfunction = "CustomValidatorEvaluateIsValid";
    ctl00_cp_f_CustomValidator2.clientvalidationfunction = "ValidateStatementChk";
    //]]>
</script>


<script type="text/javascript">
    //<![CDATA[

    var Page_ValidationActive = false;
    if (typeof(ValidatorOnLoad) == "function") {
        ValidatorOnLoad();
    }

    function ValidatorOnSubmit() {
        if (Page_ValidationActive) {
            return ValidatorCommonOnSubmit();
        }
        else {
            return true;
        }
    }
    ZbindujPanstwa(document.getElementById('ctl00_cp_f_daneOs_cbKrajUrodzenia'), 'true', '');
    ZbindujPanstwa(document.getElementById('ctl00_cp_f_daneOs_cbObecneObywatelstwo'), 'a && (s==false && u==false)', '');
    ZbindujPanstwa(document.getElementById('ctl00_cp_f_daneOs_cbPosiadaneObywatelstwo'), 'true', '');
    ZbindujPanstwa(document.getElementById('ctl00_cp_f_opiekunowie_cbObywatelstwo1'), 'true', '');
    ZbindujPanstwa(document.getElementById('ctl00_cp_f_opiekunowie_cbPanstwo1'), 'true', '');
    ZbindujPanstwa(document.getElementById('ctl00_cp_f_opiekunowie_cbObywatelstwo2'), 'true', '');
    ZbindujPanstwa(document.getElementById('ctl00_cp_f_opiekunowie_cbPanstwo2'), 'true', '');
    ZbindujPanstwa(document.getElementById('ctl00_cp_f_ddl45Panstwo'), 'a', '');
    ZbindujPanstwa(document.getElementById('ctl00_cp_f_dd20bPanstwo'), 'a', '');
    ZbindujPanstwa(document.getElementById('ctl00_cp_f_ddl21KrajDocelowy'), 's', '');
    ZbindujPanstwa(document.getElementById('ctl00_cp_f_ddl23PierwszyWjazd'), 's', '');
    ZbindujPanstwa(document.getElementById('ctl00_cp_f_ctrl31__ddl34panstwo'), 's', '');
    //]]>
</script>
