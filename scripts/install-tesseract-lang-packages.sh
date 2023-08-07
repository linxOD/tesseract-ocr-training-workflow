#/bin/bash

# german best
wget https://notesalexp.org/tesseract-ocr5/jammy/pool/main/t/tesseract-lang-best/tesseract-ocr-deu-best_5.0.0+git37-e2aad9b-2_all.deb
dpkg -i tesseract-ocr-deu-best_5.0.0+git37-e2aad9b-2_all.deb
rm -r tesseract-ocr-deu-best_5.0.0+git37-e2aad9b-2_all.deb
# german regular
wget https://notesalexp.org/tesseract-ocr5/jammy/pool/main/t/tesseract-lang/tesseract-ocr-deu_5.0.0~git39-6572757-3_all.deb
dpkg -i tesseract-ocr-deu_5.0.0~git39-6572757-3_all.deb
rm -r tesseract-ocr-deu_5.0.0~git39-6572757-3_all.deb
# german fraktur
wget https://notesalexp.org/tesseract-ocr5/jammy/pool/main/t/tesseract-lang-legacy/tesseract-ocr-deu-frak-legacy_5.0.0~git44-4767ea9-2_all.deb
dpkg -i tesseract-ocr-deu-frak-legacy_5.0.0~git44-4767ea9-2_all.deb
rm -r tesseract-ocr-deu-frak-legacy_5.0.0~git44-4767ea9-2_all.deb
# german legacy
# wget https://notesalexp.org/tesseract-ocr5/jammy/pool/main/t/tesseract-lang-legacy/tesseract-ocr-deu-legacy_5.0.0~git44-4767ea9-2_all.deb
# dpkg -i tesseract-ocr-deu-legacy_5.0.0~git44-4767ea9-2_all.deb
# rm -r tesseract-ocr-deu-legacy_5.0.0~git44-4767ea9-2_all.deb

# english best
wget https://notesalexp.org/tesseract-ocr5/jammy/pool/main/t/tesseract-lang-best/tesseract-ocr-eng-best_5.0.0+git37-e2aad9b-2_all.deb
dpkg -i tesseract-ocr-eng-best_5.0.0+git37-e2aad9b-2_all.deb
rm -r tesseract-ocr-eng-best_5.0.0+git37-e2aad9b-2_all.deb
# english regular
wget https://notesalexp.org/tesseract-ocr5/jammy/pool/main/t/tesseract-lang/tesseract-ocr-eng_5.0.0~git39-6572757-3_all.deb
dpkg -i tesseract-ocr-eng_5.0.0~git39-6572757-3_all.deb
rm -r tesseract-ocr-eng_5.0.0~git39-6572757-3_all.deb
# english legacy
# wget https://notesalexp.org/tesseract-ocr5/jammy/pool/main/t/tesseract-lang-legacy/tesseract-ocr-eng-legacy_5.0.0~git44-4767ea9-2_all.deb
# dpkg -i tesseract-ocr-eng-legacy_5.0.0~git44-4767ea9-2_all.deb
# rm -r tesseract-ocr-eng-legacy_5.0.0~git44-4767ea9-2_all.deb

cp -r /usr/local/share/tessdata/* /usr/share/tesseract-ocr/5/tessdata

# echo "install language packages"
# aptitude install -y \
#     tesseract-ocr-deu-best \
#     tesseract-ocr-deu \
#     tesseract-ocr-deu-frak-legacy \
#     tesseract-ocr-deu-legacy \
#     tesseract-ocr-eng-best \
#     tesseract-ocr-eng \
#     tesseract-ocr-eng-legacy