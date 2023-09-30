////
////  database.swift
////  Recall
////
////  Created by Aryan Sinha on 9/6/2023.
////
//
//import SwiftUI
//import RealmSwift // Import Realm Package
//
//struct database: View {
//    @State var students = retrieveInfo()
//    
//    static func retrieveInfo() -> Results<Student> {
//        let realm = try! Realm()
//        return realm.objects(Student.self)
//    }
//    
//    
//    
//    var body: some View {
//        VStack {
////            Button(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/) {
////                students = database.retrieveInfo()
////            }
//            VStack(alignment: .center, spacing: 0.0) {
//                HStack {
//                    Text("Apple Foundation Program" +  " Cohort 2 2023")
//                        .font(.title)
//                        .fontWeight(.semibold)
//                        .frame(width: nil)
//                    Spacer()
//                    Image("Profile")
//                        .resizable()
//                        .aspectRatio(contentMode: .fit)
//                        .frame(width: 100.0)
//                }
//                
//            }
//            
//            
//            
////            ZStack {
////
////                ForEach(students, id: \.self) { student in
////
////
////                    RoundedRectangle(cornerRadius: 18)
////                        .frame(width: 200, height: 200)
////                        .foregroundColor(Color(red: 0.976, green: 0.976, blue: 0.976))
////
////                    Image("")
////                        .resizable()
////                        .aspectRatio(contentMode: .fit)
////                        .frame(width: 100.0)
////                        .clipShape(Circle())
////                        .padding(.bottom, 30)
////
////                    Text(student.name)
////                        .fontWeight(.medium)
////                        .foregroundColor(.black)
////                        .font(.title3)
////                        .multilineTextAlignment(.center)
////                        .padding(.top, 100.0)
////
////                }
////            }
//            ScrollView {
//                LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 16) {
//                    ForEach(students, id: \.self) { student in
//                        VStack {
//                            RoundedRectangle(cornerRadius: 18)
//                                .frame(width: 200, height: 200)
//                                .foregroundColor(Color(red: 0.976, green: 0.976, blue: 0.976))
//                            
//                            Image("")
//                                .resizable()
//                                .aspectRatio(contentMode: .fit)
//                                .frame(width: 100.0)
//                                .clipShape(Circle())
////                                .padding(.bottom, 30)
//                            
//                            Text(student.name)
//                                .fontWeight(.medium)
//                                .foregroundColor(.black)
//                                .font(.title3)
//                                .multilineTextAlignment(.center)
////                                .padding(.top, 100.0)
//                        }
//                    }
//                }
//            }
//            
//            
//        }
//    }
//    
//    struct database_Previews: PreviewProvider {
//        static var previews: some View {
//            database()
//        }
//    }
//    
//    // Saving an image in database
//    
//    //    class ImageObject: Object {
//    //        @Persisted var imageData: Data
//    //    }
//    //    guard let image = UIImage(named: "exampleImage") else { return }
//    //    guard let imageData = image.jpegData(compressionQuality: 0.8) else { return }
//    //    let imageObject = ImageObject()
//    //    imageObject.imageData = imageData
//    //    let realm = try! Realm()
//    //        try realm.write {
//    //            realm.add(imageObject)
//    
//    
//    
//}
//
