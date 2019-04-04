//
//  Sign.swift
//  RPS
//
//  Created by Hugo Cruz on 4/4/19.
//

import Foundation
import GameplayKit

enum Sign {
    case rock, paper, scissors
}

let randomChoice = GKRandomDistribution(lowestValue: 0, highestValue: 2)

func randomSign() -> Sign {
    let sign = randomChoice.nextInt()
    if sign == 0 {
        return .rock
    } else if sign == 1 {
        return .paper
    } else {
        return .scissors
    }
}
