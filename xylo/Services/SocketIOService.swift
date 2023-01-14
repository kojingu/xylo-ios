//
//  SocketIOService.swift
//  xylo
//
//  Created by Nolberto Castellanos Rodriguez on 26/12/22.
//

import SocketIO

class SocketIOService {
    
    @Inject var manager: SocketManager
    
    func createGame(nickname: String, rounds: Int, completion: @escaping () -> Void) {
        manager.defaultSocket.emit(
            "create_game",
            [
                "nickname": nickname,
                "rounds": rounds
            ],
            completion: completion
        )
    }
}
