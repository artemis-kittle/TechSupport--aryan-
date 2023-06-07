//
//  ContentView.swift
//  Logo Screen
//
//  Created by Prathvi Bharatwala on 5/6/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("App Logo")
            Text("Recall Raven")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

