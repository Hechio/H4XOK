//
//  ContentView.swift
//  H4XOK
//
//  Created by Joel Personal on 8/23/20.
//  Copyright © 2020 Steve Hechio. All rights reserved.
//

import SwiftUI

struct ContentView: View {
   @ObservedObject var networkManger = NetworkManager()
    var body: some View {
        NavigationView {
            List(networkManger.posts){post in
              
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                         Text(post.title)
                    }
                }
                
            }
            .navigationBarTitle("H4XOR NEWS")
            
        }
        .onAppear {
            self.networkManger.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

