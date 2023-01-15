//
//  Note.swift
//  xylo
//
//  Created by Nolberto Castellanos Rodriguez on 15/01/23.
//

import SwiftUI

enum Note {
    case A
    case B
    case C
    case D
    case E
    case F
    case G
}

extension Note {
    var textKey: String {
        switch self {
        case .A:
            return "A_KEY"
        case .B:
            return "B_KEY"
        case .C:
            return "C_KEY"
        case .D:
            return "D_KEY"
        case .E:
            return "E_KEY"
        case .F:
            return "F_KEY"
        case .G:
            return "G_KEY"
        }
    }
}

extension Note {
    var color: Color {
        switch self {
        case .C:
            return .red
        case .D:
            return .orange
        case .E:
            return .yellow
        case .F:
            return .green
        case .G:
            return .blue
        case .A:
            return .indigo
        case .B:
            return .purple
        }
    }
}
