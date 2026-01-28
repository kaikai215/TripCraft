//
//  PickDestinationView.swift
//  TripCraft
//
//  Created by kai on 2025/12/29.
//

//顯示日本城市清單，讓使用者選目的地
//顯示城市 點擊後呼叫 coordinator.selectDestination


import SwiftUI


struct PickDestinationView: View {
    let coordinator: TripCoordinator
    @State private var keyword: String = ""
    
    private var filteredCities: [City] {
        let all = City.allCases
        guard !keyword.isEmpty else { return all }
        return all.filter { $0.rawValue.contains(keyword)
        }
    }
    
    var body: some View {
        List {
            Section("日本城市") {
                ForEach(filteredCities) { city in
                    Button {
                        coordinator.selectDestination(city)
                    } label: {
                        HStack {
                            Text(city.rawValue)
                            Spacer()
                            Text("\(city.recommendedDays)天")
                                .foregroundStyle(.secondary)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    PickDestinationView(
        coordinator: TripCoordinator()
    )
}
