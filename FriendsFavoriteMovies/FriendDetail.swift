//
//  FriendDetail.swift
//  FriendsFavoriteMovies
//
//  Created by MsMacM on 2026/06/16.
//

import SwiftUI

struct FriendDetail: View {
    @Bindable var friend: Friend

    var body: some View {
        Form {
            TextField("Name", text: $friend.name)
                .autocorrectionDisabled()
        }
    }
}

#Preview {
    FriendDetail(friend: SampleData.shared.friend)
}
