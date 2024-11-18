//
//  ContentView.swift
//  FriendsFavoriteMovies
//
//  Created by 宇野緋奈乃 on 2024/11/17.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        TabView {
            Tab("Friends", systemImage: "person.and.person") {
                FriendList()
            }


            Tab("Movies", systemImage: "film.stack") {
                FilteredMovieList()
            }
        }
    }
}


#Preview {
    ContentView()
        .modelContainer(SampleData.shared.modelContainer)
}
