//
//  AppView.swift
//  
//
//  Created by Roman Mazeev on 11/02/2023.
//

import TokamakShim

public struct AppView: View {
    public var body: some View {
        VStack(spacing: 20) {
            HeaderView()
            
            ContentView()
            
            FooterView()
        }
        .padding()
    }
}
