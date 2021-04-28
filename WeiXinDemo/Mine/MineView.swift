//
//  MineView.swift
//  WeiXinDemo
//
//  Created by lingjie.li on 2021/4/28.
//

import SwiftUI

fileprivate struct SectionItem: Identifiable {
    let items: [ListItem]
    let index: Int
    var id: Int { index }
}

fileprivate struct ListItem: Identifiable {
    let icon: String
    let title: String
    var id: String { title }
}

struct MineView: View {

    init() {
        UITableView.appearance().separatorColor = .clear
        UITableView.appearance().separatorStyle = .none
    }
    
    private var source: [SectionItem] = [
        SectionItem(items: [
            ListItem(icon: "creditcard", title: "支付")
        ], index: 1),
        SectionItem(items: [
            ListItem(icon: "giftcard", title: "收藏"),
            ListItem(icon: "tray", title: "朋友圈"),
            ListItem(icon: "folder", title: "卡包"),
            ListItem(icon: "face.smiling", title: "表情")
        ], index: 2),
        SectionItem(items: [
            ListItem(icon: "gearshape", title: "设置")
        ], index: 3)
    ]
       
    var body: some View {
        NavigationView {
            List {
                Section() {
                    MineUserHeader()
                }
                .listRowInsets(EdgeInsets())

                ForEach(source) { section in
                    Section(footer: MineSectionHeader()) {
                        ForEach(section.items) { item in
                            MineListCell(icon: item.icon, title: item.title, action: {
                                print("----->1")
                            })
                        }
                    }
                    .padding(.top, 0)
                    .listRowInsets(EdgeInsets())
                    .background(Color.green)
                }
                .padding(0)
                .background(Color.purple)
            }
            .listStyle(GroupedListStyle())
            .navigationBarHidden(true)
            .background(Color.pink)
        }
        
    }
}

struct MineView_Previews: PreviewProvider {
    static var previews: some View {
        MineView()
    }
}

/**
 问题：
 1. 设置为GroupListStyle之后Section头部有一段间距，这个间距怎么去掉？
 */
