//
//  TopCarView.swift
//  CarRentService
//
//  Created by Aram on 24.05.24.
//

import SwiftUI

struct TopCarView: View {
    @StateObject var viewModel: ExploreViewModel
    init(viewModel: ExploreViewModel) {
        self._viewModel = StateObject(wrappedValue: ExploreViewModel())
    }
    
    var body: some View {
        VStack {
            HStack {
                Text("Top Cars 🔥")
                    .font(.headline)
                    .fontWeight(.semibold)
                Spacer()
            }
            ForEach(viewModel.cars) { car in
                let index = viewModel.cars.firstIndex(where: { $0 == car }) ?? 0
                NavigationLink {
                    DetailView(viewModel: viewModel, index: index)
                        .navigationBarBackButtonHidden()
                } label: {
                    CustomCarView(viewModel: viewModel, index: index)
                        .padding(.bottom)
                }

                
            }
        }
        .padding()
    }
}

#Preview {
    TopCarView(viewModel: ExploreViewModel())
}
