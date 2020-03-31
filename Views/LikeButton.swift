//
//  LikeButton.swift
//  TweetIdea
//
//  Created by CJ Gaspari on 3/21/20.
//  Copyright © 2020 CJ Gaspari. All rights reserved.
//

import SwiftUI

public struct LikeButton : View {
    @Environment(\.colorScheme) var colorScheme: ColorScheme
    public var body: some View {
        #if os(iOS)
        return Button(action: {
                    print("clicked rect")
                }) {
                    Image(systemName: "heart").imageScale(.small)
                }
                .padding(.trailing)
                .font(.title)
                .foregroundColor(userColor)
                .buttonStyle(BorderlessButtonStyle())
        #else
        return Button(action: {
            print("hello")
        }) {
            Text("Like")
        }
        #endif
    }
}

struct LikeButton_Previews: PreviewProvider {
    static var previews: some View {
        LikeButton()
    }
}
