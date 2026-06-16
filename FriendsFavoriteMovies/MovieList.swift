//
//  MovieList.swift
//  FriendsFavoriteMovies
//
//  Created by MsMacM on 2026/06/16.
//

import SwiftUI
import SwiftData

struct MovieList: View {
    @Query(sort: \Movie.title) private var movies: [Movie]
    @Environment(\.modelContext) private var context

    var body: some View {
        NavigationSplitView {
            List {
                ForEach(movies) { movie in
                    NavigationLink(movie.title) {
                        Text("derail view for \(movie.title)")
                            .navigationTitle("movie")
                            .navigationBarTitleDisplayMode(.inline)
                    }
                }
            }
            .navigationTitle("Movies")
        } detail: {
            Text("Selected movie")
                .navigationTitle("movie")
                .navigationBarTitleDisplayMode(.inline)
        }

    }
}

#Preview {
    MovieList()
        .modelContainer(SampleData.shared.modelContainer)
}
