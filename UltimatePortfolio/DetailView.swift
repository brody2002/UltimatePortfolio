//
//  DetailView.swift
//  UltimatePortfolio
//
//  Created by Brody on 11/20/24.
//

import SwiftUI

struct DetailView: View {
    @EnvironmentObject var dataController: DataController
    
    var body: some View {
            VStack {
                if let issue = dataController.selectedIssue {
                    IssueView(issue: issue)
                } else {
                    NoIssueView()
                }
            }
            .navigationTitle("Details")
            .navigationBarTitleDisplayMode(.inline)
        }
}

#Preview {
    DetailView()
}
