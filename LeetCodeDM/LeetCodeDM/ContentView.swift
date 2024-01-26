//
//  ContentView.swift
//  LeetCodeDM
//
//  Created by M, Dileep on 26/01/24.
//

import SwiftUI

struct ContentView: View {
    
    var twoSums = Solution()
    var body: some View {
        VStack {
            let solution = twoSums.twoSum([2,7,1,5], 9)
            Text("solution \(solution[0])")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
