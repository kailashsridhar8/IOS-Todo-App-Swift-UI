//
//  RegisterView.swift
//  TodoApp
//
//  Created by Presidio on 15/07/23.
//

import SwiftUI

struct RegisterView: View {
  
    @StateObject var viewModel = RegisterViewViewModel()
    var body: some View {
        VStack{
            //header
            HeaderView(title: "Register", background: .black)
            Form{
                if !viewModel.errorMessage.isEmpty{
                    Text(viewModel.errorMessage)
                        .foregroundColor(Color.red)
                }er
                TextField("Full Name",text: $viewModel.name)
                    .autocorrectionDisabled()
                TextField("Email Address",text: $viewModel.email)
                    .autocapitalization(.none)
                    .autocorrectionDisabled()
                SecureField("Password",text: $viewModel.password)
                
                  TLButton(title: "Create an account", background: .green){
                      viewModel.register()
                  }
            }
            Spacer()
        }
    
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
