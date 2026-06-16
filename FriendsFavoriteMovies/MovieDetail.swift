//
//  MovieDetail.swift
//  FriendsFavoriteMovies
//
//  Created by MsMacM on 2026/06/16.
//

import SwiftUI

struct MovieDetail: View {
    @Bindable  var movie: Movie

    var body: some View {
        Form {
            TextField("Movie Title", text: $movie.title)
            DatePicker("Release Date", selection: $movie.releaseDate, displayedComponents: .date)
        }
    }
}

#Preview {
    MovieDetail(movie: SampleData.shared.movie)
}
