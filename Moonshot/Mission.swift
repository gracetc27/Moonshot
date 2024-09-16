//
//  Mission.swift
//  Moonshot
//
//  Created by Grace couch on 23/08/2024.
//

import SwiftUI

struct Mission: Codable, Identifiable, Hashable {
    struct CrewRole: Codable, Hashable {
        let name: String
        let role: String
    }
    let id: Int
    let crew: [CrewRole]
    let description: String
    let launchDate: Date?

    var displayName: String {
        "Apollo \(id)"
    }

    var image: String {
        "apollo\(id)"
    }

    var formattedLaunchDate: String {
        launchDate?.formatted(date: .abbreviated, time: .omitted) ?? "N/A"
    }
}


