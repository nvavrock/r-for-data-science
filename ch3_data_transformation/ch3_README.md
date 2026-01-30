# README: R for Data Science – Technical Refinement

## Project: The Flight Performance Engine
This module represents a **Technical Refinement** of the data transformation principles in Chapter 3. The objective is to extend the foundational `dplyr` verbs into a robust, defensive pipeline that engineers high-integrity performance metrics from raw flight data.

---

## Engineering Standards
This implementation improves upon the base curriculum by enforcing the following "Hardened" standards:

### 1. Architectural Modernization
* **Standard:** Global implementation of the native pipe `|>`.
* **Improvement:** Reduces package dependency and optimizes the internal R syntax tree for faster execution and clearer debugging.

### 2. Defensive Data Handling
* **Standard:** Explicit pre-processing of missing values.
* **Improvement:** Rather than allowing `NA` values to propagate through calculations, the pipeline enforces an integrity check at the source, ensuring all summarized metrics are statistically valid.

### 3. Metric Engineering
* **Extension:** Beyond basic `mutate` examples, this project engineers a **Normalized Recovery Index**. This converts raw delay minutes into a "Gain per Hour" metric, allowing for equitable performance benchmarking across long-haul and short-haul carrier operations.

---

## Artifacts Produced
* **`ch3_flight_efficiency.R`**: The hardened transformation pipeline.
* **`top_carrier_efficiency.csv`**: A serialized data artifact of the refined results.

---

## Source Reference
Based on foundational concepts from **"R for Data Science (2e)"** by Hadley Wickham et al., extended and optimized by Nate Vavrock.