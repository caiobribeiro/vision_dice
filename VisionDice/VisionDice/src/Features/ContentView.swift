//
//  ContentView.swift
//  VisionDice
//
//  Created by Caio Beraldi Ribeiro on 17/04/24.
//

import RealityKit
import RealityKitContent
import SwiftUI

struct ContentView: View {
    @Environment(\.openImmersiveSpace) var openImmersiveSpace

    var diceData: DiceData

    var body: some View {
        VStack {
            Text(diceData.rolledNumber == 0 ? "🎲" : "\(diceData.rolledNumber)")
                .foregroundStyle(.yellow)
                .font(.custom("Menlo", size: 100))
                .fontWeight(.semibold)
        }
        .padding()
        .task {
            await openImmersiveSpace(id: "ImmersiveSpace")
        }
    }
}

#Preview(windowStyle: .automatic) {
    ContentView(diceData: DiceData())
}
