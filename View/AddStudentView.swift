////
////  AddStudentView.swift
////  Recall
////
////  Created by Aryan Sinha on 9/6/2023.
////
//
//import SwiftUI
//import RealmSwift // Import Realm Package
//
////class Student: Object {
////    @Persisted var name: String = ""
////}
//
//
//
//
//
//struct AddStudentView: View {
//    @State private var isNextViewActive = false
//    @State public var studentName: String = ""
//    
////    init()
////    {
////        let realm = try! Realm()
////        //print(Realm.Configuration.defaultConfiguration.fileURL!)
////
////    }
//    func storeInfo() {
//        
//        let realm = try! Realm() // Create an instance for Realm
//        let student = Student()
//        student.name = studentName
//        
//        try! realm.write {
//            realm.add(student)
//        }
//    }
//    
//    var body: some View {
//        NavigationView {
//        VStack{
//        
//        ZStack{
//            
//            Circle()
//                .padding(.bottom)
//                .frame(width: 200, height: 200)
//                .foregroundColor(Color(red: 0.976, green: 0.976, blue: 0.976))
//            
//        }
//        
//            
////            Text("Class Name")
////                .frame(width: 330)
////                .padding(.horizontal)
////                .padding(.vertical, 15)
////                .background(Color(hex: "F7F7F7"))
////                .cornerRadius(29)
////                .foregroundColor(.black)
////                .opacity(0.6)
//            
//            TextField("Student Name", text: $studentName)
//                .frame(width: 330)
//                .padding(.horizontal)
//                .padding(.vertical, 15)
//                .background(Color(hex: "F7F7F7"))
//                .cornerRadius(29)
//                .foregroundColor(.black)
//                .opacity(0.6)
//            
////            TextField("Details", text: $text3)
////                .frame(width: 330, height: 100)
////                .padding(.horizontal)
////                .padding(.vertical, 15)
////                .background(Color(hex: "F7F7F7"))
////                .cornerRadius(20)
////                .foregroundColor(.black)
////                .opacity(0.6)
////                .multilineTextAlignment(.leading)
//            
//            Spacer()
//            
//            Button(action: {
//                // Action to perform when the button is tapped
//                // For example, you can navigate to the next screen
//                storeInfo()
//                isNextViewActive = true
//                
//            }) {
//                Text("Add")
//                    .font(.headline)
//                    .fontWeight(.bold)
//                    .foregroundColor(.white)
//                    .multilineTextAlignment(.center)
//                    .frame(width: 361.0, height: 50.0)
//                    .background(Color.green)
//                    .cornerRadius(50)
//            }
//            NavigationLink(
//                            destination: database(),
//                            isActive: $isNextViewActive,
//                            label: { EmptyView() }
//                        )
//                        .hidden()
//        }
//                    .navigationBarTitle("Add Student")
//        
//            
//        }
//    }
//    }
//
//
//struct AddStudentView_Previews: PreviewProvider {
//    static var previews: some View {
//        AddStudentView()
//    }
//}
//
//
//
//
