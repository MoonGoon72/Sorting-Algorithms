//
//  main.swift
//  Bubble Sort
//
//  Created by 문영균 on 2/27/25.
//
/// 버블 정렬: 서로 인접한 두 원소를 비교하여 크기가 순서대로 되어있지 않으면 교환
/// 1. 첫 번째 자료와 두 번째 자료 비교, 두 번째와 세 번째 비교 ... (마지막 -1)과 마지막 비교
/// 2. 1과 같은 과정을 수행하나, 마지막은 정렬이 된 상태(최대값)이니 (마지막 -1)에서 끝낸다.
/// 3. 위 과정을 반복하고, 세 번째 자료까지 다 정렬이 된 후, 마지막으로 첫 번쨰와 두 번째를 비교하고 종료한다.
/// 시간 복잡도: O(n^2)

import Foundation

var array: [Int] = []
for i in 0..<10 { array.append(i) }
array.shuffle()

func bubbleSorted(_ array: [Int]) -> [Int] {
    var array = array
    for i in (0..<array.count - 1) {
        for j in (0..<array.count - 1 - i) {
            if array[j + 1] < array[j] { array.swapAt(j + 1, j) }
        }
    }
    return array
}

print("Before sorting: \(array)")
var sortedArray = bubbleSorted(array)
print("After sorting: \(sortedArray)")
