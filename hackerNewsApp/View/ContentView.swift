//
//  ContentView.swift
//  hackerNewsApp
//
//  Created by Rafael Freitas on 15/10/20.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                HStack {
                    Text(String(post.points)
                    )
                    Text(post.title)
                }
            }
            .navigationBarTitle("Hacker News")
        }
        .onAppear {
            networkManager.performRequest()
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

