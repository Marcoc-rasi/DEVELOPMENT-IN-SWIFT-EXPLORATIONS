//
//  Sign.swift
//  RPS-Marcocrasi
//
//  Created by MacBook 28 on 19/05/23.
//

import Foundation

func randomSign() -> Sign {
    let sign = Int.random(in: 0...2)
    if sign == 0 {
        return .Rock
    }else if sign == 1 {
        return .Paper
    }else {
        return .Scissors
    }
}

enum Sign {
    case Scissors, Rock, Paper
    
    var emoji: String{
        switch self {
        case .Scissors:
            return "✌️"
        case .Rock:
            return "👊"
        case .Paper:
            return "🤚"
        }
    }
    
    func gameResult(VS signAdversary: Sign) -> GameState {
        switch self {
        case .Scissors:
            if signAdversary == .Rock{
                return GameState.Lose
            }else if signAdversary == .Paper{
                return GameState.Victory
            }else{
                return GameState.Tie
            }
        case .Rock:
            if signAdversary == .Paper{
                return GameState.Lose
            }else if signAdversary == .Scissors{
                return GameState.Victory
            }else{
                return GameState.Tie
            }
        case .Paper:
            if signAdversary == .Scissors{
                return GameState.Lose
            }else if signAdversary == .Rock{
                return GameState.Victory
            }else{
                return GameState.Tie
            }
        }
    }
}
