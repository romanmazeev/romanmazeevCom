//
//  SponsorButton.swift
//  
//
//  Created by Roman Mazeev on 11/02/2023.
//

import TokamakStaticHTML

struct SponsorButton: View {
    var body: some View {
        HTML(
            "iframe",
            [
                "src": "https://github.com/sponsors/romanmazeev/button",
                "title": "Sponsor romanmazeev",
                "height": "32",
                "width": "114",
                "style": "border: 0; border-radius: 6px;"
            ]
        )
    }
}
