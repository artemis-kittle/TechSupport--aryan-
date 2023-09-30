//
//  HomePageView.swift
//  Recall
//
//  Created by Aryan Sinha on 9/6/2023.
//

import SwiftUI

struct HomePageView: View {
    @State private var isNextViewActive = false
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
                isNextViewActive = true
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
            NavigationLink(
                destination: Students(),
                isActive: $isNextViewActive,
                label: { EmptyView() }
            )
            .hidden()
            .padding(.all, 200.0)
        }
    }
    
    struct HomePageView_Previews: PreviewProvider {
        static var previews: some View {
            HomePageView()
        }
    }
}
