//
//  LoadingCircleGradual.swift
//  SwiftUI-Loading-Animation
//
//  Created by Adam on 5/23/21.
//

import SwiftUI

struct LoadingCircleGradual: View {
    
    @State private var gradualOpacityAnimation = 1.0
    @State private var gradualScaleAnimation: CGFloat = 1.0
    
    var body: some View {
        
        ZStack{
            
            Circle()
                .frame(width: 30, height: 30, alignment: .center)
                .foregroundColor(Color(#colorLiteral(red: 1, green: 0.9607843137, blue: 0.6705882353, alpha: 1)))
                .opacity(gradualOpacityAnimation)
                .scaleEffect(gradualScaleAnimation)
                .offset(y: gradualOpacityAnimation == 0.5 ? 0 : -55)
                .animation(.easeOut(duration: 0.25))
            
            Circle()
                .frame(width: 30, height: 30, alignment: .center)
                .foregroundColor(Color(#colorLiteral(red: 1, green: 0.9607843137, blue: 0.6705882353, alpha: 1)))
                .opacity(gradualOpacityAnimation)
                .scaleEffect(gradualScaleAnimation)
                .offset(x: gradualOpacityAnimation == 0.5 ? 0 : 55)
                .rotationEffect(.degrees(-45))
                .animation(.easeOut(duration: 0.25).delay(0.25))
            
            Circle()
                .frame(width: 30, height: 30, alignment: .center)
                .foregroundColor(Color(#colorLiteral(red: 1, green: 0.9607843137, blue: 0.6705882353, alpha: 1)))
                .opacity(gradualOpacityAnimation)
                .scaleEffect(gradualScaleAnimation)
                .offset(x: gradualOpacityAnimation == 0.5 ? 0 : 55)
                .animation(.easeOut(duration: 0.25).delay(0.5))
            
            Circle()
                .frame(width: 30, height: 30, alignment: .center)
                .foregroundColor(Color(#colorLiteral(red: 1, green: 0.9607843137, blue: 0.6705882353, alpha: 1)))
                .opacity(gradualOpacityAnimation)
                .scaleEffect(gradualScaleAnimation)
                .offset(x: gradualOpacityAnimation == 0.5 ? 0 : 55)
                .rotationEffect(.degrees(45))
                .animation(.easeOut(duration: 0.25).delay(0.75))
            
            Circle()
                .frame(width: 30, height: 30, alignment: .center)
                .foregroundColor(Color(#colorLiteral(red: 1, green: 0.9607843137, blue: 0.6705882353, alpha: 1)))
                .opacity(gradualOpacityAnimation)
                .scaleEffect(gradualScaleAnimation)
                .offset(y: gradualOpacityAnimation == 0.5 ? 0 : 55)
                .animation(.linear(duration: 0.25).delay(1))
            
            Circle()
                .frame(width: 30, height: 30, alignment: .center)
                .foregroundColor(Color(#colorLiteral(red: 1, green: 0.9607843137, blue: 0.6705882353, alpha: 1)))
                .opacity(gradualOpacityAnimation)
                .scaleEffect(gradualScaleAnimation)
                .offset(y: gradualOpacityAnimation == 0.5 ? 0 : 55)
                .rotationEffect(.degrees(45))
                .animation(.easeOut(duration: 0.25).delay(1.25))
            
            Circle()
                .frame(width: 30, height: 30, alignment: .center)
                .foregroundColor(Color(#colorLiteral(red: 1, green: 0.9607843137, blue: 0.6705882353, alpha: 1)))
                .opacity(gradualOpacityAnimation)
                .scaleEffect(gradualScaleAnimation)
                .offset(x: gradualOpacityAnimation == 0.5 ? 0 : -55)
                .animation(.easeOut(duration: 0.25).delay(1.5))
            
            Circle()
                .frame(width: 30, height: 30, alignment: .center)
                .foregroundColor(Color(#colorLiteral(red: 1, green: 0.9607843137, blue: 0.6705882353, alpha: 1)))
                .opacity(gradualOpacityAnimation)
                .scaleEffect(gradualScaleAnimation)
                .offset(y: gradualOpacityAnimation == 0.5 ? 0 : -55)
                .rotationEffect(.degrees(-45))
                .animation(.easeOut(duration: 0.25).delay(1.75))
            
            Circle()
                .frame(width: 30, height: 30, alignment: .center)
                .foregroundColor(Color(#colorLiteral(red: 1, green: 0.9607843137, blue: 0.6705882353, alpha: 1)))
            
        }//End of ZStack
        .onAppear(){
            Timer.scheduledTimer(withTimeInterval: 2, repeats: true) { _ in
                
                gradualOpacityAnimation = gradualOpacityAnimation == 1.0 ? 0.5 : 1
                
                gradualScaleAnimation = gradualScaleAnimation == 1.0 ? 0.5 : 1.0
            }
            //MARK: - To fire Timer immediately
            // .fire()
        }
    }
}

struct LoadingCircleGradual_Previews: PreviewProvider {
    static var previews: some View {
        LoadingCircleGradual()
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}
