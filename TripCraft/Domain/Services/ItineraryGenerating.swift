//
//  ItineraryGenerating.swift
//  TripCraft
//
//  Created by kai on 2025/12/29.
//

import Foundation

/// 行程產生器介面：Coordinator 只依賴這個 protocol，

protocol ItineraryGenerating {
    func generate(
        city: City,
        days: Int,
        preferences: Set<Preference>,
        childAge: Int?
    ) -> Itinerary
}
