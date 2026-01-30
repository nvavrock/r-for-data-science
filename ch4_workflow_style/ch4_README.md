# README: R for Data Science – Module 4 Workflow & Style Validation

## Project: The Nate Standard (Code Integrity)
This module establishes the **Governing Style Laws** for this repository. Beyond the foundational principles of Chapter 4, this project implements "Elite" engineering standards including **Cyclic Normalization** to ensure data integrity across midnight boundaries.

---

## The Nate Style Laws

### 1. Cyclic Integer Engine (Feature Extraction)
* **Standard:** Mandatory use of `(time %/% 100) %% 24`.
* **Logic:** Mathematically wraps midnight departures (`2400`) back to the `0` hour block. This prevents data fragmentation and ensures the visualization represents a continuous 24-hour cycle.

### 2. Vertical Alignment (Elastic Tabstops)
* **Standard:** Assignment operators (`=`) within data transformation blocks must be vertically aligned.
* **Logic:** Eliminates visual "noise" and makes typos in complex `mutate` calls immediately obvious.

### 3. Argument-Per-Line Rule
* **Standard:** Multi-parameter function calls must place each argument on a new line.
* **Logic:** Facilitates precise Git version control; changes to a single parameter appear as distinct, clean commits.

---

## Technical Verification & Parity
To verify the **Cyclic Normalization**, this module produces a verification CSV. This ensures that the integer math correctly handles the midnight transition.

| Raw Integer | Extraction Logic | Resulting Hour |
| :--- | :--- | :--- |
| `0815` | `(815 %/% 100) %% 24` | `8` |
| `2400` | `(2400 %/% 100) %% 24` | `0` |



---

## Artifact Inventory
| Artifact Name | Type | Technical Function |
| :--- | :--- | :--- |
| `ch4_standardized_analysis.R` | Script | Master analysis engine enforcing all style laws. |
| `ch4_time_standardization_verification.csv` | Data | **Verification Table**: Evidence of %/% and %% logic. |
| `standardized_performance.png` | Asset | High-res plot with normalized 0-23 x-axis. |

---

**Refined & Standardized by Nate Vavrock (2026).**