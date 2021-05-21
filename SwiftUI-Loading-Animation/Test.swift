//
//  Test.swift
//  SwiftUI-Loading-Animation
//
//  Created by Adam on 5/21/21.
//

import SwiftUI

struct Test: View {
    @State private var angle: Double = 0
       @State private var borderThickness: CGFloat = 1

       var body: some View {
           Button("Press here") {
               angle += 45
               borderThickness += 1
           }
           .padding()
           .border(Color.red, width: borderThickness)
           .rotationEffect(.degrees(angle))
           .animation(.easeIn)
       }
}

struct Test_Previews: PreviewProvider {
    static var previews: some View {
        Test()
    }
}
