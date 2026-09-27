# Biznes va tadbirkorlik, Business Model Canvas va BPM

**1-mashg'ulot — Talabalar uchun asosiy tushunchalar**

Ushbu taqdimot biznes asoslari, tadbirkorlik mohiyati, Business Model Canvas (BMC) vizual modeli hamda Biznes Jarayonlarini Boshqarish (BPM) bo'yicha muhim boshlang'ich bilimlarni o'z ichiga oladi.

## 🔗 Ko'rish va yuklab olish

| Format | Havola |
|--------|--------|
| 🌐 Veb-taqdimot (brauzerda, interaktiv test bilan) | https://zzynddnv-lang.github.io/prezidentatsiya/ |
| 📄 PDF | [docs/Biznes-va-tadbirkorlik-Business-Model-Canvas-va-BPM.pdf](docs/Biznes-va-tadbirkorlik-Business-Model-Canvas-va-BPM.pdf) |
| 📊 PowerPoint (tahrirlash uchun) | [Biznes-va-tadbirkorlik-Business-Model-Canvas-va-BPM.pptx](Biznes-va-tadbirkorlik-Business-Model-Canvas-va-BPM.pptx) |
| 📝 Amaliy topshiriqlar va test | [TOPSHIRIQLAR.md](TOPSHIRIQLAR.md) |

---

## 📌 Taqdimot mundarijasi

1. **Biznes va tadbirkorlik**
   - Biznes nima? Qonuniy tijorat faoliyati orqali daromad olish.
   - Tadbirkor kim? Biznes bilan shug'ullanuvchi shaxs.
   - Tadbirkorlik nima? Xavf-xatarni qabul qilib, yangi g'oyalarni amalga oshirish.
   - Biznes va tadbirkorlik o'rtasidagi farqlar va misollar.

2. **Biznes sohalari**
   - 🛍️ Savdo (kiyim do'koni, bozor va h.k.)
   - 🛎️ Xizmat ko'rsatish (salon, restoran, taksi va h.k.)
   - 🏭 Ishlab chiqarish (fabrika, mebel ustaxonasi va h.k.)
   - 💻 IT va texnologiya (dasturiy ta'minot, veb-sayt, mobil ilova va h.k.)

3. **Biznes qanday ishlaydi?**
   - Muammo → Mahsulot (yechim) → Mijoz → Daromad

4. **Business Model Canvas (BMC)** — Alexander Osterwalder va Yves Pigneur, 9 ta blok:
   1. Customer Segments (Mijozlar kim?)
   2. Value Propositions (Ularga qanday qiymat beriladi?)
   3. Channels (Yetkazib berish kanallari)
   4. Customer Relationships (Mijozlar bilan munosabat)
   5. Revenue Streams (Daromad manbalari)
   6. Key Resources (Asosiy resurslar)
   7. Key Activities (Asosiy faoliyat)
   8. Key Partnerships (Asosiy hamkorlar)
   9. Cost Structure (Xarajatlar tuzilmasi)
   - Amaliy misol: *onlayn ta'lim kursi* — barcha 9 blok bo'yicha

5. **BPM (Business Process Management)**
   - Biznes jarayoni va jarayonlar xaritasi
   - Nima uchun kerak: ishlarni tezlashtirish, xatolarni kamaytirish, samaradorlikni oshirish
   - Misol: onlayn buyurtma jarayoni

6. **Xulosa va foydalanilgan manbalar**

---

## 📁 Fayllar tuzilmasi

```text
prezidentatsiya/
├── Biznes-va-tadbirkorlik-Business-Model-Canvas-va-BPM.pptx  # Asosiy taqdimot (Git LFS)
├── TOPSHIRIQLAR.md        # Keyslar, mustaqil ish, test va javoblar
├── docs/                  # GitHub Pages sayti
│   ├── index.html         # Veb-taqdimot (Reveal.js) + interaktiv test
│   ├── assets/            # Taqdimotdan olingan illyustratsiyalar
│   └── *.pdf              # PDF versiya
├── tools/
│   ├── export_pdf.ps1     # .pptx → PDF (PowerPoint orqali)
│   └── fix_pptx.py        # Taqdimotdagi tuzatishlar skripti (bir martalik)
├── README.md
└── HANDOFF.md             # Loyiha holati va keyingi qadamlar
```

## 🛠️ Taqdimotni yangilash tartibi

1. `.pptx` faylni PowerPoint'da tahrirlang.
2. PDF'ni qayta yarating: `powershell -ExecutionPolicy Bypass -File tools\export_pdf.ps1`
3. Agar slayd matni o'zgargan bo'lsa, `docs/index.html` dagi mos slaydni ham yangilang.
4. Commit va push qiling — GitHub Pages sayti avtomatik yangilanadi.

> `.pptx` fayli **Git LFS** orqali saqlanadi. Repozitoriyani klonlashdan oldin [Git LFS](https://git-lfs.com) o'rnatilganiga ishonch hosil qiling.
