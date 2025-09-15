
# NotebookLM Flashcard Generation Prompt

**Purpose:** Generate concise, Obsidian-ready flashcards from compressed lecture notes.

**Prompt:**  
"Please take the following lecture note text and generate Q&A flashcards. Follow these rules:

1. Create clear questions (Q:) and answers (A:) for each concept, formula, or definition.
    
2. Keep each flashcard concise (1–2 sentences max).
    
3. Use cloze deletion format where appropriate ({{c1::...}}).
    
4. Do not invent any content beyond what is in the text.
    
5. Organize flashcards in the order concepts appear in the lecture note.
    
6. Output in Markdown format ready to paste into /Flashcards/Week{WeekNumber} - {Topic}.md.
    

**Lecture Note Text:**  
[Paste your compressed lecture note here]"