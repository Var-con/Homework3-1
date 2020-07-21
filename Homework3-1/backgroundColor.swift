//
//  backgroundColor.swift
//  Homework3-1
//
//  Created by Станислав Климов on 20.07.2020.
//  Copyright © 2020 Stanislav Klimov. All rights reserved.
//

import SwiftUI

struct backgroundColor: View {
    var body: some View {
        Color(.black)
            .edgesIgnoringSafeArea(.all)
    }
}

struct backgroundColor_Previews: PreviewProvider {
    static var previews: some View {
        backgroundColor()
    }
}
