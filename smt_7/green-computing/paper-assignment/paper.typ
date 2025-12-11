#import "@preview/i-figured:0.2.4"
#import "./data.typ": *

#let sc = (secondary, year, first) => {
  text[(#secondary, #year, as cited in #cite(label(first), form: "author"), #cite(label(first), form: "year"))]
}

#set text(
  size: 12pt,
  font: "Times New Roman",
)

#set page(
  margin: 1in,
)

#set page(numbering: "i")

#include "cover.typ"

#pagebreak()

#set par(
  leading: 1em,
  first-line-indent: (
    amount: insetSize,
    all: true,
  ),
  justify: true,
)

#show figure: i-figured.show-figure
#show heading: i-figured.reset-counters
#show heading.where(level: 1): set align(center)
#show heading: it => {
  if it.numbering != none {
    let num = counter(heading).display()
    stack(
      dir: ltr,
      spacing: 0pt,
      box(width: insetSize)[#num],
      text(size: 12pt)[#it.body],
    )
  } else {
    text(size: 12pt)[#it]
  }
}

#[
  #show outline.entry: it => {
    text(12pt)[#it]
  }
  #show outline.entry: set block(above: 1em, below: 1em)

  #let romanPrefixes = ("I", "II", "III", "IV", "V", "VI")
  #show outline.entry.where(level: 1): it => {
    if it.element.numbering != none {
      link(
        it.element.location(),
        it.indented([CHAPTER #it.prefix(): ], it.inner(), gap: 0em),
      )
    } else {
      link(
        it.element.location(),
        it.indented(it.prefix(), it.inner()),
      )
    }
  }

  = TABLE OF CONTENTS

  #outline(
    title: [],
    indent: 2em,
  )
]

#pagebreak()

#set heading(numbering: "1.1.")
#show heading.where(level: 1): set heading(numbering: "I.I")
#show heading.where(level: 1): it => {
  if it.numbering != none {
    align(center)[
      #text(size: 16pt)[
        CHAPTER #counter(heading).display() \ #it.body \
        #v(1em)
      ]
    ]
  } else {
    align(center)[
      #text(size: 16pt)[
        #it.body
        #v(1em)
      ]
    ]
  }
}

#set page(numbering: "1")
// TODO: idk if im supposed to reset or not
#counter(page).update(1)

= INTRODUCTION

== Background of the Study

The exponential growth of digital media consumption has positioned video streaming as a significant contributor to global energy demand. Modern data centers, which power these services, are estimated to consume approximately 1-1.5% of global electricity use—a figure projected to rise as demand for high-definition, real-time content accelerates. In this context, "Green Software Engineering" has emerged as a critical discipline. It shifts the focus from purely hardware-based efficiency to software-based solutions, aiming to reduce carbon footprints by optimizing code, architecture, and data flow. Sustainable software engineering principles emphasize that the most energy-efficient code is often the code that executes fastest and requires the least amount of resource provisioning. This paper explores how architectural decisions—specifically the choice between microservices and monolithic structures—can drastically alter the energy profile of high-scale cloud applications.

== Case Study Overview

This study examines a landmark case of architectural refactoring by Amazon Prime Video regarding their audio/video monitoring service @prime_video_tech_2023. This service is responsible for analyzing thousands of live video streams in real-time to automatically detect quality defects such as blockiness, freezing, or audio sync issues @prime_video_tech_2023. Originally built to leverage the scalability of serverless computing, the service faced critical inefficiencies as user demand scaled. The engineering team's decision to transition this service from a distributed serverless architecture to a consolidated monolithic architecture provides a compelling case study for green computing @gill_2024_monolith. It demonstrates how "right-sizing" an architecture can lead to massive reductions in infrastructure overhead and, consequently, energy consumption @prime_video_tech_2023.

#pagebreak()

== Terminology and Techniques

To analyze this case effectively, two core Green Computing concepts are defined:
+ Architectural Consolidation
+ Data Locality Optimization

=== Architectural Consolidation

The technique of merging multiple disparate services or functions into a unified software unit. By reducing the number of distinct components that must communicate over a network, consolidation minimizes the "overhead" energy—the computational power used merely to manage the system rather than perform the actual task @gill_2024_monolith.

=== Data Locality Optimization

A strategy that prioritizes keeping data close to the processing unit. In cloud environments, this often means processing data in local memory (RAM) within a single instance rather than transferring it across the network between different services @prime_video_tech_2023. Reducing data movement is a fundamental tenet of green software, as network I/O (Input/Output) is significantly more energy-intensive than local memory operations.

#pagebreak()

= Problem Analysis (The Pre-Optimization State)

== The Initial Architecture (Serverless Microservices)

The Prime Video team initially designed their video quality monitoring tool using a "serverless first" approach, which is often considered the industry standard for scalability @prime_video_tech_2023. The system was composed of three main components: a media converter, a defect detector, and an orchestration layer @bytebytego_2023. The core of this architecture relied on AWS Step Functions to orchestrate the workflow, and AWS Lambda to execute the individual processing tasks @prime_video_tech_2023.

#v(1.5em)
#figure(
  image("/smt_7/green-computing/paper-assignment/images/1_t3KdeGF_VpxAF5HunVo73w.webp", width: 80%),
  caption: [The initial serverless architecture utilizing AWS Step Functions and S3 for intermediate storage, which caused high orchestration costs @prime_video_tech_2023.],
) <initial-serverless-architecture>
#v(1.5em)

In this design, the workflow was split into small, discrete steps. For example, one Lambda function would slice the video into frames, another would analyze those frames for defects, and a third would aggregate the results @gill_2024_monolith. This distributed nature meant that each component operated independently, scaling up or down based on immediate demand. While theoretically sound for low-volume workloads, this architectural choice introduced significant complexity when applied to thousands of simultaneous high-definition live streams @prime_video_tech_2023.

== The Inefficiency Bottle-neck

As the service scaled, two critical inefficiencies emerged, both stemming from the distributed nature of the microservices architecture:

=== The Orchestration Overhead

The primary bottleneck was not the video processing itself, but the coordination of that processing @prime_video_tech_2023. The team discovered that the cost of the orchestration layer (AWS Step Functions) was scaling linearly with the number of video streams @prime_video_tech_2023. In a green computing context, "cost" is a direct proxy for computational resources. The system was expending a massive amount of energy simply managing the state transitions—tracking which step came next for every single frame of video @bytebytego_2023. This is a classic example of "software overhead," where the energy used to manage the work exceeds the energy used to do the work.

=== The Data Movement Penalty (S3 Thrashing)

Because Lambda functions are stateless and ephemeral, they cannot easily share memory. To pass video frames from one function to the next, the system had to upload images to an Amazon S3 (Simple Storage Service) bucket, where the next function would then download them @prime_video_tech_2023. This created a massive volume of "Tier 1" requests to S3 @prime_video_tech_2023. From an energy perspective, this was disastrous. Moving data across the network to a storage server, writing it to a disk, and then reading it back across the network consumes significantly more electricity than simply passing data through the CPU's local RAM @gill_2024_monolith. This constant read/write cycle became the primary driver of both high latency and excessive infrastructure utilization.

#pagebreak()
= Implementation of Green Software Techniques

== The Pivot to Monolithic Architecture

To address the scaling and energy inefficiencies identified in the previous chapter, the Prime Video engineering team executed a fundamental architectural pivot: transitioning from distributed microservices to a consolidated monolithic architecture. Instead of maintaining separate AWS Lambda functions for media conversion, defect detection, and orchestration, the team repackaged these distinct components into a single executable application @prime_video_tech_2023.

This unified application was deployed as a containerized service using Amazon Elastic Container Service (ECS), running on Amazon EC2 instances @bytebytego_2023. By co-locating the components within a single process, the need for an external orchestration service (AWS Step Functions) was entirely eliminated @prime_video_tech_2023. The logic that previously required complex state machine configurations was replaced with simple, efficient function calls within the code itself. This move represents a strategic application of "Architectural Consolidation," a technique where reducing the number of moving parts directly correlates to reduced computational overhead @ismail_2023_retrospective.

== Analysis of the Green Software Layer

This implementation falls primarily under the System Architecture & Software Design layer of the Green Software stack. Decisions made at this layer are highly consequential because they dictate the "resource envelope" for the entire application. By choosing a monolithic design for this specific high-volume workload, the team fundamentally altered the hardware requirements of the system. The architecture dictates how data flows; in a microservices design, data flows over the network (high energy), whereas in a monolithic design, data flows through the CPU and memory (low energy). This case study serves as a critical example that "Green Software" is not just about optimizing code syntax (the Code layer), but about designing structural systems that inherently minimize waste @gill_2024_monolith.

== Technical Implementation Details

#v(1.5em)
#figure(
  image("/smt_7/green-computing/paper-assignment/images/1_bU4oLZyEgcMaTvVCfXWx5Q.webp", width: 80%),
  caption: [The refactored monolithic architecture running on Amazon ECS. Note the use of \"Instance Memory\" for data transfer, eliminating network overhead @prime_video_tech_2023.],
) <refactored-monolithic-architecture>
#v(1.5em)

The most significant technical breakthrough in this refactoring was the implementation of Data Locality Optimization. In the previous serverless architecture, intermediate video frames were uploaded to Amazon S3 storage to persist state between Lambda executions—a process that generated high network traffic and storage I/O energy costs @prime_video_tech_2023.

In the new monolithic architecture, because all components run within the same container instance, they share the same memory space. The team rewrote the data handling logic to pass video frames between the media converter and the defect detector using simple in-memory reference passing @bytebytego_2023. This change meant that heavy video data never had to leave the server's RAM until the final result was ready.

- Before: Write to Network → Write to Disk → Read from Disk → Read from Network.

- After: Write to RAM → Read from RAM.

This shift from "Network I/O" to "Memory I/O" reduced the energy intensity of the operation by orders of magnitude, as accessing RAM consumes significantly less power than engaging network interface controllers and remote storage drives @prime_video_tech_2023.

#pagebreak()

= Results and Impact Analysis

== Operational Outcome

The transition from a serverless microservices architecture to a monolithic containerized architecture was a definitive operational success. The primary objective—resolving the scaling bottlenecks—was achieved immediately. By eliminating the reliance on AWS Step Functions, the system was no longer constrained by the hard limits on account state transitions @bytebytego_2023. The new architecture allowed Amazon Prime Video to monitor thousands of concurrent live video streams with high reliability, avoiding the "throttling" errors that had plagued the previous iteration @prime_video_tech_2023. This stability is a key component of sustainable computing, as system crashes and restarts consume additional energy for recovery and data re-processing.

== Quantitative Impact (The "Green" Metrics)

#v(1.5em)
#figure(
  image("/smt_7/green-computing/paper-assignment/images/0328-serverless-to-monolithic.jpeg", width: 65%),
  caption: [A side-by-side comparison of the serverless vs. monolithic architecture, highlighting the 90% reduction in infrastructure costs @bytebytego_2023.],
) <serverless-monolithic-comparison>
#v(1.5em)

The most significant outcome of this refactoring was a reported 90% reduction in infrastructure costs @prime_video_tech_2023. In the context of cloud computing and green software engineering, financial cost is often a direct proxy for environmental impact. Cloud providers like AWS bill based on "provisioned resources"—CPU cycles, storage gigabytes, and network requests.

A 90% reduction in cost implies a nearly equivalent reduction in the underlying physical resources required to run the workload.

- Reduced Compute Cycles: The elimination of orchestration overhead meant fewer CPU cycles were wasted on "managing" the code, leaving more capacity for "executing" the code @ismail_2023_retrospective.

- Reduced Energy Consumption: By rightsizing the infrastructure from thousands of ephemeral Lambda functions to a smaller cluster of efficient EC2 instances, the total electricity required to power the processors and cool the data centers was significantly lowered @gill_2024_monolith.

== Performance Improvements

Beyond resource efficiency, the system exhibited marked improvements in performance. The removal of the "S3 hop" (uploading and downloading intermediate data) significantly reduced end-to-end latency @bytebytego_2023. The system could detect video defects faster because the data path was streamlined through local memory. This latency reduction contributes to energy efficiency by allowing processors to return to an idle, low-power state more quickly after completing a task, rather than waiting on high-latency network operations @prime_video_tech_2023.

#pagebreak()
= Discussion and Critical Review

== Uniqueness of the Case

The Amazon Prime Video case study stands out as a significant anomaly in modern software engineering. For the past decade, the prevailing industry narrative has aggressively favored microservices and serverless architectures as the "gold standard" for scalability and modernization @gill_2024_monolith. It is rare for a major technology company—particularly Amazon, the very creator of AWS Lambda and a champion of the serverless movement—to publicly document a regression to a monolithic architecture @ismail_2023_retrospective.

This case is unique because it challenges the dogmatic assumption that "distributed is always better." It demonstrates that architectural patterns are not inherently "good" or "bad," but rather "fit" or "unfit" for specific workloads. For high-throughput data streams where components must interact thousands of times per second, the "separation of concerns" offered by microservices can become a liability rather than an asset @prime_video_tech_2023. This highlights a crucial lesson for Green Computing: sustainable engineering requires choosing the architecture that minimizes resource waste, even if that means choosing an older or less "trendy" design pattern.

== The "Microservices Tax"

A critical concept illustrated by this case is the "Microservices Tax"—the additional computational overhead required to run a distributed system. In a microservices environment, every interaction between components involves serialization (converting data to send), network transmission, and deserialization (converting data back to read) @ismail_2023_retrospective.

From an energy perspective, this overhead is pure waste. It consumes electricity but adds no value to the final product (the video stream). In the Prime Video case, this "tax" manifested as the high cost of AWS Step Functions and S3 requests @prime_video_tech_2023. By moving to a monolith, the team effectively engaged in "Green Refactoring," eliminating the network tax and reclaiming that energy for actual processing @gill_2024_monolith. This suggests that for highly coupled workloads, a well-structured monolith is inherently the greener option because it maximizes computational density—doing more work per watt of electricity.

#pagebreak()

= Conclusion

== Lessons Learned

The Amazon Prime Video architectural refactoring provides two critical lessons for the field of Green Software Engineering:

- Lesson 1: Context Over Dogma (The "Right Tool" Principle). The industry's broad shift toward microservices has created a presumption that distributed architectures are inherently superior. However, this case demonstrates that for specific workloads—particularly those involving high-volume, "chattery" data transfer between components—a monolithic architecture can be significantly more efficient [2]. A sustainable engineer must evaluate architecture based on the specific carbon and energy profile of the workload, rather than following industry trends blindly.

- Lesson 2: Data Locality is the Key to Efficiency. The most energy-expensive operation in cloud computing is often not the calculation itself, but the movement of data to the calculator. By refactoring to keep video frames within the server's local memory (RAM) rather than shipping them across the network to S3 storage, the team eliminated the vast majority of the system's energy overhead [3]. "Green code" is code that keeps data as close to the CPU as possible [1].

== Summary

In conclusion, the case of Amazon Prime Video serves as a powerful validation of architectural consolidation as a green computing strategy. By reverting from a serverless microservices model to a streamlined monolith, the organization achieved a 90% reduction in infrastructure costs, directly reflecting a massive decrease in server utilization and energy consumption [1]. This case study challenges the notion that "modernization" always requires complexity, proving that sometimes the simplest architecture—a well-designed monolith—is the most sustainable choice for our planet.

#pagebreak()

#align(center)[#heading(
  level: 1,
  numbering: none,
)[BIBLIOGRAPHY]]
#v(1em)

#bibliography(
  "references.bib",
  style: "ieee",
  title: none,
  full: false,
)
