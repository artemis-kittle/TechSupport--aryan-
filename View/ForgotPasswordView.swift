//
//  ForgotPasswordView.swift
//  Recall
//
//  Created by Aryan Sinha on 9/6/2023.
//

import SwiftUI

struct ForgotPasswordView: View {
    @State private var text: String = ""
    
    var body: some View {
        VStack(alignment: .trailing, spacing: 20) { // Align VStack to center
            VStack(alignment: .leading, spacing: 14.0) {
                HStack {
                    Button(action: {
                        // Action to perform when the button is tapped
                    }) {
                        Image("green arrow")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .background(Color.white)
                            .cornerRadius(30)
                    }
                    
                    Spacer()
                }
                
                Text("Recover your password")
                    .font(.headline)
                    .fontWeight(.medium)
                    .foregroundColor(.green)
                    .multilineTextAlignment(.leading)
                    .padding(.horizontal, 5.0)
                
            }
            
            Image("forgort pwd")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Spacer() // Align text field and button to bottom
            
            VStack(spacing: 20.0) {
                TextField("Enter your email address", text: $text)
                    .frame(width: 330)
                    .padding(.horizontal)
                    .padding(.vertical, 15)
                    .background(Color(hex: "F7F7F7"))
                    .cornerRadius(29)
                    .foregroundColor(.black)
                    .opacity(0.6)
                Button(action: {
                    // Action to perform when the button is tapped
                }) {
                    Text("Submit")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .frame(width: 361.0, height: 50.0)
                        .background(Color.green)
                        .cornerRadius(50)
                }
                
                Text("Reset password link will be sent on registered email address.")
                    .font(.footnote)
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
            }
            .padding(.horizontal, 25)
        }
    }
    
    struct ForgotPasswordView_Previews: PreviewProvider {
        static var previews: some View {
            ForgotPasswordView()
        }
    }
   
  
}
