//
//  DepedencyModules.swift
//  xylo
//
//  Created by Nolberto Castellanos Rodriguez on 14/01/23.
//

import Foundation

class DependencyContainer {
    
    let socketIo = SocketIoModule()
    let servicesModule = ServicesModule()
}
