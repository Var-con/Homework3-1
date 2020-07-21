//
//  colorRound.swift
//  Homework3-1
//
//  Created by Станислав Климов on 20.07.2020.
//  Copyright © 2020 Stanislav Klimov. All rights reserved.
//

import SwiftUI

struct colorRound: View {
    var color: UIColor = UIColor(red: 1, green: 0, blue: 0, alpha: 0.3)
    var body: some View {
        Color(color)
            .frame(width: 100, height: 100)
            .clipShape(Circle())
            .overlay(Circle()
                .stroke(Color.white, lineWidth: 3))
            .blur(radius: 1)
    }
}

struct colorRound_Previews: PreviewProvider {
    static var previews: some View {
        colorRound()
    }
}
