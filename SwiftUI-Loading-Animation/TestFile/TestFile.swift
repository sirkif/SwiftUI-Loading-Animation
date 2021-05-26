//
//  TestFile.swift
//  SwiftUI-Loading-Animation
//
//  Created by Adam on 5/25/21.
//

import SwiftUI

struct TestFile: View {
    
    @State private var flipAnimation = 25
    
    let timer = Timer.publish(every: 0.5, on: .current, in: .common).autoconnect()

    var body: some View {
        ZStack{
            
            Circle()
                .foregroundColor(Color(#colorLiteral(red: 1, green: 0.0862745098, blue: 0.3647058824, alpha: 1)))
                .frame(width: 50, height: 50, alignment: .center)
                .offset(x: CGFloat(-flipAnimation))
                .animation(.linear(duration: 0.5))
                .zIndex(flipAnimation == 25 ? 1 : 0)
            
            Circle()
                .foregroundColor(Color(#colorLiteral(red: 0, green: 0.3803921569, blue: 0.6588235294, alpha: 1)))
                .frame(width: 50, height: 50, alignment: .center)
                .offset(x: CGFloat(flipAnimation))
                .animation(.linear(duration: 0.5))
                .zIndex(flipAnimation == 25 ? 0 : 1)

        }//End of ZStack
        .onReceive(timer) { _ in
            flipAnimation = flipAnimation == 25 ? -25 : 25
        }
        
    }
}

struct TestFile_Previews: PreviewProvider {
    static var previews: some View {
        TestFile()
    }
}
