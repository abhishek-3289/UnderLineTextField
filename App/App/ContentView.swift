//
//  ContentView.swift
//  App
//
//  Created by Abhishek Bansal on 24/05/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var text:String = ""
    @State private var editing = false
  
    var body: some View {
        
        TextField(
                "label",
                 text: $text
        ) {
            isEditing in
            self.editing = isEditing
        }
        .autocapitalization(.none)
        .disableAutocorrection(true)
        .textFieldStyle(
            UnderLineTextFieldStyle(
                focused: $editing
            )
        )
        .padding(.horizontal,30)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
