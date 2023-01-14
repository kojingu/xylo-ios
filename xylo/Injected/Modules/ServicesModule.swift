//
//  Dependencies.swift
//  xylo
//
//  Created by Nolberto Castellanos Rodriguez on 14/01/23.
//

import Foundation

class ServicesModule {
    
    init() {
        @Provider var socketIoService = SocketIOService()
    }
}

let servicesModule = ServicesModule()
