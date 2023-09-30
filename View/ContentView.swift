//
//  ContentView.swift
//  Recall
//
//  Created by Aryan Sinha on 9/6/2023.
//

import SwiftUI


struct ContentView: View {
    //MARK: - PROPERTIES
    @ObservedObject var viewModel : ViewModel
    @State private var isActive : Bool = false
    
    //MARK: - BODY
    var body: some View {
        NavigationView {
            VStack {
                Image("App Logo")
                Text("Recall Raven")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                
                NavigationLink(destination: OnBoarding1(), isActive: $isActive) {
                    EmptyView()
                }
            }
            .onAppear {
                // Delay of 3 seconds before navigating to OnBoarding1
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    self.isActive = true
                }
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: ViewModel())
    }
}

