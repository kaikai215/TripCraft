//
//  ReviewItineraryView.swift
//  TripCraft
//
//  Created by kai on 2025/12/29.
//

//顯示最終產生的行程結果

import SwiftUI

struct ReviewItineraryView: View {
    let coordinator: TripCoordinator

    var body: some View {
        let draft = coordinator.draft
        let itinerary = draft.itinerary

        List {
            // 基本資訊
            Section("旅遊資訊") {
                if let city = draft.destination {
                    LabeledContent("目的地", value: city.rawValue)
                }
                if let days = draft.days {
                    LabeledContent("天數", value: "\(days) 天")
                }
                if draft.preferences.isEmpty {
                    LabeledContent("偏好", value: "未選（使用預設）")
                } else {
                    LabeledContent(
                        "偏好",
                        value: draft.preferences
                            .map(\.rawValue)
                            .sorted()
                            .joined(separator: "、")
                    )
                }
            }

            // 行程內容
            if let itinerary {
                ForEach(itinerary.days) { day in
                    Section(day.title) {
                        ForEach(day.items) { place in
                            VStack(alignment: .leading, spacing: 4) {
                                Text(place.name)
                                    .font(.headline)

                                Text("\(place.category.rawValue) ・約 \(place.durationHours) 小時")
                                    .font(.footnote)
                                    .foregroundStyle(.secondary)
                            }
                        }
                    }
                }
            } else {
                Section {
                    Text("尚未產生行程")
                        .foregroundStyle(.secondary)
                }
            }
        }
        .navigationTitle("行程總覽")
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Button("返回") { coordinator.back() }
            }
            ToolbarItem(placement: .topBarTrailing) {
                Button("重來") { coordinator.restart() }
            }
        }
    }
}

#Preview {
    let coordinator = TripCoordinator()
    coordinator.selectDestination(.tokyo)
    coordinator.setDays(3)
    coordinator.setPreferences([.food, .culture], childAge: nil)
    coordinator.generateItinerary(using: SimpleItineraryGenerator())

    return NavigationStack {
        ReviewItineraryView(coordinator: coordinator)
    }
}
