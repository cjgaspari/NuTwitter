//
//  NewTweetView.swift
//  TweetIdea
//
//  Created by CJ Gaspari on 3/21/20.
//  Copyright © 2020 CJ Gaspari. All rights reserved.
//

import SwiftUI

struct NewTweet: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView{
            HStack{
                Text("Compose")
            }
            //.navigationBarTitle(Text("New Tweet"), displayMode: .large)
            .navigationBarItems(trailing:
                Button(action: {
                    print("sending tweet...")
                    self.presentationMode.wrappedValue.dismiss()
                    //self.showingDetail.toggle()
                }) {
                Image(systemName: "arrow.up.circle.fill")
                    .font(.system(size: 45))
                    .padding(.top)
                    .foregroundColor(userColor)
            })
        }
        
    }
}
