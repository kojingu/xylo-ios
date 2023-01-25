//
//  WaitForSonataViewModel.swift
//  xylo
//
//  Created by Nolberto Castellanos Rodriguez on 24/01/23.
//

import Foundation

class WaitForSonataViewModel: ObservableObject {
    
    private let navigator: Navigator
    
    let nickname: String
    
    init(navigator: Navigator, nickname: String) {        
        self.navigator = navigator
        self.nickname = nickname
    }
}
