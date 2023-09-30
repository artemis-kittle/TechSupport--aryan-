//
//  RecallApp.swift
//  Recall
//
//  Created by Aryan Sinha on 9/6/2023.
//

import SwiftUI
import Realm

@main
struct RecallApp: App {
    var body: some Scene {
        
    
        
        WindowGroup {
            ContentView(viewModel: ViewModel())
        }
    }
}
