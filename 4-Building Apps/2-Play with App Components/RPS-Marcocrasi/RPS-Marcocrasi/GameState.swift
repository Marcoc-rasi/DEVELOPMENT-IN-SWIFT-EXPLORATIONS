//
//  GameState.swift
//  RPS-Marcocrasi
//
//  Created by MacBook 28 on 19/05/23.
//

import Foundation
enum GameState{
    case Start, Victory, Lose, Tie
    
    var stateDescription: String{
        switch self {
        case .Start:
            return "Rock, Paper o Scissors"
        case .Victory:
            return "You Win! 🥳"
        case .Lose:
            return "You losse 😭"
        case .Tie:
            return "It's a Draw 🫠"
        }
    }
}
