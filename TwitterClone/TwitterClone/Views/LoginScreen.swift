//
//  LoginScreen.swift
//  TwitterClone
//
//  Created by Ataberk on 18.03.2022.
//

import SwiftUI
import SwiftUIX

struct LoginScreen: View {
    @State var userName: String = ""
    var body: some View {
        GeometryReader { proxy in
            ZStack{
                LinearGradient(
                    gradient: Gradient(stops: [
                .init(color: Color(#colorLiteral(red: 0, green: 0.5606333613395691, blue: 0.9046587347984314, alpha: 1)), location: 0),
                .init(color: Color(#colorLiteral(red: 0, green: 0.33340343832969666, blue: 0.5379921197891235, alpha: 1)), location: 1)]),
                    startPoint: UnitPoint(x: 0.5, y: -3.0616171314629196e-17),
                    endPoint: UnitPoint(x: 0.5, y: 0.9999999999999999)).ignoresSafeArea()
                
                VStack{
                    if proxy.size.height < 400 {
                        Image("twitterLogo")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .scaledToFit()
                            .frame(minWidth: 50, maxWidth: 100, minHeight: 50, maxHeight: 100)
                    } else {
                        Image("twitterLogo")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .scaledToFit()
                            .frame(minWidth: 50, maxWidth: 150, minHeight: 50, maxHeight: 150)
                    }
                    
                    Text("Welcome to Twitter")
                        .foregroundColor(.white)
                        .bold()
                        .font(.system(size: 24))
                        .multilineTextAlignment(.center)
                    VStack{
                        HStack{
                            Image(systemName: "person.circle")
                                .padding(.leading, 8)
                                .foregroundColor(.white)
                                .font(.system(size: 32))
                            TextField("Username", text: $userName)
                                .padding()
                        }
                        .ignoresSafeArea()
                        .frame(height: 45)
                        .background(VisualEffectBlurView.init(blurStyle: .systemUltraThinMaterial))
                        .background(Color.blue.opacity(0.7))
                        .cornerRadius(20)
                        .shadow(color: .white, x: -0.5, y: -0.5, blur: 2)
                        .shadow(color: .white, x: 0.5, y: 0.5, blur: 2)
                        
                        
                        
                        
                        HStack{
                            Image(systemName: "key")
                                .foregroundColor(.white)
                                .font(.system(size: 27))
                                .padding(.leading, 15)
                                .padding(.trailing, 6)
                            SecureField("Password", text: $userName)
                                .padding()
                        }
                        .frame(height: 45)
                        .background(VisualEffectBlurView.init(blurStyle: .systemUltraThinMaterial))
                        .background(Color.blue.opacity(0.7))
                        .cornerRadius(20)
                        .shadow(color: .white, x: -0.5, y: -0.5, blur: 2)
                        .shadow(color: .white, x: 0.5, y: 0.5, blur: 2)
                        
                        
                        
                    }
                    .frame(height: proxy.size.height / 5)
                    .frame(maxWidth: 450)
                    .padding(.leading, 5)
                    .padding(.trailing, 5)
                    .padding(.top,20)
                    .padding(.bottom, 20)
                    .cornerRadius(20)
                    .padding()
                    .padding(.top, proxy.size.height / 100)
                    
                    Button(action:{
                        
                    }, label: Text("Sign In")
                        .font(.headline)
                    )
                    .frame(width: 100, height: 50)
                    .background(VisualEffectBlurView.init(blurStyle: .systemUltraThinMaterial))
                    .background(Color.blue.opacity(0.7))
                    .foregroundColor(.white)
                    .cornerRadius(20)
                    
                }
                .padding()
                
            }
        }
    }
}

struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen()
    }
}
