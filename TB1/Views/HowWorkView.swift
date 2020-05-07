//
//  HowWorkView.swift
//  TB1
//
//  Created by Eryk Chrustek on 17/03/2020.
//  Copyright © 2020 Eryk Chrustek. All rights reserved.
//

import SwiftUI

struct HowWorkView : View {
    
    @Binding var showHowWork : Bool
    
    var body : some View {
        ZStack {
            VStack {
                HStack {
                    
                    Button(action: {
                        self.showHowWork.toggle()
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
                ScrollView {
                    Spacer(minLength: 10)
                    
                    VStack {
                        Text("1").font(.largeTitle).frame(width: 70, height: 70).background(Color.black).foregroundColor(Color.white).cornerRadius(150)
                        
                        Text("Wybierz bilet z 50% rabatem i zapłać online opłatę serwisową.").padding(.top).multilineTextAlignment(.center).padding(.leading, 40).padding(.trailing, 40)
                    }.frame(width: 370)
                    
                    VStack {
                        Text("2").font(.largeTitle).frame(width: 70, height: 70).background(Color.black).foregroundColor(Color.white).cornerRadius(150)
                        
                        Text("Bilet w wersji elektronicznej zostanie przypisany do Twojego konta w sklepie Top Bilet.").padding(.top).multilineTextAlignment(.center).padding(.leading, 40).padding(.trailing, 40)
                    }.frame(width: 370).padding()
                    
                    VStack {
                        Text("3").font(.largeTitle).frame(width: 70, height: 70).background(Color.black).foregroundColor(Color.white).cornerRadius(150)
                        
                        Text("Aby skorzystać z biletu przejdź do zakładki i wybierz zakupione wejściówki.").padding(.top).multilineTextAlignment(.center).padding(.leading, 40).padding(.trailing, 40)
                    }.frame(width: 370).padding(.horizontal, 20)
                    VStack {
                        Text("4").font(.largeTitle).frame(width: 70, height: 70).background(Color.black).foregroundColor(Color.white).cornerRadius(150)
                        
                        Text("Wciśnij przycisk użyj i pozwól obsłudze wpisać 4 cyfrowy kod na swoim telefonie w celu zatwierdzenia biletu.")
                            .padding(.top).multilineTextAlignment(.center).padding(.leading, 40).padding(.trailing, 40)
                    }.frame(width: 370).padding()
                    
                    
                }
                .frame(width: 410)
                .background(Color.white.opacity(0.8))
                .cornerRadius(35)
                .shadow(radius: 0.3)
            }.edgesIgnoringSafeArea(.top).background(Image("background").edgesIgnoringSafeArea(.all).position(y: 70))
                .background(Color("Gray")).edgesIgnoringSafeArea(.all)
            
        }.navigationBarTitle("")
            .navigationBarHidden(true)
    }
}
