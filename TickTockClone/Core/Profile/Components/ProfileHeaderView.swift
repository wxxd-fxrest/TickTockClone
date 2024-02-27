//
//  ProfileHeaderView.swift
//  TickTockClone
//
//  Created by 밀가루 on 2/27/24.
//

import SwiftUI

struct ProfileHeaderView: View {
    var body: some View {
        VStack(spacing: 16) {
            VStack(spacing: 8) {
                // profile image
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .foregroundStyle(Color(.systemGray5))
                
                // username
                Text("@naver.com")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                
            }
            
            // stats view
            HStack(spacing: 15) {
                UserStatView(value: 5, title: "Following")
                UserStatView(value: 1, title: "Followers")
                UserStatView(value: 7, title: "Likes")
            }
        }
    }
}

#Preview {
    ProfileHeaderView()
}


