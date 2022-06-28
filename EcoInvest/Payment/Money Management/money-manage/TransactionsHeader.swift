//
//
//
//
//  Created by Aluno on 2022-06-13.
//

import Foundation
import SwiftUI

struct TransactionsHeader: View {
    var body: some View {
        HStack {
            Text("Enviar")
                .font(.headline)
            Spacer()
            Image(systemName: "plus.circle.fill")
                .resizable()
                .foregroundColor(Color(#colorLiteral(red: 34, green: 139, blue: 39, alpha: 1)))
                .frame(width: 30, height: 30)
            Text("Adicionar")
                .font(.headline)
        }
        .padding(20)
        .padding(.bottom, 40)
        .foregroundColor(.white)
        .background(Color(hue: 0.345, saturation: 0.652, brightness: 0.545))
        .cornerRadius(20)
        .shadow(radius: 4)

    }
}
