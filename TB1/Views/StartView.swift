//
//  StartView.swift
//  TB1
//
//  Created by Eryk Chrustek on 15/03/2020.
//  Copyright © 2020 Eryk Chrustek. All rights reserved.
//

import SwiftUI

struct StartView : View {
    
    @Binding var showStartView : Bool
    
    @State private var showMenuView = false
    
    var body : some View {
        
        ZStack {
            
            VStack {
                
                VStack {
                    
                    HStack {
                        
                        Image("logow")
                            .resizable()
                            .frame(width: 140, height: 50)
                            .padding(.leading, 30)
                        
                        Spacer()
                        
                        Button(action: {
                            self.showMenuView.toggle()
                        }) {
                            Image(systemName:"text.alignright").resizable().frame(width: 25, height: 23).foregroundColor(.white) .font(Font.title.weight(.bold)).padding(.trailing,33).padding(.top,-7).sheet(isPresented: $showMenuView){ Menu()
                            }
                        }
                        
                        
                    }.offset(y: 60)
                        .padding(.bottom, 70)
                        .cornerRadius(15)
                    
                }
                
                ScrollView {
                    
                    VStack {
                        
                        VStack {
                            
                            VStack {
                                
                                Spacer()
                                
                                HStack {
                                    
                                    Text("3 NOWE OFERTY")
                                    Spacer()
                                    
                                }
                                
                                HStack {
                                    
                                    Text("Restauracje i puby").font(.title).fontWeight(.bold)
                                    Spacer()
                                }
                                
                            }.padding(.top, 10)
                                .padding(.leading, 30)
                            
                            ScrollView(.horizontal) {
                                
                                HStack {
                                    Spacer()
                                    
                                    Product()
                                    Product()
                                    Product()
                                    
                                }
                            }.frame( height: 190, alignment: .leading)
                                .padding(.top, 10)
                                .padding(.leading, 0)
                            
                        }
                        
                        
                        VStack {
                            VStack {
                                HStack {
                                    
                                    Text("2 NOWE OFERTY")
                                    Spacer()
                                }
                                HStack {
                                    
                                    Text("Kino i teatr").font(.title).fontWeight(.bold)
                                    Spacer()
                                }
                                
                            }.padding(.top, 30)
                                .padding(.leading, 30)
                            
                            ScrollView(.horizontal) {
                                
                                HStack {
                                    Spacer()
                                    Product()
                                    Product()
                                    Product()
                                    
                                }
                            }.frame( height: 190, alignment: .leading)
                                .padding(.top, 10)
                                .padding(.leading, 0)
                            
                        }
                        
                        VStack {
                            VStack {
                                HStack {
                                    
                                    Text("2 NOWE OFERTY")
                                    Spacer()
                                }
                                HStack {
                                    
                                    Text("Zdrowie i uroda").font(.title).fontWeight(.bold)
                                    Spacer()
                                }
                                
                            }.padding(.top, 30)
                                .padding(.leading, 30)
                            
                            ScrollView(.horizontal) {
                                
                                HStack {
                                    Spacer()
                                    Product()
                                    Product()
                                    Product()
                                    
                                }
                            }.frame( height: 190, alignment: .leading)
                                .padding(.top, 10)
                                .padding(.leading, 0)
                            
                        }
                        
                        VStack {
                            VStack {
                                HStack {
                                    
                                    Text("2 NOWE OFERTY")
                                    Spacer()
                                }
                                HStack {
                                    
                                    Text("Rozrywka i relaks").font(.title).fontWeight(.bold)
                                    Spacer()
                                }
                                
                            }.padding(.top, 30)
                                .padding(.leading, 30)
                            
                            ScrollView(.horizontal) {
                                
                                HStack {
                                    Spacer()
                                    Product()
                                    Product()
                                    Product()
                                    
                                }
                            }.frame( height: 190, alignment: .leading)
                                .padding(.top, 10)
                                .padding(.leading, 0)
                            
                        }
                        
                        
                        VStack {
                            VStack {
                                HStack {
                                    
                                    Text("2 NOWE OFERTY")
                                    Spacer()
                                }
                                HStack {
                                    
                                    Text("Inne usługi").font(.title).fontWeight(.bold)
                                    Spacer()
                                }
                                
                            }.padding(.top, 30)
                                .padding(.leading, 30)
                            
                            ScrollView(.horizontal) {
                                
                                HStack {
                                    Spacer()
                                    Product()
                                    Product()
                                    Product()
                                    
                                }
                            }.frame( height: 190, alignment: .leading)
                                .padding(.top, 10)
                                .padding(.leading, 0)
                                .padding(.bottom, 160)
                            
                        }
                    }
                    
                    
                }.padding(.top, 0)
                    
                    .background(Color("Gray"))
                    .cornerRadius(35)
                    .padding(.bottom, -120)
                    .shadow(radius: 0.3)
                
                
                
            }.edgesIgnoringSafeArea(.top)
                .background(Image("background").edgesIgnoringSafeArea(.all).position(y: 20))
            
            
            
        }
        .navigationBarTitle("")
        .navigationBarHidden(true)
        
    }
}

