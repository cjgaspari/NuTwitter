//
//  ActionButton.swift
//  TweetIdea
//
//  Created by CJ Gaspari on 3/21/20.
//  Copyright © 2020 CJ Gaspari. All rights reserved.
//

import SwiftUI

public struct TweetActionButton : View {
    @Environment(\.colorScheme) var colorScheme: ColorScheme
    @State var showingDetail = false
    
    public var body: some View {
        #if os(iOS)
        return Button(action: {
                    print("clicked")
                    self.showingDetail.toggle()
                }) {
                    Image(systemName: "ellipsis").imageScale(.small)
                }
                .sheet(isPresented: $showingDetail) {
                    ProfileView()
                }
                .padding(.trailing)
                .font(.title)
                .foregroundColor(userColor)
                //.foregroundColor(colorScheme == .light ? .black : .white)
                .buttonStyle(BorderlessButtonStyle())
        #else
        return Button(action: {
            self.showingDetail.toggle()
        }) {
            Text("...")
        }
        .sheet(isPresented: $showingDetail) {
            ProfileView()
        }
        #endif
    }
}

struct TweetActionButton_Previews: PreviewProvider {
    static var previews: some View {
        TweetActionButton()
    }
}
