//
//  City.swift
//  TripCraft
//
//  Created by kai on 2025/12/29.
//

//日本城市 enum + 建議天數 UI、Coordinator、Service 都會用

import Foundation

/// 日本旅遊城市
enum City: String, CaseIterable, Identifiable {
    case tokyo = "東京"
    case osaka = "大阪"
    case kyoto = "京都"
    case sapporo = "札幌"
    case fukuoka = "福岡"
    case nagoya = "名古屋"
    case nara = "奈良"
    case yokohama = "橫濱"
    case kobe = "神戶"
    case okinawa = "沖繩"

    var id: String { rawValue }

    /// 建議旅遊天數（給 Coordinator 當預設值）
    var recommendedDays: Int {
        switch self {
        case .tokyo:
            return 4
        case .osaka:
            return 3
        case .kyoto:
            return 3
        case .sapporo:
            return 3
        case .fukuoka:
            return 2
        case .nagoya:
            return 2
        case .nara:
            return 1
        case .yokohama:
            return 1
        case .kobe:
            return 1
        case .okinawa:
            return 3
        }
    }
}
