//
//  LoadingOne.swift
//  SwiftUI-Loading-Animation
//
//  Created by Adam on 5/16/21.
//

import SwiftUI

struct LoadingOne: View {
    
    @State private var loadingAnimation = 0
    
    var body: some View {
        
        ZStack{
            
            Circle()
                .frame(width: 10, height: 10, alignment: .center)
                .foregroundColor(Color(#colorLiteral(red: 0.9647058824, green: 0.9647058824, blue: 0.9647058824, alpha: 1)))
                .offset(y: -90)
                .rotationEffect(.degrees(Double(loadingAnimation)))
                .animation(.easeInOut(duration: 1).delay(1).repeatForever(autoreverses: false))
            
            Circle()
                .frame(width: 20, height: 20, alignment: .center)
                .foregroundColor(Color(#colorLiteral(red: 0.7137254902, green: 0.7882352941, blue: 0.9411764706, alpha: 1)))
                .offset(y: -90)
                .rotationEffect(.degrees(Double(loadingAnimation)))
                .animation(.easeInOut(duration: 1.1).delay(0.9).repeatForever(autoreverses: false))
            
            Circle()
                .frame(width: 30, height: 30, alignment: .center)
                .foregroundColor(Color(#colorLiteral(red: 1, green: 0.8980392157, blue: 0.8862745098, alpha: 1)))
                .offset(y: -90)
                .rotationEffect(.degrees(Double(loadingAnimation)))
                .animation(.easeInOut(duration: 1.2).delay(0.8).repeatForever(autoreverses: false))
            
            Circle()
                .frame(width: 35, height: 35, alignment: .center)
                .foregroundColor(Color(#colorLiteral(red: 0.9607843137, green: 0.6705882353, blue: 0.7882352941, alpha: 1)))
                .offset(y: -90)
                .rotationEffect(.degrees(Double(loadingAnimation)))
                .animation(.easeInOut(duration: 1.3).delay(0.7).repeatForever(autoreverses: false))
            
            Circle()
                .frame(width: 40, height: 40, alignment: .center)
                .foregroundColor(Color(#colorLiteral(red: 0.9137254902, green: 0.231372549, blue: 0.5058823529, alpha: 1)))
                .offset(y: -90)
                .rotationEffect(.degrees(Double(loadingAnimation)))
                .animation(.easeInOut(duration: 1.4).delay(0.6).repeatForever(autoreverses: false))
            
        }//End of ZStack
        .onAppear(){
            loadingAnimation = 360
        }
    }
}

struct LoadingOne_Previews: PreviewProvider {
    static var previews: some View {
        LoadingOne()
            .preferredColorScheme(.dark)
    }
}
