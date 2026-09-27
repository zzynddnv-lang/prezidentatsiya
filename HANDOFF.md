# Loyiha Bo'yicha Handoff Hujjati (HANDOFF.md)

Ushbu hujjat **"Biznes va tadbirkorlik, Business Model Canvas va BPM"** (1-mashg'ulot) taqdimot loyihasining hozirgi holati, arxitekturasi, ishlatilgan vositalar, fayllar vazifasi, mavjud cheklovlar va kelgusidagi rejalarni o'z ichiga oladi.

---

## 1. Loyiha haqida umumiy ma'lumot
Ushbu loyiha talabalar va yangi boshlovchilar uchun biznes asoslari, tadbirkorlik tamoyillari, **Business Model Canvas (BMC)** metodologiyasi va **Biznes Jarayonlarini Boshqarish (BPM)** tushunchalarini vizual va interaktiv tarzda o'rgatishga mo'ljallangan taqdimot materialidir.

---

## 2. Nima ishlar qilindi?

### 2.1. Birinchi bosqich (Antigravity)
- [x] Loyiha muhiti shakllantirildi, `README.md` yozildi.
- [x] Git repozitoriyasi (`main`) va GitHub (`https://github.com/zzynddnv-lang/prezidentatsiya.git`) ulandi, birlamchi commit push qilindi.
- [x] `HANDOFF.md` yaratildi va push qilindi.

### 2.2. Ikkinchi bosqich (Claude Code, 2026-09-27)
- [x] **Taqdimotdagi kamchiliklar tuzatildi** (`tools/fix_pptx.py`):
  - 6-slayd "Business Model Canvas — 9 qism" o'ng ro'yxatida faqat 5 ta blok bor edi → 9 ta blokning hammasi qo'shildi.
  - 7-slayd "Onlayn ta'lim kursi" misolida 6 ta blok bor edi → 9 ta blokli 3×3 to'rga kengaytirildi (Munosabatlar, Asosiy faoliyat, Hamkorlar qo'shildi); xira ramkali karta boshqalariga moslashtirildi.
  - Imlo xatolari: "Dukonda" → "Do'konda", "saloon" → "salon", "berarsiz" → "berasiz", "Ma'lumotlangan xaridorlar" → "Mahsulotni sotib oluvchilar", "To'lov maydoni nazorat qilinadi" → "To'lov holati tasdiqlanadi".
  - Apostroflar (ʻ, ʼ, ’) bir xil ko'rinishga (') keltirildi.
  - Barcha slayddagi "Made with GAMMA" reklama belgisi (va gamma.app havolasi) olib tashlandi.
  - Manbalar aniqlashtirildi (Osterwalder & Pigneur 2010, ABPMP BPM CBOK, WfMC, IBM, O'zR Qonuni).
- [x] **PDF versiya** — `docs/Biznes-va-tadbirkorlik-Business-Model-Canvas-va-BPM.pdf` (PowerPoint orqali, `tools/export_pdf.ps1`).
- [x] **Veb-taqdimot** — `docs/index.html` (Reveal.js 5, CDN orqali): 13 slayd, BMC klassik to'r ko'rinishida, 12 savollik interaktiv test, PDF/PPTX havolalari.
- [x] **Amaliy topshiriqlar** — `TOPSHIRIQLAR.md`: 3 ta keys, mustaqil ish va baholash mezonlari, 12 ta test, o'qituvchi uchun javoblar.
- [x] **Git LFS** — `*.pptx` fayllari LFS orqali kuzatiladi (`.gitattributes`). PDF va rasmlar ataylab LFS'ga qo'shilmagan: GitHub Pages LFS fayllarini bera olmaydi.

## 3. Loyiha arxitekturasi va tuzilishi

### 3.1. Fayllar daraxti
```text
prezidentatsiya/
├── .gitattributes                                         # Git LFS: *.pptx
├── .claude/launch.json                                    # docs/ ni lokal serverda ko'rish (port 8765)
├── Biznes-va-tadbirkorlik-Business-Model-Canvas-va-BPM.pptx  # Asosiy PowerPoint taqdimoti (LFS)
├── TOPSHIRIQLAR.md                                        # Keyslar, test, javoblar
├── README.md                                              # Loyiha tavsifi va havolalar
├── HANDOFF.md                                             # Ushbu hujjat
├── docs/                                                  # GitHub Pages manbasi
│   ├── index.html                                         # Reveal.js veb-taqdimot + test
│   ├── .nojekyll
│   ├── assets/*.jpg|png                                   # .pptx dan olingan illyustratsiyalar
│   └── Biznes-va-...-BPM.pdf                              # PDF versiya
└── tools/
    ├── export_pdf.ps1                                     # .pptx → PDF
    └── fix_pptx.py                                        # 2026-09-27 tuzatishlari (bir martalik)
```

### 3.2. Taqdimotning mantiqiy oqimi (Mavzular arxitekturasi)
1. **Kirish:** Biznes va tadbirkorlik tushunchalari, farqlari va amaliy misollari.
2. **Sohaviy tasnif:** Savdo, xizmat ko'rsatish, ishlab chiqarish, IT & Texnologiya.
3. **Ishlash mexanizmi:** Muammo (ehtiyoj) ➔ Yechim (mahsulot/xizmat) ➔ Daromad (sotuv va rivoj).
4. **Business Model Canvas (BMC):** 9 ta asosiy blok (Alexander Osterwalder metodologiyasi) va onlayn ta'lim biznesi misolida tahlil.
5. **BPM (Business Process Management):** Jarayonlar ketma-ketligi va onlayn buyurtma xaritasi.
6. **Xulosa va Manbalar:** Mavzuni umumlashtirish va foydalanilgan xalqaro manbalar (MindTools, Shopify, IBM, WfMC).

---

## 4. Ishlatilgan texnologiyalar va vositalar

| Texnologiya / Vosita | Vazifasi / Qo'llanilishi |
| :--- | :--- |
| **Microsoft PowerPoint (.pptx)** | Vizual slaydlar, diagrammalar va grafik elementlarni yaratish formati |
| **Git** | Mahalliy versiya nazorati tizimi (Local Version Control) |
| **GitHub** | Masofaviy repozitoriya saqlash va jamoaviy hamkorlik platformasi |
| **Markdown (.md)** | Loyiha hujjatlari (`README.md`, `HANDOFF.md`) uchun format |
| **PowerShell** | Loyiha muhitini boshqarish va CLI buyruqlarini bajarish vositasi |
| **Reveal.js 5 (CDN)** | Veb-taqdimot dvigateli (`docs/index.html`) |
| **GitHub Pages** | Veb-taqdimotni `main` tarmog'ining `/docs` papkasidan chop etish |
| **Git LFS** | `.pptx` binar faylini samarali saqlash |
| **python-pptx** | Taqdimotni skript orqali tahrirlash (`tools/fix_pptx.py`) |

---

## 5. Qaysi fayl nima vazifani bajaradi?

- **`Biznes-va-tadbirkorlik-Business-Model-Canvas-va-BPM.pptx`** — asosiy o'quv resursi (10 slayd, Gamma'da yaratilgan, tuzatilgan). Git LFS orqali saqlanadi.
- **`docs/index.html`** — veb-taqdimot. Matnlar `.pptx` bilan mos, lekin HTML'da alohida yozilgan: `.pptx` o'zgarsa, bu faylni ham qo'lda yangilash kerak. Test savollari fayl oxiridagi `QUESTIONS` massivida.
- **`docs/*.pdf`** — `tools/export_pdf.ps1` bilan qayta yaratiladi.
- **`TOPSHIRIQLAR.md`** — o'qituvchi va talabalar uchun keyslar, test va javoblar (javoblar `<details>` ichida yashirin). Test savollari `docs/index.html` dagi bilan bir xil.
- **`tools/fix_pptx.py`** — asl Gamma eksportiga qo'llangan tuzatishlar; qayta ishga tushirish shart emas.
- **`README.md`** — repozitoriyaning "tashrif qog'ozi" va havolalar.

## 6. Hozirgi muammolar va cheklovlar

1. **GitHub Pages yoqilishi kerak (bir martalik, qo'lda):** repozitoriya → *Settings → Pages → Build and deployment → Source: "Deploy from a branch" → Branch: `main`, folder: `/docs`* → Save. Shundan so'ng sayt `https://zzynddnv-lang.github.io/prezidentatsiya/` manzilida ochiladi.
2. **Ikki manbali kontent:** `.pptx` va `docs/index.html` matnlari alohida saqlanadi — birini o'zgartirganda ikkinchisini ham yangilash kerak.
3. **Slayd ichidagi rasmlarda matn:** 6-slayddagi puzzle rasmida ("qanday yo'l bilan yetib boriladi") va 4/9-slayddagi chiziqli grafikalar rasm ko'rinishida — ularni faqat rasmni qayta yaratish orqali o'zgartirish mumkin.
4. **Shriftlar:** `.pptx` "Spline Sans" va "Barlow" shriftlaridan foydalanadi; ular o'rnatilmagan kompyuterda PowerPoint o'xshash shrift bilan almashtiradi.
5. **Git LFS:** klonlovchi foydalanuvchida `git-lfs` o'rnatilgan bo'lishi kerak; GitHub bepul tarifida LFS uchun oyiga 1 GB trafik limiti bor. Eski commitlardagi `.pptx` (LFS'dan oldingi) tarixda qoladi — tarixni qayta yozish (`git lfs migrate`) ataylab qilinmagan.
6. **Ko'p tillilik:** barcha materiallar faqat o'zbek tilida.

---

## 7. Keyingi qadamlar (Roadmap)

- [x] PDF versiyasini tayyorlash
- [x] GitHub Pages uchun veb-taqdimot (Reveal.js)
- [x] Amaliy topshiriqlar va test
- [x] Git LFS
- [ ] GitHub Pages'ni repozitoriya sozlamalarida yoqish (6.1-bandga qarang)
- [ ] Rus / ingliz tillaridagi versiyalar
- [ ] Keyingi mashg'ulotlar (2-mashg'ulot va h.k.) uchun shu tuzilmani takrorlash
