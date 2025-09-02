//
//  ContentView.swift
//  takealook
//
//  Created by 이동연 on 6/12/25.
//

import SwiftUI

struct ContentView: View {
    @State private var stickers: [StickerResult] = []
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tklPrimary)
            Text("Hello, world! \(stickers)").foregroundStyle(.tklOnBackground)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.tklBackground)
        .task {
            do {
                stickers = try await TklAfApi().getStickers()
            } catch {
                print("\(error)")
            }
        }
    }
}

#Preview {
    ContentView()
}
