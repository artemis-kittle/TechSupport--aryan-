//
//  SignUpView.swift
//  Recall
//
//  Created by Aryan Sinha on 9/6/2023.
//

import SwiftUI

struct SignUpView: View {
    //MARK: - PROPERTIES
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    @State private var text: String = ""
    @State private var text2: String = ""
    
    //MARK: - BODY
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            
            //Header
            headerView
            
            //User Input TextField
            userInputTextField()
            
        }
        .toolbar {
            // Back button
            ToolbarItem(placement: .navigationBarLeading) {
                Button {
                    self.presentationMode.wrappedValue.dismiss()
                } label: {
                    Image("green arrow")
                        .resizable()
                        .frame(width: 30, height: 30)
                }
                
                
            }
        }
        
        .navigationBarBackButtonHidden(true)
        .padding(.horizontal, 25)
    }
    
    
    
    
    
    
    //MARK: - COMPONENT
    fileprivate var headerView : some View {
        VStack(alignment: .leading, spacing: 14.0) {
            Text("Please sign up to continue")
                .font(.headline)
                .fontWeight(.medium)
                .foregroundColor(.green)
                .multilineTextAlignment(.leading)
                .padding(.horizontal, 5.0)
            
            Text("Welcome to Recall Raven!")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.black)
                .multilineTextAlignment(.leading)
                .padding(.horizontal, 5.0)
        }
    }
    
    func userInputTextField() -> some View {
        VStack(spacing: 20.0) {
            TextField("Full Name", text: $text)
                .frame(width: 330)
                .padding(.horizontal)
                .padding(.vertical, 15)
                .background(Color(hex: "F7F7F7"))
                .cornerRadius(29)
                .foregroundColor(.black)
                .opacity(0.6)
            
            TextField("Email Address", text: $text2)
                .frame(width: 330)
                .padding(.horizontal)
                .padding(.vertical, 15)
                .background(Color(hex: "F7F7F7"))
                .cornerRadius(29)
                .foregroundColor(.black)
                .opacity(0.6)
            
            TextField("Your password", text: $text2)
                .frame(width: 330)
                .padding(.horizontal)
                .padding(.vertical, 15)
                .background(Color(hex: "F7F7F7"))
                .cornerRadius(29)
                .foregroundColor(.black)
                .opacity(0.6)
            
            TextField("Rewrite password", text: $text2)
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
                Text("Sign Up")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .frame(width: 361.0, height: 50.0)
                    .background(Color.green)
                    .cornerRadius(50)
            }
            
            Text("Or Sign up with")
                .font(.callout)
                .fontWeight(.regular)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding([.top, .leading, .trailing], 6.0)
            
            
            //App Icons
            HStack {
                Button(action: {
                    // Action to perform when the button is tapped
                }) {
                    Image("google_icon")
                        .resizable()
                        .frame(width: 35, height: 35)
                        .padding(12)
                        .background(Color.white)
                        .cornerRadius(30)
                }
                
                Button(action: {
                    // Action to perform when the button is tapped
                }) {
                    Image("facebook_icon")
                        .resizable()
                        .frame(width: 35, height: 35)
                        .padding(12)
                        .background(Color.white)
                        .cornerRadius(30)
                }
                
                Button(action: {
                    // Action to perform when the button is tapped
                }) {
                    Image("apple_icon")
                        .resizable()
                        .frame(width: 35, height: 35)
                        .padding(12)
                        .background(Color.white)
                        .cornerRadius(30)
                }
            }
            .padding(.top, 10.0)
            
            Spacer()
            
            
            //Footer
            HStack {
                Text("Already a member?")
                    .font(.footnote)
                    .foregroundColor(.gray)
                
                Button(action: {
                    // Action to perform when the button is tapped
                }) {
                    Text("Sign In")
                        .font(.footnote)
                        .foregroundColor(.green)
                        .fontWeight(.semibold)
                }
            }
        }
    }
}

//MARK: - PREVIEW
struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
