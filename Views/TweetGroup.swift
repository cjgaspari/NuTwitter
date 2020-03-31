//
//  TweetGroup.swift
//  TweetIdea
//
//  Created by CJ Gaspari on 3/21/20.
//  Copyright © 2020 CJ Gaspari. All rights reserved.
//

import Foundation
import SwiftUI
//import BottomBar_SwiftUI

public struct TweetGroup : View {
    var hideDetails: Bool
    
    init(hideDetails: Bool = true) {
        self.hideDetails = hideDetails
        // To remove only extra separators below the list:
        //UITableView.appearance().tableFooterView = UIView()

        // To remove all separators including the actual ones:
        //UITableView.appearance().separatorStyle = .none
        
        // To remove scrollbars
        #if os(iOS)
            UITableView.appearance().showsVerticalScrollIndicator = false
        #endif
        
    }
    
    public var body: some View {
        List {
            Tweet(isMainTweet: hideDetails, tweetBody: ".@elonmusk when is the next Los Angeles based Space X launch? This was inspiring, and breathtaking to watch 🚀")
            Tweet(isMainTweet: hideDetails, tweetBody: "America needs to step TF up. I've been on my balcony sing and no one will join in.")
            Tweet(isMainTweet: hideDetails, tweetBody: "Shout out to this Doctor, and all the researchers, nurses, doctors developing emergency protocols. Brilliant people, thinking quickly, and innovating.")
            Tweet(isMainTweet: hideDetails, tweetBody: "I know it’s the worst timing for this, but ya boy needs a damn hug. pic.twitter.com/MzE8CjW4bh")
            Tweet(isMainTweet: hideDetails, tweetBody: "another test of tweet from SwiftUI")
            
            
//            Tweet(isMainTweet: false)
//                //.blur(radius: 2.1)
//            Tweet(isMainTweet: false)
//                //.blur(radius: 2)
//            Tweet(isMainTweet: true)
//            Tweet(isMainTweet: false)
//                //.blur(radius: 2)
//            Tweet(isMainTweet: false)
//                //.blur(radius: 2.1)
//            Tweet(isMainTweet: false)
//                //.blur(radius: 2.2)
        }
    }
}

struct TweetGroup_Previews: PreviewProvider {
    static var previews: some View {
        TweetGroup()
    }
}
