//
//  FeedView.swift
//  TickTockClone
//
//  Created by 밀가루 on 2/27/24.
//

import SwiftUI

struct FeedView: View {
    @StateObject var viewModal = FeedViewModal()
    
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 0) {
                // spacing 항목 사이의 간격
                ForEach(viewModal.posts) { post in
                    FeedCell(post: post)
                }
            }
            .scrollTargetLayout()
        }
        .scrollTargetBehavior(.paging)
        .ignoresSafeArea()
    }
}

#Preview {
    FeedView()
}
