//
//  GuessSonataViewModel.swift
//  xylo
//
//  Created by Nolberto Castellanos Rodriguez on 24/01/23.
//

import Foundation

class GuessSonataViewModel: ObservableObject {
    
    @Published var secondsLeft: Int = 6
    
    var secondsLeftStr: String {
        return String(secondsLeft)
    }
}
