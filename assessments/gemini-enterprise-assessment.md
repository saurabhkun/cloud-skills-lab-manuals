# Create Your First Gemini Enterprise Application: Assessment Guide

> *"Master enterprise generative AI architecture, multimodal reasoning, and data groundings."*

Questions, answers and the reasoning behind each one, for the 8-question course assessment. Passing score: **80%**, so you can miss at most one question.

> [!NOTE]
> **Disclaimer:** Unofficial study guide for practice. Learn the reasoning instead of memorizing positions, because the order of the questions and options **changes on every attempt**. The questions below are paraphrased in my own words, and the course page is the source of truth.

> [!TIP]
> **Status:** all 8 answers below were confirmed correct on a real attempt (score 100%).

---

## Quick answer key

| # | Topic | Correct answer |
|---|-------|----------------|
| 1 | Keeping weekly files up to date | **Periodic** synchronization |
| 2 | Report from hundreds of websites | **Deep Research agent** |
| 3 | Understanding a chart in a PNG | **Ask the AI assistant to summarize the chart** |
| 4 | Video overview from a few chosen files | **Gemini Notebook** |
| 5 | Drive permissions after connecting | **Users only see documents already shared with them** |
| 6 | Notebook question outside the sources | **It answers only from the uploaded documents** |
| 7 | First step of the one-time setup | **Choose an identity provider** |
| 8 | PDFs plus structured fields, with filtering | **Documents with Metadata (RAG)** |

---

## Questions, answers and explanations

### 1. Weekly reports in a Cloud Storage bucket

**The situation:** A company saves weekly sales reports in a Cloud Storage bucket. Their Gemini Enterprise app should always show the latest data. Which synchronization frequency fits?

✅ **Answer: Periodic**

**Why:** Periodic synchronization re-checks the source on a recurring schedule, such as hourly, daily or weekly, which matches files that change weekly.

**Why not the others:**
- **One time** loads the data once and then goes stale.
- **Streaming** is built for a constant flow of real-time data, which weekly files are not.
- **Multiple ingestion types** is not a frequency.

---

### 2. A report from hundreds of external websites

**The situation:** Cymbal Foods wants a thorough report on global food marketing trends, based on hundreds of outside websites. Which feature should they use?

✅ **Answer: Deep Research agent**

**Why:** The Deep Research agent browses many websites over several steps and writes up a detailed report.

**Why not the others:**
- **Gemini Notebook grounded questions** only use the sources you add yourself.
- **Google Calendar data sync** and **Search internal sources enhancement** are about internal data, not the open web.

---

### 3. Understanding a chart saved as an image

**The situation:** A marketing lead has a customer sentiment pie chart saved as a PNG and wants the main findings fast. What can they do in Gemini Enterprise?

✅ **Answer: Ask the AI assistant to summarize the customer sentiment pie chart**

**Why:** Gemini Enterprise handles prompts that include images, so it can read the chart and summarize it directly.

**Why not the others:**
- **Transcribing the chart into a spreadsheet** is slow and unnecessary.
- **A Deep Research report on chart design** answers a different question.
- **The Google Calendar data store** would only find a meeting, not the chart's findings.

---

### 4. A video overview of a few specific files

**The situation:** A researcher has a small set of text files and wants a video overview that covers only those files. Which tool fits?

✅ **Answer: Gemini Notebook**

**Why:** Gemini Notebook is made for focused research on sources you upload, and it can produce a video overview from them.

**Why not the others:**
- **Deep Research agent** looks across the web instead of just your files.
- **General Gemini Enterprise Search** searches broadly and does not make overviews of a chosen set.
- **Idea Generation agent** is for brainstorming ideas.

---

### 5. File permissions when connecting a shared Drive

**The situation:** An administrator worries that connecting a shared Google Drive will let everyone read private documents. How are permissions handled?

✅ **Answer: Users can only access documents already shared with them through existing permissions**

**Why:** The app respects the access rules already on the files, so connecting a data source does not widen who can see them.

**Why not the others:** Granting everyone access, making files public to anyone with the URL, or asking IT to reassign permissions file by file are all things the app does **not** do.

---

### 6. A Notebook question the sources don't cover

**The situation:** You ask Gemini Notebook about a product that appears in none of your uploaded sources. What happens?

✅ **Answer: It answers based only on the content of the uploaded documents**

**Why:** Notebook is grounded in the sources you provide, which keeps answers accurate and traceable to those sources.

**Why not the others:** It does not search your Drive, browse the web, or ask you to add a Calendar source to fill the gap.

---

### 7. First step of the one-time setup

**The situation:** A Google Cloud administrator is doing the one-time configuration of a Gemini Enterprise app and needs the workforce to authenticate securely and reach internal data. What comes first?

✅ **Answer: Choose an identity provider**

**Why:** Identity settings come first, because the app needs to know how to authenticate users before it can give them secure access to data.

**Why not the others:** Connecting data stores and setting a sync frequency come after identity is set up. Enabling the Gemini Code Assist API is a different product.

---

### 8. PDFs with structured data, and filtering

**The situation:** A retailer has product description PDFs and a matching set of structured fields for each (product ID, price, stock level). Users should be able to filter search results by price or stock. Which import option should they use?

✅ **Answer: Documents with Metadata (RAG)**

**Why:** This option indexes the document content and also brings in the structured fields as metadata, which is what makes filtering possible.

**Why not the others:**
- **Documents** has no metadata to filter on.
- **Tabular/E-commerce** is for structured tabular data, not documents.
- **Media/Catalog Assets** is for media and catalog items.

---

## Study notes by topic

| Topic | One-line summary |
|-------|------------------|
| **Gemini Notebook** | Works only on sources you add. Good for focused research, summaries and video overviews |
| **Deep Research agent** | Browses many websites and writes a detailed report |
| **Assistant with images** | Can read and summarize image files you include in a prompt |
| **Sync frequency** | One time for a single load, Periodic for scheduled updates, Streaming for constant real-time data |
| **Permissions** | Connected data keeps its existing access rules, so people only see what they already could |
| **Setup order** | Identity provider first, then data stores and sync settings |
| **Import options** | Documents for plain files, Documents with Metadata (RAG) for files plus filterable fields |

---

## Tips

- The questions and the options **shuffle on each attempt**, so match by meaning, not by position.
- You can miss one question and still pass at 80%, but all 8 here are confirmed.
- Read the explanation shown after each answer on the course page. It reinforces the concept.
- Never post lab credentials or API keys in public repos or chats.

*Course: Create Your First Gemini Enterprise Application. Course content may change, so use your live course page as the source of truth.*
