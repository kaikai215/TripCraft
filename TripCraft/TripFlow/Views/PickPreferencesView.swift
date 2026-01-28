//
//  PickPreferencesView.swift
//  TripCraft
//
//  Created by kai on 2025/12/29.
//

//讓使用者多選旅遊偏好（含親子分支）
//Set<Preference> 表示多選 親子偏好才顯示年齡輸入  所有流程邏輯仍在 Coordinator

import SwiftUI

struct PickPreferencesView: View {
    let coordinator: TripCoordinator
    
    @State private var selected: Set<Preference> = []
    @State private var childAgeText: String = ""
    
    var body: some View {
        Form {
            Section("旅遊偏好（可複選）") {
                ForEach(Preference.allCases) { pref in
                    Toggle(pref.rawValue, isOn: Binding(
                        get: {
                            selected.contains(pref)
                        },
                        set: { isOn in
                            if isOn {
                                selected.insert(pref)
                            } else {
                                selected.remove(pref)
                            }
                        }
                    ))
                }
            }
            if selected.contains(.family) {
                Section("親子資訊（選填）") {
                    TextField("小孩年齡（例如 6）", text: $childAgeText)
                        .keyboardType(.numberPad)
                }
            }
            
            Section {
                Button("產生行程") {
                    let age = Int(childAgeText)
                    coordinator.setPreferences(selected, childAge: selected.contains(.family) ? age : nil)
                }
                .buttonStyle(.borderedProminent)
            }
        }
        .navigationTitle("選擇偏好")
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Button("返回") {
                    coordinator.back()
                }
            }
        }
        .onAppear{
            selected = coordinator.draft.preferences
            childAgeText = coordinator.draft.childAge.map(String.init) ?? ""
        }
    }
}

#Preview {
    let coordinator = TripCoordinator()
    coordinator.selectDestination(.tokyo)
    coordinator.setDays(4)
    return NavigationStack {
        PickPreferencesView(coordinator: coordinator)
    }
}
