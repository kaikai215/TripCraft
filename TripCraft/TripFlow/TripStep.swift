//
//  TripStep.swift
//  TripCraft
//
//  Created by kai on 2025/12/29.
//

//定義「整個旅遊流程會有哪些步驟」


import Foundation

//流程狀態
enum TripStep: Equatable {
    case pickDestination
    case pickDays
    case pickPreferences
    case buildDraft
    case review
}
