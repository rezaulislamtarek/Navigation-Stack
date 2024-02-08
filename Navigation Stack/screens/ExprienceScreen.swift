//
//  ExprienceScreen.swift
//  Navigation Stack
//
//  Created by Rezaul Islam on 8/2/24.
//

import SwiftUI

struct Exprience{
    let jobTitle: String
    let instituteName : String
    let duratiuon : String
}

struct ExprienceScreen: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                ExprienceView(exp: Exprience(jobTitle: "Senior Mobile App Developer", instituteName: "Media 365 Limited", duratiuon: "01 year 06 Months"))
                ExprienceView(exp: Exprience(jobTitle: "Senior Android App Developer", instituteName: "Media 365 Limited", duratiuon: "01 year 06 Months"))
                ExprienceView(exp: Exprience(jobTitle: "Senior Software Engineer", instituteName: "Samsung R&D BD", duratiuon: "01 year 01 Month"))
                ExprienceView(exp: Exprience(jobTitle: "Software Engineer", instituteName: "Samsung R&D BD", duratiuon: "02 year 00 Month"))
                ExprienceView(exp: Exprience(jobTitle: "Android Trainer", instituteName: "ICT Division Bangladesh", duratiuon: "06 Month"))
                ExprienceView(exp: Exprience(jobTitle: "Android Developer", instituteName: "DataTrix Soft", duratiuon: "04 Month"))
                
                Spacer()
            }
            .navigationTitle("Expriences")
        .padding(24)
        }
    }
}

struct ExprienceScreen_Previews: PreviewProvider {
    static var previews: some View {
        ExprienceScreen()
    }
}

struct ExprienceView: View {
    var exp : Exprience
    var body: some View {
        VStack(alignment: .leading) {
            Text(exp.jobTitle)
            Text(exp.instituteName)
                .bold()
            Text(exp.duratiuon)
            HStack{
                Spacer()
            }
        }
         
    }
}
