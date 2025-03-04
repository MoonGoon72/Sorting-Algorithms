//
//  main.swift
//  Insertion Sort
//
//  Created by 문영균 on 2/27/25.
//
/// 삽입 정렬: 현재 위치에서, 그 이하의 배열들(이미 정렬됨)을 비교하여 자신이 들어갈 위치를 찾아 그 위치에 삽입하는 알고리즘
/// 두 번째 자료부터 시작
/// 1. 두 번째 자료와 첫 번째 자료를 비교
/// 2-1. 두 번째 자료가 작으면 첫 번째 자료와 교환
/// 2-2. 두 번째 자료가 크면 그대로 두 번째 자료에 위치
/// 3. 세 번째 자료와 두 번째와 첫 번째 자료와 비교
/// 3-1. 세 번째 자료가 두 번째 자료보다 작으면 두 번째 자료를 세 번째 자료 위치로 이동
/// 3-1-1. 세 번째 자료가 첫 번째 자료보다 작으면 첫 번째 자료를 두 번째 자료 위치로 이동 후 첫 번째 자료 위치에 삽입
/// 3-2. 세 번째 자료가 두 번째 자료보다 크면 세 번째 자료 위치에 삽입
/// 4. 배열 끝까지 반복
///
/// 시간 복잡도: O(n^2)

import Foundation

var array: [Int] = []
for i in 0..<10 { array.append(i) }
array.shuffle()

func insertionSorted(_ array: [Int]) -> [Int] {
    var array = array
    for i in 1..<array.count {
        let key = array[i]
        for j in (0..<i).reversed() {
            if array[j] > key {
                array.swapAt(j, j + 1)
            } else {
                array[j + 1] = key
                break
            }
        }
    }
    return array
}

print("Before sorting: \(array)")
var sortedArray = insertionSorted(array)
print("After sorting: \(sortedArray)")
