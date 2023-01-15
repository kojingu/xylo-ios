//
//  XyloView.swift
//  xylo
//
//  Created by Nolberto Castellanos Rodriguez on 15/01/23.
//

import SwiftUI

struct XyloView: View {
    
    let clickAction: (Note) -> Void
    
    var body: some View {
        VStack {
            NoteButton(note: .C) { note in clickAction(note) }
                .padding(.horizontal, 16)
            NoteButton(note: .D) { note in clickAction(note) }
                .padding(.horizontal, 30)
            NoteButton(note: .E) { note in clickAction(note) }
                .padding(.horizontal, 42)
            NoteButton(note: .F) { note in clickAction(note) }
                .padding(.horizontal, 52)
            NoteButton(note: .G) { note in clickAction(note) }
                .padding(.horizontal, 60)
            NoteButton(note: .A) { note in clickAction(note) }
                .padding(.horizontal, 64)
            NoteButton(note: .B) { note in clickAction(note) }
                .padding(.horizontal, 68)
        }
    }
}

struct XyloView_Previews: PreviewProvider {
    static var previews: some View {
        XyloView { note in }
    }
}
