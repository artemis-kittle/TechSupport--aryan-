//
//  Onboarding screen 2.swift
//  Logo Screen
//
//  Created by Prathvi Bharatwala on 6/6/2023.
//

import SwiftUI

struct Onboarding_screen_2: View {
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
            Image("Onboarding screen 2")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Text("Next, add your students")
                .font(.title)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 36.0)
                .padding(.bottom, 5.0)
                
            Text("Once you’ve added your classes, you can go ahead and add all the students in your class. Click “Add” and add a photo, name, details, and any defining traits using the tags.")
                .font(.footnote)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 40.0)
            Spacer()
            HStack(alignment: .center, spacing: 230.0) {
                
                Image("Frame 2")
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
struct Onboarding_screen_2_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding_screen_2()
    }
}
