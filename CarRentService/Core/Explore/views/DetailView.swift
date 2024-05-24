//
//  DetailView.swift
//  CarRentService
//
//  Created by Aram on 24.05.24.
//

import SwiftUI

struct DetailView: View {
    @StateObject var viewModel: ExploreViewModel
    private var index: Int
    
    init(viewModel: ExploreViewModel, index: Int) {
        self._viewModel = StateObject(wrappedValue: viewModel)
        self.index = index
    }
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 15) {
                ImageViewPager(viewModel: viewModel, index: index)
                CarInfoView(viewModel: viewModel, index: index)
                
            }
        }
        .ignoresSafeArea()
        .scrollIndicators(.hidden)
    }
}

#Preview {
    DetailView(viewModel: ExploreViewModel(), index: 0)
}

struct CarInfoView: View {
    @StateObject var viewModel: ExploreViewModel
    private var index: Int
    init(viewModel: ExploreViewModel, index: Int) {
        self._viewModel = StateObject(wrappedValue: viewModel)
        self.index = index
    }
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text(viewModel.cars[index].carName)
                .font(.headline)
                .fontWeight(.bold)
            HStack {
                Text(String(format: "%.1f", viewModel.cars[index].rating))
                    .font(.subheadline)
                    .fontWeight(.semibold)
                Image(systemName: "star.fill")
                    .foregroundStyle(.orange)
            }
        }
        .padding(.horizontal)
    }
}
