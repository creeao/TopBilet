//
//  LoginSocialMedia.swift
//  TB1
//
//  Created by Eryk Chrustek on 15/03/2020.
//  Copyright © 2020 Eryk Chrustek. All rights reserved.
//

import SwiftUI

struct LoginSocialMedia : View {
    
    var body : some View {
        
        HStack(spacing: 20) {
            
             Button(action: {
                                   
                               }) {
                                   Image("facebook") .renderingMode(.original).resizable().frame(width: 27, height: 27)
                                   Text("Facebook")
                                       .padding(.vertical)
                                       .foregroundColor(.black)
                                   
                               }.padding(.horizontal)
                               .overlay(RoundedRectangle(cornerRadius: 5)
                               .stroke(Color("Gray"), lineWidth: 1))
            
                               Button(action: {
                                   
                               }) {
                                   Image("google") .renderingMode(.original).resizable().frame(width: 25, height: 25)
                                   Text("Google")
                                       .padding(.vertical)
                                       .foregroundColor(.black)
                                       
                                   
                               }.padding(.horizontal)
                               .overlay(RoundedRectangle(cornerRadius: 5)
                               .stroke(Color("Gray"), lineWidth: 1))
        }
    }
}
