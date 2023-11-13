//
//  ContentView.swift
//  WeSplit
//
//  Created by Sreekutty Maya on 08/11/2023.
//

import SwiftUI

struct ContentView: View {
    
    let students = ["Harry", "Hermione", "Ron"]
    @State private var selectedStudent = "Harry"
    
    var body: some View {
        NavigationStack {
            Form {
                Picker("Select Your Favorite Student", selection: $selectedStudent) {
                    ForEach(students,id:\.self) {
                        Text($0)
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
