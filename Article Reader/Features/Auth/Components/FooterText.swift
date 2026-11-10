//
//  FooterText.swift
//  Article Reader
//
//  Created by Chidiebube Iroezindu on 10/11/2026.
//

import SwiftUI

struct FooterText: View {
    var body: some View {
        Text("By creating an account, you agree to our  \(Text("Terms of Service").foregroundStyle(Color("primary color")).fontWeight(.bold)) \(Text(" and ")) \(Text("Privacy Policy").foregroundStyle(Color("primary color")).fontWeight(.bold))")
            .font(.custom("Geist", size: 14, relativeTo: .caption))
            .foregroundStyle(Color("secondary text color"))
            .multilineTextAlignment(.center)
            .fixedSize(horizontal: false, vertical: true)
            .frame(maxWidth: .infinity)
    }
}

#Preview {
    FooterText()
}
