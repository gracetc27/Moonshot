//
//  GridView.swift
//  Moonshot
//
//  Created by Grace couch on 27/08/2024.
//

import SwiftUI

struct GridView: View {
    let missions: [Mission]

    let columns = [
        GridItem(.adaptive(minimum: 150))
    ]
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns) {
                ForEach(missions) { mission in
                    NavigationLink(value: mission) {
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
    GridView(missions: missions)
        .preferredColorScheme(.dark)
}
