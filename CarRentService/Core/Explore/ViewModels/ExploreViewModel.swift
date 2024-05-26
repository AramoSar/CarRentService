//
//  ExploreViewModel.swift
//  CarRentService
//
//  Created by Aram on 23.05.24.
//

import SwiftUI

class ExploreViewModel: ObservableObject {
    @Published var brands: [Brand] = [
        .init(id: UUID().uuidString, brandName: "Mercedes", imageName: "mercedes", carIds: []),
        .init(id: UUID().uuidString, brandName: "BMW", imageName: "bmw", carIds: []),
        .init(id: UUID().uuidString, brandName: "Jaguar", imageName: "jaguar", carIds: []),
        .init(id: UUID().uuidString, brandName: "Audi", imageName: "audi", carIds: []) 
    ]
    
    @Published var cars: [Car] = [
        .init(id: UUID().uuidString, carName: "MERCEDES-BENZ C-CLASS", rating: 4.9, brand: "Mercedes", pricePerDay: 40, description: "This 2023 Mercedes is the perfect car to get around town or book for a weekend getaway! \n It's easy to park, fun to drive and great on gas!", mainImageName: "merecedesC", imageNames: ["mercedes_c_0","mercedes_c_1","mercedes_c_2","mercedes_c_3","mercedes_c_4"], insurance: "", numberOfSeats: 5, numberOfDoors: 4, gasType: "", hostName: "Dwight Automotive", hostImageName: "dwight", hostJoinDate: "20 Nov 2018",isFavorite: false),
        .init(id: UUID().uuidString, carName: "BMW X1", rating: 4.8, brand: "BMW", pricePerDay: 36, description: "This 2021 BMW is the perfect car to get around town or book for a weekend getaway! \n It's easy to park, fun to drive and great on gas!", mainImageName: "bmwx1", imageNames: ["bmwx1_1","bmwx1_2","bmwx1_3"], insurance: "", numberOfSeats: 5, numberOfDoors: 4, gasType: "", hostName: "Dwight Automotive", hostImageName: "dwight", hostJoinDate: "20 Nov 2018",isFavorite: true)
    ]
}
