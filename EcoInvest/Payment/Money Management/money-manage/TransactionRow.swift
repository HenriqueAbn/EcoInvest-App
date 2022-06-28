//
//
//
//
//  Created by Aluno on 2022-06-13.
//

import Foundation
import SwiftUI

struct TransactionRow: View {
    var body: some View {
        HStack {
            Image("visaIcon")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 30, height: 30)
                .padding(5)
            VStack(alignment: .leading) {
                Text("EcoInvest")
                    .font(.headline)
                Text("14 Jun 2022  11:08")
                    .font(.caption)
                    .foregroundColor(Color(.secondaryLabel))
            }
            Spacer()
            Text("-$23,90")
                .font(.headline)
                .foregroundColor(Color(hue: 0.43, saturation: 0.856, brightness: 0.551))
                .shadow(radius: 2)
        }
        .padding(8)
    }
}
