# Excel Financial Model Fix - Comprehensive Instructions
**File:** AugmentGrowth_Financial_Model_v8_FIXED.xlsx
**Task:** Fix all formula errors and missing values causing model to show zeros

---

## CRITICAL: Read This First

This model is broken because:
1. Input Parameters sheet has **missing and wrong values** in specific cells
2. Business Scaling formulas reference **WRONG cells** in Input Parameters
3. Client spend scaling is **static** instead of dynamic by month

Follow these instructions EXACTLY in order. Do not skip steps or improvise.

---

## PHASE 1: Fix Input Parameters Sheet

Open "Input Parameters" sheet and make these EXACT changes:

### 1.1 Add Missing Values

| Cell | Current | Change To | Label (Column A) |
|------|---------|-----------|------------------|
| B12 | ? | 0.55 | Net Revenue Multiplier (1 - Tax Rate) |
| B14 | BLANK | 12015 | Danielle's Monthly Income |
| B20 | BLANK | 10000 | Consulting Monthly Fee |
| B21 | BLANK | 0.25 | Consulting % of Time |

### 1.2 Fix Wrong Values

| Cell | Current | Change To | Why |
|------|---------|-----------|-----|
| B16 | 3 | 16285 | Monthly shortfall was wrong by factor of 5000+ |
| B34 | 750 | 0.03 | Should be percentage (3%), not dollar amount |

### 1.3 Reorganize Spend Amounts (CRITICAL)

**Current layout (WRONG):**
- B22: 50000 (Avg Spend M1-2)
- B23: 65000 (Avg Spend M3-5)
- B24: 85000 (Avg Spend M6-12)

**Problem:** B23 is supposed to be "Managed Service %" (0.10), not a spend amount.

**Fix Steps:**
1. **Insert 2 new rows BEFORE current row 23** to make room
2. **Move values down:**
   - Current B23 (65000) → Move to B25
   - Current B24 (85000) → Move to B26
   - Keep B22 (50000) where it is

3. **After moving, set these values:**

| Cell | Value | Label (Column A) |
|------|-------|------------------|
| B22 | BLANK or "Client Spend Scaling:" | (section header) |
| B23 | 0.10 | Managed Service Base % |
| B24 | 50000 | Average Client Media Spend - Month 1-2 |
| B25 | 65000 | Average Client Media Spend - Month 3-5 |
| B26 | 85000 | Average Client Media Spend - Month 6-12 |
| B27 | BLANK or "Self-Service Pricing:" | (section header) |
| B28 | 500 | Self-Service Minimum Monthly Fee |
| B29 | 1000 | Self-Service ARPU - Realistic |
| B30 | 1200 | Self-Service ARPU - Optimistic |

**ALTERNATIVE (if inserting rows breaks other formulas):**

Don't insert rows. Instead, **overwrite and shift values manually:**

1. Save current values:
   - B22: 50000
   - B23: 65000
   - B24: 85000

2. Overwrite in this order:
   - B26 = 85000 (write first, before overwriting B24)
   - B25 = 65000 (write second, before overwriting B23)
   - B24 = 50000 (write third, copy from B22)
   - B23 = 0.10 (overwrite with percentage)
   - B22 = "Client Spend Scaling:" (optional label)

3. Add:
   - B27 = "Self-Service Pricing:" (optional label)
   - B28 = 500
   - B29 = 1000
   - B30 = 1200

**After Phase 1, Input Parameters should look like:**

| Cell | Value | Description |
|------|-------|-------------|
| B5 | 108000 | Available Cash ✅ |
| B6 | 28300 | Monthly Personal Expenses ✅ |
| B12 | 0.55 | Net Revenue Multiplier ✅ |
| B14 | 12015 | Danielle's Monthly Income ✅ |
| B16 | 16285 | Monthly Shortfall ✅ |
| B20 | 10000 | Consulting Monthly Fee ✅ |
| B21 | 0.25 | Consulting % of Time ✅ |
| B22 | Label | (optional) |
| B23 | 0.10 | Managed Service Base % ✅ |
| B24 | 50000 | Avg Client Spend M1-2 ✅ |
| B25 | 65000 | Avg Client Spend M3-5 ✅ |
| B26 | 85000 | Avg Client Spend M6-12 ✅ |
| B27 | Label | (optional) |
| B28 | 500 | Self-Service Min Fee ✅ |
| B29 | 1000 | ARPU Realistic ✅ |
| B30 | 1200 | ARPU Optimistic ✅ |
| B32 | 3000 | Offshore PM Cost ✅ |
| B33 | 2 | PM Hired at Client Count ✅ |
| B34 | 0.03 | Software/API % ✅ |

---

## PHASE 2: Fix Business Scaling Formulas

Open "Business Scaling" sheet. You need to fix formulas in THREE scenarios:
- **Conservative:** Rows 16-24
- **Realistic:** Rows 43-51
- **Optimistic:** Rows 70-78

### 2.1 Fix Consulting Fee Formula (Row 17 in each scenario)

**Current Formula:** `='Input Parameters'!$B$16` (WRONG - references Shortfall)
**Fix:** Change to `='Input Parameters'!$B$20`

**Apply to these cells:**
- Conservative: C17, D17, E17, F17, G17, H17, I17, J17, K17, L17, M17, N17
- Realistic: C44, D44, E44, F44, G44, H44, I44, J44, K44, L44, M44, N44
- Optimistic: C71, D71, E71, F71, G71, H71, I71, J71, K71, L71, M71, N71

**Shortcut:** Select C17, replace formula with `='Input Parameters'!$B$20`, then copy across to N17. Repeat for Realistic and Optimistic.

### 2.2 Fix Managed Service % Formula (Row 23 in each scenario)

**Current Formula:** `='Input Parameters'!$B$22` (WRONG - used to reference old spend location)
**Fix:** Change to `='Input Parameters'!$B$23`

**Apply to these cells:**
- Conservative: C23, D23, E23, F23, G23, H23, I23, J23, K23, L23, M23, N23
- Realistic: C50, D50, E50, F50, G50, H50, I50, J50, K50, L50, M50, N50
- Optimistic: C77, D77, E77, F77, G77, H77, I77, J77, K77, L77, M77, N77

### 2.3 Fix Average Client Spend - ADD DYNAMIC LOGIC (Row 22 in each scenario)

**Current:** Static reference to one cell (WRONG)
**Fix:** Make dynamic based on month

**For each scenario (Conservative row 22, Realistic row 49, Optimistic row 76):**

| Column | Month | Formula | References |
|--------|-------|---------|------------|
| C | Month 1 | `='Input Parameters'!$B$24` | M1-2 spend ($50K) |
| D | Month 2 | `='Input Parameters'!$B$24` | M1-2 spend ($50K) |
| E | Month 3 | `='Input Parameters'!$B$25` | M3-5 spend ($65K) |
| F | Month 4 | `='Input Parameters'!$B$25` | M3-5 spend ($65K) |
| G | Month 5 | `='Input Parameters'!$B$25` | M3-5 spend ($65K) |
| H | Month 6 | `='Input Parameters'!$B$26` | M6-12 spend ($85K) |
| I | Month 7 | `='Input Parameters'!$B$26` | M6-12 spend ($85K) |
| J | Month 8 | `='Input Parameters'!$B$26` | M6-12 spend ($85K) |
| K | Month 9 | `='Input Parameters'!$B$26` | M6-12 spend ($85K) |
| L | Month 10 | `='Input Parameters'!$B$26` | M6-12 spend ($85K) |
| M | Month 11 | `='Input Parameters'!$B$26` | M6-12 spend ($85K) |
| N | Month 12 | `='Input Parameters'!$B$26` | M6-12 spend ($85K) |

**Apply to:**
1. Conservative Row 22: Cells C22 through N22
2. Realistic Row 49: Cells C49 through N49
3. Optimistic Row 76: Cells C76 through N76

### 2.4 Fix Self-Service ARPU (Row 28 in each scenario)

**Check current formulas:**
- Conservative Row 28: Should reference B29 (Realistic ARPU = $1,000)
- Realistic Row 55: Should reference B29 (Realistic ARPU = $1,000)
- Optimistic Row 82: Should reference B30 (Optimistic ARPU = $1,200)

**Current formula might be:** `='Input Parameters'!$B$27` (WRONG if B27 is label)
**Fix if needed:**
- Conservative C28-N28: `='Input Parameters'!$B$29`
- Realistic C55-N55: `='Input Parameters'!$B$29`
- Optimistic C82-N82: `='Input Parameters'!$B$30`

---

## PHASE 3: Fix Sales Pipeline Consulting Phase-Out

Open "Sales Pipeline" sheet, Row 20 (Consulting Clients Desired).

**Current:** Month 12 shows 0 (too aggressive phase-out)

**Fix:** Update columns to show realistic consulting timeline.

**For ALL scenarios (Row 20 applies to all):**

| Column | Month | Value | Reasoning |
|--------|-------|-------|-----------|
| C | 1 | 1 | Start with 1 client |
| D | 2 | 2 | Add second client |
| E | 3 | 3 | Add third client (target reached) |
| F | 4 | 3 | Maintain |
| G | 5 | 3 | Maintain |
| H | 6 | 3 | Maintain |
| I | 7 | 3 | Maintain (focus shifting to managed) |
| J | 8 | 2 | Start phase-out |
| K | 9 | 1 | Continue phase-out |
| L | 10 | 0 | Fully transitioned to managed service |
| M | 11 | 0 | - |
| N | 12 | 0 | - |

**Note:** If you want different timelines for Optimistic (faster phase-out), you'll need separate backward models, but for now make this change apply to all scenarios.

---

## PHASE 4: Validation - Manual Calculations

After completing Phases 1-3, **manually verify** these calculations:

### 4.1 Conservative Month 12 (Column N, Rows 16-32)

**Expected Client Counts (from Sales Pipeline):**
- Consulting Clients (N20): 0
- Managed Clients (N41): 5
- Self-Service Users (N79): 0 (Conservative = no launch)

**Expected Calculations:**

| Metric | Formula | Expected Result |
|--------|---------|-----------------|
| Consulting Clients (N16) | =Sales Pipeline N20 | 0 |
| Consulting Fee (N17) | =Input Parameters B20 | 10000 |
| Consulting Revenue (N18) | =N16*N17 | 0 |
| Managed Clients (N21) | =Sales Pipeline N41 | 5 |
| Avg Spend (N22) | =Input Parameters B26 | 85000 |
| Managed % (N23) | =Input Parameters B23 | 0.10 |
| Managed Revenue (N24) | =N21*N22*N23 | **42500** |
| Self-Service Users (N27) | =Sales Pipeline N79 | 0 |
| ARPU (N28) | =Input Parameters B29 | 1000 |
| Self-Service Revenue (N29) | =N27*N28 | 0 |
| **Total Gross Revenue (N32)** | =N18+N24+N29 | **42500** |
| **Net Revenue (N33)** | =N32*Input Parameters B12 | **23375** |

### 4.2 Realistic Month 12

**Expected Client Counts:**
- Consulting: 0
- Managed: 7
- Self-Service: 23

**Expected Results:**
- Managed Revenue: 7 × 85000 × 0.10 = **59,500**
- Self-Service Revenue: 23 × 1000 = **23,000**
- Total Gross Revenue: **82,500**
- Net Revenue: 82,500 × 0.55 = **45,375**

### 4.3 Optimistic Month 12

**Expected Client Counts:**
- Consulting: 0
- Managed: 9
- Self-Service: 50

**Expected Results:**
- Managed Revenue: 9 × 85000 × 0.10 = **76,500**
- Self-Service Revenue: 50 × 1200 = **60,000**
- Total Gross Revenue: **136,500**
- Net Revenue: 136,500 × 0.55 = **75,075**

---

## PHASE 5: Final Checks

### 5.1 Formula Error Check

**Option A: Use Python validation script**
```bash
python3 recalc.py
```
Should return: **0 formula errors**

**Option B: Manual scan**
- Open each sheet
- Scan for #REF!, #DIV/0!, #VALUE!, #NAME?, #N/A, #NULL!
- All cells should calculate to numbers or proper zeros

### 5.2 Google Sheets Upload Test

1. Save the fixed Excel file
2. Upload to Google Sheets
3. Check that:
   - All formulas calculate (no #REF! errors)
   - Conservative N32 shows 42,500
   - Realistic N59 shows 82,500
   - Optimistic N86 shows 136,500

### 5.3 Verify Zero Merged Cells

Merged cells break Google Sheets compatibility.

**Check:** Open Excel file, go to Home tab → Find & Select → Go To Special → Blank Cells (if merged cells exist, this will show them)

Should find: **0 merged cells**

---

## TROUBLESHOOTING

### If Conservative Revenue still shows 0:

1. Check Input Parameters B23 = 0.10 (not 65000)
2. Check Business Scaling N23 formula = `='Input Parameters'!$B$23`
3. Check Business Scaling N21 = 5 (pulls from Sales Pipeline N41)
4. Check Business Scaling N22 = 85000 (pulls from Input Parameters B26)
5. Manually calculate: 5 × 85000 × 0.10 = 42,500

### If formulas show #REF! errors:

This means you inserted/deleted rows and broke references.
- Check which sheet has errors
- Look at formula to see what cell it's trying to reference
- Update formula to correct cell reference

### If Realistic/Optimistic are still wrong:

1. Verify you applied ALL fixes to rows 43-51 (Realistic) and 70-78 (Optimistic)
2. Check that spend scaling (row 49 and 76) uses dynamic formulas (C-D: B24, E-G: B25, H-N: B26)
3. Verify Sales Pipeline has correct client counts (N49: 7, N57: 9, N83: 23, N89: 50)

---

## SUMMARY CHECKLIST

Before considering this task complete:

- [ ] Input Parameters B12 = 0.55
- [ ] Input Parameters B14 = 12015
- [ ] Input Parameters B16 = 16285
- [ ] Input Parameters B20 = 10000
- [ ] Input Parameters B23 = 0.10
- [ ] Input Parameters B24 = 50000
- [ ] Input Parameters B25 = 65000
- [ ] Input Parameters B26 = 85000
- [ ] Input Parameters B28-B30 populated
- [ ] Input Parameters B34 = 0.03
- [ ] Business Scaling Row 17 (all scenarios) references B20
- [ ] Business Scaling Row 23 (all scenarios) references B23
- [ ] Business Scaling Row 22 (all scenarios) has dynamic spend scaling
- [ ] Sales Pipeline Row 20 has consulting phase-out timeline
- [ ] Conservative N32 = 42,500
- [ ] Realistic N59 = 82,500 (approximate)
- [ ] Optimistic N86 = 136,500 (approximate)
- [ ] Zero formula errors in entire workbook
- [ ] Zero merged cells
- [ ] Model uploads to Google Sheets without errors

---

## IMPLEMENTATION NOTES

**Tools Required:**
- Excel or LibreOffice Calc
- Python 3 with openpyxl (for validation script)
- Google Sheets account (for upload test)

**Estimated Time:** 20-30 minutes if following instructions exactly

**Common Pitfalls:**
1. Forgetting to update ALL three scenarios (Conservative, Realistic, Optimistic)
2. Not applying dynamic spend scaling (using static B26 for all months)
3. Inserting rows in Input Parameters and breaking Business Scaling references
4. Copying formulas incorrectly (relative vs absolute references)

**Pro Tips:**
1. Work on a COPY of the file (save as v8_FIXED_v2.xlsx)
2. Fix Input Parameters first, then Business Scaling (dependency order matters)
3. Use Find & Replace (Ctrl+H) to bulk-update formula references
4. After each phase, save and test calculations manually before proceeding

---

**Good luck!** Follow these instructions precisely and the model will calculate correctly.
