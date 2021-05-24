//
//  LoadingCircleFlip.swift
//  SwiftUI-Loading-Animation
//
//  Created by Adam on 5/24/21.
//

import SwiftUI

struct LoadingCircleFlip: View {
    
    @State private var flipAnimation = false
    
    var body: some View {
        ZStack{
            
            Circle()
                .foregroundColor(Color(#colorLiteral(red: 1, green: 0.0862745098, blue: 0.3647058824, alpha: 1)))
                .frame(width: 50, height: 50, alignment: .center)
                .offset(x: flipAnimation ? 25 : -25)
                .animation(.linear(duration: 0.5))
                .zIndex(flipAnimation ? 0 : 1)
            
            Circle()
                .foregroundColor(Color(#colorLiteral(red: 0, green: 0.3803921569, blue: 0.6588235294, alpha: 1)))
                .frame(width: 50, height: 50, alignment: .center)
                .offset(x: flipAnimation ? -25 : 25)
                .animation(.linear(duration: 0.5))
                .zIndex(flipAnimation ? 1 : 0)
            
        }//End of ZStack
        .onAppear(){
            
            Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { _ in
                
                flipAnimation.toggle()
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                    flipAnimation.toggle()
                }
            }
            //MARK: - To fire Timer immediately
            // .fire()
        }
    }
}

struct LoadingCircleFlip_Previews: PreviewProvider {
    static var previews: some View {
        LoadingCircleFlip()
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}
