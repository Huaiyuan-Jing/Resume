#import "@preview/basic-resume:0.2.9": *

#let name = "Huaiyuan Jing"
#let location = "Urbana-Champaign, IL"
#let email = "Is.hyjing@gmail.com"
#let github = "github.com/Huaiyuan-Jing"
// #let linkedin = ""
#let phone = "(929) 426-9451"
#let personal-site = "huaiyuan-jing.github.io"

#show: resume.with(
  author: name,
  location: location,
  email: email,
  github: github,
  // linkedin: linkedin,
  phone: phone,
  personal-site: personal-site,
  accent-color: "#26428b",
  font: "New Computer Modern",
  paper: "us-letter",
  author-position: left,
  personal-info-position: left,
)

== Education

#edu(
  institution: "University of Illinois Urbana-Champaign",
  location: "Urbana-Champaign, IL",
  dates: dates-helper(start-date: "Aug 2026", end-date: "Present"),
  degree: "Master of Computer Science",
)

#edu(
  institution: "University of Wisconsin-Madison",
  location: "Madison, WI",
  dates: dates-helper(start-date: "Sep 2022", end-date: "May 2026"),
  degree: "B.S. Computer Science; B.S. Mathematics",
)
- GPA: 3.8/4.0 | US Employment Authorization: Yes
- Relevant Coursework: Algorithms, Operating Systems, Quantum Architecture, Linear Algebra, Probability Theory

== Honors & Awards

#generic-one-by-two(
  left: strong(
    "Gold Medal, ICPC North Central North America Regional (Top 1%)",
  ),
  right: "2024--2025",
)

#generic-one-by-two(
  left: strong("Silver Medal, ICPC North Central North America Regional"),
  right: "2025--2026",
)

- Ranked elite among university teams, excelling in dynamic programming, advanced data structures, and edge-case handling under extreme time constraints and psychological pressure.


== Experience & Research

#work(
  title: "Research Assistant",
  location: "Madison, WI",
  company: "Madison Experimental Mathematics (MXM) Lab",
  dates: dates-helper(start-date: "Feb 2025", end-date: "Present"),
)
- Architected a high-throughput, concurrent toolkit to compute cryptographic hash values for complex graphs and evaluate combinatorial game strategies (Grundy numbers), *successfully evaluating 50 critical data points under extreme $O(2^m)$ time-complexity workloads*.
- Leveraged Rust's Send/Sync traits and ownership model to eliminate data races and deadlocks, designing memory-safe parallel processing streams that maximize multi-core CPU and GPU saturation.
- Optimized graph traversal routines with low-latency lock-free structures, minimizing algorithmic latency under high-complexity, multi-threaded workloads.

#work(
  title: "First Author",
  location: "Madison, WI",
  company: "Quantum Computing Algorithm Optimization Research",
  dates: "Summer 2026",
)
- Proposed an optimized method for single-ancilla block-encoding overhead reduction, successfully reducing the required auxiliary qubit overhead to *exactly 1 ancilla qubit* via polar decomposition.
- Coherently reused block-encoding ancilla to produce a unified *$(1, 1, ε)$-block encoding* for general matrices, cleanly distributing a total error budget of $ε$ into *two $ε/2$ branches* to guarantee strict linear error propagation.
- Conducted rigorous query complexity and mathematical error bounds analysis, bounding the polynomial degree for absolute-value approximation to *$O(1/delta_"abs" log(1/eta_"abs"))$* to prove optimal computational scaling.

== Projects

#project(
  name: "High-Frequency Trading (HFT) Matching Engine & Order Book",
  role: "Independent Developer",
  dates: "Jul 2026",
  url: "codeberg.org/HYJING/hft_orderbook",
)
- Designed and implemented an ultra-low latency, fixed-point limit order book (LOB) matching engine from scratch using Modern C++ (C++20).
- Achieved an execution throughput of *38.55 million orders per second (38.5496M/s)* under intensive multivariable cross-order stress tests, benchmarked via Google Benchmark on an 8-core CPU system.
- Optimized memory layout by combining `std::map` for price levels with custom intrusive doubly-linked lists for strict FIFO order queues, minimizing lookup and allocation overhead to $O(1)$ for cancellation and insertion.
- Engineered a vector-backed object-pool memory allocator (`VectorOrderBook`) to completely eliminate runtime OS heap allocations, preventing memory fragmentation and maximizing CPU L1/L2 data cache hit rates.

#project(
  name: "Linux Infrastructure & Kernel Optimization",
  role: "Independent Developer",
  dates: "Systems Automation",
  url: "",
)
- Maintained a security-critical initramfs module (Dracut-Cryptsetup-Duress) for LUKS-encrypted subsystems, demonstrating deep understanding of the Linux boot process and robust scripting.
