//
//  SignUpView.swift
//  TwitterClone
//
//  Created by Ataberk on 30.03.2022.
//

import SwiftUI
import SwiftUIX
import Firebase

struct SignUpView: View {
    
    @State var email = ""
    @State var password = ""
    @State var approvePassword = ""
    @State var registered: Bool = true
    @State var Sign_Up_Aprroved = false
    
    
    
    var body: some View {
        GeometryReader { proxy in
            NavigationView {
                ZStack{
                    LinearGradient.backgroundColor.ignoresSafeArea()
                    
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
                        
//                        Text("Welcome to Twitter")
//                            .foregroundColor(.white)
//                            .bold()
//                            .font(.system(size: 24))
//                            .multilineTextAlignment(.center)
                        VStack{
                            VStack(alignment:.leading, spacing: 6){
                                Text("E-mail").foregroundColor(.white)
                                    .bold()
                                EMailBubble()
                            }
                            VStack(alignment:.leading, spacing: 6) {
                                Text("Password").foregroundColor(.white)
                                    .bold()
                                PasswordBubble(fieldName: "Enter password", binding: $password)
                            }
                            
                            VStack(alignment:.leading, spacing: 6) {
                                Text("Password").foregroundColor(.white)
                                    .bold()
                                PasswordBubble(fieldName: "Re-enter Password", binding: $approvePassword)
                            }
                            
                            
                        }
                        .frame(height: proxy.size.height / 5)
                        .frame(maxWidth: 450)
                        .padding(.leading, 5)
                        .padding(.trailing, 5)
                        .padding(.top,20)
                        .padding(.bottom, 20)
                        .padding()
                        .padding(.top, proxy.size.height / 100)
                        
                        Button(action:{
                            if password == approvePassword {
                                SingUp()
                            } else {
                                
                            }
                            
                            
                        }, label: Text("Sign UP")
                            .font(.headline)
                        )
                        .frame(width: 100, height: 50)
                        .background(VisualEffectBlurView.init(blurStyle: .systemUltraThinMaterial))
                        .background(Color.systemBlue.opacity(0.7))
                        .foregroundColor(.white)
                        .cornerRadius(20)
                        .shadow(color: .white, x: -0.5, y: -0.5, blur: 2)
                        .shadow(color: .white, x: 0.5, y: 0.5, blur: 2)
                        .padding()
                    }
                    .padding()
                }
            }
        }
    }
    fileprivate func PasswordBubble(fieldName: String, binding: Binding<String>) -> some View {
        return HStack{
            Image(systemName: "key")
                .foregroundColor(.white)
                .font(.system(size: 27))
                .padding(.leading, 15)
                .padding(.trailing, 6)
            SecureField(fieldName, text: binding)
                .autocapitalization(.none)
                .padding()
        }
        .frame(height: 45)
        .background(VisualEffectBlurView.init(blurStyle: .systemUltraThinMaterial))
        .background(Color.blue.opacity(0.7))
        .cornerRadius(20)
        .shadow(color: .white, x: -0.5, y: -0.5, blur: 2)
        .shadow(color: .white, x: 0.5, y: 0.5, blur: 2)
    }
    
    fileprivate func EMailBubble() -> some View {
        return HStack{
            Image(systemName: "person.circle")
                .padding(.leading, 8)
                .foregroundColor(.white)
                .font(.system(size: 32))
            TextField("E-Mail", text: $email)
                .autocapitalization(.none)
                .padding()
        }
        .ignoresSafeArea()
        .frame(height: 45)
        .background(VisualEffectBlurView.init(blurStyle: .systemUltraThinMaterial))
        .background(Color.blue.opacity(0.7))
        .cornerRadius(20)
        .shadow(color: .white, x: -0.5, y: -0.5, blur: 2)
        .shadow(color: .white, x: 0.5, y: 0.5, blur: 2)
    }
    
    func SingUp() {
        Auth.auth().createUser(withEmail: email, password: password) { (result, error) in
            if error != nil {
                print(error?.localizedDescription ?? "")
            } else {
                print("success")
            }
        }
    }
}
struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
