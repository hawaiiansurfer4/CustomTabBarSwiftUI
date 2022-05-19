//
//  ContentView.swift
//  CustomTabBar
//
//  Created by Sean Murphy on 5/19/22.
//

import SwiftUI

struct ContentView: View {

    @State var selectedIndex = 0
    @State var shouldShowModal = false
    
    let tabBarImageNames = ["person", "gear", "plus.app.fill", "pencil", "lasso"]

    var body: some View {
        VStack {

            ZStack {
                
                Spacer().fullScreenCover(isPresented: $shouldShowModal, content: {
                    Button(action: {shouldShowModal.toggle()}, label: {
                        Text("Fullscreen Cover")
                    })

                })

                switch selectedIndex {
                case 0:
                    NavigationView {
                        ScrollView {
                            ForEach(0..<100) { num in
                                Text("\(num)")
                            }
                        }.navigationTitle("First screen")
                    }
                case 1:
                    ScrollView {
                        Text("Test")
                    }
                default:
                    NavigationView {
                        Text("Remaining tabs")
                    }
                }

            }

            
            Divider()
            
            HStack {
                ForEach(0..<5) { num in
                    Button(action: {
                        if num == 2 {
                            shouldShowModal.toggle()
                            return
                        }
                    }, label: {
                        Spacer()
                        
                        if num == 2 {
                            Image(systemName: tabBarImageNames[num])
                                .font(.system(size: 44, weight: .bold))
                                .foregroundColor(.red)
                        } else {
                            Image(systemName: tabBarImageNames[num])
                                .font(.system(size: 24, weight: .bold))
                                .foregroundColor(selectedIndex == num ? .black : .init(white: 0.8))
                        }

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
