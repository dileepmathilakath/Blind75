//
//  ContentView.swift
//  LeetCodeDM
//
//  Created by M, Dileep on 26/01/24.
//

import SwiftUI

struct ContentView: View {
    
    var solution = Solution()
    var body: some View {
        VStack {
            let answer = solution.maxSubArrayDQ([-2,1,-3,4,-1,2,1,-5,4])
            Text("Solution: \(answer))")
        }
        .padding()
    }
}


#Preview {
    ContentView()
}
