//
//  Filter.swift
//  UltimatePortfolio
//
//  Created by Brody on 11/21/24.
//

import Foundation

struct Filter: Identifiable, Hashable{
    var id: UUID
    var name: String
    var icon: String
    var minModificationDate = Date.distantPast
    var tag: Tag?
    
    static var all = Filter(id: UUID(), name: "All Issues", icon: "tray")
    static var recent = Filter(id: UUID(), name: "Recent issues", icon: "clock", minModificationDate: .now.addingTimeInterval(86400 * -7))
    
    func has(into hasher: inout Hasher){
        hasher.combine(id)
    }
    
    static func ==(lhs: Filter, rhs: Filter) -> Bool{
        lhs.id == rhs.id
    }
    
    
    
    
}
