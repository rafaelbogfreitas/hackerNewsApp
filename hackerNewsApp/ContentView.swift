//
//  ContentView.swift
//  hackerNewsApp
//
//  Created by Rafael Freitas on 15/10/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(posts) { post in
                Text(post.title)
            }
            .navigationBarTitle("Hacker News")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Post: Identifiable {
    let id: String
    let title: String
}

let posts = [
    Post(id: "1", title:   "HEY"  ),
    Post(id: "2", title:   "HO"   ),
    Post(id: "3", title:   "LET'S"),
    Post(id: "4", title:   "GO"   ),
]
