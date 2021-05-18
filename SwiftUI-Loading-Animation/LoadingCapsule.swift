//
//  LoadingCapsule.swift
//  SwiftUI-Loading-Animation
//
//  Created by Adam on 5/18/21.
//

import SwiftUI

struct LoadingCapsule: View {
    
    @State private var spacingAnimation = false
    
    var body: some View {
        
        HStack(spacing: spacingAnimation ? CGFloat(15) : CGFloat(5)) {
            
            Capsule(style: .continuous)
                .fill(Color(#colorLiteral(red: 0.02352941176, green: 0.8392156863, blue: 0.6274509804, alpha: 1)))
                .frame(width: 10, height: 50)
            
            Capsule(style: .continuous)
                .fill(Color(#colorLiteral(red: 1, green: 0.8196078431, blue: 0.4, alpha: 1)))
                .frame(width: 10, height: 30)
            
            Capsule(style: .continuous)
                .fill(Color(#colorLiteral(red: 0.937254902, green: 0.2784313725, blue: 0.4352941176, alpha: 1)))
                .frame(width: 10, height: 50)
            
            Capsule(style: .continuous)
                .fill(Color(#colorLiteral(red: 1, green: 0.8196078431, blue: 0.4, alpha: 1)))
                .frame(width: 10, height: 30)
            
            Capsule(style: .continuous)
                .fill(Color(#colorLiteral(red: 0.02352941176, green: 0.8392156863, blue: 0.6274509804, alpha: 1)))
                .frame(width: 10, height: 50)
        }
        .animation(Animation.easeInOut(duration: 1).repeatForever(autoreverses: true))
        .onAppear {
            spacingAnimation.toggle()
        }
    }
}

struct LoadingCapsule_Previews: PreviewProvider {
    static var previews: some View {
        LoadingCapsule()
            .preferredColorScheme(.dark)
    }
}

