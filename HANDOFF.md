# Loyiha Bo'yicha Handoff Hujjati (HANDOFF.md)

Ushbu hujjat **"Biznes va tadbirkorlik, Business Model Canvas va BPM"** (1-mashg'ulot) taqdimot loyihasining hozirgi holati, arxitekturasi, ishlatilgan vositalar, fayllar vazifasi, mavjud cheklovlar va kelgusidagi rejalarni o'z ichiga oladi.

---

## 1. Loyiha haqida umumiy ma'lumot
Ushbu loyiha talabalar va yangi boshlovchilar uchun biznes asoslari, tadbirkorlik tamoyillari, **Business Model Canvas (BMC)** metodologiyasi va **Biznes Jarayonlarini Boshqarish (BPM)** tushunchalarini vizual va interaktiv tarzda o'rgatishga mo'ljallangan taqdimot materialidir.

---

## 2. Nima ishlar qilindi?
- [x] **Loyiha muhiti shakllantirildi:** Ish stolidagi `prezidentatsiya` jildiga taqdimot fayli nusxalandi.
- [x] **Hujjatlashtirish yaratildi:** Taqdimot mundarijasi, asosiy bo'limlari va mazmunini ifodalovchi to'liq `README.md` fayli yozildi.
- [x] **Git versiya nazorati sozlandi:**
  - Git repozitoriyasi initsializatsiya qilindi (`main` asosiy tarmog'i bilan).
  - Lokal identifikatsiya sozlamalari kiritildi.
- [x] **GitHub bilan integratsiya:**
  - Masofaviy repozitoriya ulandi: `https://github.com/zzynddnv-lang/prezidentatsiya.git`
  - Birlamchi commit yaratildi (`Initial commit: Biznes va tadbirkorlik taqdimoti`).
  - Loyiha to'liq `origin/main` tarmog'iga muvaffaqiyatli yuklandi (push qilindi).

---

## 3. Loyiha arxitekturasi va tuzilishi

### 3.1. Fayllar daraxti
```text
prezidentatsiya/
├── .git/                                                  # Git tizim fayllari
├── Biznes-va-tadbirkorlik-Business-Model-Canvas-va-BPM.pptx  # Asosiy PowerPoint taqdimoti
├── README.md                                              # Loyiha tavsifi va mundarijasi
└── HANDOFF.md                                             # Loyihaning topshirish hujjati
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

---

## 5. Qaysi fayl nima vazifani bajaradi?

- **`Biznes-va-tadbirkorlik-Business-Model-Canvas-va-BPM.pptx`**:
  - Asosiy media va o'quv resursi (~3.6 MB).
  - Talabalar uchun dars taqdimoti, grafik illyustratsiyalar, BMC jadvallari va BPM oqim diagrammalarini o'zida jamlagan.
- **`README.md`**:
  - Repozitoriyaning tashrif qog'ozi.
  - Loyihaning nima ekanligi, dars rejasi va mundarijani foydalanuvchiga qulay tarzda ko'rsatadi.
- **`HANDOFF.md`**:
  - Loyihani boshqa dasturchi yoki o'qituvchiga topshirish hujjati.
  - Barcha texnik tafsilotlar, muammolar va keyingi qadamlarni o'z ichiga oladi.

---

## 6. Hozirgi muammolar va cheklovlar

1. **Binar fayl hajmi va Git samaradorligi:**
   - `.pptx` fayli binar formatda bo'lib, hajmi ~3.6 MB ni tashkil etadi. Agar taqdimot tez-tez tahrir qilinsa, Git repozitoriya hajmi tez o'sib ketishi mumkin. Kelgusida katta fayllar uchun **Git LFS (Large File Storage)** joriy qilish maqsadga muvofiq.
2. **GitHub'da to'g'ridan-to'g'ri ko'rish imkoniyati yo'qligi:**
   - GitHub web interfeysi `.pptx` fayllarini to'g'ridan-to'g'ri brauzerda slayd ko'rinishida render qilmaydi (foydalanuvchi faylni yuklab olishi talab etiladi).
3. **Ko'p tillilik / Lokalizatsiya:**
   - Hozirgi barcha matnlar o'zbek tilida. Kelajakda rus yoki ingliz tillariga moslashtirish talab qilinishi mumkin.

---

## 7. Qolgan ishlar va keyingi qadamlar (Roadmap)

- [ ] **PDF versiyasini tayyorlash:** Taqdimotni `.pdf` formatida eksport qilib, repozitoriyaga joylashtirish (foydalanuvchilar GitHub'da brauzerdan chiqmasdan ko'rishlari uchun).
- [ ] **GitHub Pages orqali veb-prezentatsiya:** Slaydlarni HTML5 / CSS3 / Reveal.js yoki Marp yordamida veb-sayt ko'rinishiga o'tkazish va bepul domen orqali internetga ulash.
- [ ] **Amaliy topshiriqlar va testlar bo'limi:** Talabalar bilmini mustahkamlash uchun har bir mavzuga oid keyslar (case studies) va test savollari matnini qo'shish.
- [ ] **`HANDOFF.md` faylini GitHub'ga yuklash:** Ushbu hujjatni commit qilib, `origin/main` ga push qilish.
