//
//  ContentView.swift
//  model
//
//  Created by Max.Hendess on 2024-02-07.
//

import SwiftUI

struct ContentView: View {
    
    @State var name = "max"
    // Optionals är nullable ändra för att se olika beteende
    var opt : Int? = nil
 @State var persons = [Person(name:"Minthara"),Person(name:"Jaheira"),Person(name:"Karlach")]
    var body: some View {
        VStack {
            /*  Text(name)
             TextField("ÄNDRA" , text: $name)
             Button("btn"){
             buttonFunction()
             }
             // skirver ut opt eller 1 beroende på om opt är nil null mc dull
             Text("OPTIONAL \(opt ?? 1)")
             // Force unwrapping om man vet att opt inte kan vara null
             if let o = opt
             {
             Text("OPTIONAL FORCE UNRWAPPING ÄR \(opt!)")
             }
             */
            TextField("Add new Person", text: $name)
            Text(name)
            Button("Add Person"){
                addPerson(name: name)
            }
            Text("Persons").font(.title)
            
            ForEach(persons){ person in
                Text(person.name)
                Button("Delete"){
                    deleteItem(person: person)
                }
            }
                .padding()
            
        }
    }

    func addPerson(name:String)
    {
        if !name.isEmpty
        {
            self.persons.append(Person(name: name))
        }
    }
    func deleteItem(person: Person){
        if let index = persons.firstIndex(of: person){
            persons.remove(at: index)
        }
    }
    func buttonFunction(){
        name = "MAX"
    }
}
#Preview {
    ContentView()
}
