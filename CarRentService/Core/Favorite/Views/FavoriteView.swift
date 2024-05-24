//
//  FavoriteView.swift
//  CarRentService
//
//  Created by Aram on 24.05.24.
//

import SwiftUI

struct FavoritesView: View {
    @StateObject private var viewModel: ExploreViewModel
    var favoriteCars: [Car]
    init(viewModel: ExploreViewModel) {
        self._viewModel = StateObject(wrappedValue: viewModel)
        favoriteCars = viewModel.cars.filter({ $0.isFavorite == true })
    }
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    ForEach(favoriteCars) { car in
                        let index = viewModel.cars.firstIndex(where: {$0 == car}) ?? 0
                        CustomCarView(viewModel: viewModel, index: index)
                            .padding()
                    }
                }
                .padding()
            }
            .navigationTitle("Favorites")
            .navigationBarTitleDisplayMode(.inline)
            .background(Color(.systemGray6))
        }
    }
}

#Preview {
    FavoritesView(viewModel: ExploreViewModel())
}
