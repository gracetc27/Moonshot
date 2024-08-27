//
//  ListView.swift
//  Moonshot
//
//  Created by Grace couch on 27/08/2024.
//

import SwiftUI

struct ListView: View {
    let astronauts: [String: Astronaut]
    let missions: [Mission]
    
    var body: some View {
        List {
            ForEach(missions) { mission in
                NavigationLink {
                    MissionView(mission: mission, astronaut: astronauts)
                } label: {
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
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    
    ListView(astronauts: astronauts, missions: missions)
        .preferredColorScheme(.dark)
}
