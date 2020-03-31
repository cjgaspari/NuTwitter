//
//  ContentView.swift
//  NuTwitter
//
//  Created by CJ Gaspari on 3/23/20.
//  Copyright © 2020 CJ Gaspari. All rights reserved.
//

import SwiftUI

var userColor: Color = .purple


struct ContentView: View {
    var body: some View {
        VStack {
            TweetGroup()

        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
