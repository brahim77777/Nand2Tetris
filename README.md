# Hack CPU — 17 chips

My solution to nand2tetris Project 5. Passes all tests in 17 chip calls vs the typical 23.

**1. Mux8Way16 for jump logic** — the 3 jump bits are a natural 3-bit selector, so all 8 jump conditions map directly to mux inputs. No cascade of And/Or gates needed.

