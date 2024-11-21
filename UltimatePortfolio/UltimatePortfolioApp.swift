//
//  UltimatePortfolioApp.swift
//  UltimatePortfolio
//
//  Created by Brody on 11/20/24.
//

import SwiftUI

@main
struct UltimatePortfolioApp: App {
    @StateObject var dataController = DataController()
    @State var boolTest: Bool = true
    var body: some Scene {
        WindowGroup{
            NavigationSplitView {
                SidebarView()
            } content: {
                ContentView()
            } detail: {
                DetailView()
            }
            .navigationSplitViewStyle(.balanced)
            
            .environment(\.managedObjectContext, dataController.container.viewContext)
            .environmentObject(dataController)
        }
        
        
    }
}
