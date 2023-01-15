//
//  NoteButton.swift
//  xylo
//
//  Created by Nolberto Castellanos Rodriguez on 15/01/23.
//

import SwiftUI
import AVFAudio

struct NoteButton: View {
    
    let note: Note
    let action: (Note) -> Void
    
    private let notePlayer = NotePlayer()
    
    var body: some View {
        Button(action: {
            notePlayer.play(note: note)
            action(note)
        }) {
            Text(LocalizedStringKey(note.textKey))
                .font(.callout)
                .padding(.all)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .background(note.color)
                .cornerRadius(8.0)
                .contentShape(Rectangle())
        }
    }
}

class NotePlayer{
    
    var player: AVAudioPlayer? = nil

    func play(note: Note) {
        let path = Bundle.main.path(forResource: note.fileName, ofType: nil)!
        let url = URL(fileURLWithPath: path)
        do {
            print("trying to play")
            player = try AVAudioPlayer(contentsOf: url)
            player!.play()
            print("played the file")
        } catch {
            print("couldn't load the file")
        }
    }
}

struct NoteButton_Previews: PreviewProvider {
    static var previews: some View {
        NoteButton(note: .A) { note in }
    }
}
