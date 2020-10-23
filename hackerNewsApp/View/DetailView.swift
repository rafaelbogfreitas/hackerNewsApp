//
//  DetailView.swift
//  hackerNewsApp
//
//  Created by Rafael Freitas on 21/10/20.
//

import SwiftUI
import WebKit

struct DetailView: View {
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}


struct DetaiView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}

