//
//  TripCoordinator.swift
//  TripCraft
//
//  Created by kai on 2025/12/29.
//

//負責流程推進、回退、以及跨畫面狀態管理
//    用 TripStep 管理目前流程在哪一步
//    用 TripDraft 保存使用者填到一半的資料

import SwiftUI
import Combine

@MainActor
final class TripCoordinator: ObservableObject {
    // MARK: - Published State (Flow + Shared Draft)

    /// 目前流程走到哪一步
    @Published private(set) var step: TripStep = .pickDestination
    
    /// 跨畫面共享資料（使用者填到一半的草稿）
    @Published private(set) var draft: TripDraft = .init()
    
    // MARK: - Flow Actions (View 只能呼叫這些，不直接改 step/draft)
    
    func selectDestination(_ city: City) {
        draft.destination = city
        
        // 給一個預設天數
        if draft.days == nil {
            draft.days = city.recommendedDays
        }
        
        step = .pickDays
    }
    
    func setDays(_ days: Int) {
        draft.days = max(1, days)
        step = .pickPreferences
    }
    
    func setPreferences(_ prefs: Set<Preference>, childAge: Int?) {
        draft.preferences = prefs
        draft.childAge = childAge
        step = .buildDraft
    }
    
    func generateItinerary(using generator: ItineraryGenerating) {
        guard let city = draft.destination else { return }

        let days = draft.days ?? city.recommendedDays
        draft.itinerary = generator.generate(
            city: city,
            days: days,
            preferences: draft.preferences,
            childAge: draft.childAge
        )

        step = .review
    }
    
    // MARK: - Navigation-like Controls
    func back() {
        switch step {
        case .pickDestination:
            break
        case .pickDays:
            step = .pickDestination
        case .pickPreferences:
            step = .pickDays
        case .buildDraft:
            step = .pickPreferences
        case .review:
            step = .buildDraft
        }
    }
    
    func restart() {
        draft = .init()
        step = .pickDestination
    }

}
