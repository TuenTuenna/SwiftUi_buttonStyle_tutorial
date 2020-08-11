//
//  ContentView.swift
//  ButtonStyle_swiftUi
//
//  Created by Jeff Jeong on 2020/08/11.
//  Copyright © 2020 Tuentuenna. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 30){
            
            Button(
                action: {
               print("button clicked!")
            }, label: {
                Text("탭")
                    .fontWeight(.bold)
            }).buttonStyle(MyButtonStyle(color: Color.blue, type: .tab))
            
            Button(
                action: {
               print("button clicked!")
            }, label: {
                Text("롱클릭")
                    .fontWeight(.bold)
            }).buttonStyle(MyButtonStyle(color: Color.green, type: .long))
            
            Button(
                action: {
               print("button clicked!")
            }, label: {
                Text("축소 버튼")
                    .fontWeight(.bold)
            }).buttonStyle(MySmallerButtonStyle(color: Color.purple))
            
            Button(
                action: {
               print("button clicked!")
            }, label: {
                Text("회전 버튼")
                    .fontWeight(.bold)
            }).buttonStyle(MyRotateButtonStyle(color: Color.pink))

            Button(
                action: {
               print("button clicked!")
            }, label: {
                Text("블러 버튼")
                    .fontWeight(.bold)
            }).buttonStyle(MyBlurButtonStyle(color: Color.black))
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
