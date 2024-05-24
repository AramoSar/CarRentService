//
//  CustomCarView.swift
//  CarRentService
//
//  Created by Aram on 23.05.24.
//

import SwiftUI

struct CustomCarView: View {
    @StateObject var viewModel: ExploreViewModel
    @State private var isFavorite: Bool
    private var index: Int
    
    init(viewModel: ExploreViewModel, index: Int) {
        self._viewModel = StateObject(wrappedValue: ExploreViewModel())
        self.isFavorite = viewModel.cars[index].isFavorite
        self.index = index
    }
    
    var body: some View {
            RoundedRectangle(cornerRadius: 10)
                .fill(.white)
                .frame(height: 120)
                .overlay {
                    HStack(spacing: 10) {
                        Image(viewModel.cars[index].mainImageName)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 80, height: 50)
                        VStack(alignment: .leading, spacing: 12) {
                            Text(viewModel.cars[index].carName)
                                .font(.headline)
                                .fontWeight(.semibold)
                                .foregroundStyle(.black)
                            
                            HStack {
                                Image(systemName: "star.fill")
                                    .foregroundStyle(.orange)
                                Text (String(format: "%.1f", viewModel.cars[index].rating))
                                    .font(.subheadline)
                                    .fontWeight(.semibold)
                                    .foregroundStyle(.black)
                            }
                            Text("By \(viewModel.cars[index].hostName)")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                                .foregroundStyle(.gray)
                        }
                        Spacer()
                        Button {
                            isFavorite.toggle()
                        } label: {
                            Image(systemName: isFavorite ? "heart.fill" : "heart")
                                .foregroundStyle(.red)
                        }
                    }
                    .padding(.horizontal)
                }
    }
}

#Preview {
    CustomCarView(viewModel: ExploreViewModel(), index: 0)
}

