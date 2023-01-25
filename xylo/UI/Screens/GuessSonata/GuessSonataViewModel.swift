//
//  GuessSonataViewModel.swift
//  xylo
//
//  Created by Nolberto Castellanos Rodriguez on 24/01/23.
//

import Foundation

class GuessSonataViewModel: ObservableObject {
    
    private let navigator: Navigator
    
    @Published var secondsLeft: Int = 6
    
    var secondsLeftStr: String {
        return String(secondsLeft)
    }
    
    init(navigator: Navigator) {
        self.navigator = navigator
    }
}
