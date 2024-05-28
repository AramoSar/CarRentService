//
//  ManitabbarView.swift
//  CarRentService
//
//  Created by Aram on 23.05.24.
//

import SwiftUI

struct ManitabbarView: View {
    @State private var selectedTab: Int = 0
    @StateObject var viewModel = ExploreViewModel()
    
    var body: some View {
        TabView {
            ExploreView(viewModel: viewModel)
                .tabItem {
                    VStack {
                        Image(systemName: "magnifyingglass")
                            .environment(\.symbolVariants, selectedTab == 0 ? .fill : .none)
                        Text("Explore")
                    }
                    
                }
                .onAppear {
                    selectedTab = 0
                }
            
            FavoritesView(viewModel: viewModel)
                .tabItem {
                    VStack {
                        Image(systemName: "heart")
                            .environment(\.symbolVariants, selectedTab == 1 ? .fill : .none)
                        Text("Favorite")
                    }
                    
                }.onAppear {
                    selectedTab = 1
                }
            
            TripsView()
                .tabItem {
                    VStack {
                        Image(systemName:"road.lanes")
                            .environment(\.symbolVariants, selectedTab == 2 ? .fill : .none)
                        Text("Trips")
                    }
                    
                }
                .onAppear {
                    selectedTab = 2
                }
            
            InboxView()
                .tabItem {
                    VStack {
                        Image(systemName:"bubble")
                            .environment(\.symbolVariants, selectedTab == 3 ? .fill : .none)
                        Text("Inbox")
                    }
                    
                }
                .onAppear {
                    selectedTab = 3
                }
            
            Text("More")
                .tabItem {
                    VStack {
                        Image(systemName:"ellipsis")
                            .environment(\.symbolVariants, selectedTab == 4 ? .fill : .none)
                        Text("More")
                    }
                    
                }
                .onAppear {
                    selectedTab = 4
                }
        }
        .onAppear {
            UITabBar.appearance().backgroundColor = .white
        }
    }
}

#Preview {
    ManitabbarView()
}
