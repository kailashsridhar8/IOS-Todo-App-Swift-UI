//
//  TLButton.swift
//  TodoApp
//
//  Created by Presidio on 16/07/23.
//

import SwiftUI

struct TLButton: View {
    
    let title: String
    let background: Color
    let action: () -> Void
    
    var body: some View {
        Button{
            //Action
            action()
        }
    label: {
        ZStack{
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(background)
            
            Text(title)
                .foregroundColor(Color.white)
                .bold()
        }.padding(10)
    }
    }
}

struct TLButton_Previews: PreviewProvider {
    static var previews: some View {
        TLButton(title: "Value", background: .red){
            //Action
        }
    }
}
