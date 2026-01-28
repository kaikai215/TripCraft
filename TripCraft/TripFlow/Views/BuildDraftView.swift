//
//  BuildDraftView.swift
//  TripCraft
//
//  Created by kai on 2025/12/29.
//

//顯示「產生中」，並觸發行程生成

import SwiftUI

struct BuildDraftView: View {
    let coordinator: TripCoordinator
    let generator: ItineraryGenerating
    
    var body: some View {
        VStack(spacing: 12) {
            ProgressView()
            Text("正在產生行程...")
                .foregroundStyle(.secondary)
        }
        .navigationTitle("產生中")
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Button("返回") {
                    coordinator.back()
                }
            }
        }
        .onAppear{
            coordinator.generateItinerary(using: generator)
        }
    }
}

#Preview {
    let coordinator = TripCoordinator()
    coordinator.selectDestination(.tokyo)
    coordinator.setDays(3)
    coordinator.setPreferences([.food, .culture], childAge: nil)
    return NavigationStack {
        BuildDraftView(coordinator: coordinator, generator: SimpleItineraryGenerator())
    }
}
