//
//  HeaderView.swift
//  TodoApp
//
//  Created by Presidio on 15/07/23.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(Color.black)
            VStack{
                Text("Welcome to Presidio DO")
                    .font(.system(size: 30))
                    .foregroundColor(Color.white)
                    .bold()
                    .padding(.bottom,50)
            }
            .padding(.top,300)
           
        }
        .frame(width : UIScreen.main.bounds.width * 3,
               height : 100)
        .offset(y: -100)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
