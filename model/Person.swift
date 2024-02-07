//
//  Person.swift
//  model
//
//  Created by Max.Hendess on 2024-02-07.
//

import Foundation

struct Person : Identifiable, Equatable{
    
    var name : String
    let id = UUID()
    
}
