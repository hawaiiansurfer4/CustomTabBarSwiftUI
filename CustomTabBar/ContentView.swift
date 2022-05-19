//
//  ContentView.swift
//  CustomTabBar
//
//  Created by Sean Murphy on 5/19/22.
//

import SwiftUI

struct ContentView: View {

    @State var selectedIndex = 0
    
    let tabBarImageNames = ["person", "gear", "plus.app.fill", "pencil", "lasso"]

    var body: some View {
        VStack {

            ZStack {

                switch selectedIndex {
                case 0:
                    NavigationView {
                        Text("First")
                            .navigationTitle("First Tab")
                    }
                default:
                    Text("Remaining tabs")
                }

            }

            Spacer()
            HStack {
                ForEach(0..<5) { num in
                    Button(action: {}, label: {
                        Spacer()
                        Image(systemName: tabBarImageNames[num])
                            .font(.system(size: 24, weight: .bold))
                            .foregroundColor(Color(.label))
                        Spacer()
                    })

                }

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
