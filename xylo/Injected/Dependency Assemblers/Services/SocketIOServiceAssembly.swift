//
//  SocketIOServiceAssembly.swift
//  xylo
//
//  Created by Nolberto Castellanos Rodriguez on 26/12/22.
//

import Swinject
import SocketIO
import Foundation

final class SocketIOServiceAssembly: Assembly {
    
    func assemble(container: Swinject.Container) {
        
        container.register(SocketManager.self) { resolver in
            SocketManager(socketURL: URL(string: "http://localhost:8080")!, config: [.log(true), .compress])
        }
        
        container.register(SocketIOService.self) { provider in
            guard let socketManager = provider.resolve(SocketManager.self) else {
                fatalError("Socket manager could not be resolved")
            }
            return SocketIOService(manager: socketManager)
        }
    }
    
    
}
