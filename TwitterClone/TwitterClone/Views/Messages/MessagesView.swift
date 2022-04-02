//
//  MessagesView.swift
//  TwitterClone
//
//  Created by Ataberk on 23.03.2022.
//

import SwiftUI



struct MessagesView: View {
    
    @State var messageSearch: String = ""
    
    var body: some View {
        
        
        NavigationView{
            VStack{
                
                TextField("\(Image(systemName: "magnifyingglass"))Search for the people or groups", text: $messageSearch)
                    .frame(height: 30)
                    .background(Color.textfieldColor)
                    .border(.black.opacity(0.2), cornerRadius: 8)
                    .padding()
                  
                    Divider()
                    
                ScrollView{
                    ForEach((0...10).filter({"\($0)".contains(messageSearch) || messageSearch.isEmpty }), id: \.self){ item in
                        MessageItemView()
                        Divider()
                    }
                }
            }
            .navigationTitle("Messages")
                .navigationBarTitleDisplayMode(.inline)
                
                .toolbar{
                    ToolbarItem(placement: .navigationBarLeading) {
                        Circle()
                        .frame(width: 28, height: 28)}
                }
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing){
                        Image(systemName: "gearshape")
                            
                    }
                }
        }
        
    }
}

struct MessagesView_Previews: PreviewProvider {
    static var previews: some View {
        MessagesView()
    }
}
