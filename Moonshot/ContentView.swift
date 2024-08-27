//
//  ContentView.swift
//  Moonshot
//
//  Created by Grace couch on 23/08/2024.
//

import SwiftUI

struct ContentView: View {
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    let missions: [Mission] = Bundle.main.decode("missions.json")
    @State private var isGrid = false


    var body: some View {
        NavigationStack {
            Group {
                if isGrid {
                    GridView(astronauts: astronauts, missions: missions)
                } else {
                    ListView(astronauts: astronauts, missions: missions)
                }
            }
                .navigationTitle("Moonshot")
                .preferredColorScheme(.dark)
                .toolbar {
                    Toggle("Grid View", isOn: $isGrid)
                        .toggleStyle(.switch)
                }
            }
        }
    }



#Preview {
    ContentView()
}
