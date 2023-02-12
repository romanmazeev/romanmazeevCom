//
//  AppView.swift
//  
//
//  Created by Roman Mazeev on 11/02/2023.
//

import TokamakShim

struct AppView: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView()
            
            ContentView()
                .padding(.bottom)
            
            FooterView()
        }
        .padding()
    }
}
