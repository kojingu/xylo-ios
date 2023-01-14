//
//  SocketIoModule.swift
//  xylo
//
//  Created by Nolberto Castellanos Rodriguez on 14/01/23.
//

import SocketIO
import Foundation

class SocketIoModule {
    
    private let url = "url"
    
    init() {
        @Provider var socketManager = SocketManager(
            socketURL: URL(string: url)!,
            config: [.log(true), .compress]
        )
    }
}

let socketIoModule = SocketIoModule()
