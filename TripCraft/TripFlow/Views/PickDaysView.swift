//
//  PickDaysView.swift
//  TripCraft
//
//  Created by kai on 2025/12/29.
//

//讓使用者選旅遊天數
//用 local @State days 編輯  按「下一步」才通知 Coordinator

import SwiftUI

struct PickDaysView: View {
    let coordinator: TripCoordinator
    
    ///用 local state 做 UI 編輯值，避免邊條 stepper 邊跳頁
    @State private var days: Int = 3
    
    var body: some View {
        let cityName = coordinator.draft.destination?.rawValue ?? "目的地"
        let defaultDays = coordinator.draft.destination?.recommendedDays ?? 3
        
        VStack(alignment: .leading, spacing: 16) {
            Text("目的地： \(cityName)")
                .font(.headline)
            
            Stepper(value: $days, in: 1...14) {
                Text("旅遊天數： \(days) 天")
                    .font(.title3)
            }
            
            Button("下一步") {
                coordinator.setDays(days)
            }
            .buttonStyle(.borderedProminent)
            .padding(.top, 8)
            
            Spacer()
        }
        .padding()
        .navigationTitle("選擇天數")
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Button("返回") {
                    coordinator.back()
                }
            }
        }
        .onAppear {
            //進入此頁時，用 draft 內的值初始化
            days = coordinator.draft.days ?? defaultDays
        }
    }
}

#Preview {
    let coordinator = TripCoordinator()
    coordinator.selectDestination(.tokyo)
    return NavigationStack {
        PickDaysView(coordinator: coordinator)
    }
}

