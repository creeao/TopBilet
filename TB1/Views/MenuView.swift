//
//  MenuView.swift
//  TB1
//
//  Created by Eryk Chrustek on 16/03/2020.
//  Copyright © 2020 Eryk Chrustek. All rights reserved.
//
import SwiftUI

struct Menu : View {

    @Environment(\.presentationMode) var presentationMode:Binding<PresentationMode>
    
    @State private var showHowWork = false
    @State private var showMyTickets = false
    @State private var showAccountSettings = false
    
    var body : some View {

        NavigationView {
            
            ZStack {
                
                NavigationLink(destination: HowWorkView(showHowWork: self.$showHowWork), isActive: self.$showHowWork) {
                Text("")
                }
                
                NavigationLink(destination: MyTicketsView(showMyTickets: self.$showMyTickets), isActive: self.$showMyTickets) {
                Text("")
                }
                
                NavigationLink(destination: AccountView(showAccountSettings: self.$showAccountSettings), isActive: self.$showAccountSettings) {
                Text("")
                }
                
                 VStack {
                     
                     VStack {

                         Image("logow")
                                .resizable()
                                .frame(width: 200, height: 70)

                         }.offset(y: 70)

                     ScrollView {
                        
                         Button(action: {
                            self.showHowWork.toggle()
                                }) {
                         Text("Jak to działa?")
                            .font(.title)
                            .foregroundColor(Color.black)
                            .fontWeight(.bold)
                            .padding(.top, 180)
                        }
                                    
                        Button(action: {
                           self.showMyTickets.toggle()
                                }) {
                         Text("Moje bilety")
                            .font(.title)
                            .foregroundColor(Color.black)
                            .fontWeight(.bold)
                            .padding(.top, 50)
                        }
                        
                        Button(action: {
                            self.showAccountSettings.toggle()
                                }) {
                         Text("Konto")
                            .font(.title)
                            .foregroundColor(Color.black)
                            .fontWeight(.bold)
                            .padding(.top, 50)
                        }
                        
                         Button(action: {
                            self.presentationMode.wrappedValue.dismiss()
                            
                            
                                }) {
                            Text("Wyloguj")
                                .font(.title)
                                .foregroundColor(Color.black)
                                .fontWeight(.bold)
                                .padding(.top, 50)
                                        
                         }
                     
                     }.padding(.top, 5)
                    
                     Spacer(minLength: 0)
                     
                 }.edgesIgnoringSafeArea(.top).background(Image("background").edgesIgnoringSafeArea(.all).position(y: 0))
                 
             }.navigationBarTitle("")
             .navigationBarHidden(true)
                
                
        }
        
    }
}


