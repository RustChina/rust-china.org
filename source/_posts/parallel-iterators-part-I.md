title: 并行迭代器(I)
date: 2016-02-20 18:53:44
tags: 
- iterator
- parallel computing
---

原文：[并行迭代器第I部分--基础](http://smallcultfollowing.com/babysteps/blog/2016/02/19/parallel-iterators-part-1-foundations/)

## 简介

本篇博客是 Nicholas D. Matsakis 写的 Parallel Iterators 系列的第一部分。

文章开头引入通过 Sequential iterator 计算两个向量点积，然后改成 Parallel iterator 方式计算的例子，后面详细讲了 Sequential iterator 的实现细节,包括 `zip`, `map`, `sum` 等的实现，为后续两篇文章做铺垫。相比官方 iterator 文档，这里结合实例一步步讲解更清晰易懂，对于 Rust iterator 实现细节不清楚的同学可以仔细读一读

* Sequential iterator
  ```rust
  vec1.iter()
      .zip(vec2.iter())
      .map(|(i, j)| i * j)
      .sum()
  ```

* Parallel iterator
  ```rust
  vec1.par_iter()
      .zip(vec2.par_iter())
      .map(|(i, j)| i * j)
      .sum()
  ```
