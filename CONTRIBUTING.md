# Contributing to Cloud Skills Lab Manuals

Thank you for helping make cloud computing accessible to first-year students! We appreciate fixes, updates, and newly written lab guides.

---

## How to Add a New Lab

Adding a new lab takes only three simple steps:

1. **Drop your markdown file into `/labs/`:**
   - Use lowercase naming corresponding to the lab code (e.g. `labs/arc100.md`, `labs/gsp319.md`).
   - Follow our standard structure: Goal table, Step 0 (Values table), sequential tasks with single command blocks, and a Troubleshooting table.
2. **Update the Lab Index row in `README.md`:**
   - Link the Lab ID to your new guide (e.g. `[ARC100](labs/arc100.md)`).
   - Change the Status column to `🟡 Draft` (or `✅ Verified` once live testing is confirmed).
3. **Bump the badge count:**
   - In `README.md`, update the shields.io badge count in the hero section to reflect the new number of draft and planned labs.

---

## Important Guidelines for Manuals

- **No Sensitive Data:** NEVER include actual credentials, project IDs, student email addresses, or API keys anywhere in the guide. Use placeholders like `YOUR_PROJECT_ID`, `REGION_HERE`, or `gs://${PROJECT_ID}-bucket`.
- **Original Content Only:** Do not copy verbatim text, copyrighted instructions, or proprietary imagery from Google Cloud Skills Boost. Write explanations in your own words.
- **One Command at a Time:** First-year learners get overwhelmed by long concatenated scripts. Keep command blocks focused on single actions.
- **Explain the "Why":** Add a 1-sentence explanation of what each command achieves or what common error might appear.

---

## Reporting a Broken Step or Lab Update

Google frequently updates cloud challenge labs. If a command in one of our guides fails or a lab step changes:

1. Go to the **Issues** tab and click **New Issue**.
2. Include the following details:
   - **Lab ID & Name:** (e.g. ARC120, Task 2.2)
   - **Error Message or Behavior:** What output did you receive?
   - **Expected vs Actual:** What should have happened vs what occurred.
   - **Environment Details:** Region, OS image selected, or Cloud Shell version if relevant.

---

## Pre-commit Secrets Check

Before submitting a Pull Request, run the local secrets scanning script to ensure no sensitive credentials leaked into your files:

```bash
bash scripts/check-secrets.sh
```

Ensure the output passes with `[OK] Clean` across all checks.
