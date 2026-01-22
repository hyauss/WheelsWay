//
//  SoundManagerViewModel.swift
//  Wheels Way
//
//  Created by Vinicius Alves Marques on 21/01/26.
//

import AVFoundation
import SwiftUI

@MainActor
final class SoundManager: ObservableObject {
    public static let shared = SoundManager()
    private var audioPlayer: AVAudioPlayer?
    private var isPlaying = false
    
    func playAudio(soundName: String) {
        guard let path = Bundle.main.url(forResource: soundName, withExtension: "m4a")
        else {
            print("Erro obter path.")
            return
        }
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: path)
            if isPlaying == false{
                audioPlayer?.play()
                isPlaying = true
            }else{
                audioPlayer?.pause()
                isPlaying = false
            }
            
        } catch {
            print(error)
        }
    }
}

