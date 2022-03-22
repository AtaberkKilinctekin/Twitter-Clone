//
//  PostView.swift
//  TwitterClone
//
//  Created by Ataberk on 22.03.2022.
//

import SwiftUI

struct PostView: View {
    var body: some View {
        VStack{
            HStack(alignment: .top, spacing: 12){
                Circle()
                    .frame(width: 52, height: 52)
                    .foregroundColor(.systemBlue)
                VStack(alignment: .leading, spacing: 8){
                    HStack{
                        Text("Gregory Gregor")
                            .bold()
                        Text("@user-name")
                            .opacity(0.6)
                    }
                    Text("Name a show where the lead character is the worst character on the show I’ll get Sabrina Spellman")
                }
            }.padding(8)
            HStack{
                HStack{
                    Button(action: {
                    },
                           label: Image(systemName: "bubble.left"))
                    Text("12345")
                        .font(.system(size: 14))
                        .lineLimit(1)
                        
                }.frame(width: UIScreen.main.bounds.width / 4 - 10)
                
                HStack{
                    Button(action: {
                    },
                    label: Image(systemName: "arrow.2.squarepath"))
                    Text("12345")
                        .font(.system(size: 14))
                        .lineLimit(1)
                        
                }.frame(width: UIScreen.main.bounds.width / 4 - 10)
                HStack{
                    Button(action: {
                    },
                    label: Image(systemName: "heart"))
                    Text("12345")
                        .font(.system(size: 14))
                        .lineLimit(1)
                        
                }.frame(width: UIScreen.main.bounds.width / 4 - 10)
                HStack{
                    Button(action: {
                    },
                    label: Image(systemName: "square.and.arrow.up"))
                    Text("12345")
                        .font(.system(size: 14))
                        .lineLimit(1)
                } .frame(width: UIScreen.main.bounds.width / 4 - 10)
                
            }
            .padding()
            .frame(width: UIScreen.main.bounds.width)
            
        }
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView()
    }
}
