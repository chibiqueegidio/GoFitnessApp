//
//  FitnessTabView.swift
//  GoFitnessApp
//
//  Created by Egidio Chibique on 13/06/25.
//

import SwiftUI

struct FitnessTabView: View {
    @State var selectedTab="home"
    init() {
            let appearance = UITabBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.stackedLayoutAppearance.selected.iconColor = .blue
        appearance.stackedLayoutAppearance.selected.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.green]
        UITabBar.appearance().standardAppearance = appearance
       
    }
    var body: some View {
       TabView(selection: $selectedTab) {
            HomeView()
               .tag( "home" )
               .tabItem {
                   Image(systemName: "house")
                   Text("Home")
               }
           
           HistoricDataView()
               .tag( "historic" )
               .tabItem {
                   Image(systemName: "chart.line.uptrend.xyaxis")
                   Text("Charts")
               }
              
               
           
          
        }
    }
}

#Preview {
    FitnessTabView()
}
