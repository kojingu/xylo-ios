//
//  SocketIOService.swift
//  xylo
//
//  Created by Nolberto Castellanos Rodriguez on 26/12/22.
//

import SocketIO

class SocketIOService {
    
    let manager: SocketManager
    let socket: SocketIOClient
    
    init(manager: SocketManager) {
        self.manager = manager
        socket = manager.defaultSocket
    }
    
    func createGame(nickname: String, rounds: Int, completion: @escaping () -> Void) {
        socket.emit(
            "create_game",
            [
                "nickname": nickname,
                "rounds": rounds
            ],
            completion: completion
        )
    }
}
