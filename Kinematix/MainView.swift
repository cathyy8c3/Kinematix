//
//  MainView.swift
//  Kinematix
//
//  Created by Cathy Chang on 7/13/20.
//  Copyright © 2020 Kinematix. All rights reserved.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            Position().tabItem({
                Image(systemName: "xmark")
                Text("Position")
            })
            
            Velocity().tabItem({
                Image(systemName: "chevron.right")
                Text("Velocity")
            })
            
            Acceleration().tabItem({
                Image(systemName: "chevron.right.2")
                Text("Acceleration")
            })
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
