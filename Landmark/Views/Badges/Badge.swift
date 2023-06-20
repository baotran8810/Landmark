//
//  Badge.swift
//  Landmark
//
//  Created by Bảo Trần on 20/06/2023.
//

import SwiftUI

struct Badge: View {
    
    var num: Int = 8
    
    var badgeSymbols: some View{
        ForEach(0..<num,  id: \.self) { index in
            RotatedBadgeSymbol(angle: .degrees(Double(index) / Double(num)) * 360.0)
                .opacity(0.5)
        }
    }
    
    var body: some View {
        ZStack {
            BadgeBackground()
            
            GeometryReader { geometry in
                badgeSymbols
                    .scaleEffect(1/4, anchor: .top)
                    .position(x:geometry.size.width / 2, y: geometry.size.height * (3.0 / 4.0))
            }
        }
        .scaledToFit()
    }
}

struct Badge_Previews: PreviewProvider {
    static var previews: some View {
        Badge(num: 10)
    }
}
