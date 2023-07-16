//
//  LoginView.swift
//  TodoApp
//
//  Created by Presidio on 15/07/23.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationView{
            VStack{
                //Header
                HeaderView(title: "Welcome to Presidio DO", background: .black)
                //Login Form
                Form{
                    if !viewModel.errorMessage.isEmpty{
                        Text(viewModel.errorMessage)
                            .foregroundColor(Color.red)
                    }
                    
                    TextField("Email Address",text: $viewModel.email)
                        .autocapitalization(.none)
                        .autocorrectionDisabled()
                    SecureField("Password",text: $viewModel.password)
                  
                    TLButton(title: "Log In", background: .green){
                        viewModel.login()
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
