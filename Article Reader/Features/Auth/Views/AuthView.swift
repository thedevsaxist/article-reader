//
//  AuthView.swift
//  Article Reader
//
//  Created by Chidiebube Iroezindu on 10/11/2026.
//

import SwiftUI

/// Container that owns the selected auth mode and shows the matching screen.
struct AuthView: View {
    @State private var mode: AuthMode = .login
    
    var body: some View {
        switch mode {
        case .login:
            LoginView(mode: $mode)
        case .signUp:
            SignUpView(mode: $mode)
        }
    }
}

#Preview {
    AuthView()
}
