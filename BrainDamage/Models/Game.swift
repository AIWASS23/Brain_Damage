//
//  Game.swift
//  Brain Damage
//
//  Created by Marcelo de Araújo on 05/10/2023.
//

struct Game {
    let type: GameType
    let mode: Mode
    var timeType: Int?
    var score: Int?
    var time: Int?
}

enum GameType: String {
    case numberMemory = "Number Memory"
    case quiz = "Quiz"
    case pictureMemory = "Picture Memory"
}

enum Mode: String {
    case easy = "Easy"
    case medium = "Medium"
    case hard = "Hard"
    case extreme = "Extreme"
    case fourByFour = "4x4"
    case sixBySix = "6x6"
    case flags = "Flags"
    case movies = "Movies"
}
