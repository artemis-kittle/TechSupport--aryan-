//
//  Add class main.swift
//  Logo Screen
//
//  Created by Prathvi Bharatwala on 6/6/2023.
//

import SwiftUI

struct Add_class_main: View {
    var body: some View {
        VStack {
            VStack(alignment: .center, spacing: 0.0) {
                HStack {
                    Text("Seb" + "'s" +  " Classes")
                        .font(.title)
                        .fontWeight(.medium)
                        .frame(width: nil)
                    Spacer()
                    Image("Profile")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50.0)
                }
                
            }
            .padding()
            
            Spacer()
            
            Button(action: {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*//*@END_MENU_TOKEN@*/
            }) {
                ZStack {
                    RoundedRectangle(cornerRadius: 18
                    )
                    .frame(width: 200, height: 200)
                    .foregroundColor(Color(red: 0.976, green: 0.976, blue: 0.976))
                    Image(systemName: "plus")
                        .resizable(capInsets: EdgeInsets())
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 35.0)
                        .font(.largeTitle)
                        .foregroundColor(.black)
                        .padding(.bottom, 30)
                    
                    
                    
                    Text("Create Class")
                        .foregroundColor(.black)
                        .font(.headline)
                        .padding(.top, 90)
                }
            }
            .padding(.all, 200.0)
        }
    }
    
    struct Add_class_main_Previews: PreviewProvider {
        static var previews: some View {
            Add_class_main()
        }
    }
}
