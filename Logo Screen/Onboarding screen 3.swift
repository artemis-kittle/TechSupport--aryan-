//
//  Onboarding screen 3.swift
//  Logo Screen
//
//  Created by Prathvi Bharatwala on 6/6/2023.
//

import SwiftUI

struct Onboarding_screen_3: View {
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
            Image("Onboarding screen 3")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Text("Finally, find any student")
                .font(.title)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 36.0)
                .padding(.bottom, 5.0)
                
            Text("Now that you have a class full of students, you can easily find any student by filtering the student list with tags. Feel free to be as specific as you want with the tags!")
                .font(.footnote)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 40.0)
            Spacer()
            HStack(alignment: .center, spacing: 230.0) {
                
                Image("Frame 3")
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
struct Onboarding_screen_3_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding_screen_3()
    }
}
