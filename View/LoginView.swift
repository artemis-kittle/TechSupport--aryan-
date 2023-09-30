//
//  LoginView.swift
//  Recall
//
//  Created by Aryan Sinha on 9/6/2023.
//

import SwiftUI

struct LoginView: View {
    //MARK: - PROPETIES
    @State private var isNextViewActive = false
    
    //MARK: - BODY
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            
            //HEADER
            VStack(alignment: .leading, spacing: 6.0) {
                Text("You’re all set?")
                    .font(.headline)
                    .fontWeight(.medium)
                    .foregroundColor(.green)
                    .multilineTextAlignment(.leading)
                    .padding(.top, 20)
                    .padding(.horizontal, 6.0)
                
                Text("Let’s create your account")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.primary)
                    .multilineTextAlignment(.leading)
                    .padding(.horizontal, 6.0)
            }
            
            Spacer()
            
            //IMAGE
            Image("SignUpView")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Spacer()
            
            
            //SingIn & SingUp Button
            VStack(spacing: 15) {
                NavigationLink {
                    SignUpView()
                } label: {
                    Text("Sign Up")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .foregroundColor(.black)
                        .multilineTextAlignment(.center)
                        .frame(width: 361.0, height: 50.0)
                        .background(Color(hex: "F7F7F7"))
                        .cornerRadius(50)
                        .opacity(0.6)
                    
                }
                
                NavigationLink {
                    SignInView()
                } label: {
                    Text("Sign In")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .frame(width: 361.0, height: 50.0)
                        .background(Color.green)
                        .cornerRadius(50)
                }
            }
        }
        .padding(.horizontal, 25)
        .padding(.vertical, 30)
        .navigationBarBackButtonHidden(true)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

