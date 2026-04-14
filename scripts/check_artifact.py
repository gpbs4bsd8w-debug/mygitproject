from pathlib import Path

text = Path("artifact/message.txt").read_text(encoding="utf-8", errors="ignore")

if "DevOps" in text:
   print("Artifact check passed.")
   raise SystemExit(0)

print("Artifact check failed.")
raise SystemExit(1)

