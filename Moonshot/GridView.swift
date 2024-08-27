//
//  GridView.swift
//  Moonshot
//
//  Created by Grace couch on 27/08/2024.
//

import SwiftUI

struct GridView: View {
    let astronauts: [String: Astronaut]
    let missions: [Mission]

    let columns = [
        GridItem(.adaptive(minimum: 150))
    ]
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns) {
                ForEach(missions) { mission in
                    NavigationLink {
                        MissionView(mission: mission, astronaut: astronauts)
                    } label: {
                        GridItemView(mission: mission)
                    }
                }
            }
            .padding([.horizontal, .bottom])
        }
    }
}

#Preview {
    let missions: [Mission] = Bundle.main.decode("missions.json")
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")

    GridView(astronauts: astronauts, missions: missions)
        .preferredColorScheme(.dark)
}
