//
//  Preference.swift
//  TripCraft
//
//  Created by kai on 2025/12/29.
//

//旅遊偏好 enum 用 Set<Preference> 表示多選

import Foundation

/// 旅遊偏好（可複選）
enum Preference: String, CaseIterable, Identifiable, Hashable {
    case food = "美食"
    case sightseeing = "景點"
    case shopping = "購物"
    case nature = "自然"
    case culture = "文化"
    case night = "夜生活"
    case family = "親子"

    var id: String { rawValue }
}
