//
//  WaitForSonataViewModel.swift
//  xylo
//
//  Created by Nolberto Castellanos Rodriguez on 24/01/23.
//

import Foundation

class WaitForSonataViewModel: ObservableObject {
    
    let nickname: String
    
    init(nickname: String) {
        self.nickname = nickname
    }
}
