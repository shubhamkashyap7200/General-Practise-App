//
//  ContentView.swift
//  General Practise App
//
//  Created by Shubham on 30/09/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Button("Press me") {
            print(type(of: self.body))
        }
        .padding()
        .foregroundStyle(.white)
        .background(Color.red)
        .padding()
        .background(Color.green)
        .padding()
        .background(Color.blue)

    }
}

#Preview {
    ContentView()
}
