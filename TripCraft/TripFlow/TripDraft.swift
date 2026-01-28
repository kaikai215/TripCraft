//
//  TripDraft.swift
//  TripCraft
//
//  Created by kai on 2025/12/29.
//

//保存「使用者目前填到哪裡」的跨畫面資料

import Foundation

/// 使用者目前填寫中的旅遊草稿資料
struct TripDraft: Equatable {

    /// 選擇的目的地（日本城市）
    var destination: City?

    /// 旅遊天數（本專案只用天數版本）
    var days: Int?

    /// 旅遊偏好（可複選）
    var preferences: Set<Preference> = []

    /// 親子旅遊時的小孩年齡（選填）
    var childAge: Int?

    /// 產生後的行程結果
    var itinerary: Itinerary?

    /// 初始化為空草稿
    init() {}
}
