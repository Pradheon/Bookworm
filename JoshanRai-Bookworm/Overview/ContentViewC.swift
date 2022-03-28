//
//  ContentViewC.swift
//  JoshanRai-Bookworm
//
//  Created by Joshan Rai on 3/27/22.
//
//  How to combine Core Data and SwiftUI

/// In `Bookworm.xcdatamodel` we deleted two attributes, one is `id` which confromed to `UUID` and the other is `name` which conformed to `String`
/// To run this file, please uncomment the Views below and restore the data models that were deleted above.

/*
import SwiftUI

struct ContentViewC: View {
    @Environment(\.managedObjectContext) var moc
    @FetchRequest(sortDescriptors: []) var students: FetchedResults<Student>
    
    var body: some View {
        VStack {
            List(students) { student in
                Text(student.name ?? "Unknown")
            }
            
            Button("Add") {
                let firstNames = ["Ginny", "Harry", "Hermione", "Luna", "Ron"]
                let lastNames = ["Ginger", "Lovegood", "Potter", "Weasley"]
                
                let chosenFirstName = firstNames.randomElement()!
                let chosenLastName = lastNames.randomElement()!
                
                let student = Student(context: moc)
                student.id = UUID()
                student.name = "\(chosenFirstName) \(chosenLastName)"
                
                try? moc.save()
            }
        }
    }
}

struct ContentViewC_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewC()
    }
}
*/
