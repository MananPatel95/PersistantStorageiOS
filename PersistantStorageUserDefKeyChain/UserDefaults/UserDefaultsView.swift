//
//  ContentView.swift
//  PersistantStorageUserDefKeyChain
//
//  Created by Manan Patel on 2024-09-02.
//



import SwiftUI

struct UserDefaultsView: View {
    private var viewModel = ContentViewModel()
    
    @State private var emailValue = ""
    @AppStorage("email") var savedEmailValue: String = "NA"
    
    @State private var passwordValue = ""
    @KeyChainStorage("password") var savedPasswordValue: String = "NA"
    
    var body: some View {
        VStack(alignment: .leading) {
            Spacer()
            
            Group {
                Text("UserDefaults").font(.headline)
                TextField("Enter Email", text: $emailValue)
                
                
                Button("Save Email") {
                    savedEmailValue = emailValue
                }
                
                Text("Saved Email Value: \(savedEmailValue)")
            }
            .padding(8)
            
            Spacer()
            
            Group {
                Text("KeyChain Wrapper").font(.headline)
                TextField("Enter Password", text: $passwordValue)
                
                
                Button("Save Password") {
                    savedPasswordValue = passwordValue
                }
                
                Text("Saved Password Value: \(savedPasswordValue)")
            }
            .padding(8)
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
