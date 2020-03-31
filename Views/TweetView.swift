//
//  TweetView.swift
//  TweetIdea
//
//  Created by CJ Gaspari on 3/21/20.
//  Copyright © 2020 CJ Gaspari. All rights reserved.
//

import SwiftUI

public struct Tweet : View {
    var isMainTweet: Bool = true
    var tweetBody: String

    public var body: some View {
        VStack{
            HStack {
                ProfilePhoto()
                Spacer()
                TweetText(tweetBody: self.tweetBody)
//                if(!isMainTweet)
//                {
//                    Spacer()
//                    TweetActionButton()
//                }
            }
            if(isMainTweet)
            {
                HStack{
                    UsernameButton(userName: "@WhatTheCJ")
                        .padding(.leading)
                        .foregroundColor(userColor)
                    Spacer()
                    LikeButton()
                    Spacer()
                    TweetActionButton()
                }
            }
            else
            {
                HStack{
                    Spacer()
                    TweetActionButton()
                }
                //TweetActionButton()
            }
        }
    }
}

public struct TweetText : View {
    var tweetBody: String;
    
    public var body: some View {
        Text(tweetBody)
        .padding(.trailing)
    }
}

public struct ProfilePhoto : View {
    public var body : some View {
        Circle()
        .frame(width: 50, height: 50)
        .padding(.all)
        .foregroundColor(.gray)
    }
}

struct TweetView_Previews: PreviewProvider {
    static var previews: some View {
        Tweet(tweetBody: "Test")
    }
}
