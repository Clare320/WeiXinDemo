//
//  TabBarItem.swift
//  WeiXinDemo
//
//  Created by lingjie on 2021/4/27.
//

import SwiftUI

struct TabBarItem: View {
    let iconName: String
    let title: String
    var selected: Bool = false
    var action: () -> Void = {}
    
    var body: some View {
        VStack {
            Image(systemName: iconName)
                .imageScale(.large)
                .padding(.bottom, 4)
            Text(title)
        }
        .frame(width: 49, height: 49)
        .padding(8)
        .foregroundColor(selected ? .green : .white)
        .onTapGesture {
            action()
        }
    }
}

struct TabBarItem_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HStack {
                TabBarItem(iconName: "message.fill", title: "微信", selected: true, action: {})
                TabBarItem(iconName: "message.fill", title: "通讯录")
                TabBarItem(iconName: "message.fill", title: "发现")
                TabBarItem(iconName: "message.fill", title: "我")
                
            }
        }
        .previewLayout(.sizeThatFits)
        .background(Color.black)
        
    }
}
