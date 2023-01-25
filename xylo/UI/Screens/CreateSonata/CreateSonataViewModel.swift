//
//  CreateSonataViewModel.swift
//  xylo
//
//  Created by Nolberto Castellanos Rodriguez on 24/01/23.
//

import Foundation

class CreateSonataViewModel: ObservableObject {
    
    private let navigator: Navigator
    
    init(navigator: Navigator) {
        self.navigator = navigator
    }
}
