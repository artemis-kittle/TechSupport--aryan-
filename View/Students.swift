//
//  Students.swift
//  Recall
//
//  Created by Aryan Sinha on 14/6/2023.
//

import SwiftUI

struct Student: Identifiable, Equatable {
    let id = UUID()
    let name: String
    let tags: [String]
    let imageName: String
}

struct Students: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
        
    @State private var students: [Student] = [
        Student(name: "John", tags: ["Math", "Science"], imageName: "Profile"),
        Student(name: "Danielle Teo", tags: ["Team 1", "She/Her", "Long Hair","Asian"], imageName: "danielleimage"),
        Student(name: "Samruddha Dinde", tags: ["Team 1", "He/Him", "Black Hair","South Asian"], imageName: "samimage"),
        Student(name: "Eunhyeong Shim", tags: ["Team 1", "She/Her", "Long Hair","Asian"], imageName: "elliimage"),
        Student(name: "Maher Al Jundi", tags: ["Team 1", "He/Him", "Glasses","XCodeExp"], imageName: "maherimage"),
        Student(name: "Luke Oberg", tags: ["Team 1", "He/Him", "Black Hair","Caucasian"], imageName: "lukeimage"),
        Student(name: "Nate Collins", tags: ["Team 2", "He/Him", "Bearded","Caucasian","Short Hair"], imageName: "nateimage"),
        Student(name: "Jasper Ellicott", tags: ["Team 2", "He/Him", "Blonde Hair","Caucasian"], imageName: "jasperimage"),
        Student(name: "Judith Tran", tags: ["Team 2", "She/Her", "Long Hair","Asian"], imageName: "judithimage"),
        Student(name: "Erica Tan", tags: ["Team 2", "She/Her", "Long Hair","Asian","Black Hair"], imageName: "ericaimage"),
        Student(name: "Sik Yin Aloysius Kan", tags: ["Team 2", "He/Him","Short Hair","Glasses","Asian","Black Hair"], imageName: "aloysiusimage"),
        Student(name: "Khushbu Oswal", tags: ["Team 3", "She/Her", "Long Hair","South Asian","Black Hair", "Glasses"], imageName: "khushbuimage"),
        Student(name: "Thomas Johnston", tags: ["Team 3", "He/Him", "Short Hair","XCodeExp","Caucasian","Blonde Hair"], imageName: "tomimage"),
        Student(name: "Kylie Lin", tags: ["Team 3", "She/Her", "Long Hair", "Black Hair","Asian"], imageName: "kylieimage"),
        Student(name: "MG Valdez", tags: ["Team 3", "He/Him", "Short Hair", "Black Hair","Asian"], imageName: "valdezimage"),
        Student(name: "Suleman Dawood", tags: ["Team 3", "He/Him", "Short Hair", "Black Hair","South Asian"], imageName: "sulemanimage"),
        Student(name: "Sejin Denni Um", tags: ["Team 4", "She/Her", "Long Hair", "Black Hair", "Glasses","Asian","XCodeExp"], imageName: "denniimage"),
        Student(name: "Mingpeng Wang", tags: ["Team 4", "He/Him", "Short Hair", "Black Hair", "Glasses","Asian"], imageName: "mingpengimage"),
        Student(name: "Junling Guan", tags: ["Team 4", "She/Her", "Short Hair", "Black Hair", "Glasses","Asian","XCodeExp"], imageName: "lingimage"),
        Student(name: "James Do", tags: ["Team 4", "He/Him", "Short Hair", "Black Hair", "Glasses","Asian"], imageName: "jamesimage"),
        Student(name: "Antonio Perez", tags: ["Team 4", "He/Him", "Short Hair", "Black Hair", "Bearded",""], imageName: "antonioimage"),
        Student(name: "Yasaman Mohammadi", tags: ["Team 5", "She/Her", "Black Hair", "Long Hair","Middle-Eastern"], imageName: "yasiimage"),
        Student(name: "Khac Minh Le", tags: ["Team 5", "He/Him", "Black Hair", "Short Hair","Glasses"], imageName: "minhimage"),
        Student(name: "Danny Leung", tags: ["Team 5", "He/Him", "Black Hair", "Short Hair", "Glasses"], imageName: "dannyimage"),
        Student(name: "Victor Babin", tags: ["Team 5", "He/Him", "Blonde Hair", "Glasses", "Short Hair","XCodeExp"], imageName: "victorimage"),
        Student(name: "Kanisha S Siman M P", tags: ["Team 5", "She/Her", "Black Hair", "Short Hair","Curly Hair","South Asian"], imageName: "kanishaimage"),
        
        Student(name: "Aryan Sinha", tags: ["Team 6", "He/Him", "Black Hair","Short Hair", "Bearded","South Asian","XCodeExp"], imageName: "aryanimage"),
        Student(name: "Steven Ma", tags: ["Team 6", "He/Him", "Black Hair","Short Hair","Asian"], imageName: "stevenimage"),
        Student(name: "Rayna Sanker", tags: ["Team 6", "She/Her", "Black Hair","Long Hair","South Asian"], imageName: "raynaimage"),
        Student(name: "Chris Cheng", tags: ["Team 6", "He/Him", "Black Hair", "Asian","Glasses"], imageName: "chrisimage"),
        Student(name: "Prathvi Bahratwala", tags: ["Team 6", "She/Her", "Black Hair","South Asian","Long Hair","XCodeExp"], imageName: "prathviimage")
    ]
    @State private var tags: [String] = ["Team 1", "Team 2", "Team 3", "Team 4", "Team 5", "Team 6", "He/Him", "She/Her", "Long Hair", "Short Hair", "Black Hair", "Blonde Hair", "Bearded", "Glasses", "Curly Hair","Asian","South Asian","Caucasian","Middle-Eastern","XCodeExp"]
    @State private var selectedTags: [String] = []
    @State private var isAddStudentViewPresented = false
    
    var filteredStudents: [Student] {
        if selectedTags.isEmpty {
            return students
        } else {
            return students.filter { student in
                selectedTags.allSatisfy { student.tags.contains($0) }
            }
        }
    }
    
    var body: some View {
        NavigationView {
            VStack {
                HStack(alignment: .center) { // Set alignment to top
                    Button(action: {
                                        presentationMode.wrappedValue.dismiss()
                                    }) {
                                        HStack(alignment: .center, spacing: 8.0) {
                                            Image("green arrow")
                                                .font(.title)
                                                .alignmentGuide(.top) { _ in 0 }
                                            
                                            Text("Apple Foundation 2023")
                                                .font(.title3)
                                                .fontWeight(.bold)
                                                .foregroundColor(.black)
                                        }
                                    }
//                                    .navigationBarBackButtonHidden(true)
//                                    .navigationBarItems(leading: EmptyView())
//                    Button(action: {
//                        // Action to perform when the button is tapped
//                    }) {
//
//                    }
                    Spacer()
                    Image("Profile")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50.0)
                }
                .padding(.horizontal)
                .frame(width: 400, height: 80)
                
                
                ScrollView(.horizontal, showsIndicators: false) {
                    
                    HStack {
                        
                        ForEach(tags, id: \.self) { tag in
                            TagView(text: tag, isSelected: selectedTags.contains(tag)) {
                                if selectedTags.contains(tag) {
                                    selectedTags.removeAll { $0 == tag }
                                } else {
                                    selectedTags.append(tag)
                                }
                            }
                        }
                    }
                    .padding(.horizontal)
                }
                
                ScrollView {
                    LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())], spacing: 16) {
                        
                        ForEach(filteredStudents) { student in
                            StudentView(student: student)
                        }
                        Button(action: {
                            isAddStudentViewPresented = true
                        }) {
                            VStack {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 18)
                                        .frame(width: 115, height: 115)
                                        .foregroundColor(Color(hex: "F6F6F6"))
                                    
                                    VStack {
                                        Image("add")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 60)
                                            .clipShape(Circle())
                                        
                                        Text("Add")
                                            .fontWeight(.medium)
                                            .foregroundColor(.black)
                                            .font(.title3)
                                            .multilineTextAlignment(.center)
                                    }
                                }
                            }
                            .sheet(isPresented: $isAddStudentViewPresented) {
                                AddStudentView(addStudent: { student in
                                    students.append(student)
                                }, tags: tags)
                            }
                            //.padding()
                            
                            //Spacer()
                        }
                    }
                    .padding()
                }
                
            }
        }
        .navigationBarBackButtonHidden(true)
    }
    
    struct TagView: View {
        let text: String
        let isSelected: Bool
        let action: () -> Void
        
        var body: some View {
            Button(action: action) {
                Text(text)
                    .font(.caption)
                    .fontWeight(.regular)
                    .foregroundColor(isSelected ? .white : .gray)
                    .lineLimit(1)
                    .opacity(0.6)
                    .multilineTextAlignment(.leading)
                    .frame(width: 63, height: 30.0)
                    .background(isSelected ? Color.green : Color(hex: "F7F7F7"))
                    .cornerRadius(50)
            }
        }
    }
    
    struct StudentView: View {
        let student: Student
        
        var body: some View {
            VStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 18)
                        .frame(width: 115, height: 115)
                        .foregroundColor(Color(hex: "F6F6F6"))
                    
                    VStack {
                        Image(student.imageName)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 60)
                            .clipShape(Circle())
                        
                        Text(student.name)
                            .fontWeight(.medium)
                            .foregroundColor(.black)
                            .font(.footnote)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal)
                    }
                }
            }
        }
    }
    
    struct AddStudentView: View {
        @Environment(\.presentationMode) var presentationMode
        @State private var name = ""
        @State private var selectedTags: [String] = []
        let addStudent: (Student) -> Void
        let tags: [String]
        
        var body: some View {
            NavigationView {
                Form {
                    Section(header: Text("Student Details")) {
                        TextField("Name", text: $name)
                    }
                    
                    Section(header: Text("Tags")) {
                        ForEach(tags, id: \.self) { tag in
                            Toggle(tag, isOn: Binding(
                                get: { selectedTags.contains(tag) },
                                set: { isSelected in
                                    if isSelected {
                                        selectedTags.append(tag)
                                    } else {
                                        selectedTags.removeAll { $0 == tag }
                                    }
                                }
                            ))
                        }
                    }
                }
                .navigationBarTitle("Add Student")
                .navigationBarItems(leading: Button("Cancel") {
                    presentationMode.wrappedValue.dismiss()
                }, trailing: Button("Save") {
                    let student = Student(name: name, tags: selectedTags, imageName: "") // Provide the appropriate image name or URL
                    addStudent(student)
                    presentationMode.wrappedValue.dismiss()
                })
            }
        }
    }
}


struct Students_Previews: PreviewProvider {
    static var previews: some View {
        Students()
    }
}
