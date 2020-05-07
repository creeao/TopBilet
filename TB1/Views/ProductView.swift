//
//  ProductView.swift
//  TB1
//
//  Created by Eryk Chrustek on 15/03/2020.
//  Copyright © 2020 Eryk Chrustek. All rights reserved.
//

import SwiftUI

struct Product : View {
    var body : some View {

        VStack {
            VStack {
                Image("ast")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .padding(.top,-40)
                
            }
            .frame(width:300, height: 150)
            
            VStack {
                HStack {
                    Text("Restauracja")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                        .foregroundColor(Color.black)
                        .padding(.top, -15)
                        .padding(.leading, 10)
                    Spacer()
                }
                HStack {
                    Text("Opis tej wlasnie restauracji")
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.leading)
                        .padding(.top, 0)
                        .padding(.leading,10)
                    
                    Spacer()
                }
            }.frame(width:300, height: 60)
                .background(Color.white)
            
        }.frame(width: 300, height: 220)
            .background(Color.white)
            .cornerRadius(10)
            .padding(5)
            .padding(.trailing, 5)
            .shadow(radius: 1)
        
        
    }
    
}

