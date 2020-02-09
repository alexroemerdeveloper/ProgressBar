//
//  ProgressBarView.swift
//  ProgressBar
//
//  Created by Alexander Römer on 09.02.20.
//  Copyright © 2020 Alexander Römer. All rights reserved.
//

import SwiftUI

struct ProgressBarView: View {
    
    @Binding var percent: CGFloat
    
    var body: some View {
        ZStack(alignment: .leading) {
            
            ZStack(alignment: .trailing) {
                Capsule()
                    .fill(Color.black.opacity(0.08))
                    .frame(height: 22)
                
                Text(String(format: "%.0f", self.percent * 100) + "%")
                    .font(.caption)
                    .foregroundColor(Color.gray.opacity(0.75))
                    .padding(.trailing)
            }
            
            Capsule()
                .fill(LinearGradient(gradient: .init(colors: [Color.purple, Color.purple]), startPoint: .leading, endPoint: .trailing))
                .frame(width: self.callculatePercent(), height: 22)
            
        }
        .padding(18)
        .background(Color.black.opacity(0.085))
        .cornerRadius(15)
    }
    
    
    private func callculatePercent() -> CGFloat {
        let width = UIScreen.main.bounds.width - 66
        return width * self.percent
    }
    
}

struct ProgressBarView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressBarView(percent: .constant(10))
    }
}
