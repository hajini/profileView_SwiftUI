//
//  SquadListContainer.swift
//  profileViewDesign_swiftUI
//
//  Created by Hajin Jeong on 2023/08/30.
//

import SwiftUI

struct SquadListContainer: View {
    
    let grColorsArr = ["https://fo4.dn.nexoncdn.co.kr/live/externalAssets/common/teamcolorboost/icon/medium/4_l1477.png", ""]
    let spColorsArr = ["https://fo4.dn.nexoncdn.co.kr/live/externalAssets/common/teamcolorboost/icon/medium/4_l9.png", "https://fo4.dn.nexoncdn.co.kr/live/externalAssets/common/teamcolorboost/icon/medium/4_l2052.png", "https://fo4.dn.nexoncdn.co.kr/live/externalAssets/common/teamcolorboost/icon/medium/4_l241.png"]
    
    var body: some View {
        HStack{
            Spacer()
            LazyVStack(alignment: .center, spacing: 10) {
                //                        Spacer(minLength: 0.3)
                
                Text("스페인스쿼드")
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                    .lineLimit(1)
                
                HStack(alignment: .center) {
                    Spacer()
                    Text("소속")
                        .font(.system(size: 16))
                        .fontWeight(.bold)
                        .foregroundColor(.gray)
                    ForEach(grColorsArr, id: \.self) { url in
                        TeamcolorImageView(imageUrl: url)
                    }
                    Spacer()
                    Text("특성")
                        .fontWeight(.bold)
                        .foregroundColor(.gray)
                    ForEach(spColorsArr, id: \.self) { url in
                        TeamcolorImageView(imageUrl: url)
                    }
                    Spacer()
                }
                
                
                HStack {
                    Spacer()
                    Text("2조 5000억 BP")
                        .font(.system(size: 16))
                        .fontWeight(.bold)
                        .foregroundColor(.orange)
                    Spacer()
                }
                HStack {
                    AsyncImage(url: URL(string: "https://fo4.dn.nexoncdn.co.kr/live/externalAssets/common/playersActionHigh/p287231677.png?rd=202308291050")) { image in
                        image
                            .resizable()
                            .scaledToFit()
                            .frame(width: 24, height: 24, alignment: .top)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                            .overlay(RoundedRectangle(cornerRadius: 8).stroke(lineWidth: 1).foregroundColor(Color(red: 203/255.0, green: 203/255.0, blue: 203/255.0)))
                    } placeholder: {
                        Image("emptyImg")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 24, height: 24, alignment: .top)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                            .overlay(RoundedRectangle(cornerRadius: 8).stroke(lineWidth: 1).foregroundColor(.gray))
                    }
                    
                    
                    Text("뮌헨김뮌재케인")
                        .foregroundColor(.gray)
                        .font(.system(size: 14))
                        .fontWeight(.regular)
                        .frame(alignment: .bottom)
                    
                    Text("방금전")
                        .font(.system(size: 10))
                        .foregroundColor(.gray)
                        .fontWeight(.thin)
                    Spacer()
                    Image("down02")
                        .renderingMode(.template)
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(.gray)
                        .frame(width: 14, height: 14)
                    Text("3")
                        .font(.system(size: 14))
                        .foregroundColor(.gray)
                        .bold()
                    
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
