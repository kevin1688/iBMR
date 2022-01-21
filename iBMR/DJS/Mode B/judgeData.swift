//
//  judgeData.swift
//  project
//
//  Created by 暨大附中２ on 2022/1/1.
//

import SwiftUI
import Combine


struct DTJG:Identifiable,Codable {
    var id = UUID()
    var title:String
    var JGS:[JG]
}

struct JG:Identifiable,Codable {
    var id = UUID()
    var tempStars:Float
}
class DemoData: ObservableObject {
    @Published var DTJGS = [DTJG]()
    
    init() {
        DTJGS = [
            DTJG(title: "麥當勞", JGS: [
                JG(tempStars: 4.5),
                JG(tempStars: 3.5),
                JG(tempStars: 5.5),
            ]),
            DTJG(title: "阿寶", JGS: [
                JG(tempStars: 3.5),
                JG(tempStars: 3.5),
                JG(tempStars: 3.5),
            ]),
            DTJG(title: "7-11", JGS: [
                JG(tempStars: 4.5),
                JG(tempStars: 2.5),
                JG(tempStars: 3.5),
            ]),
            DTJG(title: "肯德基", JGS: [
                JG(tempStars: 5),
                JG(tempStars: 4),
                JG(tempStars: 3.5),
            ]),
            DTJG(title: "全家", JGS: [
                JG(tempStars: 4.5),
                JG(tempStars: 3),
                JG(tempStars: 3.5),
            ]),
            DTJG(title: "城市漢堡", JGS: [
                JG(tempStars: 4.5),
                JG(tempStars: 5),
                JG(tempStars: 3.5),
            ])
        ]
    }

    func avgPrice() -> Float {
        var sumValue:Float = 0.0
        var tempCount = 0
        for sp in DTJGS {
            for mn in sp.JGS {
                sumValue = sumValue + mn.tempStars
                tempCount += 1
            }
        }
        let avgTemp = Float(sumValue) / Float(tempCount)
        return avgTemp
    }
    func avgpricevalue(JGS:[JG]) -> Float{
        var sumValue:Float = 0.0
        for  sp in JGS {
            sumValue = sumValue + sp.tempStars
            
        }
        let avgpricevalue = Float(sumValue)/Float(JGS.count)
        return avgpricevalue
    }
}
