//
//  Acceleration.swift
//  Kinematix
//
//  Created by Cathy Chang on 7/13/20.
//  Copyright © 2020 Kinematix. All rights reserved.
//

import SwiftUI
import CoreMotion
import SwiftUICharts

struct Acceleration: View {
    var body: some View {
        NavigationView {
            accGraph()
            .navigationBarTitle(Text("Acceleration"))
        }
    }
}

struct Acceleration_Previews: PreviewProvider {
    static var previews: some View {
        Acceleration()
    }
}
