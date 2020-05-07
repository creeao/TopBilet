//
//  MyTicketsView.swift
//  TB1
//
//  Created by Eryk Chrustek on 17/03/2020.
//  Copyright © 2020 Eryk Chrustek. All rights reserved.
//

import SwiftUI

struct MyTicketsView : View {
    
    @Binding var showMyTickets : Bool
    
    var body : some View {
        ZStack {
            
            VStack {
                
                HStack {
                    
                    Button(action: {
                        self.showMyTickets.toggle()
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
                    
                }.offset(y: 30)
                    .padding(.bottom, 40)
                
                VStack {
                    
                    ScrollView {
                        Spacer(minLength: 25)
                        
                        Ticket()
                        Ticket()
                        Ticket()
                        Ticket()
                        
                    }
                }.frame(width: UIScreen.main.bounds.width - 30)
                    .background(Color.white.opacity(0.8))
                    .cornerRadius(35)
                    .shadow(radius: 0.3)
                
            }.edgesIgnoringSafeArea(.top).background(Image("background").edgesIgnoringSafeArea(.all).position(y: 70))
                .background(Color("Gray")).edgesIgnoringSafeArea(.all)
            
        }.navigationBarTitle("")
            .navigationBarHidden(true)
    }
}
