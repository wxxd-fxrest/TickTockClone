//
//  MainTabView.swift
//  TickTockClone
//
//  Created by 밀가루 on 2/27/24.
//

import SwiftUI

struct MainTabView: View {
    @State private var selecteddTab = 0
    
    var body: some View {
        TabView(selection: $selecteddTab) {
            FeedView()
                .tabItem {
                    VStack {
                        Image(systemName: selecteddTab == 0 ? "house.fill" : "house")
                            .environment(\.symbolVariants, selecteddTab == 0 ? .fill : .none)
                        Text("Home")
                    }
                }
                // 우리가 선택한 탭이 몇번째가 되길 원한다고 알려줘야 함
                .onAppear{ selecteddTab = 0 }
                .tag(0)
            
            ExploreView()
                .tabItem {
                    VStack {
                        Image(systemName: selecteddTab == 1 ? "person.2.fill" : "person.2")
                            .environment(\.symbolVariants, selecteddTab == 1 ? .fill : .none)
                        Text("Friends")
                    }
                }
                .onAppear{ selecteddTab = 1 }
                .tag(1)
            
            Text("Upload Post")
                .tabItem {
                    VStack {
                        Image(systemName: "plus")
                    }
                }
                .onAppear{ selecteddTab = 2 }
                .tag(2)
            
            NotificationView()
                .tabItem {
                    VStack {
                        Image(systemName: selecteddTab == 3 ? "heart.fill" : "heart")
                            .environment(\.symbolVariants, selecteddTab == 3 ? .fill : .none)
                        Text("Indox")
                    }
                }
                .onAppear{ selecteddTab = 3 }
                .tag(3)
            
            CurrentUserProfileView()
                .tabItem {
                    VStack {
                        Image(systemName: selecteddTab == 4 ? "person.fill" : "person")
                            .environment(\.symbolVariants, selecteddTab == 4 ? .fill : .none)
                        Text("Profile")
                    }
                }
                .onAppear{ selecteddTab = 4 }
                .tag(4)
        }
        .tint(.black)
    }
}

#Preview {
    MainTabView()
}
