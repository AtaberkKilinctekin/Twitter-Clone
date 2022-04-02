//
//  NotificationsItemsView.swift
//  TwitterClone
//
//  Created by Ataberk on 23.03.2022.
//

import SwiftUI

struct NotificationsItemsView: View {
    var body: some View {
        HStack(alignment: .top){
            Image(systemName: "star.fill")
                .foregroundColor(Color.starColor)
            VStack(alignment: .leading){
                Circle()
                    .frame(width: 28, height: 28)
                Text("In case you missed \(Text("Saad Drusteer’s").bold().foregroundColor(.black)) Tweet ")
                    .foregroundColor(.gray)
                Text("🔥 Are you using WordPress and migrating to the JAMstack? I wrote up a case study about how Smashing Magazine moved to JAMstack and saw great performance improvements and better security.")
                    .foregroundColor(.gray)
            }
            .font(.caption)
            
        }.padding()
    }
}

struct NotificationsItemsView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationsItemsView()
    }
}
