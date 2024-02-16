//
//  Team.swift
//  RealityKitF1
//
//  Created by Bryan Sánchez Peralta on 15/02/24.
//

import Foundation

enum Team: CaseIterable, Identifiable {
    var id: Self { self }
    
    case ferrari
    case mercedes
    case williams
    case redbull
    case mclaren
    case alpine
    case visarb
    case sauber
    case haas
    case astonmartin
    
    var name: String {
        switch self {
        case .ferrari:  "Scuderia Ferrari"
        case .mercedes: "Mercedes-AMG PETRONAS F1 Team"
        case .williams: "Williams Racing"
        case .redbull: "Oracle Red Bull Racing"
        case .mclaren: "McLaren F1 Team"
        case .alpine: "BWT Alpine F1 Team"
        case .visarb: "Visa Cash App RB F1 Team"
        case .sauber: "Stake F1 Team Kick Sauber"
        case .haas: "MoneyGram Haas F1 Team"
        case .astonmartin: "Aston Martin Aramco Formula One Team"
        }
    }
    
    var drivers: [Driver] {
        switch self {
        case .ferrari: [Driver.leclerc, .sainz]
        case .mercedes: [Driver.hamilton, .russell]
        case .williams: [Driver.albon, .sargeant]
        case .redbull: [Driver.verstappen, .perez]
        case .mclaren: [Driver.norris, .piastri]
        case .alpine: [Driver.ocon, .gasly]
        case .visarb: [Driver.tsunoda, .ricciardo]
        case .sauber: [Driver.bottas, .zhou]
        case .haas: [Driver.hulkenberg, .magnussen]
        case .astonmartin: [Driver.alonso, .stroll]
        }
    }
    
    var score: Int {
        switch self {
        case .ferrari: 406
        case .mercedes: 409
        case .williams: 28
        case .redbull: 860
        case .mclaren: 302
        case .alpine: 120
        case .visarb: 25
        case .sauber: 16
        case .haas: 12
        case .astonmartin: 280
        }
    }
}
