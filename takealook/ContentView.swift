//
//  ContentView.swift
//  takealook
//
//  Created by 이동연 on 6/12/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tklPrimary)
            Text("Hello, world!").foregroundStyle(.tklOnBackground)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.tklBackground)
    }
}

#Preview {
    ContentView()
}
