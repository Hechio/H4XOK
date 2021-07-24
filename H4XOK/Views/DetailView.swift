//
//  DetailView.swift
//  H4XOK
//
//  Created by Joel Personal on 8/23/20.
//  Copyright © 2020 Steve Hechio. All rights reserved.
//

import SwiftUI
struct DetailView: View {
    let url: String?
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}

