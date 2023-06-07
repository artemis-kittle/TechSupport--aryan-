//
//  Add new class.swift
//  Logo Screen
//
//  Created by Prathvi Bharatwala on 7/6/2023.
//

import SwiftUI

struct AddNewClass: View {
    @State private var text: String = ""
    @State private var text2: String = ""
    @State private var text3: String = ""
    
    var body: some View {
        VStack(spacing: 15) {
            TextField("Class Name", text: $text)
                .frame(width: 330)
                .padding(.horizontal) // Add horizontal padding
                .padding(.vertical, 15) // Add vertical padding
                .background(Color(hex: "F7F7F7"))
                .cornerRadius(29)
                .foregroundColor(.black) // Set text color to black
                .opacity(0.6) // Set text opacity
            
            TextField("Year", text: $text2)
                .frame(width: 330)
                .padding(.horizontal) // Add horizontal padding
                .padding(.vertical, 15) // Add vertical padding
                .background(Color(hex: "F7F7F7"))
                .cornerRadius(29)
                .foregroundColor(.black) // Set text color to black
                .opacity(0.6) // Set text opacity
            
            TextField("Details", text: $text3)
                .frame(width: 330, height: 100) // Set the height of the Details text field to 100
                .padding(.horizontal) // Add horizontal padding
                .padding(.vertical, 15) // Add vertical padding
                .background(Color(hex: "F7F7F7"))
                .cornerRadius(20)
                .foregroundColor(.black) // Set text color to black
                .opacity(0.6) // Set text opacity
                .multilineTextAlignment(.leading) // Align the text to the top-left corner
            Spacer()

            Button(action: {
                // Action to perform when the button is tapped
                // For example, you can navigate to the next screen

            }) {
                Text("Add")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(width: 361.0, height: 50.0)
                    .background(Color.green)
                    .cornerRadius(50)
            }
        }
    }
}

struct AddNewClass_Previews: PreviewProvider {
    static var previews: some View {
        AddNewClass()
    }
}

extension Color {
    init(hex: String) {
        let scanner = Scanner(string: hex)
        var rgbValue: UInt64 = 0
        scanner.scanHexInt64(&rgbValue)
        
        let red = Double((rgbValue & 0xFF0000) >> 16) / 255.0
        let green = Double((rgbValue & 0x00FF00) >> 8) / 255.0
        let blue = Double(rgbValue & 0x0000FF) / 255.0
        
        self.init(red: red, green: green, blue: blue)
    }
}
