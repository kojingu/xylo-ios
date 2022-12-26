//
//  DIContainer.swift
//  xylo
//
//  Created by Nolberto Castellanos Rodriguez on 26/12/22.
//

import Swinject

final class DIContainer {
    
    static let shared = DIContainer()
    
    private let container = Container()
    private let assembler: Assembler
    
    init() {
        assembler = Assembler(
            [
                SceneAssembly(),
                SocketIOServiceAssembly()
            ],
            container: container
        )
    }
    
    static func resolve<T>() -> T {
        guard let resolvedType = shared.container.resolve(T.self) else {
            fatalError()
        }
        return resolvedType
    }
}
