//
//  ContentView.swift
//  TB1
//
//  Created by Eryk Chrustek on 13/03/2020.
//  Copyright © 2020 Eryk Chrustek. All rights reserved.
//

import SwiftUI

let myEmail = ""
let myPassword = ""

 struct ContentView: View {
    
     var body: some View {
         
         NavigationView {

             Home()
             .navigationBarTitle("")
             .navigationBarHidden(true)
         }
     }
 }
 
 struct ContentView_Previews: PreviewProvider {
    
     static var previews: some View {
         ContentView()
     }
 }
 
 struct Home : View {

     @State var username = ""
     @State var password = ""
    
     @State var show = false
     @State var showStartView = false
    
    @State var authenticationFail : Bool = false
    @State var authenticationSuccess : Bool = false
     
     var body : some View{
         
         ZStack {
             
            NavigationLink(destination: Register(show: self.$show), isActive: self.$show) { Text("") }
            NavigationLink(destination: StartView(showStartView: self.$showStartView), isActive: self.$showStartView) { Text("") }
            
             VStack {
                 
                 VStack {
                     
                    Image("logow")
                        .resizable()
                        .frame(width: 200, height: 70)
                     
                 }.offset(y: 75)
                 .padding(.bottom, 70)
                 
                 VStack(spacing: 25){
                     
                    Text("Logowanie")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.top, 20)
                     
                    UserNameTextField(username: $username)
                    PasswordTextField(password: $password)
                     
                     HStack {
                        
                         Button(action: {
                             
                         }) {
                             
                             Text("Zapomniałeś hasła?")
                                .foregroundColor(Color.black.opacity(0.5))
                         }
                     }.padding(.bottom,10)
                     
                     Button(action: {
                        
                        if self.username == myEmail && self.password == myPassword {
                            self.authenticationSuccess = true
                            self.showStartView.toggle()
                        } else {
                            self.authenticationFail = true
                        }
                         
                     }) {
                         
                         Text("Zaloguj")
                             .frame(width: UIScreen.main.bounds.width - 150)
                             .padding(.vertical)
                             .foregroundColor(.white)
                         
                     }.background(Color("Orange"))
                     .cornerRadius(15)
                    
                    Text("lub zaloguj się przy użyciu")
                     
                     LoginSocialMedia()
                    
                    HStack{
                        
                        Text("Nie masz konta?")
                           .foregroundColor(Color("Black"))
                        
                        Button(action: {
                            
                            self.show.toggle()
                            
                        }) {
                            
                            Text("Zarejestruj się") .foregroundColor(Color("Black"))
                                .fontWeight(.bold)
                        }
                        
                    }.padding(.top,5)

                 }.padding()
                 .background(Color.white)
                 .cornerRadius(35)
                 .padding()
                 .shadow(radius: 0.5)

                 Spacer(minLength: 0)
             }.edgesIgnoringSafeArea(.top)
             .background(Image("background").background(Color("Gray")).edgesIgnoringSafeArea(.all).position(y: 50))
            
         }
     }
 }

struct UserNameTextField : View {
    
    @Binding var username : String
    
    var body : some View {
        VStack(spacing: 20) {

        VStack {
            
        TextField("E-mail", text: $username).multilineTextAlignment(.center)
            }
                Divider()
            }
    }
}

struct PasswordTextField : View {
    
    @Binding var password: String
    
    var body : some View {
        VStack(spacing: 20) {

        VStack {
            
        SecureField("Hasło", text: $password).multilineTextAlignment(.center)
            }
                Divider()
            }
    }
}
 
 struct CustomTF : View {
     
     @Binding var value : String
     var isemail = false
     var reenter = false
     
     var body : some View{
         
         VStack(spacing: 20) {

             VStack {
                 
                 if self.isemail {
                     
                    TextField("E-mail", text: self.$value).multilineTextAlignment(.center)
                 }
                 else {
                     
                    SecureField("Hasło", text: self.$value).multilineTextAlignment(.center)
                 }
             }
             Divider()
         }
     }
 }


