# R for Data Science (R4DS): Systematic Review & Iterative Refinement

## Project Philosophy: From Syntax to Mastery
This repository documents a secondary, deep-dive audit of the **R for Data Science (R4DS)** curriculum by **Hadley Wickham, Mine Çetinkaya-Rundel, and Garrett Grolemund**. While the initial engagement focused on functional proficiency, this iterative review prioritizes architectural rigor, technical accessibility, and robust data handling.

---

## Global Technical Standards
Following the principles outlined in **Hadley’s book**, the following standards are strictly applied:

* **Data Integrity:** All visualizations must handle missing values through explicit pre-processing to ensure statistical validity.
* **Universal Design:** Visual outputs utilize the **Okabe-Ito palette**, programmatically modified to remove low-contrast colors like yellow (`#F0E442`).
* **Architectural Rigor:** Custom `theme()` adjustments are placed last to ensure absolute black (`#000000`) typography.
* **Filesystem Automation:** Scripts include `dir.exists()` and `file.copy()` logic to automate data migration.

---

## Repository Architecture
```text
r_for_data_science/
├── ch1_penguin_dimensions/
│   ├── ch1_penguin_dimensions_viz.R    # Viz & migration logic
│   ├── ch1_README.md                   # Tech specification
│   └── penguins_data.csv               # Exported artifact
├── ch2_workflows/
│   ├── ch2_workflows.R                 # Audit declaration
│   └── ch2_README.md                   # Operational standards
└── README.md                           # Global overview