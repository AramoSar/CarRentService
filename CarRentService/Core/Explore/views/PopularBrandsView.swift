//
//  PopularBrandsView.swift
//  CarRentService
//
//  Created by Aram on 23.05.24.
//

import SwiftUI

struct PopularBrandsView: View {
    @StateObject var viewModel: ExploreViewModel
    init(viewModel: ExploreViewModel) {
        self._viewModel = StateObject(wrappedValue: viewModel)
    }
    
    var body: some View {
        VStack {
            HStack {
                Text("Popular Brands")
                    .font(.headline)
                    .fontWeight(.semibold)
                Spacer()
                Button {
                    
                } label: {
                    Text("See All")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.trailing)
                }
            }
            .foregroundStyle(.white)
            ScrollView(.horizontal) {
                HStack {
                    ForEach(viewModel.brands) { brand in
                        RoundedRectangle(cornerRadius: 10)
                            .fill(.white)
                            .frame(width: 150, height: 200)
                            .overlay {
                                VStack {
                                    Image(brand.imageName)
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 50, height: 50)
                                    Text(brand.brandName)
                                    Text("+5")
                                        .font(.footnote)
                                        .foregroundStyle(.blue)
                                }
                                
                            }
                    }
                } 
            }
            .scrollIndicators(.hidden)
        }
        .padding(.leading)
    }
}

#Preview {
    PopularBrandsView(viewModel: ExploreViewModel())
}
