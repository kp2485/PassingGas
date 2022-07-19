//
//  Model.swift
//  PassingGas
//
//  Created by Kyle Peterson on 7/18/22.
//

import Foundation
import SwiftUI

// MARK: - Element
struct Element: Codable, Identifiable {
    let id = UUID()
    let name: String
    let appearance: String?
    let atomicMass: Double
    let boil: Double?
    var boilRating: Double {
        return Double(boil ?? 1 / 6203)
    }
    let category: String
    var elementColor: Color {
        if category == "diatomic nonmetal" {
            return .pink
        } else if category == "noble gas" || category == "unknown, predicted to be noble gas" {
            return .red
        } else if category == "alkali metal" || category == "unknown, but predicted to be an alkali metal" {
            return .orange
        } else if category == "alkaline earth metal" {
            return .yellow
        } else if category == "metalloid" || category == "unknown, probably metalloid" {
            return .indigo
        } else if category == "polyatomic nonmetal" {
            return .purple
        } else if category == "post-transition metal" || category == "unknown, probably post-transition metal" {
            return .gray
        } else if category == "transition metal" || category == "unknown, probably transition metal" {
            return .brown
        } else if category == "lanthanide" {
            return .blue
        } else if category == "actinide" {
            return .blue
        }
        return .black
    }
    let density: Double?
    var densityRating: Double {
        Double(density ?? -1 / 40.7)
    }
    let discoveredBy: String?
    let melt, molarHeat: Double?
    let namedBy: String?
    let number, period: Int
    let phase: Phase
    let source: String
    let spectralImg: String?
    let summary, symbol: String
    let xpos, ypos: Int
    let shells: [Int]
    let electronConfiguration, electronConfigurationSemantic: String
    let electronAffinity, electronegativityPauling: Double?
    let ionizationEnergies: [Double]
    let cpkHex: String?
    
    enum CodingKeys: String, CodingKey {
        case name, appearance
        case atomicMass = "atomic_mass"
        case boil, category, density
        case discoveredBy = "discovered_by"
        case melt
        case molarHeat = "molar_heat"
        case namedBy = "named_by"
        case number, period, phase, source
        case spectralImg = "spectral_img"
        case summary, symbol, xpos, ypos, shells
        case electronConfiguration = "electron_configuration"
        case electronConfigurationSemantic = "electron_configuration_semantic"
        case electronAffinity = "electron_affinity"
        case electronegativityPauling = "electronegativity_pauling"
        case ionizationEnergies = "ionization_energies"
        case cpkHex = "cpk-hex"
    }
}

enum Phase: String, Codable {
    case gas = "Gas"
    case liquid = "Liquid"
    case solid = "Solid"
}

