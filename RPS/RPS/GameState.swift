//
//  GameState.swift
//  RPS
//
//  Created by Hugo Cruz on 4/4/19.
//

import Foundation

enum GameState {
    case lose, win, draw, start
}

func gameStateFinal(signPlayer: Sign, signComputer: Sign) -> GameState {
    if signPlayer == .paper && signComputer == .rock {
        return .win
    } else if signPlayer == .paper && signComputer == .scissors {
        return .lose
    } else if signPlayer == .paper && signComputer == .paper {
        return .draw
    }else if signPlayer == .rock && signComputer == .paper {
        return .lose
    } else if signPlayer == .rock && signComputer == .scissors {
        return .win
    } else if signPlayer == .rock && signComputer == .rock {
        return .draw
    } else if signPlayer == .scissors && signComputer == .paper {
        return .win
    } else if signPlayer == .scissors && signComputer == .rock {
        return .lose
    } else if signPlayer == .scissors && signComputer == .scissors {
        return .draw
    } else {
        return .start
    }
}
