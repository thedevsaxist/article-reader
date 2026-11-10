//
//  AuthTextField.swift
//  Article Reader
//
//  Created by Chidiebube Iroezindu on 09/11/2026.
//

import SwiftUI

struct AuthTextField: View {
    @Binding var binding: String
    var label: String
    
    var body: some View {
        VStack (alignment: .leading) {
            Text(label)
                .font(.custom("Geist", size: 13))
                .fontWeight(.semibold)
                .foregroundStyle(Color("secondary text color"))
            
            TextField("", text: $binding)
                .padding(16)
                .background(.black.opacity(0.35), in: RoundedRectangle(cornerRadius: 12))
                .overlay {
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(.white.opacity(0.12), lineWidth: 1)
                }
                .keyboardType(.emailAddress)
                .textInputAutocapitalization(.never)
                .autocorrectionDisabled()
        }
    }
}
