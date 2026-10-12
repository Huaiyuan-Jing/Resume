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
- GPA: *3.8/4.0* | Authorized to work in the United States

== Experience & Research

#work(
  title: "Founding CTO / Technical Co-Founder",
  company: "Intgral",
  location: "Remote",
  dates: dates-helper(start-date: "Sep 2026", end-date: "Present"),
)
- Lead infrastructure and engineering for an AI-assisted e-commerce platform built on Medusa ERP, supporting agent access to product and listing workflows through a Model Context Protocol (MCP) gateway.
- Own the multi-merchant infrastructure roadmap, including identity and access control, per-tenant instance and database isolation, background task execution, and failure recovery.
- Deployed self-hosted GitHub Actions runners and a webhook-driven autoscaler on Railway; configured runner registration and cleanup to support compute-intensive CI workloads.
- Established CI checks for linting, builds, tests, and security scanning; deployed a webhook-based PR review agent using the GitHub API to support code review in an AI-assisted development workflow.

#work(
  title: "First Author",
  location: "Madison, WI",
  company: "Quantum Computing Algorithm Optimization Research",
  dates: "Summer 2026",
)
- Developed a polar-decomposition-based construction for *single-ancilla block encoding*, reducing auxiliary-qubit requirements to one ancilla.
- Analyzed coherent ancilla reuse and approximation error for a *$(1, 1, epsilon)$-block encoding*, allocating an $epsilon/2$ error budget to each of two branches.
- Derived query-complexity and error bounds, including a polynomial-degree bound of $O(1/delta_"abs" log(1/eta_"abs"))$ for absolute-value approximation.

#work(
  title: "Research Assistant",
  location: "Madison, WI",
  company: "Madison Experimental Mathematics (MXM) Lab",
  dates: dates-helper(start-date: "Feb 2024", end-date: "Sep 2024"),
)
- Built a concurrent Rust toolkit for graph hashing and combinatorial game analysis using Grundy numbers; evaluated *50 data points* in workloads with $O(2^m)$ time complexity.
- Used Rust's ownership model and Send/Sync traits to structure memory-safe parallel computation; optimized graph traversal and synchronization with lock-free data structures.

== Projects

#project(
  name: "High-Frequency Limit Order Book",
  role: "Independent Developer",
  url: "codeberg.org/HYJING/hft_orderbook",
)
- Implemented a fixed-point limit order book and matching engine in *C++20*; benchmarked throughput of *55 million orders per second* with Google Benchmark on an 8-core CPU system.
- Combined ordered price-level maps with intrusive doubly linked FIFO queues, enabling constant-time queue insertion and removal once the price level and order are located.
- Implemented a vector-backed object pool to reuse order storage and reduce heap-allocation overhead in the matching path.

#project(
  name: "Linux Security Boot Module",
  role: "Independent Developer",
  url: "github.com/melody0123/dracut-cryptsetup-duress",
)
- Maintained a Dracut initramfs module for LUKS-encrypted systems, working with early-boot cryptsetup integration and Linux boot-time scripting.

== Honors & Awards

#generic-one-by-two(
  left: strong("Gold Medal, ICPC North Central North America Regional"),
  right: "2024--2025",
)

#generic-one-by-two(
  left: strong("Silver Medal, ICPC North Central North America Regional"),
  right: "2025--2026",
)
