//
//  LoadingCubeOffset.swift
//  SwiftUI-Loading-Animation
//
//  Created by Adam on 5/22/21.
//

import SwiftUI


struct LoadingCubeOffset: View {
    
    @State private var yellowSquareAnimationX = CGFloat(-25)
    @State private var yellowSquareAnimationY = CGFloat(25)
    
    @State private var purpleSquareAnimationX = CGFloat(25)
    @State private var purpleSquareAnimationY = CGFloat(-25)
    
    @State private var greenSquareAnimationX = CGFloat(25)
    @State private var greenSquareAnimationY = CGFloat(25)
    
    @State private var orangeSquareAnimationX = CGFloat(-25)
    @State private var orangeSquareAnimationY = CGFloat(-25)
    
    var body: some View {
        
        ZStack{
            
            Color(#colorLiteral(red: 1, green: 0.7960784314, blue: 0.4666666667, alpha: 1))
                .frame(width: 40, height: 40, alignment: .center)
                .offset(x: yellowSquareAnimationX, y: yellowSquareAnimationY)
            
            Color(#colorLiteral(red: 0.5254901961, green: 0.4784313725, blue: 0.9137254902, alpha: 1))
                .frame(width: 40, height: 40, alignment: .center)
                .offset(x: purpleSquareAnimationX, y: purpleSquareAnimationY)
            
            Color(#colorLiteral(red: 0, green: 0.7215686275, blue: 0.662745098, alpha: 1))
                .frame(width: 40, height: 40, alignment: .center)
                .offset(x: greenSquareAnimationX, y: greenSquareAnimationY)
                .zIndex(1)
            
            Color(#colorLiteral(red: 0.9960784314, green: 0.4274509804, blue: 0.4509803922, alpha: 1))
                .frame(width: 40, height: 40, alignment: .center)
                .offset(x: orangeSquareAnimationX, y: orangeSquareAnimationY)
                .zIndex(1)
            
        }//End of ZStack
        .onAppear(){
            
            Timer.scheduledTimer(withTimeInterval: 2, repeats: true) { _ in
                offsetAnimation()
            }
            //MARK: - To fire Timer immediately
//            .fire()
        }
    }
    
    func offsetAnimation(){
        
        withAnimation(.timingCurve(0.33, 1, 0.68, 1, duration: 0.5)) {
            yellowSquareAnimationX = -20
            yellowSquareAnimationY = 20
            purpleSquareAnimationX = 20
            purpleSquareAnimationY = -20
            greenSquareAnimationX = 20
            greenSquareAnimationY = 20
            orangeSquareAnimationX = -20
            orangeSquareAnimationY = -20
            
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            withAnimation(.timingCurve(0.33, 1, 0.68, 1, duration: 0.5)) {
                orangeSquareAnimationY = 20
                greenSquareAnimationY = -20
                yellowSquareAnimationX = 20
                purpleSquareAnimationX = -20
                
            }
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            withAnimation(.timingCurve(0.33, 1, 0.68, 1, duration: 0.5)) {
                orangeSquareAnimationX = 20
                greenSquareAnimationX = -20
                yellowSquareAnimationY = -20
                purpleSquareAnimationY = 20
                
            }
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            withAnimation(.timingCurve(0.33, 1, 0.68, 1, duration: 0.5)) {
                orangeSquareAnimationY = -20
                greenSquareAnimationY = 20
                yellowSquareAnimationX = -20
                purpleSquareAnimationX = 20
            }
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            withAnimation(.timingCurve(0.33, 1, 0.68, 1, duration: 0.5)) {
                orangeSquareAnimationX = -20
                greenSquareAnimationX = 20
                yellowSquareAnimationY = 20
                purpleSquareAnimationY = -20
            }
        }
    }
    
}

struct LoadingCubeOffset_Previews: PreviewProvider {
    static var previews: some View {
        LoadingCubeOffset()
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}
