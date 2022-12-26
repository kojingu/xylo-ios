//
//  CreateGameAssembly.swift
//  xylo
//
//  Created by Nolberto Castellanos Rodriguez on 26/12/22.
//

import Swinject

final class CreateGameAssembly: Assembly {
    
    func assemble(container: Container) {
        container.register(CreateGameViewModel.self) { _ in CreateGameViewModel() }
    }
}
