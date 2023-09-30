//
//  Extra Challege View Modifier.swift
//  General Practise App
//
//  Created by Shubham on 30/09/23.
//

import SwiftUI

struct CustomTextStyleView: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .font(.largeTitle)
            .foregroundStyle(.white)
            .background(.blue)
            .clipShape(RoundedRectangle(cornerRadius: 8.0))
    }
}

extension View {
    func customTextStyleViewModifier() -> some View {
        modifier(CustomTextStyleView())
    }
}

struct Extra_Challege_View_Modifier: View {
    var body: some View {
        Text("Hello, World!")
            .customTextStyleViewModifier()
    }
}

#Preview {
    Extra_Challege_View_Modifier()
}
