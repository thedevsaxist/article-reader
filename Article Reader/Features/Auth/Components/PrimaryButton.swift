//
//  PrimaryButton.swift
//  Article Reader
//
//  Created by Chidiebube Iroezindu on 10/11/2026.
//

import SwiftUI

struct PrimaryButton: View {
    var label: String
    var action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            Text(label)
                .font(.custom("Geist", size: 17))
                .fontWeight(.bold)
        }
        .padding()
        .frame(maxWidth: .infinity)
        .buttonStyle(.plain)
        .foregroundStyle(.black)
        .background(Color("primary color"))
        .cornerRadius(18)
        .accessibilityLabel("Log in")
        .padding(.bottom, 20)    }
}
