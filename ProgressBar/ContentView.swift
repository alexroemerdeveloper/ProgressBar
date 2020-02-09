//
//  ContentView.swift
//  ProgressBar
//
//  Created by Alexander Römer on 09.02.20.
//  Copyright © 2020 Alexander Römer. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var percent: CGFloat = 0
    
    var body: some View {
        VStack {
            ProgressBarView(percent: self.$percent)
        }
        .padding()
        .onTapGesture {
            self.percent = 0.80
        }
        .animation(.spring())
    }
    
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
