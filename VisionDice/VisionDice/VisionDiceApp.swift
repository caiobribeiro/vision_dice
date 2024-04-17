//
//  VisionDiceApp.swift
//  VisionDice
//
//  Created by Caio Beraldi Ribeiro on 17/04/24.
//

import SwiftUI

@Observable
class DiceData {
    var rolledNumber = 0
}

@main
struct VisionDiceApp: App {
    @State var diceData = DiceData()

    var body: some Scene {
        WindowGroup {
            ContentView(diceData: diceData)
        }
        .defaultSize(width: 100, height: 100)
        ImmersiveSpace(id: "ImmersiveSpace") {
            ImmersiveDiceView(diceData: diceData)
        }
    }
}
