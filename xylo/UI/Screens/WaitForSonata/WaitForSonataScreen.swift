//
//  WaitForSonataScreen.swift
//  xylo
//
//  Created by Nolberto Castellanos Rodriguez on 20/01/23.
//

import SwiftUI

struct WaitForSonataScreen: View {
    
    let nickname: String
    
    var body: some View {
        VStack {
            Text("creating_sonata \(nickname)")
                .font(.system(size: 24))
            Text("be_ready")
                .font(.system(size: 24))
                .padding(.vertical, 12)
            ProgressView()
                .controlSize(.large)
        }
        .padding()
    }
}

struct WaitForSonataScreen_Previews: PreviewProvider {
    static var previews: some View {
        WaitForSonataScreen(nickname: "CARL")
    }
}
