//
//  CreateGameViewModel.swift
//  xylo
//
//  Created by Nolberto Castellanos Rodriguez on 24/12/22.
//

import Foundation

class CreateGameViewModel: ObservableObject {
    
    @Published var nickname: String = ""
    @Published var rounds: Int = 3
    
    private let socketIOService: SocketIOService = DIContainer.resolve()
    
}
