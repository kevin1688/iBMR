//
//  MenuView.swift
//  iBMR
//
//  Created by 暨大附中 on 2022/1/31.
//

import SwiftUI

struct MenuView: View {
    @StateObject var dDate = Foods()
    var body: some View {
       ZStack{
            Rectangle()
                .ignoresSafeArea()
                .foregroundColor(Color("Main Color"))
            ScrollView{
                VStack{
                    ForEach(dDate.shops){ po in
                        food3(name: po.name, cal: po.cal)
                    }
                    Text("-----------")
                }
            }
        }
    }
}


       /* ZStack{
            Rectangle()
                .ignoresSafeArea()
                .foregroundColor(Color("Main Color"))
            ScrollView{
                ForEach(){ po in
                    foods2(name : po.name,cal : po.cal)
                }
            }
        }
    }
}
   
        Text("hollow world")
    }
}
        */
   struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}

struct food2 : View{
    @State var title = ""
    @State var address = ""
    @State var product = ""
    @State var name = ""
    @State var cal = ""
    @StateObject var Mydate = Foods()
    @State var demoshop = shop(title: "", address: "", products: [product(name: "",cal: "")])
    var body : some View{
        VStack{
            Text("\(demoshop.title)")
            Text("\(demoshop.address)")
            Text("--------------------------")
            ForEach(demoshop.products){ pd in
                VStack{
                    Text(pd.name)
                    Text(pd.cal)
                }
            }
        }
    }
    
}



struct food3 : View{
    @State var name = ""
    @State var cal = ""
    var body: some View{
        VStack{
            Text("\(name)")
            Text("\(cal)")
        }
    }
}


