//
//  AccountEditView.swift
//  TB1
//
//  Created by Eryk Chrustek on 17/03/2020.
//  Copyright © 2020 Eryk Chrustek. All rights reserved.
//

import SwiftUI

struct AccountEditView : View {
    
    @Binding var showAccountEdit : Bool
    
    @State var userFirstName : String = UFN
    @State var userLastName : String = ULN
    @State var userEmail : String = UEM
    @State var userPhone : String = UPH
    
    @State var newuserfirstname = "\(UFN)"
    @State var newuserlastname = "\(ULN)"
    @State var newuseremail = "\(UEM)"
    @State var newuserphone = "\(UPH)"
    
    @Environment(\.presentationMode) var presentationMode:Binding<PresentationMode>

    var body : some View {
        ZStack {
            VStack {

                Text("Imię")
                NewUserFirstName(newuserfirstname: $newuserfirstname)
                Text("Nazwisko")
                NewUserLastName(newuserlastname: $newuserlastname)
                Text("E-mail")
                NewUserEmail(newuseremail: $newuseremail)
                Text("Telefon")
                NewUserPhone(newuserphone: $newuserphone)
                
                
                Button(action: {
                   self.presentationMode.wrappedValue.dismiss()
                    self.presentationMode.wrappedValue.dismiss()
                }) {
                    
                    Text("Zapisz zmiany")
                        .frame(width: UIScreen.main.bounds.width - 150)
                        .padding(.vertical)
                        .foregroundColor(.white)
                    
                }.background(Color("Orange"))
                .cornerRadius(15)
                .padding(.top, 25)
            }.edgesIgnoringSafeArea(.top).background(Image("bg2").background(Color("Gray")).edgesIgnoringSafeArea(.all).padding(.bottom,-1350))
            
        }.navigationBarTitle("")
        .navigationBarHidden(true)
    }
}


struct NewUserFirstName : View {
    
    @Binding var newuserfirstname : String
    
    var body : some View {
        VStack(spacing: 20) {

        VStack {
            
        TextField("\(UFN)", text: $newuserfirstname).multilineTextAlignment(.center)
            }
                Divider()
            }
    }
}

struct NewUserLastName : View {
    
    @Binding var newuserlastname : String
    
    var body : some View {
        VStack(spacing: 20) {

        VStack {
            
        TextField("\(ULN)", text: $newuserlastname).multilineTextAlignment(.center)
            }
                Divider()
            }
    }
}

struct NewUserEmail : View {
    
    @Binding var newuseremail : String
    
    var body : some View {
        VStack(spacing: 20) {

        VStack {
            
        TextField("\(UEM)", text: $newuseremail).multilineTextAlignment(.center)
            }
                Divider()
            }
    }
}

struct NewUserPhone : View {
    
    @Binding var newuserphone : String
    
    var body : some View {
        VStack(spacing: 20) {

        VStack {
            
        TextField("\(UPH)", text: $newuserphone).multilineTextAlignment(.center)
            }
                Divider()
            }
    }
}
