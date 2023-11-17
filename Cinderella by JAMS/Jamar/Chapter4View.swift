//
//  Chapter4View.swift
//  Jams story testing
//
//  Created by Jamar Morgan on 11/13/23.
//

import SwiftUI

//enum SheetTypes: Identifiable {
//    case one, two
//    
//    var id: Int {
//        hashValue
//    }
//    
//}
    
    
   
struct RoyalBallView: View {
//    @State private var activeSheet: SheetTypes?
    
    
    //    @Binding var navigateToNextChapter: Bool
    @EnvironmentObject var chapterUnlocker: ChapterUnlocker
    var body: some View {
        ZStack{
            LinearGradient(colors: [.gray, .white], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            
            VStack {
                Text("Chapter 4")
                    .bold()
                Spacer()
                Image("theball")
                    .resizable()
                    .scaledToFit()
                ScrollView {
                    Text("""
        The ball had tons of royals and nobles in attendance ready to party and turn up.
        Cinderella dedcides to go look for some drinks so she can loosen up a bit, unaware that Anastasia and Drizella was watching her.
        Cinderella has a great night, I lost count after watching her take so many shots. She's definitely going to need a stanback in the morning.
        """)
                    
                    
                    
                    
                }
                .padding()
            }
        }
        
    }
}

#Preview {
    Chapter4View()
        .environmentObject(ChapterUnlocker())
}

struct Chapter4View: View{
    var body: some View{
        TabView{
            RoyalBallView()
                .tabItem{
                    Label("Royal Ball", systemImage: "balloon")
                }
            LostSlipperView()
                .tabItem{
                    Label("Lost Slipper", systemImage: "shoe")
                }
            Shoeswapview()
                .tabItem {
                    Label("Shoe Swap", systemImage: "person.fill.and.arrow.left.and.arrow.right")}
            Falseslippercastle()
                        .tabItem {
                            Label("Slipper Castle", systemImage: "house.fill")
                                
                                
                        }
                    
                    
                    
                    
                    
                    
                }
        
        
        }
        //.frame(width: 300, height: 400)
        // .border(Color.red)
    }
    
    
    
    
    
    struct LostSlipperView: View{
        
        
        var body: some View {
            ZStack {
                LinearGradient(colors: [.blue, .white], startPoint: .topLeading, endPoint: .bottomTrailing)
                    .ignoresSafeArea()
                
                VStack {
                    Text("Chapter 4")
                        .bold()
                    Spacer()
                    Image("slipperlost")
                        .resizable()
                        .scaledToFit()
                    ScrollView {
                        Text("""
At the end of the night, Cinderella rushes toward the end of the stairs because she heard Prince Charles outside yelling, calling for her.
Just as the princess reaches toward the end of the steps while drunkingly rushing down she takes a fall down the remaining stairs and she lost her slippers while tumbling.
She gets up shakes it off, almost pukes but holds it in and kept moving to the carriage anyways
""")
                        .padding()
                        
                        
                        
                        
                    }
                }
            }
            
            // I want to add random facts about the cinderella story
            // I need to create a random facts icon that can be clicked on and display the random facts
            //my playgrounds has it but i have to code it into my story not the content view portion here
            
            
            
            
        }
    }

