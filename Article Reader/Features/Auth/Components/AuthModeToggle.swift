//
//  AuthModeToggle.swift
//  Article Reader
//
//  Created by Chidiebube Iroezindu on 10/11/2026.
//

import SwiftUI

/// The two screens the auth flow can show.
enum AuthMode {
    case login
    case signUp
}

/// Pill-shaped segmented toggle that switches between the Log in and Sign up screens.
struct AuthModeToggle: View {
    @Binding var selection: AuthMode
    
    // Lets the white "selected" pill slide between the two options.
    @Namespace private var pillNamespace
    
    var body: some View {
        HStack {
            option("Log in", mode: .login)
            
            Spacer()
            
            option("Sign up", mode: .signUp)
        }
        .padding(5)
        .frame(maxWidth: .infinity)
        .background(.white.opacity(0.08))
        .clipShape(RoundedRectangle(cornerRadius: 999))
        .overlay{
            RoundedRectangle(cornerRadius: 999)
                .stroke(.white.opacity(0.14), lineWidth: 1)
        }
    }
    
    private func option(_ label: String, mode: AuthMode) -> some View {
        let isSelected = selection == mode
        
        return Button {
            withAnimation(.snappy) {
                selection = mode
            }
        } label: {
            Text(label)
                .font(.custom("Geist", size: 15))
                .fontWeight(.semibold)
                .foregroundStyle(isSelected ? Color.black : Color("secondary text color"))
                .frame(maxWidth: 151)
                .padding(.vertical, 10)
                .background {
                    if isSelected {
                        RoundedRectangle(cornerRadius: 999)
                            .fill(.white)
                            .matchedGeometryEffect(id: "selectedPill", in: pillNamespace)
                    }
                }
                .contentShape(RoundedRectangle(cornerRadius: 999))
        }
        .buttonStyle(.plain)
        .accessibilityAddTraits(isSelected ? .isSelected : [])
    }
}

#Preview {
    @Previewable @State var mode: AuthMode = .login
    AuthModeToggle(selection: $mode)
        .padding()
        .background(.black)
}
