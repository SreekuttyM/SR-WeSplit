//
//  ContentView.swift
//  WeSplit
//
//  Created by Sreekutty Maya on 08/11/2023.
//

import SwiftUI

struct ContentView: View {
   @State private var tapCount = 0
   @State private var name = ""

    var body: some View {
        Form {
            TextField("Enter your name", text: $name)
            Text("Your name is \(name)")
        }

        Button("Tap Count: \(tapCount)") {
            tapCount += 1
        }
    }
}

#Preview {
    ContentView()
}
