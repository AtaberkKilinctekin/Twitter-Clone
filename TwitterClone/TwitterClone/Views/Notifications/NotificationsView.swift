//
//  NotificationsView.swift
//  TwitterClone
//
//  Created by Ataberk on 23.03.2022.
//

import SwiftUI

struct NotificationsAllView: View {
    @State var allSelected = true
    @State var mentionedSelected = false
    @State var navigatedMentions = false
    var body: some View {
        NavigationView{
            ZStack{
                VStack{
                    HStack(alignment: .center){
                        VStack{
                            Button(action: {
                                allSelected = true
                                mentionedSelected = false
                                
                                
                            }
                                   , label: {
                                Text("All")
                            })
                            if allSelected {
                                Capsule()
                                    .frame(height: 3)
                                    .foregroundColor(.systemBlue)
                            }
                        }
                        .frame(maxWidth: .infinity)
                        .foregroundColor(.black)
                        
                        
                        VStack{
                            
                            Button(action: {
                                allSelected = false
                                mentionedSelected = true
                                
                            }, label: {
                                Text("Mentiones")
                                
                            })
                            .frame(maxWidth: .infinity)
                            .foregroundColor(.black)
                            
                            if mentionedSelected {
                                Capsule()
                                    .frame(height: 3)
                                    .foregroundColor(.systemBlue)
                                
                            }
                        }
                        .frame(maxWidth: .infinity)
                        .foregroundColor(.black)
                        
                        
                        
                    }
                    Spacer()
                    if allSelected {
                        ScrollView{
                            ForEach(0...10, id: \.self){ item in
                                NotificationsItemsView()
                                Divider()
                            }
                        }
                    }
                    if mentionedSelected {
                        ScrollView{
                            ForEach(0...10, id: \.self){ item in
                                MentionedNotificationsView()
                                Divider()
                            }
                        }
                    }
                    
                }
            }.navigationTitle("Notifications")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Circle()
                        .frame(width: 28, height: 28)}
                }
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Image(systemName: "gearshape")
                            .foregroundColor(Color.tabItemColor)
                    }
                }
        }
    }
}


struct NotificationsView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationsAllView()
    }
}
