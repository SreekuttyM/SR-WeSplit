//
//  ContentView.swift
//  WeSplit
//
//  Created by Sreekutty Maya on 08/11/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            Text("Hello, world!")
            .navigationTitle("SwiftUI").navigationBarTitleDisplayMode(.inline)
        }

        Form {
            Section {
                Text("Hello, world!").foregroundStyle(.accent)
                Text("Hello, world!").foregroundStyle(.accent)
            }
            
            Section {
                Text("Hello, world!").foregroundStyle(.accent)
                Text("Hello, world!").foregroundStyle(.accent)
            }
            
            Text("Hello, world!").foregroundStyle(.accent)
            Text("Hello, world!").foregroundStyle(.accent)
            Text("Hello, world!").foregroundStyle(.accent)


        }
    }
}

#Preview {
    ContentView()
}
