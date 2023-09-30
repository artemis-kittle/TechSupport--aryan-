//
//  SignInView.swift
//  Recall
//
//  Created by Aryan Sinha on 9/6/2023.
//

import SwiftUI

struct SignInView: View {
    @State private var text: String = ""
    @State private var text2: String = ""
    @State private var isNextViewActive = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            VStack(alignment: .leading, spacing: 14.0) {
                Button(action: {
                    // Action to perform when the button is tapped
                }){
                    //
                    //                    Image("green arrow")
                    //                        .resizable()
                    //                        .frame(width: 30, height: 30)
                    //                      //  .padding(12)
                    //                        .background(Color.white)
                    //                        .cornerRadius(30)
                                    }
                    
                    Text("Please sign in to continue")
                        .font(.headline)
                        .fontWeight(.medium)
                        .foregroundColor(.green)
                        .multilineTextAlignment(.leading)
                        .padding(.horizontal, 5.0)
                    
                    Text("Good to see you!")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .multilineTextAlignment(.leading)
                        .padding(.horizontal, 5.0)
                }
                
                VStack(spacing: 20.0) {
                    TextField("Username", text: $text)
                        .frame(width: 330)
                        .padding(.horizontal)
                        .padding(.vertical, 15)
                        .background(Color(hex: "F7F7F7"))
                        .cornerRadius(29)
                        .foregroundColor(.black)
                        .opacity(0.6)
                    
                    SecureField("Your Password", text: $text2)
                        .frame(width: 330)
                        .padding(.horizontal)
                        .padding(.vertical, 15)
                        .background(Color(hex: "F7F7F7"))
                        .cornerRadius(29)
                        .foregroundColor(.black)
                        .opacity(0.6)
                    
                    HStack {
                        Spacer()
                        Button(action: {
                            // Action to perform when the button is tapped
                        }) {
                            Text("Forgot Password?")
                                .font(.caption)
                                .foregroundColor(.gray)
                        }
                    }
                    
                    Button(action: {
                        // Action to perform when the button is tapped
                        isNextViewActive = true
                    }) {
                        Text("Sign In")
                            .font(.title3)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                            .frame(width: 361.0, height: 50.0)
                            .background(Color.green)
                            .cornerRadius(50)
                    }
                    NavigationLink(
                        destination:HomePage(),
                        isActive: $isNextViewActive,
                        label: { EmptyView() }
                    )
                    .hidden()
                    
                    Text("Or Sign in with")
                        .font(.callout)
                        .fontWeight(.regular)
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.center)
                        .padding([.top, .leading, .trailing], 6.0)
                    
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
                    
                    HStack {
                        Text("Not a member?")
                            .font(.footnote)
                            .foregroundColor(.gray)
                        
                        Button(action: {
                            // Action to perform when the button is tapped
                        }) {
                            Text("Sign up")
                                .font(.footnote)
                                .foregroundColor(.green)
                                .fontWeight(.semibold)
                        }
                    }
                }
            }
            .padding(.horizontal, 25)
        }
    }

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
