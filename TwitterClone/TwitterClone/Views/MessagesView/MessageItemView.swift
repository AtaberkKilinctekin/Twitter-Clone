//
//  MessageItemView.swift
//  TwitterClone
//
//  Created by Ataberk on 26.03.2022.
//

import SwiftUI

struct MessageItemView: View {
    var body: some View {
        VStack{
            HStack(alignment: .top, spacing: 12){
                Circle()
                    .frame(width: 52, height: 52)
                    .foregroundColor(.systemBlue)
                VStack(alignment: .leading, spacing: 8){
                    HStack{
                        Text("Gregory Gregor")
                            .font(.system(size: 12))
                            .bold()
                        Text("@user-name")
                            .font(.system(size: 12))
                            .opacity(0.6)
                        Spacer()
                        Text("12.08.2022")
                            .font(.system(size: 12))
                            .opacity(0.6)
                    }
                    Text("Name a show where the lead character is the worst character on the show I’ll get Sabrina Spellman")
                        .font(.system(size: 14))
                        
                }
            }
            
        }.padding()
    }
}

struct MessageItemView_Previews: PreviewProvider {
    static var previews: some View {
        MessageItemView()
    }
}
