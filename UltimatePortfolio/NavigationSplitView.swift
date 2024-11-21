//
//  NavigationSplitView.swift
//  UltimatePortfolio
//
//  Created by Brody on 11/20/24.
//

import SwiftUI

struct NavigationSplitViewTest: View {
    var body: some View {
        
        NavigationSplitView {
            ZStack{
                Color.red.ignoresSafeArea()
                Text("SideBar")
            }
        } content: {
            ZStack{
                Color.yellow.ignoresSafeArea()
                Text("Content")
            }
        } detail: {
            ZStack{
                Color.green.ignoresSafeArea()
                Text("DETAIL")
            }
        }.navigationSplitViewStyle(.balanced)
    }
}

#Preview {
    NavigationSplitViewTest()
}

