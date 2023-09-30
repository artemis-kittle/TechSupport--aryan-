//
//  OnBoarding2.swift
//  Recall
//
//  Created by Aryan Sinha on 9/6/2023.
//

import SwiftUI

struct OnBoarding2: View {
    //MARK: - PROEPERTIES
    
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
                Image("OnBoarding screen 2")
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
            } //: OnBoarding Image & Description
            
            Spacer()
            
            //Next Button
            NavigationLink {
                OnBoarding3()
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
struct OnBoarding2_Previews: PreviewProvider {
    static var previews: some View {
        OnBoarding2()
    }
}
