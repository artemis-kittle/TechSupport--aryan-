//
//  ViewModel.swift
//  Recall
//
//  Created by Aryan Sinha on 9/6/2023.
//

import Foundation
import Realm
import RealmSwift

class ViewModel : ObservableObject {
    
    init(){
        print("---> \(Realm.Configuration.defaultConfiguration.fileURL!)")
    }
}
