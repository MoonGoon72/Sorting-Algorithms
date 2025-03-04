//
//  main.swift
//  Sorting Algorithms
//
//  Created by 문영균 on 2/27/25.
//
/// 선택 정렬: 현재 위치에 들어갈 값을 찾아 정렬하는 알고리즘
/// 1. 첫 번째 위치에 넣을 배열의 최솟값을 찾는다.
/// 2. 첫 번째 위치와 교환한다.
/// 3. 두 번째 위치에 넣을 배열의 최솟값을 찾는다. 이때 배열은 첫 번째 위치를 제외하고 최솟값을 찾는다. (이미 정렬되어있기 때문)
/// 4. 두 번째 위치와 교환한다.
/// 5. 배열의 끝까지 반복한다.
/// 시간 복잡도: O(n^2)

import Foundation

var array: [Int] = []
for i in 0..<10 { array.append(i) }
array.shuffle()

func selectionSorted(_ array: [Int]) -> [Int] {
    var tmp = array
    for i in 0..<tmp.count {
        var minimum = i
        for j in i..<array.count {
            if tmp[j] < tmp[minimum] { minimum = j }
        }
        tmp.swapAt(i, minimum)
    }
    return tmp
}

print("Before sorting: \(array)")
var sortedArray = selectionSorted(array)
print("After sorting: \(sortedArray)")
