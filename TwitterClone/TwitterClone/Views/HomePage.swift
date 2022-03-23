//
//  HomePage.swift
//  TwitterClone
//
//  Created by Ataberk on 22.03.2022.
//

import SwiftUI

struct HomePage: View {
    var body: some View {
        ZStack(alignment: .bottomTrailing){
            VStack(alignment: .leading){
                HStack{
                    Image(systemName: "person")
                        .padding(.leading)
                    Spacer()
                    Image("twitterTabLogo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 36, height: 36)
                    
                    Spacer()
                    Image(systemName: "star")
                        .padding(.trailing)
                }
                
                ScrollView(){
                    ForEach(0...10, id: \.self){ item in
                        PostView()
                        Divider()
                        
                    }
                }
                .frame(maxWidth: .infinity)
                .multilineTextAlignment(.leading)
                .listStyle(.plain)
                .border(.gray)
               
                
            }
            Button(action: {
                
            }, label: {
                Image("tweetButton")
                    .resizable()
                    .renderingMode(.template)
                    .frame(width: 28, height: 28)
                    .padding()
            })
            .background(Color.systemBlue)
            .foregroundColor(Color.white)
            .clipShape(Circle())
            .padding(8)
            //.padding(.bottom, 45)
            
        }
    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}
