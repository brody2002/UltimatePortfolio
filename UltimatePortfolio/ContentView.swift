//
//  ContentView.swift
//  UltimatePortfolio
//
//  Created by Brody on 11/20/24.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var dataController: DataController

    var issues: [Issue] {
        let filter = dataController.selectedFilter ?? .all
        var allIssues: [Issue]
        
        if let tag = filter.tag{
            allIssues = tag.issues?.allObjects as? [Issue] ?? []
        } else{
            let request = Issue.fetchRequest()
            
            // Core data doesn't under stand Swift's newer dataType so this line is needed...
            request.predicate = NSPredicate(format: "modificationDate > %@", filter.minModificationDate as NSDate)
            allIssues = (try? dataController.container.viewContext.fetch(request)) ?? []
        }
        
        return allIssues.sorted()
    }
    
    var body: some View {
        List {
            ForEach(issues){ issue in
                IssueRow(issue: issue)
            }
        }
        .navigationTitle("Issues")
    }
}

#Preview {
    ContentView()
}
