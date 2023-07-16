//
//  ProfileView.swift
//  TodoApp
//
//  Created by Presidio on 15/07/23.
//

import SwiftUI

struct ProfileView: View {
    
    @StateObject var viewModel = ProfileViewViewModel()
    
    init(){
    }
    
    var body: some View {
        NavigationView{
            VStack{
                // Avatar
                Image(systemName: "person.circle")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(Color.blue)
                    .frame(width: 125, height: 125 )
                    .padding()
                // Info: Name, Email, Member since
                VStack(alignment: .leading ){
                    HStack{
                        Text("Name: ")
                            .bold()
                        Text("Kailash")
                    }.padding()
                    HStack{
                        Text("Email: ")
                            .bold()
                        Text("kailash@gmail.com")
                    }.padding()
                    HStack{
                        Text("Member Since: ")
                            .bold()
                        Text("2023")
                    }.padding() 
                }.padding()
                // Sign out
                Button("Logout") {
                    viewModel.logOut()
                }.tint(.red)
                    .padding()
                
            }
            .navigationTitle("Profile")
            
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
