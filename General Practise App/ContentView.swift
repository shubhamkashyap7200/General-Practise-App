//
//  ContentView.swift
//  General Practise App
//
//  Created by Shubham on 30/09/23.
//

import SwiftUI

struct Title: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .font(.largeTitle.weight(.heavy))
            .foregroundStyle(.white)
            .background(.indigo)
            .clipShape(RoundedRectangle(cornerRadius: 6.0))
            .shadow(radius: 12.0)
    }
}

extension View {
    func customTitleStyle() -> some View {
        modifier(Title())
    }
}


struct GridStack<Content:View> : View {
    let rows: Int
    let columns: Int
    @ViewBuilder let content: (Int,Int) -> Content
    
    var body: some View {
        VStack {
            ForEach(0..<rows, id: \.self) { row in
                HStack {
                    ForEach(0..<columns, id: \.self) { column in
                        content(row,column)
                    }
                }
            }
        }
    }
}


struct ContentView: View {
    @State private var usedRedText = false
    var body: some View {
        VStack {
            //            CustomTextView(text: "My name is Shubham")
            //            CustomTextView(text: "Age 24")
            //            CustomTextView(text: "Working to get job")
            //            Text("Hello World")
            //                .customTitleStyle()
            GridStack(rows: 4, columns: 3) { row, col in
                    Image(systemName: "\(row * 4 + col).circle")
                    Text("R\(row) C\(col)")
            }
        }
    }
}

#Preview {
    ContentView()
}

struct CustomTextView: View {
    var text: String
    
    var body: some View {
        Text(text)
            .padding()
            .background(Color.red)
            .foregroundStyle(.white)
            .clipShape(RoundedRectangle(cornerRadius: 6.0))
            .shadow(radius: 10)
    }
}
