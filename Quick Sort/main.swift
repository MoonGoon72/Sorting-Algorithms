//
//  main.swift
//  Quick Sort
//
//  Created by 문영균 on 2/27/25.
//
/// # 퀵 정렬
/// 분할 정복 알고리즘
/// 1. pivot을 기준으로 left, right로 분할한다.
/// 2. 각 부분 배열을 정렬한다. 부분 배열의 크기가 충분히 작지 않으면 (count > 1) 순환 호출을 이용해 다시 분할 정복한다.
/// 3. 정렬된 부분 배열들을 하나의 배열에 합병한다.
/// 시간 복잡도: O(nlogn)

import Foundation

var array: [Int] = []
for i in 0..<10 { array.append(i) }
array.shuffle()

func quickSorted(_ array: [Int]) -> [Int] {
    guard array.count > 1 else { return array }
    
    let pivot = array[array.count / 2]
    let left = array.filter { $0 < pivot }
    let middle = array.filter { $0 == pivot }
    let right = array.filter { $0 > pivot }
    
    return quickSorted(left) + middle + quickSorted(right)
}

print("Before sorting: \(array)")
var sortedArray = quickSorted(array)
print("After sorting: \(sortedArray)")
