//
//  MineSectionHeader.swift
//  WeiXinDemo
//
//  Created by lingjie.li on 2021/4/28.
//

import SwiftUI

struct MineUserHeader: View {
    var body: some View {
        HStack {
            Image("avatar")
                .resizable(capInsets: EdgeInsets(), resizingMode: .stretch)
                .frame(width: 64, height: 64)
                .cornerRadius(10)
            VStack(alignment: .leading) {
                Text("惜念")
                Text("微信号：vinJie92")
                HStack {
                    Label("状态", systemImage: "plus")
                }
                .padding(EdgeInsets(top: 5, leading: 10, bottom: 5, trailing: 10))
                .border(Color.gray, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                .cornerRadius(10)
                
            }
            .padding()
            Spacer()
            HStack {
                Image(systemName: "bag.fill")
                Image(systemName: "chevron.right")
            }
        }
        .frame(height: 150)
        .background(Color.white)
        .padding(14)
    }
}

struct MineUserHeader_Previews: PreviewProvider {
    static var previews: some View {
        MineUserHeader()
            .previewLayout(.sizeThatFits)
    }
}
