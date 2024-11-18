//
//  FilteredMovieList.swift
//  FriendsFavoriteMovies
//
//  Created by 宇野緋奈乃 on 2024/11/17.
//

import SwiftUI


struct FilteredMovieList: View {
    @State private var searchText = ""


    var body: some View {
        NavigationSplitView {
            MovieList(titleFilter: searchText)
                .searchable(text: $searchText)
        } detail: {
            Text("Select a movie")
                .navigationTitle("Movie")
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}


#Preview {
    FilteredMovieList()
        .modelContainer(SampleData.shared.modelContainer)
}
