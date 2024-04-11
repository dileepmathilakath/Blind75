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
            let answer = solution.findMin([2,3,1])
            Text("Solution: \(answer))")
        }
        .padding()
    }
}


#Preview {
    ContentView()
}
