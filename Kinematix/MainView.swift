//
//  MainView.swift
//  Kinematix
//
//  Created by Cathy Chang on 7/13/20.
//  Copyright © 2020 Kinematix. All rights reserved.
//

import SwiftUI

struct MainView: View {
    @EnvironmentObject var start:Bools
    
    var body: some View {
        NavigationView {
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
            .navigationBarItems(leading:
                HStack{
                    Button("Start") {
                        self.start.setBool(bool: !self.start.b)
                    }
                }
            )
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
