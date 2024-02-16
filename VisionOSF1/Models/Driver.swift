//
//  Driver.swift
//  RealityKitF1
//
//  Created by Bryan Sánchez Peralta on 15/02/24.
//

import Foundation

enum Driver: CaseIterable, Identifiable {
    var id: Self { self }
    
    case hamilton
    case russell
    case perez
    case verstappen
    case piastri
    case norris
    case sainz
    case leclerc
    case zhou
    case bottas
    case alonso
    case stroll
    case magnussen
    case hulkenberg
    case albon
    case sargeant
    case gasly
    case ocon
    case ricciardo
    case tsunoda
    
    var firstName: String {
        switch self {
        case .hamilton: "Lewis"
        case .russell: "George"
        case .perez: "Sergio"
        case .verstappen: "Max"
        case .piastri: "Oscar"
        case .norris: "Lando"
        case .sainz: "Carlos"
        case .leclerc: "Charles"
        case .zhou: "Guan Yu"
        case .bottas: "Valtteri"
        case .alonso: "Fernando"
        case .stroll: "Lance"
        case .magnussen: "Kevin"
        case .hulkenberg: "Nico"
        case .albon: "Alexander"
        case .sargeant: "Logan"
        case .gasly: "Pierre"
        case .ocon: "Esteban"
        case .ricciardo: "Daniel"
        case .tsunoda: "Yuki"
        }
    }
    
    var surName: String {
        switch self {
        case .hamilton: "Hamilton"
        case .russell: "Russell"
        case .perez: "Perez"
        case .verstappen: "Verstappen"
        case .piastri: "Piastri"
        case .norris: "Norris"
        case .sainz: "Sainz"
        case .leclerc: "Leclerc"
        case .zhou: "Zhou"
        case .bottas: "Bottas"
        case .alonso: "Alonso"
        case .stroll: "Stroll"
        case .magnussen: "Magnussen"
        case .hulkenberg: "Hulkenberg"
        case .albon: "Halbon"
        case .sargeant: "Sargeant"
        case .gasly: "Gasly"
        case .ocon: "Ocon"
        case .ricciardo: "Ricciardo"
        case .tsunoda: "Tsunoda"
        }
    }
    
    var nationality: String {
        switch self {
        case .hamilton: "United Kindom"
        case .russell: "United Kindom"
        case .perez: "Mexico"
        case .verstappen: "Netherlands"
        case .piastri: "Australia"
        case .norris: "United Kindom"
        case .sainz: "Spain"
        case .leclerc: "Monaco"
        case .zhou: "China"
        case .bottas: "Finland"
        case .alonso: "Spain"
        case .stroll: "Canada"
        case .magnussen: "Denmark"
        case .hulkenberg: "Germany"
        case .albon: "Thailand"
        case .sargeant: "USA"
        case .gasly: "France"
        case .ocon: "France"
        case .ricciardo: "Australia"
        case .tsunoda: "Japan"
        }
    }
    
    var team: Team {
        switch self {
        case .hamilton: Team.mercedes
        case .russell: Team.mercedes
        case .perez: Team.redbull
        case .verstappen: Team.redbull
        case .piastri: Team.mclaren
        case .norris: Team.mclaren
        case .sainz: Team.ferrari
        case .leclerc: Team.ferrari
        case .zhou: Team.sauber
        case .bottas: Team.sauber
        case .alonso: Team.astonmartin
        case .stroll: Team.astonmartin
        case .magnussen: Team.haas
        case .hulkenberg: Team.haas
        case .albon: Team.williams
        case .sargeant: Team.williams
        case .gasly: Team.alpine
        case .ocon: Team.alpine
        case .ricciardo: Team.visarb
        case .tsunoda: Team.visarb
        }
    }
    
    var tyre: Tyre {
        switch self {
        case .hamilton: Tyre(type: .soft, laps: 3)
        case .russell: Tyre(type: .hard, laps: 5)
        case .perez: Tyre(type: .medium, laps: 10)
        case .verstappen: Tyre(type: .medium, laps: 12)
        case .piastri: Tyre(type: .medium, laps: 13)
        case .norris: Tyre(type: .hard, laps: 6)
        case .sainz: Tyre(type: .hard, laps: 7)
        case .leclerc: Tyre(type: .medium, laps: 3)
        case .zhou: Tyre(type: .hard, laps: 5)
        case .bottas: Tyre(type: .hard, laps: 6)
        case .alonso: Tyre(type: .hard, laps: 7)
        case .stroll: Tyre(type: .hard, laps: 1)
        case .magnussen: Tyre(type: .hard, laps: 14)
        case .hulkenberg: Tyre(type: .hard, laps: 10)
        case .albon: Tyre(type: .medium, laps: 9)
        case .sargeant: Tyre(type: .hard, laps: 6)
        case .gasly: Tyre(type: .hard, laps: 7)
        case .ocon: Tyre(type: .hard, laps: 5)
        case .ricciardo: Tyre(type: .hard, laps: 4)
        case .tsunoda: Tyre(type: .hard, laps: 8)
        }
    }
    
    var drs: Bool {
        switch self {
        case .hamilton: false
        case .russell: true
        case .perez: false
        case .verstappen: false
        case .piastri: true
        case .norris: false
        case .sainz: false
        case .leclerc: true
        case .zhou: true
        case .bottas: false
        case .alonso: false
        case .stroll: false
        case .magnussen: false
        case .hulkenberg: true
        case .albon: false
        case .sargeant: true
        case .gasly: false
        case .ocon: false
        case .ricciardo: true
        case .tsunoda: false
        }
    }
    
    var lapTime: String {
        switch self {
        case .hamilton: "+44.424s"
        case .russell: "+20.328s"
        case .perez: "+21.453s"
        case .verstappen: "1:27:02.624"
        case .piastri: "+31.487s"
        case .norris: "+24.284s"
        case .sainz: "DNF"
        case .leclerc: "+17.993s"
        case .zhou: "+89.422s"
        case .bottas: "DNF"
        case .alonso: "+39.512s"
        case .stroll: "+55.632s"
        case .magnussen: "DNF"
        case .hulkenberg: "+83.696s"
        case .albon: "+73.184s"
        case .sargeant: "+87.791s"
        case .gasly: "+70.360s"
        case .ocon: "+66.373s"
        case .ricciardo: "+56.229s"
        case .tsunoda: "+43.088s"
        }
    }
    
    var gpScore: Int {
        switch self {
        case .hamilton: 9
        case .russell: 3
        case .perez: 4
        case .verstappen: 1
        case .piastri: 6
        case .norris: 5
        case .sainz: 18
        case .leclerc: 2
        case .zhou: 17
        case .bottas: 19
        case .alonso: 7
        case .stroll: 10
        case .magnussen: 20
        case .hulkenberg: 15
        case .albon: 14
        case .sargeant: 16
        case .gasly: 13
        case .ocon: 12
        case .ricciardo: 11
        case .tsunoda: 8
        }
    }
    
    var championshipScore: Int {
        switch self {
        case .hamilton: 234
        case .russell: 175
        case .perez: 285
        case .verstappen: 575
        case .piastri: 97
        case .norris: 205
        case .sainz: 200
        case .leclerc: 206
        case .zhou: 6
        case .bottas: 10
        case .alonso: 206
        case .stroll: 74
        case .magnussen: 3
        case .hulkenberg: 9
        case .albon: 27
        case .sargeant: 1
        case .gasly: 62
        case .ocon: 58
        case .ricciardo: 6
        case .tsunoda: 17
        }
    }
}
