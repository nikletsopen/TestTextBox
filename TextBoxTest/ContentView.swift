//
//  ContentView.swift
//  TextBoxTest
//
//  Created by Nikita Timonin on 03.10.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var textWidth: CGFloat = 300
    
    var string: AttributedString {
        var string = AttributedString(localized: "Марафон по SwiftUI \"Отцовский пинок\" ")
        // Add attribute to the whole string
        string.font = Font.system(size: 14, weight: .medium, design: .rounded)
        // Add a single attribute to a range
        if let range = string.range(of: "Марафон") {
            string[range].foregroundColor = .gray
            string[range].font = Font.system(size: 14, weight: .light, design: .rounded)
        }
        if let range = string.range(of: "\"Отцовский пинок\"") {
            string[range].foregroundColor = .blue
            string[range].font = Font.system(size: 34, weight: .heavy, design: .rounded)
        }
        
        return string
    }
    
    var body: some View {
        VStack {
            Text(string)
                .frame(width: textWidth, height: 300.0)
                .border(Color(.red))
            
            Slider(value: $textWidth, in: 100...300)

        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
