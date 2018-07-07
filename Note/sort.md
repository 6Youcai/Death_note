## 冒泡排序

冒泡排序是最简单的排序算法，只需要调整**相邻**的两个对象，将较大的数移动到后面，每次循环就可以将最大的对象调整到最后，下次循环就不需要再考虑，其时间复杂度为O(n^2)。

![](http://images2015.cnblogs.com/blog/575330/201608/575330-20160824154715589-1929807544.gif)

## 梳排序

[梳排序](https://www.geeksforgeeks.org/comb-sort/)是冒泡排序的改进，冒泡排序是调整相邻两个对象的位置，其 gap 为 1；而梳排序一开始选择较大的 gap，这样将数据分为多组，对同一组的数进行一轮冒泡，对不同组的数不会进行比较，减少工作量。然后减少 gap,直至为 1，此时和冒泡排序是完全一致的；

## 归并排序

[归并排序](linkhttps://www.geeksforgeeks.org/merge-sort/)是一种分而治之的算法，每次将数据递归的分成两部分，直至不能再分，然后逐层将有序的向量进行合并（归并），算法也因此而得名；

算法的核心在于两个有序向量的归并：比较两个向量的第1个数，将其中较小的数**拿走**作为归并之后的第1个数，然后依次处理**剩下**的数;

![](https://www.geeksforgeeks.org/wp-content/uploads/Merge-Sort-Tutorial.png)

## 快速排序

[快速排序](https://www.geeksforgeeks.org/quick-sort/)也是一种分而治之的算法，选定一个值，将小于它和大于它的对象分别放到左边和右边，然后再分别对这两部分进行排序。

![](https://www.geeksforgeeks.org/wp-content/uploads/gq/2014/01/QuickSort2.png)

## 插入排序

[插入排序](https://www.geeksforgeeks.org/insertion-sort/)是一个简单地算法，每次**插入一个数**，使得向量有序；

![](https://cdncontribute.geeksforgeeks.org/wp-content/uploads/card.jpg)

## Timsort

[Timsort](https://www.geeksforgeeks.org/timsort/)结合了插入排序和归并排序的算法，将序列分成称为`Run`小块，先使用插入排序将这些小块排好序，然后利用归并排序将这些小块合并起来。

![](https://upload.wikimedia.org/wikipedia/commons/6/63/Selection_of_minrun_by_timsort.png)

## 计数排序

[计数排序](https://www.geeksforgeeks.org/counting-sort/)适用于数值范围很小的整数序列排序，统计每个数出现的次数之后，可以**构造**出排序结果；

![](https://www.geeksforgeeks.org/wp-content/uploads/scene01153.jpg)

## 桶排序

[桶排序](https://www.geeksforgeeks.org/bucket-sort-2/)是计数排序的推广，桶的定义可以很宽泛。

![](https://upload.wikimedia.org/wikipedia/commons/thumb/6/61/Bucket_sort_1.svg/311px-Bucket_sort_1.svg.png)

## 基数排序

[基数排序](https://www.geeksforgeeks.org/radix-sort/)可以认为多次使用桶排序，将排序对象分成多个片段，对每一片段进行一次桶排序；

![](https://images0.cnblogs.com/i/497634/201403/161837176365265.jpg)
