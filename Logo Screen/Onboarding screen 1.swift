//
//  Onboarding screen.swift
//  Logo Screen
//
//  Created by Prathvi Bharatwala on 5/6/2023.
//

import SwiftUI

struct Onboarding_screen: View {
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button(action: {
                // Action to skip the onboarding process
                }) {
                    Text("Skip")
                        .font(.body)
                        .fontWeight(.medium)
                    .foregroundColor(.black)
                            }
                    .padding(.trailing)
                    }
            Spacer()
            Image("onboarding screen 1")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Text("First, set up your classes")
                .font(.title)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 36.0)
                .padding(.bottom, 5.0)
                
            Text("Simply click “Add Class” and fill in the class name, dates and any extra details. Don’t worry, you can add as many classes as you want!")
                .font(.footnote)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 40.0)
            Spacer()
            HStack(alignment: .center, spacing: 230.0) {
                
                Image("Frame 1")
                Button(action: {
                    // Action to perform when the button is tapped
                    // For example, you can navigate to the next screen
                }) {
                    Image("Arrow - Right")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.green)
                        .cornerRadius(50)
                }
            }
             
        }
    }
}

struct Onboarding_screen_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding_screen()
    }
}
