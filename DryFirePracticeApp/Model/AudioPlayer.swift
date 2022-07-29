//
//  AudioPlayer.swift
//  DryFirePracticeApp
//
//  Created by Peyton Shetler on 7/29/22.
//

import Foundation
import AVFoundation

var audioPlayer: AVAudioPlayer?

func playSound(fileName: String) {
    // The only file types I currently have are ".aif" so this
    // is fine to hard-coded
    if let path = Bundle.main.path(forResource: fileName, ofType: "aif") {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        } catch {
            print("Cound not play the sound file")
        }
    }
}
