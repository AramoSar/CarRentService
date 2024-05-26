//
//  Car.swift
//  CarRentService
//
//  Created by Aram on 23.05.24.
//

import Foundation

struct Car: Identifiable, Hashable, Codable {
    let id: String
    let carName: String
    var rating: Double
    let brand: String
    var pricePerDay: Int
    var description: String
    var mainImageName: String
    var imageNames: [String]
    var insurance: String
    var maxDistance: Float?
    var numberOfSeats: Int
    var numberOfDoors:Int
    var gasType: String
    var hostName: String
    var hostImageName: String
    var hostJoinDate: String
    var isFavorite: Bool
}
