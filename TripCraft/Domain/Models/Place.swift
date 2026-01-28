//
//  Place.swift
//  TripCraft
//
//  Created by kai on 2025/12/29.
//

//單一旅遊景點的資料模型 包含分類、城市、預估時間

import Foundation

/// 旅遊景點
struct Place: Identifiable, Hashable {

    enum Category: String, Hashable {
        case food       // 美食
        case sightseeing // 景點
        case shopping   // 購物
        case nature     // 自然
        case culture    // 文化
        case night      // 夜生活
        case family     // 親子
    }

    let id: UUID
    let name: String
    let city: City
    let category: Category
    let durationHours: Int

    init(
        id: UUID = UUID(),
        name: String,
        city: City,
        category: Category,
        durationHours: Int
    ) {
        self.id = id
        self.name = name
        self.city = city
        self.category = category
        self.durationHours = durationHours
    }
}
