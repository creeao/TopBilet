//
//  AccountView.swift
//  TB1
//
//  Created by Eryk Chrustek on 17/03/2020.
//  Copyright © 2020 Eryk Chrustek. All rights reserved.
//

import SwiftUI

let UFN = "Krzysztof"
let ULN = "Kolumb"
let UEM = "kkrzysztof@gmail.com"
let UPH = "213 323 341"

struct AccountView : View {
    
    @Binding var showAccountSettings : Bool
    @State var showAccountEdit = false
    
    @State var userFirstName : String = UFN
    @State var userLastName : String = ULN
    @State var userEmail : String = UEM
    @State var userPhone : String = UPH
    
    var body : some View {
        ZStack {
            NavigationLink(destination: AccountEditView(showAccountEdit: self.$showAccountEdit), isActive: self.$showAccountEdit) {
                Text("")
            }
            
            VStack {
                
                HStack {
                    
                    Button(action: {
                        self.showAccountSettings.toggle()
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
                    
                }.frame(height: 70)
                    .offset(y: 30)
                    .padding(.bottom, 40)
                
                Spacer()
                
                VStack {
                    VStack {
                        Image("ast")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                        
                    }.frame(width: 150, height: 150)
                        .cornerRadius(150)
                        .padding(.top, 40)
                        .padding(.bottom, 10)
                    
                    Text("\(userFirstName) \(userLastName)").font(.title).fontWeight(.bold)
                    
                    Text("E-mail").padding(.top, 10)
                    Text("\(userEmail)").fontWeight(.semibold).padding(.top, 3)
                    
                    Text("Numer telefonu").padding(.top, 10)
                    Text("\(userPhone)").fontWeight(.semibold).padding(.top, 3)
                    
                    Spacer()
                    
                    Button(action: {
                        self.showAccountEdit.toggle()
                        
                    }) {
                        
                        Text("Edytuj dane")
                            .frame(width: UIScreen.main.bounds.width - 150)
                            .padding(.vertical)
                            .foregroundColor(.white)
                        
                    }.background(Color("Orange"))
                        .cornerRadius(15)
                        .padding(.bottom, 25)
                    
                }.frame(width: UIScreen.main.bounds.width - 30)
                    .background(Color.white.opacity(0.8))
                    .cornerRadius(35)
                    .shadow(radius: 0.3)
            }.edgesIgnoringSafeArea(.top).background(Image("background").background(Color("Gray")).edgesIgnoringSafeArea(.all).position(y: 70))
            
        }.navigationBarTitle("")
            .navigationBarHidden(true)
    }
}

