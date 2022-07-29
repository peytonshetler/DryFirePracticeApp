//
//  TimerButton.swift
//  DryFirePracticeApp
//
//  Created by Peyton Shetler on 7/28/22.
//

import SwiftUI

enum TimerButton {
    case start
    case stop
    
    var title: String {
        switch self {
        case .start: return "Start"
        case .stop: return "Stop"
        }
    }
    
    var symbol: String {
        switch self {
        case .start: return "play.fill"
        case .stop: return "stop.fill"
        }
    }
    
    var backgroundColor: Color {
        switch self {
        case .start: return .green
        case .stop: return .red
        }
    }
    
    var cornerRadius: CGFloat {
        return 16
    }
}
