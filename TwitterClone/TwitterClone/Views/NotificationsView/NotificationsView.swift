//
//  NotificationsView.swift
//  TwitterClone
//
//  Created by Ataberk on 23.03.2022.
//

import SwiftUI

struct NotificationsView: View {
    @State var allSelected = true
    @State var mentionedSelected = false
    var body: some View {
        ZStack{
            VStack{
                HStack{
                    Circle()
                        .frame(width: 52, height: 52)
                        .foregroundColor(.black)
                    Spacer()
                    Text("Notifications")
                        .font(.headline)
                        .bold()
                    Spacer()
                    Image(systemName: "gearshape")
                        .foregroundColor(.systemBlue)
                }
                .padding(.leading)
                .padding(.trailing)
                
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
                ScrollView{
                    ForEach(0...10, id: \.self){ item in
                        NotificationsItemsView()
                        Divider()
                    }
                }
            }
        }
    }
}

struct NotificationsView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationsView()
    }
}
