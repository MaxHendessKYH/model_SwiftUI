//
//  PersonView.swift
//  model
//
//  Created by Max.Hendess on 2024-02-07.
//

import SwiftUI

struct PersonView: View {
    
    @State var person: Person
    var body: some View {
        HStack{
            Text(person.name)
        }.padding()
    }
}

#Preview {
    PersonView(person: Person(name:"String"))
}
