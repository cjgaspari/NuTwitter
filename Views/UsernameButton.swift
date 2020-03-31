//
//  LikeButton.swift
//  TweetIdea
//
//  Created by CJ Gaspari on 3/21/20.
//  Copyright © 2020 CJ Gaspari. All rights reserved.
//

import SwiftUI

public struct UsernameButton : View {
    var userName: String
    @Environment(\.colorScheme) var colorScheme: ColorScheme
    
    public var body: some View {
        Button(action: {
            print("clicked rect")
        }) {
            Text(userName)
        }
        .padding(.trailing)
        .foregroundColor(userColor)
        .buttonStyle(BorderlessButtonStyle())

    }
}

struct UsernameButton_Previews: PreviewProvider {
    static var previews: some View {
        UsernameButton(userName: "@WhatTheCJ")
    }
}
