//
//  WorkshopPage.swift
//  MithrilBase
//
//  Created by Kristian Mitra on 9/16/23.
//

import SwiftUI
import Factory
import MRLControllerProtocols

struct WorkshopPage: View {
    
    // MARK: - Fields
    @StateObject private var viewModel = WorkshopPageViewModel()
    
    // MARK: - View
    var body: some View {
        VStack {
            BRButton(text: "hello world", color: .brDanger) {
                Task {
                    await viewModel.getPopularMoviesAsync(page: 0)
                    viewModel.popularMovies.forEach { item in
                        print(item.title)
                    }
                }
            }

            BRToggle(toggleState: true, style: .defaultStyle)
        }
        .padding(.horizontal, 12.0)
    }
}

#Preview {
    WorkshopPage()
}
