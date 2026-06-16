//
//  ContentView.swift
//  FriendsFavoriteMovies
//
//  Created by MsMacM on 2026/06/15.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    var body: some View {
        TabView {
            Tab("friends", systemImage: "person.and.person") {
                FriendList()
            }
            Tab("Movies", systemImage: "film.stack") {
                MovieList()
            }
        }

    }
}

#Preview {
    ContentView()
        .modelContainer(SampleData.shared.modelContainer)
}
