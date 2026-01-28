//
//  Itinerary.swift
//  TripCraft
//
//  Created by kai on 2025/12/29.
//

//最終產生的「結果模型」 不可變、只讀、只負責描述資料

import Foundation

/// 旅遊行程結果
struct Itinerary: Equatable {

    /// 每一天的行程
    struct DayPlan: Identifiable, Equatable {
        let id: UUID
        let title: String
        let items: [Place]

        init(
            id: UUID = UUID(),
            title: String,
            items: [Place]
        ) {
            self.id = id
            self.title = title
            self.items = items
        }
    }

    let city: City
    let days: [DayPlan]

    init(
        city: City,
        days: [DayPlan]
    ) {
        self.city = city
        self.days = days
    }
}
