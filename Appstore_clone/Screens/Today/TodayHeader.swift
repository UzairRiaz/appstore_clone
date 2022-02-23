//
//  TodayHeader.swift
//  Appstore_clone
//
//  Created by Uzair Riaz on 23/02/2022.
//

import SwiftUI

struct TodayHeader: View {
    // MARK: Properties
    let today = Date().formatDate()
    @State private var showAccount: Bool = false
    
    var body: some View {
        HStack{
            VStack(alignment: .leading){
                Text(today.uppercased())
                    .fontWeight(.bold)
                    .foregroundColor(.gray)
                    .font(.caption)
                Text("Today")
                    .font(.largeTitle)
                    .fontWeight(.bold)
            }
            Spacer()
            AsyncImage(url: URL(string: "https://images.unsplash.com/photo-1586682643135-060f061868b6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=971&q=80")) { image in
                image
                    .resizable()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
            } placeholder: {
                Image(systemName: "person.crop.circle.fill")
                    .resizable()
                    .frame(width: 40, height: 40)
            }
            .onTapGesture {
                self.showAccount = true
            }
        }
        .padding(.horizontal)
        .sheet(isPresented: $showAccount) {
            Text("Account Details")
        }
    }
}

struct TodayHeader_Previews: PreviewProvider {
    static var previews: some View {
        TodayHeader()
    }
}
