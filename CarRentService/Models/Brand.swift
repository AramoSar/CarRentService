//
//  Brand.swift
//  CarRentService
//
//  Created by Aram on 23.05.24.
//

import Foundation

struct Brand: Identifiable, Hashable, Codable {
    let id: String
    let brandName: String
    let imageName: String
    var carIds: [String]
}
