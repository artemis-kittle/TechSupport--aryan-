//
//  OnBoarding1.swift
//  Recall
//
//  Created by Aryan Sinha on 9/6/2023.
//

import SwiftUI

struct OnBoarding1: View {
    //MARK: - PROPERTIES
    
    //MARK: - BODY
    var body: some View {
        VStack {
            //Skip Button
            HStack {
                Spacer()
                
                NavigationLink {
                    LoginView()
                } label: {
                    Text("Skip")
                        .font(.body)
                        .fontWeight(.medium)
                        .foregroundColor(.black)
                }
            }
            
            Spacer()
            
            //OnBoarding Image & Description
            VStack {
                Image("OnBoarding screen 1")
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
            } //: OnBoarding Image & Description
            
            Spacer()
            
            //Next Button
            NavigationLink {
                OnBoarding2()
            } label: {
                Image("Arrow - Right")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.green)
                    .cornerRadius(50)
            } //: Next Button
        }
        .padding(20)
        
        //NavigationView BackButton Hide
        .navigationBarBackButtonHidden(true)
    }
}

//MARK: - PREVIEW
struct OnBoarding1_Previews: PreviewProvider {
    static var previews: some View {
        OnBoarding1()
    }
}
