//
//  LoginScreen.swift
//  TwitterClone
//
//  Created by Ataberk on 18.03.2022.
//

import SwiftUI

struct LoginScreen: View {
    var body: some View {
        ZStack{
            LinearGradient(
                gradient: Gradient(stops: [
            .init(color: Color(#colorLiteral(red: 0, green: 0.5606333613395691, blue: 0.9046587347984314, alpha: 1)), location: 0),
            .init(color: Color(#colorLiteral(red: 0, green: 0.33340343832969666, blue: 0.5379921197891235, alpha: 1)), location: 1)]),
                startPoint: UnitPoint(x: 0.5, y: -3.0616171314629196e-17),
                endPoint: UnitPoint(x: 0.5, y: 0.9999999999999999)).ignoresSafeArea()
            
            VStack{
                Image("twitterLogo")
                    .resizable()
                    .frame(width: UIScreen.main.bounds.width/5+50, height: UIScreen.main.bounds.height/10+50,alignment: .center)
            }
        }
    }
}

struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen()
    }
}
