//
//  SceneAssembly.swift
//  xylo
//
//  Created by Nolberto Castellanos Rodriguez on 26/12/22.
//

import Swinject

final class SceneAssembly: Assembly {
    
    func assemble(container: Swinject.Container) {
        let assemblies: [Assembly] = [
            CreateGameAssembly()
        ]
        assemblies.forEach { assembly in assembly.assemble(container: container) }
    }
}
