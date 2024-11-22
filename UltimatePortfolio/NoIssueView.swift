//
//  NoIssueView.swift
//  UltimatePortfolio
//
//  Created by Brody on 11/22/24.
//

import SwiftUI

struct NoIssueView: View {
    
    @EnvironmentObject var dataController: DataController
    
    var body: some View {
        Text("No Issue Selected")
            .font(.title)
            .foregroundStyle(.secondary)
        
        Button("New Issue") {
                    // make a new issue
                }
        
    }
}

#Preview {
    NoIssueView()
}
