//
//  Overview.swift
//  Profile1
//
//  Created by Pradeep kumar sagar on 09/06/26.
//

import SwiftUI

struct Overview: View {
    var body: some View {
        VStack{
            userPic
            
            userInfo
            
            ScrollView{
                userCard
                
                quickActionView
                
                TransactionView()
            }
            
            Spacer()
        }
    }
    
    var userPic: some View{
        HStack{
            Image("pic1")
                .resizable()
                .frame(width: 70, height: 70)
                .aspectRatio(contentMode: .fit)
                .background(.gray)
                .clipShape(Circle())
            
            Spacer()
            
            Image(systemName: "bell")
                .resizable()
                .frame(width: 30, height: 30)
                .aspectRatio(contentMode: .fit)
        }
        .padding(.leading, 20)
        .padding(.trailing, 20)
        .padding(.bottom, 20)
        
    }
    var userInfo: some View{
        VStack(alignment: .leading){
            HStack{
                Text("Hello, Pradeep")
                    .font(.title)
                    .fontWeight(.semibold)
                Image(systemName: "hands.clap")
                    .foregroundColor(.red)
                //.frame(width: 70, height: 70)
                Spacer()
            }
            .padding(.leading, 30)
            Text("Here's is your financial overview")
                .font(.subheadline)
                .padding(.leading, 30)
        }
    }
    
    var userCard: some View{
        ZStack{
            RoundedRectangle(cornerRadius: 20)
                .frame(height: 170)
                .overlay {
                    LinearGradient(colors: [.blue,.purple], startPoint: .top, endPoint: .bottomTrailing)
                        .cornerRadius(20)
                        .opacity(0.5)
                }
                .padding()
            
            VStack(alignment: .leading){
                HStack{
                    VStack(spacing: 10){
                        HStack{
                            Text("Total Balance")
                                .foregroundColor(.white)
                                .padding([.leading,.top], 10)
                            Image(systemName: "eye")
                                .foregroundColor(.white)
                                .padding(.top, 10)
                        }
                        Text("$8,343.75")
                            .foregroundColor(.white)
                            .font(.title)
                        
                        Text("")
                        
                        //income
                    }
                    Text("")
                        .font(.title)
                    Text("")
                        .font(.title)
                    Text("")
                        .font(.title)
                    Text("")
                        .font(.title)
                    Text("")
                        .font(.title)
                    Button(role: .cancel) {
                        
                    } label: {
                        Label("Add Money", systemImage: "goforward.plus")
                    }
                    .padding()
                    .background(.white)
                    .bold()
                    .cornerRadius(20)
                }
                
                //padding(.trailing, 10)
                //.background(.yellow)
                HStack(spacing: 30){
                    income
                    expense
                }
            }
            //.background(.cyan)
        }
    }
    
    var expense: some View{
        VStack(alignment: .leading){
            Text("Expense")
                .foregroundColor(.white)
            HStack{
                Text("$5,200.00")
                    .foregroundColor(.white)
                    .font(.title)
                Image(systemName: "arrow.down")
                    .foregroundColor(.red)
            }
            .padding(.bottom, 10)
        }
    }
    var income: some View{
        VStack(alignment: .leading){
            Text("Income")
                .foregroundColor(.white)
                .padding(.leading, 10)
            HStack{
                Text("$5,200.00")
                    .foregroundColor(.white)
                    .font(.title)
                    .padding([.leading, .bottom], 10)
                Image(systemName: "arrow.up")
                    .foregroundColor(.green)
                    .padding(.bottom, 10)
            }
        }
    }
    
    var quickActionView: some View{
        VStack(alignment: .leading){
            Text("Quick Actions")
                .font(.title)
                .padding(.leading, 20)
            
            HStack(spacing: 10){
                ButtonActionView(icon: "paperplane", title: "Send")
                ButtonActionView(icon: "arrow.down.to.line", title: "Recieve")
                ButtonActionView(icon: "clock", title: "History")
                ButtonActionView(icon: "list.dash", title: "More")
            }
            .padding([.leading,.trailing], 20)
        }
        .frame(maxWidth: .infinity, alignment: .topLeading)
       
    }
    
}
struct ButtonActionView: View{
    let icon: String
    let title: String
    
    var body: some View{
        VStack(spacing: 10){
            Image(systemName: icon)
                .font(.title2)
                .foregroundColor(.blue)
            
            Text(title)
                .font(.headline)
        }
        .frame(width: 80, height: 90)
        .background(.white)
        .overlay {
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.gray.opacity(0.6),lineWidth: 1)
        }
    }
}
struct TransactionView: View{
    var body: some View{
        VStack(alignment: .leading){
            HStack{
                Text("Recent Transactions")
                    .padding()
                    .font(.title2)
                    .bold()
                Spacer()
                Text("See all")
                    .padding()
                    .font(.title2)
                    .foregroundColor(.gray)
            }
            VStack(spacing: 2) {
                ForEach(0..<5) { val in
                    HStack{
                        Image(systemName: "flipphone")
                            
                            .resizable()
                            .frame(width: 40 , height: 40)
                            .padding()
                            .overlay {
                                Circle().stroke(Color.red, lineWidth: 2)
                            }
                        
                        VStack(alignment: .leading, spacing: 10){
                            Text("Dribble Pro")
                                .font(.title3)
                                .bold()
                               // .padding(.leading, 10)
                            
                            Text("May 20, 2026")
                                .font(.title3)
                                .bold()
                                .foregroundColor(.gray)
                                //.padding(.top, 10)
                        }
                        Spacer()
                        Text("-$12.0")
                            .font(.title3)
                            .bold()
                    }
                    .padding()
                    .background(.white)
                }
            }
            .background(Color("listBG"))
        }
    }
}
struct Overview_Previews: PreviewProvider {
    static var previews: some View {
        Overview()
    }
}
