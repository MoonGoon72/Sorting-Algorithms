//
//  main.swift
//  Merge Sort
//
//  Created by 문영균 on 2/27/25.
//
/// 합병 정렬
/// 분할 정복 알고리즘.
/// 배열을 두 개의 작은 서브 배열로 만들고, 배열의 크기가 충분히 작아질 때까지 반복(Divide)
/// 충분히 작아진 부분 배열을 정렬한다. (Conquer)
/// 정렬된 부분 배열들을 하나의 배열에 합병한다. (Combine)
///
import Foundation

var array: [Int] = []
for i in 0..<10 { array.append(i) }
array.shuffle()

func merge(_ left: [Int], _ right: [Int]) -> [Int] {
    var i = 0, j = 0
    var sortedArray: [Int] = []
    
    while i < left.count && j < right.count {
        if left[i] < right[j] {
            sortedArray.append(left[i])
            i += 1
        } else {
            sortedArray.append(right[j])
            j += 1
        }
    }
    
    sortedArray.append(contentsOf: left[i...])
    sortedArray.append(contentsOf: right[j...])
    
    return sortedArray
}

func mergeSorted(_ array: [Int]) -> [Int] {
    guard array.count > 1 else { return array }
    let mid = array.count / 2
    let left = mergeSorted(Array(array[0..<mid]))
    let right = mergeSorted(Array(array[mid..<array.count]))
    return merge(left, right)
}

print("Before sorting: \(array)")
var sortedArray = mergeSorted(array)
print("After sorting: \(sortedArray)")
