// took the base code from this repo - https://git.generalassemb.ly/zshirah/merge-sort/blob/master/solution.js

function merge(arr1, arr2) {
  var result = []
  let index1 = 0
  let index2 = 0

  while (index1 < arr1.length && index2 < arr2.length) {
    const currentElement1 = arr1[index1]
    const currentElement2 = arr2[index2]

    const compareValue1 = Number(currentElement1.total_score)
    const compareValue2 = Number(currentElement2.total_score)

    if (compareValue1 >= compareValue2) {
      result.push(currentElement1)
      index1++
    } else {
      result.push(currentElement2)
      index2++
    }
  }
  return result.concat(arr1.slice(index1), arr2.slice(index2))
}

export function mergeSort(arr) {
  if (arr.length <= 1) {
    // Base case: just return it!
    return arr
  } else {
    // Find the middle index
    var middleIndex = Math.floor(arr.length / 2)

    // Using the middle index, split the array into left and right sides
    var left = arr.slice(0, middleIndex)
    var right = arr.slice(middleIndex, arr.length)

    // Sort both left and right using mergeSort
    var leftSorted = mergeSort(left)
    var rightSorted = mergeSort(right)

    // Merge two sorted arrays together
    return merge(leftSorted, rightSorted)
  }
}