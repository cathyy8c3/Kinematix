//
//  accGraph.swift
//  Kinematix
//
//  Created by Cathy Chang on 7/13/20.
//  Copyright © 2020 Kinematix. All rights reserved.
//

import SwiftUI
import SwiftUICharts

struct accGraph: View {
    @EnvironmentObject var start:Bools
    @ObservedObject var graphView:Graph = Graph(t: "Acceleration", ydata: [0.0], xdata: [0.0])
    @State var time = 0.0
    let timer = Timer.publish(every: 0.025, on: .main, in: .common).autoconnect()
    
    var body: some View {
        VStack {
            Text("\(time)")
            
            graphView.view
            .padding()
        }
        .onReceive(timer) { _ in
            if(self.start.b){
                self.graphView.update()
            }
            self.time += 0.025
        }
    }
}

struct accGraph_Previews: PreviewProvider {
    static var previews: some View {
        accGraph()
    }
}
