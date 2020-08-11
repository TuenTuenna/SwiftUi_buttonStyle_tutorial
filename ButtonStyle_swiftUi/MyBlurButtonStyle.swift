//
//  MyButtonSytle.swift
//  ButtonStyle_swiftUi
//
//  Created by Jeff Jeong on 2020/08/11.
//  Copyright © 2020 Tuentuenna. All rights reserved.
//

import SwiftUI

struct MyBlurButtonStyle : ButtonStyle {
    
    var color : Color
    
    func makeBody(configuration: Configuration) -> some View {
        
        configuration
            .label
            .font(.system(size: 20))
            .foregroundColor(Color.white)
            .padding()
            .background(color)
            .cornerRadius(20)
            .blur(radius: configuration.isPressed ? 10 : 0)
        
    }
    
    
}

struct MyBlurButtonStyle_Previews: PreviewProvider {
    static var previews: some View {
        Button(action : {
                print("button clicked!")
            }, label: {
                Text("호호")
            }
        ).buttonStyle(MyBlurButtonStyle(color: Color.blue))
    }
}
