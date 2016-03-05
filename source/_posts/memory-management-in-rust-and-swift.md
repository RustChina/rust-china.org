title: Rust 和 Swift 内存管理
date: 2016-03-05 09:48:03
tags:
- memory management
---

原文： [Rust 和 Swift 内存管理](https://medium.com/@itchyankles/memory-management-in-rust-and-swift-8ecda3cdf5b7#.ip66mn5wx)

## 简介

本文从静态内存、堆(heap)和栈(stack)内存的申请和释放三个方面对比了 Rust 和 Swift 内存管理方式。指出 Swift 在堆内存管理上与 Rust 有很大差别，其中 Swift 依赖于自动引用计数(Automatic Reference Counting)，且 Swift 引用计数是原子操作，即 Arc(Atomic Reference Counting)，保证了线程安全，虽然这种方式比传统的垃圾回收器扫描整个堆空间要高效，但是 ARC 相比 Rc(Reference Counting) 的 CPU 开销还是更大；而 Rust 则是在编译期就确定内存何时释放，依靠一套 lifetime 系统，无需程序员手动显式释放内存，同时 Rust 也提供 Arc 和 Rc 两种引用计数来应对特定场景。

文章最后总结出这两种新兴编程语言对于栈内存管理方式相差不大，而堆内存则有较大差异，但是两者内存管理方式都比较高效，不过 Swift 更鼓励程序员使用堆内存，Rust 借助 lifetime 的手动管理方式更加高效，学习成本相比也更高些。

推荐从动态语言转过来的童鞋好好读读，以便对 Rust 和 Swift 内存管理有一个宏观的认识
