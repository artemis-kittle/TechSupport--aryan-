//
//  OnBoarding3.swift
//  Recall
//
//  Created by Aryan Sinha on 9/6/2023.
//

import SwiftUI

struct OnBoarding3: View {
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
                    
                } //: Skip Button
            }
            
            Spacer()
            
            //OnBoarding Image & Description
            VStack {
                Image("OnBoarding screen 3")
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
            } //: OnBoarding Image & Description
            
            Spacer()
            
            //Next Button
            NavigationLink {
                LoginView()
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
struct OnBoarding3_Previews: PreviewProvider {
    static var previews: some View {
        OnBoarding3()
    }
}
