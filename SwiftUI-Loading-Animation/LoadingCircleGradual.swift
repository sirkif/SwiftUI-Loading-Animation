//
//  LoadingCircleGradual.swift
//  SwiftUI-Loading-Animation
//
//  Created by Adam on 5/23/21.
//

import SwiftUI

struct LoadingCircleGradual: View {
    
    @State private var gradualAnimation = false
    
    var body: some View {
        ZStack{
            
            Circle()
                .frame(width: 30, height: 30, alignment: .center)
                .foregroundColor(Color(#colorLiteral(red: 1, green: 0.9607843137, blue: 0.6705882353, alpha: 1)))
                .opacity(gradualAnimation ? 0.5 : 1)
                .scaleEffect(gradualAnimation ? 0.5 : 1)
                .offset(y: gradualAnimation ? 0 : -55)
                .animation(.easeOut(duration: 0.25))
            
            Circle()
                .frame(width: 30, height: 30, alignment: .center)
                .foregroundColor(Color(#colorLiteral(red: 1, green: 0.9607843137, blue: 0.6705882353, alpha: 1)))
                .opacity(gradualAnimation ? 0.5 : 1)
                .scaleEffect(gradualAnimation ? 0.5 : 1)
                .offset(x: gradualAnimation ? 0 : 55)
                .rotationEffect(.degrees(-45))
                .animation(.easeOut(duration: 0.25).delay(0.25))
            
            Circle()
                .frame(width: 30, height: 30, alignment: .center)
                .foregroundColor(Color(#colorLiteral(red: 1, green: 0.9607843137, blue: 0.6705882353, alpha: 1)))
                .opacity(gradualAnimation ? 0.5 : 1)
                .scaleEffect(gradualAnimation ? 0.5 : 1)
                .offset(x: gradualAnimation ? 0 : 55)
                .animation(.easeOut(duration: 0.25).delay(0.5))
            
            Circle()
                .frame(width: 30, height: 30, alignment: .center)
                .foregroundColor(Color(#colorLiteral(red: 1, green: 0.9607843137, blue: 0.6705882353, alpha: 1)))
                .opacity(gradualAnimation ? 0.5 : 1)
                .scaleEffect(gradualAnimation ? 0.5 : 1)
                .offset(x: gradualAnimation ? 0 : 55)
                .rotationEffect(.degrees(45))
                .animation(.easeOut(duration: 0.25).delay(0.75))
            
            Circle()
                .frame(width: 30, height: 30, alignment: .center)
                .foregroundColor(Color(#colorLiteral(red: 1, green: 0.9607843137, blue: 0.6705882353, alpha: 1)))
                .opacity(gradualAnimation ? 0.5 : 1)
                .scaleEffect(gradualAnimation ? 0.5 : 1)
                .offset(y: gradualAnimation ? 0 : 55)
                .animation(.linear(duration: 0.25).delay(1))
            
            Circle()
                .frame(width: 30, height: 30, alignment: .center)
                .foregroundColor(Color(#colorLiteral(red: 1, green: 0.9607843137, blue: 0.6705882353, alpha: 1)))
                .opacity(gradualAnimation ? 0.5 : 1)
                .scaleEffect(gradualAnimation ? 0.5 : 1)
                .offset(x: gradualAnimation ? 0 : 55)
                .rotationEffect(.degrees(135))
                .animation(.easeOut(duration: 0.25).delay(1.25))
            
            Circle()
                .frame(width: 30, height: 30, alignment: .center)
                .foregroundColor(Color(#colorLiteral(red: 1, green: 0.9607843137, blue: 0.6705882353, alpha: 1)))
                .opacity(gradualAnimation ? 0.5 : 1)
                .scaleEffect(gradualAnimation ? 0.5 : 1)
                .offset(x: gradualAnimation ? 0 : -55)
                .animation(.easeOut(duration: 0.25).delay(1.5))
            
            Circle()
                .frame(width: 30, height: 30, alignment: .center)
                .foregroundColor(Color(#colorLiteral(red: 1, green: 0.9607843137, blue: 0.6705882353, alpha: 1)))
                .opacity(gradualAnimation ? 0.5 : 1)
                .scaleEffect(gradualAnimation ? 0.5 : 1)
                .offset(x: gradualAnimation ? 0 : 55)
                .rotationEffect(.degrees(-135))
                .animation(.easeOut(duration: 0.25).delay(1.75))
            
            Circle()
                .frame(width: 30, height: 30, alignment: .center)
                .foregroundColor(Color(#colorLiteral(red: 1, green: 0.9607843137, blue: 0.6705882353, alpha: 1)))
            
        }//End of ZStack
        .onAppear(){
            
            Timer.scheduledTimer(withTimeInterval: 4, repeats: true) { _ in
                gradualAnimation.toggle()
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.75) {
                    gradualAnimation.toggle()
                    
                }
            }
            //MARK: - To fire Timer immediately
//            .fire()
        }
    }
}

struct LoadingCircleGradual_Previews: PreviewProvider {
    static var previews: some View {
        LoadingCircleGradual()
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}
