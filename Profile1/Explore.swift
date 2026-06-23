//
//  Explore.swift
//  Profile1
//
//  Created by Pradeep kumar sagar on 18/06/26.
//

import SwiftUI

struct DestinationData{
    let imageName: String
    let title: String
    let star:Float
    let price: Int
    let day: Int
}
struct Explore: View {
    @State private var searchText = ""
    @State private var showPopOver = false
    @State private var showPopOver1 = false
    @State private var showPopOver2 = false
    
    var destinationVal = [
        DestinationData(imageName: "jh-1", title: "Trikut, Deoghar", star: 4.8, price: 1240, day: 7),
        DestinationData(imageName: "jh-2", title: "Patratu, Ranchi", star: 4.2, price: 1320, day: 2),
        DestinationData(imageName: "jh-3", title: "Konark, Bokaro", star: 3.8, price: 5010, day: 3),
        DestinationData(imageName: "jh-4", title: "Parasnath, Giridih", star: 4.5, price: 8410, day: 6),
    ]
    var body: some View {
        NavigationView {
            VStack(alignment: .leading){
                HStack{
                    Image(systemName: "line.3.horizontal")
                        .font(.largeTitle)
                    Spacer()
                    Image(systemName: "suit.heart.fill")
                        .font(.title)
                }
                .padding()
                
                VStack(alignment: .leading, spacing: 10){
                    Text("Explore")
                        .font(.largeTitle)
                        .bold()
                    //.padding()
                    
                    Text("Discover amazing places")
                    //.padding()
                        .font(.title3)
                }
                .padding(.leading, 20)
                // .background(.yellow)
                // .offset(y:-35)
                
                HStack {
                    TextField("Where do you want to go?", text: $searchText)
                       
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.gray)
                }
               // .padding()
                .padding(.horizontal, 16)
                .padding(.vertical, 12)
                .background(RoundedRectangle(cornerRadius: 25).fill(Color(.systemGray5)))
                //.cornerRadius(10)
                
                //.frame(maxWidth: .infinity)
                .overlay {
                    RoundedRectangle(cornerRadius: 25).stroke(.blue.opacity(0.5),lineWidth: 1)
                }
                .padding(.horizontal, 15)
                
                HStack{
                    Text("Popular Destinations")
                        .bold()
                    Spacer()
                    Text("See All")
                        .foregroundColor(.brown)
                }
                .font(.title3)
                .padding()
                
                ScrollView(.vertical){
                    ScrollView(.horizontal){
                        
                        HStack(spacing: 0){
                            ForEach(0..<4) { val in
                                
                                DestinationView(info: destinationVal[val])
                            }
                        }
                    }
                    VStack(alignment: .leading) {
                        Text("Categories")
                            .font(.title2)
                            .bold()
                        HStack(spacing: 5){
                            VStack{
                                Image("palm")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 30, height: 30)
                                Text("Beaches")
                                    .font(.system(size: 11))
                                    .bold()
                            }
                            .padding()
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                            .overlay {
                                RoundedRectangle(cornerRadius: 20).stroke(.gray.opacity(0.5), lineWidth: 1)
                            }
                            
                            VStack{
                                Image("mountain")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 30, height: 30)
                                Text("Mountain")
                                    .font(.system(size: 11))
                                    .bold()
                            }
                            .padding()
                            .frame(maxWidth: .infinity)
                            .overlay {
                                RoundedRectangle(cornerRadius: 20).stroke(.gray.opacity(0.5), lineWidth: 1)
                            }
                            VStack{
                                Image("cities")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 30, height: 30)
                                Text("Cities")
                                    .font(.system(size: 11))
                                    .bold()
                            }
                            .padding()
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                            .overlay {
                                RoundedRectangle(cornerRadius: 20).stroke(.gray.opacity(0.5), lineWidth: 1)
                            }
                            
                            VStack{
                                Menu {
                                    Button("Edit") { }
                                    Button("Delete") { }
                                } label: {
                                    Image("more")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 30, height: 30)
                                }
    //                            Image("more")
    //                                .resizable()
    //                                .scaledToFit()
    //                                .frame(width: 30, height: 30)
    //                            Text("More")
    //                                .font(.system(size: 11))
    //                                .bold()
                            }
                            .padding()
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                            .overlay {
                                RoundedRectangle(cornerRadius: 20).stroke(.gray.opacity(0.5), lineWidth: 1)
                            }
                            
                        }
                       // .padding()
                        .fixedSize(horizontal: false, vertical: false)
                        
                        Text("Featured")
                            .font(.title2)
                            .bold()
                        ScrollView(.horizontal){
                            HStack(spacing: 10) {
                                Button {
                                    showPopOver.toggle()
                                } label: {
                                    Image("jh-1")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 300, height: 300)
                                        .clipShape(RoundedRectangle(cornerRadius: 25))
                                        .overlay {
                                            RoundedRectangle(cornerRadius: 25).stroke(.gray.opacity(0.5),lineWidth: 1)
                                        }
                                }

                                
                                Button {
                                    showPopOver1.toggle()
                                } label: {
                                    Image("jh-2")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 300, height: 300)
                                        .clipShape(RoundedRectangle(cornerRadius: 25))
                                        .overlay {
                                            RoundedRectangle(cornerRadius: 25).stroke(.gray.opacity(0.5),lineWidth: 1)
                                        }
                                }
                                Button {
                                    showPopOver2.toggle()
                                } label: {
                                    Image("jh-3")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 300, height: 300)
                                        .clipShape(RoundedRectangle(cornerRadius: 25))
                                        .overlay {
                                            RoundedRectangle(cornerRadius: 25).stroke(.gray.opacity(0.5),lineWidth: 1)
                                        }
                                }

                            }
                               
                        }
                    }
                    .padding()
                    //.background(.yellow)
                    .frame(maxWidth: .infinity, alignment: .leading)
                }
                Spacer()
            }
            .ignoresSafeArea(edges: .bottom)
            .popover(isPresented: $showPopOver) {
                VStack {
                    Image("jh-1")
                        .resizable()
                        .scaledToFill()
                }
                .ignoresSafeArea()
            }
            .popover(isPresented: $showPopOver1) {
                VStack {
                    Image("jh-2")
                        .resizable()
                        .scaledToFill()
                }
                .ignoresSafeArea()
            }
            .popover(isPresented: $showPopOver2) {
                VStack {
                    Image("jh-3")
                        .resizable()
                        .scaledToFill()
                }
                .ignoresSafeArea()
            }
        }
        
    }
}
struct DestinationView: View{
    var info: DestinationData
    
    var body: some View{
        VStack(alignment: .leading,spacing: 20) {
            ZStack(alignment: .topTrailing){
                Image(info.imageName)
                    .resizable()
                    //.scaledToFit()
                    .frame(width: 300, height: 100)
                
                Image(systemName: "heart.fill")
                    .padding()
                    .foregroundColor(.yellow)
            }
            .overlay(alignment: .bottomLeading) {
                HStack(spacing: 5){
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    Text("\(info.star)")
                        .fontWeight(.semibold)
                        .foregroundColor(.yellow)
                }
                .padding()
            }
            VStack(alignment: .leading,spacing: 15) {
                Text(info.title)
                    .font(.title2)
                    .fontWeight(.semibold)
                
                HStack {
                    
                    HStack(spacing: 4) {
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                        
                        Text("\(info.star)")
                    }
                    
                    Text("$\(info.price)")
                        
                    
                    Spacer()
                    
                    Text("\(info.day) days")
                        .foregroundColor(.secondary)
                }
                .font(.headline)
            }
            .padding(.horizontal)
            .padding(.bottom)
        }
        .frame(width: 300,height: 200)
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .shadow(color: .black.opacity(0.5), radius: 3)
        .padding()
        .onAppear{
            
        }
    }
    
}
struct Explore_Previews: PreviewProvider {
    static var previews: some View {
        Explore()
    }
}
