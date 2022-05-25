//
//  ContentView.swift
//  URLSession
//
//  Created by Bayram Yilmaz on 25/05/2022.
//

import SwiftUI

struct Response: Codable{
    var results: [Result]
}

struct Result: Codable{
    var trackId: Int
    var trackName: String
    var collectionName: String
}

struct ContentView: View {
    @State private var results = [Result]()
    var body: some View {
        List(results, id: \.trackId) {item in
            VStack(alignment: .leading){
            Text(item.trackName)
                .font(.headline)
            Text(item.collectionName)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
