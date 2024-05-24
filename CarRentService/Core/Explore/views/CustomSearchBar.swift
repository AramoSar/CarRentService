//
//  CustomSearchBar.swift
//  CarRentService
//
//  Created by Aram on 23.05.24.
//

import SwiftUI

struct CustomSearchBar: View {
    var body: some View {
        Button {
            
        } label: {
            HStack {
                Image(systemName: "magnifyingglass")
                    .padding()
                    .foregroundStyle(.white)
                
                Text("Search a car...")
                    .font(.footnote)
                    .foregroundStyle(.white)
                Spacer()
            }
            .frame(height: 60)
            .overlay {
                Capsule()
                    .stroke(lineWidth: 0.5)
                    .foregroundStyle(Color(.systemGray4))
                    .shadow(color: .black.opacity(0.4), radius: 10)
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    CustomSearchBar()
}
