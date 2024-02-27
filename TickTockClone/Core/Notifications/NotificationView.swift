//
//  NotificationView.swift
//  TickTockClone
//
//  Created by 밀가루 on 2/27/24.
//

import SwiftUI

struct NotificationView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: 30) {
                    ForEach(0 ..< 10) { notification in
                        NotificationCell()
                    }
                }
            }
            .navigationTitle("Notification")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    NotificationView()
}
