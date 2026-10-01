//
//  Data_List_View.swift
//  Lemon Resturant
//
//  Created by Eric Dorsey on 9/26/26.
//

import SwiftUI

struct Data_List_View: View {
    
    var studentsList: [String] = ["Eric", "John", "Bob", "Mike", "Justin"]
    var studentLikes: [String] = ["Coding", "Fishing", "Eating","Gaming", "Running"]
    
    var body: some View {
        List {
            Section(header: Text("Studnets")) {
                ForEach(studentsList, id: \.self) { Student in
                    Text(Student)
                }
            }
            Section(header: Text("Likes")) {
                ForEach(studentLikes, id: \.self) { Like in
                    Text(Like)
                }
                
                
            }
        }
    }
}

#Preview {
    Data_List_View()
}
