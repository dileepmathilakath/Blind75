//
//  ContentView.swift
//  LeetCodeDM
//
//  Created by M, Dileep on 26/01/24.
//

import SwiftUI

struct ContentView: View {
    
    var buySellStocks = BuyAndSellStockSolution()
    var body: some View {
        VStack {
            let solution = buySellStocks.maxProfit([7,1,5,3,6,4])
            Text("solution \(solution)")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
