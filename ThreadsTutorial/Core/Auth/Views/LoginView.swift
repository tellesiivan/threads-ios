//
//  LoginView.swift
//  ThreadsTutorial
//
//  Created by Telles Ivan on 3/28/24.
//

import SwiftUI

struct LoginView: View {
   @State private var email = ""
   @State private var password = ""
   
    var body: some View {
       NavigationStack {
          VStack {
             Spacer()
             Image("threads-icon")
                .resizable()
                .scaledToFit()
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                .padding()
             VStack(spacing:6) {
                TextField("Enter your email", text: $email)
                   .font(.subheadline)
                   .padding(12)
                   .padding(.vertical, 4)
                   .background(Color(.systemGray6))
                   .cornerRadius(10)
                  	
                SecureField("Enter your password", text: $password)
                   .font(.subheadline)
                   .padding(12)
                   .padding(.vertical, 4)
                   .background(Color(.systemGray6))
                   .cornerRadius(10)
                VStack(spacing:10){
                   NavigationLink{
                      Text("")
                   } label: {
                      Text("Forgot Password?")
                         .font(.footnote)
                         .fontWeight(.semibold)
                         .foregroundStyle(Color.secondary)
                         .padding(.top)
                         .padding(.trailing, 20)
                         .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .trailing)
                   }
                   Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                      Text("Login")
                         .font(.subheadline)
                         .fontWeight(.semibold)
                         .frame(width: 352, height: 44)
                         .background(Color.accentColor)
                         .cornerRadius(12)
                         .foregroundStyle(Color.white)
                      
                   })
            
                }
         
             }
             .padding()
             Spacer()
             Divider()
             NavigationLink {
                Text("registration")
             } label: {
                Text("Don't Have an account? Sign Up")
                   .padding()
                   .fontWeight(.semibold)
                   .font(.footnote)
                   .foregroundStyle(Color.secondary)
             }
          }
       }
    }
}

#Preview {
    LoginView()
}
