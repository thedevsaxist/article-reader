//
//  LoginView.swift
//  Article Reader
//
//  Created by Chidiebube Iroezindu on 09/11/2026.
//

import SwiftUI

struct LoginView: View {
    @Binding var mode: AuthMode
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        
        ZStack (alignment: .top) {
            // brick box
            Text("R")
                .font(.custom("NewsReader", size: 72))
                .padding([.leading, .bottom], 16)
                .frame(maxWidth: 150, maxHeight: 150, alignment: .bottomLeading)
                .background(Color("Brick"), ignoresSafeAreaEdges: [])
                .clipShape(RoundedRectangle(cornerRadius: 44))
                .rotationEffect(.degrees(-9))
                .offset(x: -80, y: 30)
            
            // teal box
            Text("a")
                .font(.custom("NewsReader", size: 64))
                .padding([.leading, .bottom], 16)
                .frame(maxWidth: 132, maxHeight: 132, alignment: .bottomLeading)
                .background(Color("Teal"), ignoresSafeAreaEdges: [])
                .clipShape(RoundedRectangle(cornerRadius: 40))
                .rotationEffect(.degrees(7))
                .offset(x: 30, y: 0)
            
            // violet box
            Text("d")
                .font(.custom("NewsReader", size: 64))
                .padding([.leading, .bottom], 16)
                .frame(maxWidth: 128, maxHeight: 128, alignment: .bottomLeading)
                .background(Color("Violet"), ignoresSafeAreaEdges: [])
                .clipShape(RoundedRectangle(cornerRadius: 40))
                .rotationEffect(.degrees(-4))
                .offset(x: 120, y: 90)
            
            // orange box
            Text("")
                .font(.custom("NewsReader", size: 64))
                .padding([.leading, .bottom], 16)
                .frame(maxWidth: 120, maxHeight: 120, alignment: .bottomLeading)
                .background(Color("primary color"), ignoresSafeAreaEdges: [])
                .clipShape(RoundedRectangle(cornerRadius: 38))
                .rotationEffect(.degrees(11))
                .offset(x: -10, y: 150)
            
            VStack (alignment: .leading) {
                Spacer()
                
                Text("Read it.")
                    .font(.custom("Geist", size: 34, relativeTo: .title))
                    .fontWeight(.heavy)
                
                Text("Or have it read to you.")
                    .font(.custom("Geist", size: 34, relativeTo: .title))
                    .fontWeight(.heavy)
                    .padding(.bottom, 2)
                
                Text("Pick up where you left off, in text or in audio.")
                    .font(.custom("Geist", size: 16, relativeTo: .body))
                    .lineSpacing(1.45)
                    .padding(.bottom, 20)
                    .foregroundStyle(Color("secondary text color"))
                
                VStack (alignment: .leading) {
                    AuthModeToggle(selection: $mode)
                        .padding(.bottom, 14)
                    
                    AuthTextField(binding: $email, label: "Email")
                    AuthTextField(binding: $password, label: "Password")
                        .padding(.top, 4)
                        .padding(.bottom, 18)
                    
                    PrimaryButton(label: "Log in", action: {
                        //TODO: implement the login feature
                    })
                    
                    FooterText()
                }
                .padding(20)
                .background(.white.opacity(0.14))
                .clipShape(RoundedRectangle(cornerRadius: 24))
                .overlay{
                    RoundedRectangle(cornerRadius: 24)
                        .stroke(.white.opacity(0.14), lineWidth: 1)
                }
                
            }
            .padding([.horizontal, .top], 24)
        }
    }
}

#Preview {
    @Previewable @State var mode: AuthMode = .login
    LoginView(mode: $mode)
}
