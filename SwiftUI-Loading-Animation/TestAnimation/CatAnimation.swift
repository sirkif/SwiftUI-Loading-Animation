//
//  Cat.swift
//  SwiftUI-Loading-Animation
//
//  Created by Adam on 5/27/21.
//

import SwiftUI

struct Cat: View {
    @State private var catAnimation: CGFloat = 0
    var body: some View {
        ZStack{
            VStack{
                Image("cat")
                    .resizable()
                    .scaledToFit()
                    .padding(.top, catAnimation)
                    .animation(/*@START_MENU_TOKEN@*/.easeIn/*@END_MENU_TOKEN@*/(duration: 2))
                    .onTapGesture {
                        catAnimation = 100
                    }
                Spacer()
            }//End of VSTack
        }//End of ZStack
    }
}

struct Cat_Previews: PreviewProvider {
    static var previews: some View {
        Cat()
    }
}
