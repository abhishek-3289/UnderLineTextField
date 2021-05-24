//
//  UnderLineTextFieldStyle.swift
//  App
//
//  Created by Abhishek Bansal on 24/05/21.
//


import SwiftUI

struct UnderLineTextFieldStyle : TextFieldStyle {
    
    var activeColor:Color = Color.black
    var inactiveColor:Color = Color.gray
    @Binding var focused: Bool
    
    public func _body(
        configuration: TextField<Self._Label>
    ) -> some View {
        
        configuration
            .background(
                focused ? line(activeColor) : line(inactiveColor),
                alignment: .bottom
            )
    }
    
    func line(_ color:Color) -> some View {
        return Rectangle()
            .frame(height: 1)
            .foregroundColor(color)
            .padding(.all, 0)
    }
    
}

