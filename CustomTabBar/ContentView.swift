//
//  ContentView.swift
//  CustomTabBar
//
//  Created by Sean Murphy on 5/19/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var selectedIndex = 0
    
    var body: some View {
        VStack {
           
            ZStack {
                
                switch selectedIndex {
                case 0:
                    
                    Text("First")
                default:
                    Text("Remaining tabs")
                }
                
            }
            
            HStack {
                Text("First Tab Button")
            }
        }

    }
    
}


//TabView {
//    Text("First")
//        .tabItem {
//            Image(systemName: "person")
//            Text("First")
//        }
//    Text("Second")
//        .tabItem {
//            Image(systemName: "gear")
//            Text("Second")
//        }
//}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
