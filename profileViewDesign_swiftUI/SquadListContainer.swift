//
//  SquadListContainer.swift
//  profileViewDesign_swiftUI
//
//  Created by Hajin Jeong on 2023/08/30.
//

import SwiftUI

struct SquadListContainer: View {
    var body: some View {
        HStack{
            Spacer()
            LazyVStack(alignment: .leading, spacing: 10) {
                //                        Spacer(minLength: 0.3)
                Text("스페인스쿼드")
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                    .lineLimit(1)
                
                HStack(alignment: .center) {
                    HStack {
                        TeamcolorImageView(imageUrl: "https://fo4.dn.nexoncdn.co.kr/live/externalAssets/common/teamcolorboost/icon/medium/4_l1477.png")
                        TeamcolorImageView(imageUrl: "")
                        
                        TeamcolorImageView(imageUrl: "https://fo4.dn.nexoncdn.co.kr/live/externalAssets/common/teamcolorboost/icon/medium/4_l9.png")
                        TeamcolorImageView(imageUrl: "https://fo4.dn.nexoncdn.co.kr/live/externalAssets/common/teamcolorboost/icon/medium/4_l1831.png")
                        TeamcolorImageView(imageUrl: "https://fo4.dn.nexoncdn.co.kr/live/externalAssets/common/teamcolorboost/icon/medium/4_l241.png")
                        
                        Spacer()
                        Image("down02")
                            .renderingMode(.template)
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(.gray)
                            .frame(width: 16, height: 16)
                        Text("3")
                            .font(.system(size: 18))
                            .bold()
                    }
                    
                    Spacer()
                }
                
                
                HStack {
                    AsyncImage(url: URL(string: "https://fo4.dn.nexoncdn.co.kr/live/externalAssets/common/playersActionHigh/p287231677.png?rd=202308291050")) { image in
                        image
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20, alignment: .top)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                            .overlay(RoundedRectangle(cornerRadius: 8).stroke(lineWidth: 1).foregroundColor(Color(red: 203/255.0, green: 203/255.0, blue: 203/255.0)))
                    } placeholder: {
                        Image("emptyImg")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20, alignment: .top)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                            .overlay(RoundedRectangle(cornerRadius: 8).stroke(lineWidth: 1).foregroundColor(.gray))
                    }
                    
                    Text("뮌헨김뮌재케인")
                        .foregroundColor(.gray)
                        .font(.system(size: 14))
                        .fontWeight(.regular)
                        .frame(alignment: .bottom)
                    Spacer()
                    Text("방금전")
                        .font(.system(size: 10))
                        .foregroundColor(.gray)
                        .fontWeight(.thin)
//                    Image("ground_icon")
//                        .renderingMode(.template)
//                        .resizable()
//                        .scaledToFit()
//                        .foregroundColor(.gray)
//                        .frame(width: 12, height: 12)
                    
                }
            }
            Spacer()
        }
    }
}

struct SquadListContainer_Previews: PreviewProvider {
    static var previews: some View {
        SquadListContainer()
    }
}
