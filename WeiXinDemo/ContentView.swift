//
//  ContentView.swift
//  WeiXinDemo
//
//  Created by lingjie on 2021/4/27.
//

import SwiftUI

struct ContentView: View {
    init() {
//        UITabBar.appearance().unselectedItemTintColor = .white
    }
    
    @State private var selectedIndex: Int = 1
    var body: some View {
        TabView (selection: $selectedIndex) {
            Text("微信").tabItem {
                TabBarItem(
                    iconName: "message.fill",
                    title: "微信",
                    selected: selectedIndex == 1) {
                    selectedIndex = 1
                }
            }.tag(1)
            Text("通讯录").tabItem {
                TabBarItem(
                    iconName: "person",
                    title: "通讯录",
                    selected: selectedIndex == 2) {
                    selectedIndex = 2
                }
            }.tag(2)
            Text("发现").tabItem {
                TabBarItem(
                    iconName: "bolt.horizontal.circle",
                    title: "发现",
                    selected: selectedIndex == 2) {
                    selectedIndex = 3
                }
            }.tag(3)
            Text("我").tabItem {
                TabBarItem(
                    iconName: "person",
                    title: "我",
                    selected: selectedIndex == 2) {
                    selectedIndex = 4
                }
            }.tag(4)
        }
        .accentColor(.green)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
