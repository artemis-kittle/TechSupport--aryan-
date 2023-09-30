//
//  HomePage.swift
//  Recall
//
//  Created by Aryan Sinha on 14/6/2023.
//

import SwiftUI

struct HomePage: View {
    var body: some View {
           VStack {
               VStack {
                   HStack {
                       Text("Seb's Classes")
                           .font(.title2)
                           .fontWeight(.semibold)
                       Spacer()
                       Image("Profile")
                           .resizable()
                           .aspectRatio(contentMode: .fit)
                           .frame(width: 60.0)
                   }
                   .frame(width: 400, height: 100)
               }

               HStack(spacing: 12) {
                   
//                   Button(action: {
//                       // Action to perform when the button is tapped
//                   })
                   NavigationLink(destination: Students()){
                       VStack(alignment: .leading) {
                           ZStack {
                               RoundedRectangle(cornerRadius: 18)
                                   .frame(width: 390, height: 125)
                                   .foregroundColor(Color(hex: "F6F6F6"))

                               HStack(alignment: .center) {
                                   Image("studentpicture") // Replace with your image name
                                       .resizable()
                                       .aspectRatio(contentMode: .fit)
                                       .frame(width: 100, height: 100)
                                       .padding(.trailing, 8)

                                   VStack(alignment: .leading) {
                                       Text("Apple Foundation program")
                                           .fontWeight(.medium)
                                           .foregroundColor(.black)
                                           .font(.headline)
                                           .multilineTextAlignment(.leading)
                                           .padding(.bottom, 1.0)
                                       Text("2023")
                                           .foregroundColor(.black)
                                           .font(.footnote)
                                   }
                               }
                           }
                       }
                   }
                   .overlay(
                       Button(action: {
                           // Action to perform when the edit button is tapped
                       }) {
                           Image(systemName: "pencil")
                               .foregroundColor(.black)
                               .padding(10)
                               .background(Color.white)
                               .clipShape(Circle())
                               .shadow(radius: 2)
                       }
                       .padding(.top, -8)
                       .padding(.trailing, -8),
                       alignment: .topTrailing
                   )

                   // Other buttons...

               }
               .navigationBarBackButtonHidden(true)

               // Other content...
               Spacer()

           }
       }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}
