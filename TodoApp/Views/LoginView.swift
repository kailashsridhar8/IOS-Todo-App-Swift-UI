//
//  LoginView.swift
//  TodoApp
//
//  Created by Presidio on 15/07/23.
//

import SwiftUI

struct LoginView: View {
    
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        NavigationView{
            VStack{
                //Header
                HeaderView()
                //Login Form
                Form{
                    TextField("Email Address",text: $email)
                    SecureField("Password",text: $password)
                    
                    Button{
                        
                    }
                label:{
                    ZStack{
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(Color.green)
                        
                        Text("Log In")
                            .foregroundColor(Color.white)
                            .bold()
                    }.padding(10)
                }
                      
                    
                }.scrollContentBackground(.hidden)
                    .background(Color(UIColor.systemBackground))
                //Create Account
                
                VStack{
                    Text("Don't have an account?")
                    NavigationLink("Create an Account", destination: RegisterView())
                }.padding(.bottom,50)
                
                Spacer()
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
