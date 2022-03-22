//
//  HomePage.swift
//  TwitterClone
//
//  Created by Ataberk on 22.03.2022.
//

import SwiftUI

struct HomePage: View {
    var body: some View {
        TabView{
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
                //.ignoresSafeArea()
                
            }.navigationBarHidden(true)
        }
    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}
