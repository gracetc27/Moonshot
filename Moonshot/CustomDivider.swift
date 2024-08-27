//
//  CustomDivider.swift
//  Moonshot
//
//  Created by Grace couch on 27/08/2024.
//

import SwiftUI

struct CustomDivider: View {
    var body: some View {
        HStack {
            Image(systemName: "star.fill")
            Image(systemName: "moon.fill")
            Image(systemName: "star.fill")
        }
        .frame(height: 2)
        .foregroundStyle(.lightBackground)
        .padding(.vertical)
    }
}

#Preview {
    CustomDivider()
}
