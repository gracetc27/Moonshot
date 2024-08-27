//
//  GridItemView.swift
//  Moonshot
//
//  Created by Grace couch on 27/08/2024.
//

import SwiftUI

struct GridItemView: View {
    let mission: Mission
    var body: some View {
        VStack {
            Image(mission.image)
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .padding()
            VStack {
                Text(mission.displayName)
                    .font(.headline)
                Text(mission.formattedLaunchDate)
                    .font(.caption)
            }
            .foregroundStyle(.white)
            .padding(.vertical)
            .frame(maxWidth: .infinity)
            .background(.lightBackground)
        }
        .clipShape(.rect(cornerRadius: 10))
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(.lightBackground)
        )
    }
}

#Preview {
    let missions: [Mission] = Bundle.main.decode("missions.json")
     return GridItemView(mission: missions[0])
}
