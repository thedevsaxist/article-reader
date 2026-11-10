//
//  ArticleView.swift
//  Article Reader
//
//  Created by Chidiebube Iroezindu on 09/11/2026.
//

import SwiftUI

struct ArticleView: View {
    var body: some View {
        VStack {
            Text("Title")
                .font(.title)
                .fontWeight(.bold)
            
            Text("Subtitle")
                .font(.subheadline)
                .foregroundStyle(.gray)
            
            HStack {
                Image(systemName: "person.circle.fill")
                VStack {
                    Text("User name")
                        .font(.body)
                }
            }
        }
    }
}


#Preview {
    ArticleView()
}
