//
//  ProfileView.swift
//  ArticleAppIos
//
//  Created by WDT on 08/07/24.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationView {
            VStack {
                Image("zuldicoding")
                    .resizable()
                    .frame(width: 100.0, height: 100.0)
                    .clipShape(Circle())
                    .padding(10)
                Text("Full Name: Zuhrul Anam")
                    .font(.title2)
                    .padding(5)
                Text("Email: zuhrrlanam@gmail.com")
                Spacer()
            }
            .padding(25)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("Profile")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                }
            }
            .toolbarBackground(.visible, for: .navigationBar)}   
        
    }
}

#Preview {
    ContentView()
}
