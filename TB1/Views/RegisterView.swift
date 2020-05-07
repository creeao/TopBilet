//
//  RegisterView.swift
//  TB1
//
//  Created by Eryk Chrustek on 15/03/2020.
//  Copyright © 2020 Eryk Chrustek. All rights reserved.
//
import SwiftUI

struct Register : View {
    
    @State var registerusername = ""
    @State var registerpassword = ""
    @State var registerrepassword = ""

    @State var agree = false
    @Binding var show : Bool
    
    var body : some View {
        
        ZStack(alignment: .topLeading) {
            
            VStack {
                
                 HStack {
         
                        Button(action: {
                                    self.show.toggle()
                                    }) {
                                 Image(systemName:"arrow.left")
                                    .resizable()
                                    .frame(width: 25, height: 23)
                                    .foregroundColor(.white)
                                    .font(Font.title.weight(.bold))
                                    .padding(.leading,33)
                                    .padding(.top,-7)
                        }
                        Spacer()
                        Image("logow")
                        .resizable()
                        .frame(width: 140, height: 50)
                        .padding(.trailing, 30)
                     
                }.offset(y: 50)
                .padding(.bottom, 40)
 
                
                VStack(spacing: 25) {
               Text("Rejestracja").font(.title).fontWeight(.bold).padding(.top,20)
                    
                        RegisterUserNameTextField(registerusername: $registerusername)
                        RegisterPasswordTextField(registerpassword: $registerpassword)
                        RegisterRePasswordTextField(registerrepassword: $registerrepassword)
                    
                        
                    
                    HStack {
                        
                        Button(action: {
                            
                            self.agree.toggle()
                            
                        }) {
                            
                            ZStack {
                                
                               Circle() .fill(Color.black.opacity(0.2)).frame(width: 20, height: 20)
                                
                                if self.agree{
                                   
                                    Image(systemName: "checkmark.circle.fill").resizable().frame(width: 20, height: 20)
                                       .foregroundColor(Color.green).background(Color.white)
                                }
                            }
                            
                        }
                        
                        Text("Przeczytałem i akceptuję regulamin").font(.caption)
                           .foregroundColor(Color.black.opacity(0.6))
                        
                       
                       

                    }.multilineTextAlignment(.center)
                    
                    Button(action: {
                        
                    }) {
                        
                        Text("Zarejestruj")
                            .frame(width: UIScreen.main.bounds.width - 100)
                            .padding(.vertical)
                            .foregroundColor(.white)
                        
                    }.background(Color("Orange"))
                    .cornerRadius(15)
                    
                    
                    Text("lub możesz to zrobić poprzez")
                    
                    LoginSocialMedia()
                    
                }.padding()
                .background(Color.white)
                .cornerRadius(35)
                .padding()
                .shadow(radius: 0.5)
                
                
                Spacer(minLength: 0)
                
            }.edgesIgnoringSafeArea(.top)
            .background(Image("background").background(Color("Gray")).edgesIgnoringSafeArea(.all).position(y: 30))
            
           
            
            
        }.navigationBarTitle("")
        .navigationBarHidden(true)
    }
}

struct RegisterUserNameTextField : View {
    
    @Binding var registerusername : String
    
    var body : some View {
        VStack(spacing: 20) {

        VStack {
            
        TextField("E-mail", text: $registerusername).multilineTextAlignment(.center)
            }
                Divider()
            }
    }
}

struct RegisterPasswordTextField : View {
    
    @Binding var registerpassword: String
    
    var body : some View {
        VStack(spacing: 20) {

        VStack {
            
        SecureField("Hasło", text: $registerpassword).multilineTextAlignment(.center)
            }
                Divider()
            }
    }
}

struct RegisterRePasswordTextField : View {
    
    @Binding var registerrepassword: String
    
    var body : some View {
        VStack(spacing: 20) {

        VStack {
            
        SecureField("Powtórz hasło", text: $registerrepassword).multilineTextAlignment(.center)
            }
                Divider()
            }
    }
}
