//
//  ListView.swift
//  Moonshot
//
//  Created by Grace couch on 27/08/2024.
//

import SwiftUI

struct ListView: View {
    let missions: [Mission]

    var body: some View {
        List {
            ForEach(missions) { mission in
                NavigationLink(value: mission) {
                    GridItemView(mission: mission)
                }
            }
        }
        .listStyle(.plain)
        .padding([.horizontal, .bottom])
    }
}

#Preview {
    let missions: [Mission] = Bundle.main.decode("missions.json")

    ListView(missions: missions)
        .preferredColorScheme(.dark)
}
