//
//  TicketView.swift
//  TB1
//
//  Created by Eryk Chrustek on 18/03/2020.
//  Copyright © 2020 Eryk Chrustek. All rights reserved.
//

import SwiftUI

struct Ticket : View {
    
    @State var NewCode = "12XA0S"
    @State var OldCode = "Wykorzystany"
    
    var body : some View {
        
        VStack {
            
            VStack {
                
                Text(NewCode).frame(width:300).font(.largeTitle).foregroundColor(Color.white)
                
                Text("Nazwa restauracji")
                    .fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(Color.white)
                
                Text("18.03.2020 17:47")
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.leading)
                
            }.background(Image("ast").resizable().aspectRatio(contentMode: .fill).opacity(0.5))
            
        }.frame(width: 300, height: 150)
        .background(Color.black)
        .cornerRadius(15)
        .padding(.top, 15)
        .shadow(radius: 1)
    }

}

