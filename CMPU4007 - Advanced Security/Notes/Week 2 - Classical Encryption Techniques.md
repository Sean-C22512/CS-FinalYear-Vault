

```markdown
# Week 2 - Classical Encryption Techniques

---
Week: 2  
Module: [CMPU4007 - Advanced Security]  
Topic: Classical Encryption Techniques  
Tags: #lecture #week2 #CMPU4007   

---

## 📘 Summary
This lecture introduces **classical encryption techniques** with a focus on symmetric encryption, substitution and transposition methods, and early cryptographic schemes. It covers the fundamental terminology of cryptography, dimensions of cryptographic systems, types of security, and classical examples such as the Caesar cipher, Playfair cipher, Hill cipher, Vigenère cipher, one-time pad, and transposition ciphers. The session also touches on historical methods like rotor machines and steganography.  

---

## 🔑 Key Concepts & Definitions
- **Symmetric Encryption (Conventional/Single-Key Encryption)** → Encryption method where the same key is used for both encryption and decryption.
- **Plaintext** → The original, readable message.
- **Ciphertext** → The coded or encrypted message.
- **Enciphering / Encryption** → Converting plaintext into ciphertext.
- **Deciphering / Decryption** → Converting ciphertext back into plaintext.
- **Cryptography** → The study of encryption methods.
- **Cipher / Cryptographic System** → A scheme or method for encryption.
- **Cryptanalysis** → Techniques for breaking ciphers without knowing the encryption details.
- **Cryptology** → The combined study of cryptography and cryptanalysis.

- **Dimensions of Cryptographic Systems** → Characterized by:
  1. Operations: substitution or transposition.  
  2. Keys: symmetric (single key) or asymmetric (two keys).  
  3. Processing: block cipher or stream cipher.  

- **Cryptanalysis Attack** → Exploiting weaknesses in algorithms to deduce plaintext or key.
- **Brute-Force Attack** → Trying all possible keys until the correct one is found.
- **Unconditionally Secure Encryption** → Impossible to decrypt regardless of resources.
- **Computationally Secure Encryption** → Secure if cost or time to break exceeds usefulness of data.

- **Substitution Cipher** → Replaces plaintext symbols with others.
- **Caesar Cipher** → Shifts each letter by a fixed amount (k).
- **Monoalphabetic Cipher** → Uses one substitution alphabet; vulnerable to frequency analysis.
- **Playfair Cipher** → Encrypts digrams using a 5×5 keyword matrix.
- **Hill Cipher** → Uses linear algebra and matrices to obscure frequency patterns.
- **Polyalphabetic Cipher** → Uses multiple substitution alphabets (e.g., Vigenère).
- **Vigenère Cipher** → Based on repeating keywords with multiple Caesar shifts.
- **One-Time Pad** → Perfectly secure cipher using a truly random key equal in length to the message.

- **Transposition Cipher** → Rearranges plaintext symbols without substitution.
- **Rail Fence Cipher** → Writes text in a zigzag and reads row by row.
- **Row Transposition Cipher** → Writes text in rows and reads columns in permuted order.

- **Rotor Machines** → Mechanical encryption devices used before digital ciphers.
- **Steganography** → Concealing the existence of a message (e.g., invisible ink, pin punctures, hidden marks).
```