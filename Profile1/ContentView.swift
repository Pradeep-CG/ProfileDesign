//
//  ContentView.swift
//  Profile1
//
//  Created by Pradeep kumar sagar on 05/06/26.
//

import SwiftUI

struct ContentView: View {
    
    init() {
        UINavigationBar.appearance().titleTextAttributes = [
            .foregroundColor: UIColor.white
        ]
    }
    var body: some View {
        NavigationView {
            ZStack{
                LinearGradient(colors: [.black,.brown,.red], startPoint: .leading, endPoint: .trailing)
                
                VStack{
                    picView()
                    
                    HStack{
                        picDetail()
                    }
                    .padding()
                    
                    picInfo()

                   // Spacer()
                }
                .padding(.top, 80)
            }
            .ignoresSafeArea()
            .navigationTitle(Text("Profile"))
            
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Image(systemName: "arrow.backward.circle")
                            .foregroundColor(.white)
                    }
                    
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Image(systemName: "circle.hexagongrid.circle")
                            .foregroundColor(.white)
                    }
                }
        }
        
    }
}
struct picView: View {
    var body: some View{
        Image("pic1")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 2)
            }
            .frame(width: 160, height: 250)
            //.background(.yellow)
        Text("Ms. Charlotte")
            .font(.title)
            .foregroundColor(.white)
            .offset(x:0, y: -30)
        Text("Designer")
            .font(.caption)
            .foregroundColor(.white)
            .offset(x:0, y: -30)
    }
}
struct picDetail: View{
    var body: some View{
        ZStack {
            Rectangle()
                .fill(.brown)
                .cornerRadius(20)
                .frame(height: 100)
                .shadow(color: .white, radius: 2)
            
            VStack{
                Text("24")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
                Text("Activities")
                    .font(.caption)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
            }
        }
        ZStack {
            Rectangle()
                .fill(.brown)
                .cornerRadius(20)
                .frame(height: 100)
                .shadow(color: .white, radius: 2)
            
            VStack{
                Text("85")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
                Text("Likes")
                    .font(.caption)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
            }
        }
        ZStack {
            Rectangle()
                .fill(.brown)
                .cornerRadius(20)
                .frame(height: 100)
                .shadow(color: .white, radius: 2)
            
            VStack{
                Text("46")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
                Text("Life Momments")
                    .font(.caption)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
            }
        }

    }
}

struct picInfo: View{
    @State private var listValue = ["Subscription", "Restore Subscription", "Term of use", "Privacy Policy"]
    var body: some View{
        List {
            Section {
                ForEach(listValue, id: \.self) { val in
                    NavigationLink {
                        Text("Detail")
                    } label: {
                        Text(val)
                    }

                        //.listRowBackground(Color.clear)
                }
            }
            .listRowBackground(LinearGradient(colors: [.white,.gray,.orange,.white], startPoint: .leading, endPoint: .trailing))
            .font(.title3)
            
            Section {
                Text("Notifications")
                Text("Privacy & Security")
                Text("Help & Support")
            }
            .listRowBackground(LinearGradient(colors: [.white,.brown], startPoint: .leading, endPoint: .trailing))
            .font(.title3)
        }
        //.padding()
        .listStyle(.insetGrouped)
        .scrollContentBackground(.hidden)
        

    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
