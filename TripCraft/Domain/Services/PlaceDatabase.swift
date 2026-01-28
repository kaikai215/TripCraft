//
//  PlaceDatabase.swift
//  TripCraft
//
//  Created by kai on 2025/12/29.
//

import Foundation

/// 日本城市景點假資料庫
enum PlaceDatabase {

    static let places: [Place] = [

        // MARK: - Tokyo
        .init(name: "淺草寺", city: .tokyo, category: .culture, durationHours: 2),
        .init(name: "晴空塔", city: .tokyo, category: .sightseeing, durationHours: 2),
        .init(name: "上野公園", city: .tokyo, category: .nature, durationHours: 2),
        .init(name: "秋葉原", city: .tokyo, category: .shopping, durationHours: 3),
        .init(name: "澀谷十字路口", city: .tokyo, category: .night, durationHours: 2),
        .init(name: "築地外市場", city: .tokyo, category: .food, durationHours: 2),
        .init(name: "東京迪士尼", city: .tokyo, category: .family, durationHours: 6),
        .init(name: "新宿御苑", city: .tokyo, category: .nature, durationHours: 2),
        .init(name: "明治神宮", city: .tokyo, category: .culture, durationHours: 2),
        .init(name: "銀座", city: .tokyo, category: .shopping, durationHours: 3),
        .init(name: "原宿竹下通", city: .tokyo, category: .shopping, durationHours: 2),
        .init(name: "六本木", city: .tokyo, category: .night, durationHours: 3),
        .init(name: "東京鐵塔", city: .tokyo, category: .sightseeing, durationHours: 2),
        .init(name: "表參道", city: .tokyo, category: .shopping, durationHours: 2),
        .init(name: "壽司大", city: .tokyo, category: .food, durationHours: 2),
        .init(name: "三鷹之森吉卜力美術館", city: .tokyo, category: .family, durationHours: 3),

        // MARK: - Osaka
        .init(name: "道頓堀", city: .osaka, category: .food, durationHours: 3),
        .init(name: "大阪城", city: .osaka, category: .culture, durationHours: 2),
        .init(name: "梅田商圈", city: .osaka, category: .shopping, durationHours: 3),
        .init(name: "通天閣", city: .osaka, category: .sightseeing, durationHours: 2),
        .init(name: "環球影城", city: .osaka, category: .family, durationHours: 6),
        .init(name: "心齋橋", city: .osaka, category: .shopping, durationHours: 3),
        .init(name: "黑門市場", city: .osaka, category: .food, durationHours: 2),
        .init(name: "四天王寺", city: .osaka, category: .culture, durationHours: 2),
        .init(name: "新世界", city: .osaka, category: .night, durationHours: 2),
        .init(name: "海遊館", city: .osaka, category: .family, durationHours: 3),
        .init(name: "難波", city: .osaka, category: .shopping, durationHours: 2),
        .init(name: "大阪燒名店", city: .osaka, category: .food, durationHours: 2),

        // MARK: - Kyoto
        .init(name: "伏見稻荷大社", city: .kyoto, category: .culture, durationHours: 3),
        .init(name: "清水寺", city: .kyoto, category: .culture, durationHours: 2),
        .init(name: "嵐山竹林", city: .kyoto, category: .nature, durationHours: 3),
        .init(name: "祇園散步", city: .kyoto, category: .sightseeing, durationHours: 2),
        .init(name: "錦市場", city: .kyoto, category: .food, durationHours: 2),
        .init(name: "金閣寺", city: .kyoto, category: .culture, durationHours: 2),
        .init(name: "銀閣寺", city: .kyoto, category: .culture, durationHours: 2),
        .init(name: "二條城", city: .kyoto, category: .culture, durationHours: 2),
        .init(name: "哲學之道", city: .kyoto, category: .nature, durationHours: 2),
        .init(name: "天龍寺", city: .kyoto, category: .culture, durationHours: 2),
        .init(name: "嵐山小火車", city: .kyoto, category: .sightseeing, durationHours: 2),
        .init(name: "京都塔", city: .kyoto, category: .sightseeing, durationHours: 2),
        .init(name: "懷石料理", city: .kyoto, category: .food, durationHours: 2),
        .init(name: "花見小路", city: .kyoto, category: .sightseeing, durationHours: 1),

        // MARK: - Sapporo
        .init(name: "大通公園", city: .sapporo, category: .nature, durationHours: 2),
        .init(name: "札幌啤酒博物館", city: .sapporo, category: .food, durationHours: 2),
        .init(name: "薄野夜景", city: .sapporo, category: .night, durationHours: 2),
        .init(name: "札幌時計台", city: .sapporo, category: .sightseeing, durationHours: 1),
        .init(name: "白色戀人公園", city: .sapporo, category: .family, durationHours: 2),
        .init(name: "狸小路商店街", city: .sapporo, category: .shopping, durationHours: 2),
        .init(name: "北海道神宮", city: .sapporo, category: .culture, durationHours: 2),
        .init(name: "拉麵橫丁", city: .sapporo, category: .food, durationHours: 2),
        .init(name: "羊之丘展望台", city: .sapporo, category: .sightseeing, durationHours: 2),
        .init(name: "札幌電視塔", city: .sapporo, category: .sightseeing, durationHours: 1),
        .init(name: "二條市場", city: .sapporo, category: .food, durationHours: 2),

        // MARK: - Fukuoka
        .init(name: "中洲屋台", city: .fukuoka, category: .food, durationHours: 2),
        .init(name: "太宰府天滿宮", city: .fukuoka, category: .culture, durationHours: 3),
        .init(name: "天神商圈", city: .fukuoka, category: .shopping, durationHours: 3),
        .init(name: "福岡塔", city: .fukuoka, category: .sightseeing, durationHours: 2),
        .init(name: "博多運河城", city: .fukuoka, category: .shopping, durationHours: 3),
        .init(name: "一蘭拉麵總本店", city: .fukuoka, category: .food, durationHours: 1),
        .init(name: "能古島", city: .fukuoka, category: .nature, durationHours: 4),
        .init(name: "櫛田神社", city: .fukuoka, category: .culture, durationHours: 1),
        .init(name: "海之中道海濱公園", city: .fukuoka, category: .family, durationHours: 3),
        .init(name: "博多拉麵", city: .fukuoka, category: .food, durationHours: 1),

        // MARK: - Okinawa
        .init(name: "美麗海水族館", city: .okinawa, category: .family, durationHours: 4),
        .init(name: "國際通", city: .okinawa, category: .shopping, durationHours: 3),
        .init(name: "海邊散步", city: .okinawa, category: .nature, durationHours: 3),
        .init(name: "沖繩料理小店", city: .okinawa, category: .food, durationHours: 2),
        .init(name: "首里城", city: .okinawa, category: .culture, durationHours: 2),
        .init(name: "萬座毛", city: .okinawa, category: .nature, durationHours: 1),
        .init(name: "古宇利島", city: .okinawa, category: .nature, durationHours: 3),
        .init(name: "美國村", city: .okinawa, category: .shopping, durationHours: 2),
        .init(name: "波上宮", city: .okinawa, category: .culture, durationHours: 1),
        .init(name: "沖繩世界文化王國", city: .okinawa, category: .family, durationHours: 3),
        .init(name: "琉球村", city: .okinawa, category: .culture, durationHours: 2),
        .init(name: "殘波岬", city: .okinawa, category: .nature, durationHours: 1),
        .init(name: "石垣牛燒肉", city: .okinawa, category: .food, durationHours: 2),

        // MARK: - Nagoya
        .init(name: "名古屋城", city: .nagoya, category: .culture, durationHours: 2),
        .init(name: "熱田神宮", city: .nagoya, category: .culture, durationHours: 2),
        .init(name: "大須商店街", city: .nagoya, category: .shopping, durationHours: 3),
        .init(name: "名古屋電視塔", city: .nagoya, category: .sightseeing, durationHours: 1),
        .init(name: "名古屋港水族館", city: .nagoya, category: .family, durationHours: 3),
        .init(name: "味噌豬排", city: .nagoya, category: .food, durationHours: 2),
        .init(name: "白川鄉", city: .nagoya, category: .nature, durationHours: 4),
        .init(name: "德川園", city: .nagoya, category: .nature, durationHours: 2),
        .init(name: "名古屋科學館", city: .nagoya, category: .family, durationHours: 3),
        .init(name: "榮商圈", city: .nagoya, category: .shopping, durationHours: 2),
        .init(name: "名古屋拉麵", city: .nagoya, category: .food, durationHours: 1),

        // MARK: - Nara
        .init(name: "奈良公園", city: .nara, category: .nature, durationHours: 3),
        .init(name: "東大寺", city: .nara, category: .culture, durationHours: 2),
        .init(name: "春日大社", city: .nara, category: .culture, durationHours: 2),
        .init(name: "興福寺", city: .nara, category: .culture, durationHours: 1),
        .init(name: "奈良町", city: .nara, category: .sightseeing, durationHours: 2),
        .init(name: "若草山", city: .nara, category: .nature, durationHours: 2),
        .init(name: "唐招提寺", city: .nara, category: .culture, durationHours: 2),
        .init(name: "奈良漬", city: .nara, category: .food, durationHours: 1),

        // MARK: - Yokohama
        .init(name: "橫濱中華街", city: .yokohama, category: .food, durationHours: 3),
        .init(name: "紅磚倉庫", city: .yokohama, category: .sightseeing, durationHours: 2),
        .init(name: "橫濱港未來21", city: .yokohama, category: .sightseeing, durationHours: 3),
        .init(name: "橫濱地標塔", city: .yokohama, category: .sightseeing, durationHours: 2),
        .init(name: "三溪園", city: .yokohama, category: .nature, durationHours: 2),
        .init(name: "橫濱美術館", city: .yokohama, category: .culture, durationHours: 2),
        .init(name: "山下公園", city: .yokohama, category: .nature, durationHours: 2),
        .init(name: "橫濱拉麵博物館", city: .yokohama, category: .food, durationHours: 2),
        .init(name: "八景島海島樂園", city: .yokohama, category: .family, durationHours: 4),
        .init(name: "元町商店街", city: .yokohama, category: .shopping, durationHours: 2),
        .init(name: "橫濱夜景", city: .yokohama, category: .night, durationHours: 2),

        // MARK: - Kobe
        .init(name: "神戶港", city: .kobe, category: .sightseeing, durationHours: 2),
        .init(name: "神戶牛肉", city: .kobe, category: .food, durationHours: 2),
        .init(name: "北野異人館", city: .kobe, category: .culture, durationHours: 3),
        .init(name: "六甲山", city: .kobe, category: .nature, durationHours: 4),
        .init(name: "神戶塔", city: .kobe, category: .sightseeing, durationHours: 1),
        .init(name: "有馬溫泉", city: .kobe, category: .nature, durationHours: 3),
        .init(name: "南京町", city: .kobe, category: .food, durationHours: 2),
        .init(name: "神戶港夜景", city: .kobe, category: .night, durationHours: 2),
        .init(name: "神戶動物王國", city: .kobe, category: .family, durationHours: 3),
        .init(name: "三宮商店街", city: .kobe, category: .shopping, durationHours: 2),
        .init(name: "生田神社", city: .kobe, category: .culture, durationHours: 1),
    ]

    /// 依城市取景點
    static func places(in city: City) -> [Place] {
        places.filter { $0.city == city }
    }
}
