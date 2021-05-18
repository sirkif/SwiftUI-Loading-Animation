//
//  LoadingOutterInner.swift
//  SwiftUI-Loading-Animation
//
//  Created by Adam on 5/18/21.
//

import SwiftUI

struct LoadingOutterInner: View {
    @State private var spacingAnimation = false
    
    var body: some View {
        
        HStack(alignment: .center, spacing: spacingAnimation ? CGFloat(15) : CGFloat(5)) {
            Capsule(style: .continuous)
                .fill(Color(#colorLiteral(red: 0.7137254902, green: 0.7882352941, blue: 0.9411764706, alpha: 1)))
                .frame(width: 10, height: 50)
            Capsule(style: .continuous)
                .fill(Color(#colorLiteral(red: 0.6588235294, green: 0.8470588235, blue: 0.9176470588, alpha: 1)))
                .frame(width: 10, height: 30)
            Capsule(style: .continuous)
                .fill(Color(#colorLiteral(red: 0.9137254902, green: 0.231372549, blue: 0.5058823529, alpha: 1)))
                .frame(width: 10, height: 50)
            Capsule(style: .continuous)
                .fill(Color(#colorLiteral(red: 0.9607843137, green: 0.6705882353, blue: 0.7882352941, alpha: 1)))
                .frame(width: 10, height: 30)
            Capsule(style: .continuous)
                .fill(Color(#colorLiteral(red: 0.6666666667, green: 0.5882352941, blue: 0.8549019608, alpha: 1)))
                .frame(width: 10, height: 50)
        }
//        .frame(width: spacingAnimation ? CGFloat(150) : CGFloat(100))
        .animation(Animation.easeInOut(duration: 1).repeatForever(autoreverses: true))
        .onAppear {
            spacingAnimation.toggle()
        }
    }
}

struct LoadingOutterInner_Previews: PreviewProvider {
    static var previews: some View {
        LoadingOutterInner()
    }
}

