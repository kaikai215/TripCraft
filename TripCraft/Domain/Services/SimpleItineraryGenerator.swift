//
//  SimpleItineraryGenerator.swift
//  TripCraft
//
//  Created by kai on 2025/12/29.
//

//用假資料 + 規則產生行程 可以被替換、可以被測試

import Foundation

//用 PlaceDatabase 的假資料，依照「天數 + 偏好」產生 Itinerary
struct SimpleItineraryGenerator: ItineraryGenerating {

    func generate(
        city: City,
        days: Int,
        preferences: Set<Preference>,
        childAge: Int?
    ) -> Itinerary {

        let allPlaces = PlaceDatabase.places(in: city)
        let categories = preferredCategories(from: preferences, childAge: childAge)

        // 依偏好過濾；若過濾後太少，就退回用全部
        let filtered = allPlaces.filter { categories.contains($0.category) }
        let pool = filtered.isEmpty ? allPlaces : filtered

        var used = Set<Place>()
        var dayPlans: [Itinerary.DayPlan] = []

        for dayIndex in 1...max(1, days) {
            let items = pickItems(
                from: pool,
                used: &used,
                dayIndex: dayIndex,
                count: 3
            )

            dayPlans.append(
                .init(title: "Day \(dayIndex)", items: items)
            )
        }

        return Itinerary(city: city, days: dayPlans)
    }

    // MARK: - Helpers

    private func preferredCategories(from prefs: Set<Preference>, childAge: Int?) -> [Place.Category] {
        var categories: [Place.Category] = prefs.map {
            switch $0 {
            case .food: return .food
            case .sightseeing: return .sightseeing
            case .shopping: return .shopping
            case .nature: return .nature
            case .culture: return .culture
            case .night: return .night
            case .family: return .family
            }
        }

        // 親子且有填年齡 → 增加 family
        if prefs.contains(.family), childAge != nil {
            categories.append(.family)
        }

        // 沒選偏好 → 給一組合理預設
        if categories.isEmpty {
            categories = [.sightseeing, .food, .culture]
        }

        return categories
    }

    private func pickItems(
        from pool: [Place],
        used: inout Set<Place>,
        dayIndex: Int,
        count: Int
    ) -> [Place] {
        guard !pool.isEmpty else { return [] }

        // 用 dayIndex 做輪替，讓每天不會都拿到相同順序
        let rotated = rotate(pool, by: (dayIndex - 1) % pool.count)

        var picked: [Place] = []
        for place in rotated {
            if picked.count == count { break }
            if used.contains(place) { continue }
            picked.append(place)
            used.insert(place)
        }

        if picked.count < count {
            for place in rotated where picked.count < count {
                if picked.contains(place) { continue }
                picked.append(place)
            }
        }

        return picked
    }

    private func rotate<T>(_ array: [T], by offset: Int) -> [T] {
        guard !array.isEmpty else { return array }
        let o = offset % array.count
        return Array(array[o...] + array[..<o])
    }
}
