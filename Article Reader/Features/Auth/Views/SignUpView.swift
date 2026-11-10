//
//  SignUpView.swift
//  Article Reader
//
//  Created by Chidiebube Iroezindu on 10/11/2026.
//

import SwiftUI

struct SignUpView: View {
    @Binding var mode: AuthMode
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        
        ZStack (alignment: .top) {
            // brick box
            Text("")
                .font(.custom("NewsReader", size: 72))
                .padding([.leading, .bottom], 16)
                .frame(maxWidth: 132, maxHeight: 132, alignment: .bottomLeading)
                .background(Color("Olive"), ignoresSafeAreaEdges: [])
                .clipShape(RoundedRectangle(cornerRadius: 40))
                .rotationEffect(.degrees(-9))
                .offset(x: -70, y: 30)
            
            // violet box
            Text("W")
                .font(.custom("NewsReader", size: 64))
                .padding([.leading, .bottom], 16)
                .frame(maxWidth: 150, maxHeight: 150, alignment: .bottomLeading)
                .background(Color("Violet"), ignoresSafeAreaEdges: [])
                .clipShape(RoundedRectangle(cornerRadius: 44))
                .rotationEffect(.degrees(8))
                .offset(x: 80, y: 0)
            
            // orange box
            Text("")
                .font(.custom("NewsReader", size: 64))
                .padding([.leading, .bottom], 16)
                .frame(maxWidth: 112, maxHeight: 112, alignment: .bottomLeading)
                .background(Color("primary color"), ignoresSafeAreaEdges: [])
                .clipShape(RoundedRectangle(cornerRadius: 36))
                .rotationEffect(.degrees(4))
                .offset(x: 10, y: 110)
            
            VStack (alignment: .leading) {
                Spacer()
                
                Text("Create your account")
                    .font(.custom("Geist", size: 34, relativeTo: .title))
                    .fontWeight(.heavy)
                    .padding(.bottom, 2)
                
                Text("Anyone with an account can read, listen and publish.")
                    .font(.custom("Geist", size: 16, relativeTo: .body))
                    .lineSpacing(1.45)
                    .padding(.bottom, 20)
                    .foregroundStyle(Color("secondary text color"))
                
                VStack (alignment: .leading) {
                    AuthModeToggle(selection: $mode)
                        .padding(.bottom, 14)
                    
                    AuthTextField(binding: $email, label: "Display name")
                    AuthTextField(binding: $email, label: "Email")
                    AuthTextField(binding: $password, label: "Password")
                        .padding(.top, 4)
                        .padding(.bottom, 18)
                    
                    PrimaryButton(label: "Create account", action: {
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
    @Previewable @State var mode: AuthMode = .signUp
    SignUpView(mode: $mode)
}
