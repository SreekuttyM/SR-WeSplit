//
//  ContentView.swift
//  WeSplit
//
//  Created by Sreekutty Maya on 08/11/2023.
//

import SwiftUI

struct ContentView: View {
   
    @State private var checkAmount = 0.0
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 0
    @FocusState private var amountIsFocused : Bool

    var tipPercentages = [10,15,20,25,30]
    var total: (Double,Double) {
        // calculate the total per person here
        let peopleCount = Double(numberOfPeople + 2)
            let tipSelection = Double(tipPercentage)

            let tipValue = checkAmount / 100 * tipSelection
            let grandTotal = checkAmount + tipValue
            let amountPerPerson = grandTotal / peopleCount

            return (amountPerPerson,grandTotal)
    }
    
    
    var body: some View {
        NavigationStack {
            Form {
                Section("Amount to Share") {
                    TextField("Amount", value: $checkAmount, format:  .currency(code: Locale.current.currency?.identifier ?? "AED")).foregroundStyle(tipPercentage == 0 ? .red : .black)
                }

                    Section("Amount to Share") {
                        Text(total.0, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                        Text(total.1, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                    }
                
                Section("How much tip do you want to leave?") {
                    Picker("Select Tip", selection: $tipPercentage) {
                        ForEach(tipPercentages, id: \.self) {
                            Text($0, format: .percent)
                        }
                    }.pickerStyle(.segmented)
                }
                
                Section("How many people you want to share with") {
                    Picker("Number of people", selection: $numberOfPeople) {
                        ForEach(2..<100) {
                            Text("\($0) people")
                        }.pickerStyle(.navigationLink)
                    }
                }
               
            }
        }.navigationTitle("WE SPLIT")
            .toolbar {
                if amountIsFocused {
                    Button("Done") {
                        amountIsFocused = false
                    }
                }
            }
    }
}

#Preview {
    ContentView()
}
