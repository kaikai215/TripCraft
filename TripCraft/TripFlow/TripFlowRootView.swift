//
//  TripFlowRootView.swift
//  TripCraft
//
//  Created by kai on 2025/12/29.
//

//負責「把整個旅遊流程串起來」的 Root View
//根據 coordinator.step 決定現在顯示哪個畫面
//是唯一寫 switch(step) 的地方 流程集中 → 不會散落在每個 View


import SwiftUI

struct TripFlowRootView: View {
    @StateObject private var coordinator = TripCoordinator()
    private let generator: ItineraryGenerating = SimpleItineraryGenerator()
    
    var body: some View {
        NavigationStack {
            content
                .navigationBarTitleDisplayMode(.inline)
        }
    }
    
    @ViewBuilder
    private var content: some View {
        switch coordinator.step {
        case .pickDestination:
            PickDestinationView(coordinator: coordinator)
        case .pickDays:
            PickDaysView(coordinator: coordinator)
        case .pickPreferences:
            PickPreferencesView(coordinator: coordinator)
        case .buildDraft:
            BuildDraftView(coordinator: coordinator, generator: generator)
        case .review:
            ReviewItineraryView(coordinator: coordinator)
        }
    }
}

#Preview {
    TripFlowRootView()
}
    
