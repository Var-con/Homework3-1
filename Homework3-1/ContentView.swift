//
//  ContentView.swift
//  Homework3-1
//
//  Created by Станислав Климов on 20.07.2020.
//  Copyright © 2020 Stanislav Klimov. All rights reserved.
//

import SwiftUI

enum CurrentLight {
    case red, yellow, green
}

struct ContentView: View {
    @State private var redLightAlpha: CGFloat = 0.3
    @State private var yellowLightAlpha: CGFloat = 0.3
    @State private var greenLightAlpha: CGFloat = 0.3
    @State private var tapCount = 0
    @State private var currentLight = CurrentLight.red
    
    @State var textOfButtom = "Start"
    
    
    var body: some View {
        ZStack {
            backgroundColor()
            VStack {
                colorRound(color: UIColor(
                    red: 1,
                    green: 0,
                    blue: 0,
                    alpha: redLightAlpha
                ))
                colorRound(color: UIColor(
                    red: 1,
                    green: 1,
                    blue: 0,
                    alpha: yellowLightAlpha
                ))
                colorRound(color: UIColor(
                    red: 0,
                    green: 1,
                    blue: 0,
                    alpha: greenLightAlpha))
                Spacer()
                HStack {
                    Text("Current Value of Clicks: \(tapCount)")
                        .fontWeight(.thin)
                        .foregroundColor(Color.white)
                    Spacer()
                }
                .padding()
                Button(action:
                    {
                    self.colorChanging()
                    self.tapCount += 1
                }
                    )
                {
                    Text(textOfButtom)
                }
                .frame(width: 100, height: 50)
                .font(.title)
                .accentColor(.blue)
                .background(Color(.systemYellow))
                .cornerRadius(10)
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension ContentView {
    private func colorChanging() {
        
        let lightIsOn: CGFloat = 1
        let lightIsOff: CGFloat = 0.3
        
        switch currentLight {
        case .red:
            redLightAlpha = lightIsOn
            greenLightAlpha = lightIsOff
            currentLight = .yellow
            textOfButtom = "Next"
        case .yellow:
            yellowLightAlpha = lightIsOn
            redLightAlpha = lightIsOff
            currentLight = .green
        case .green:
            greenLightAlpha = lightIsOn
            yellowLightAlpha = lightIsOff
            currentLight = .red
        }
    }
}
