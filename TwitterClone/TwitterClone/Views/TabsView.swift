//
//  TabsView.swift
//  TwitterClone
//
//  Created by Ataberk on 23.03.2022.
//

import SwiftUI

struct TabsView: View {
    var body: some View {
        ZStack(alignment: .bottomTrailing){
            TabView{
                HomePage()
                    .tabItem {
                        Image(systemName: "house.fill")
                    }
                TrendsView()
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                    }
                NotificationsView()
                    .tabItem {
                        Image(systemName: "bell.fill")
                    }
                MessagesView()
                    .tabItem {
                        Image(systemName: "envelope.fill")
                    }
            }
        }
    }
}

struct TabsView_Previews: PreviewProvider {
    static var previews: some View {
        TabsView()
            .previewInterfaceOrientation(.portraitUpsideDown)
    }
}
