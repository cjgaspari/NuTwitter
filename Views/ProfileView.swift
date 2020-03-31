//
//  ProfileView.swift
//  TweetIdea
//
//  Created by CJ Gaspari on 3/21/20.
//  Copyright © 2020 CJ Gaspari. All rights reserved.
//

import SwiftUI

struct ProfileView: View {
    @State private var selectedIndex: Int = 0
    @State var showingDetail = false
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        VStack{
            HStack{
                ProfilePhoto()
                Text("@WhatTheCJ")
            }
            TweetGroup(hideDetails: false)
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
