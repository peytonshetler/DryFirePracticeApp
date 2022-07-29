//
//  HomeView.swift
//  DryFirePracticeApp
//
//  Created by Peyton Shetler on 7/23/22.
//

import SwiftUI
import Foundation

struct HomeView: View {
    
    @State var shotTimer: Timer?
    @State var button: TimerButton = .start
    @State var isRunning: Bool = false
    
    private var randomInterval: Int = Int.random(in: 4..<10)
    
    var body: some View {
        VStack {
            
            Button {
                buttonTapped()
            } label: {
                Image(systemName: button.symbol)
                    .foregroundColor(.white)
                    .font(.system(size: 70, weight: .medium))
                    .padding(50)
                    .background(button.backgroundColor)
                    .clipShape(Circle())
            }
        }
    }
    
    // MARK: - Functions
    private func buttonTapped() {
        if isRunning {
            button = .start
            shotTimer?.invalidate()
        } else {
            button = .stop
            
            playSound(fileName: "Par_Timer_Beep")
            restartTimer()
        }
        
        isRunning.toggle()
    }
    
    
    private func restartTimer() {
        let interval: TimeInterval = TimeInterval(randomInterval)
        
        if shotTimer == nil {
            shotTimer = Timer.scheduledTimer(withTimeInterval: interval, repeats: false) { _ in
                playSound(fileName: "Timer_Beep")
                
                shotTimer = nil
                restartTimer()
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .preferredColorScheme(.dark)
    }
}
