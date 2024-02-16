//
//  TyreType.swift
//  RealityKitF1
//
//  Created by Bryan Sánchez Peralta on 15/02/24.
//

import SwiftUI

enum TyreType: String {
    case soft
    case medium
    case hard
    case intermediate
    case wet
    
    var initial: String {
        switch self {
        case .soft: "S"
        case .medium: "M"
        case .hard: "H"
        case .intermediate: "I"
        case .wet: "W"
        }
    }
    
    var color: Color {
        switch self {
        case .soft: Color(.red)
        case .medium: Color(.yellow)
        case .hard: Color(.white)
        case .intermediate: Color(.green)
        case .wet: Color(.blue)
        }
    }
}
