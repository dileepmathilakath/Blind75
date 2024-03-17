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
            let answer = solution.maxProduct([2,3,-2,4])
            Text("Solution: \(answer))")
        }
        .padding()
    }
}


#Preview {
    ContentView()
}
