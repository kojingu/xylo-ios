//
//  CreateGameViewModel.swift
//  xylo
//
//  Created by Nolberto Castellanos Rodriguez on 24/12/22.
//

import Foundation

extension CreateGameScreen {
    
    class ViewModel: ObservableObject {
        
        @Published var nickname: String = ""
        @Published var rounds: Int = 3
        
        init() {
            
        }
        
    }
}
