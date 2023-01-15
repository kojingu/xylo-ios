//
//  NoteButton.swift
//  xylo
//
//  Created by Nolberto Castellanos Rodriguez on 15/01/23.
//

import SwiftUI

struct NoteButton: View {
    
    let note: Note
    let action: (Note) -> Void
    
    var body: some View {
        Button(LocalizedStringKey(note.textKey)) { action(note) }
            .font(.callout)
            .padding(.all)
            .foregroundColor(.white)
            .frame(maxWidth: .infinity)
            .background(note.color)
            .cornerRadius(8.0)
    }
}

struct NoteButton_Previews: PreviewProvider {
    static var previews: some View {
        NoteButton(note: .A) { note in }
    }
}
