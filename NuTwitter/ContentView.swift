//
//  ContentView.swift
//  TweetIdea
//
//  Created by CJ Gaspari on 3/20/20.
//  Copyright © 2020 CJ Gaspari. All rights reserved.
//

import SwiftUI
import BottomBar_SwiftUI

var userColor: Color = .purple

let items: [BottomBarItem] = [
    BottomBarItem(icon: "list.bullet", title: "Timeline", color: userColor),
    BottomBarItem(icon: "heart", title: "Favorites", color: .red),
    //BottomBarItem(icon: "magnifyingglass", title: "Search", color: .blue),
    BottomBarItem(icon: "person", title: "Profile", color: .orange),
]


struct ContentView: View {
    @State private var selectedIndex: Int = 0
    @Environment(\.colorScheme) var colorScheme: ColorScheme
    
    @State var showingDetail = false
    
    var selectedItem: BottomBarItem {
        items[selectedIndex]
    }
    
    init() {
//        //Use this if NavigationBarTitle is with Large Font
//        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: userColor.uiColor()]
//
//        //Use this if NavigationBarTitle is with displayMode = .inline
//        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: userColor.uiColor()]
    }

    var body: some View {
        NavigationView {
            VStack {
                if(selectedItem.title == "Profile")
                {
                    //UserPreference.userColor = .yellow
                    //userColor = .yellow
                    ProfileView()
                    //TweetGroup()
                } else
                {
                    TweetGroup()
                }

                BottomBar(selectedIndex: $selectedIndex, items: items)
                .navigationBarTitle(Text(selectedItem.title), displayMode: .large)
            }
            .navigationBarItems(trailing:
                Button(action: {
                    print("Edit button pressed...")
                    self.showingDetail.toggle()
                }) {
                    Image(systemName: "plus.bubble").imageScale(.large)
                }
                .sheet(isPresented: $showingDetail) {
                    //TweetGroup()
                    NewTweet()
                }
                .foregroundColor(userColor)
                //.foregroundColor(colorScheme == .light ? .black : .white)
            )
        }
        //.blur(radius: 2)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        .environment(\.colorScheme, .dark)
        //.blur(radius: 2, opaque: true)
    }
}

