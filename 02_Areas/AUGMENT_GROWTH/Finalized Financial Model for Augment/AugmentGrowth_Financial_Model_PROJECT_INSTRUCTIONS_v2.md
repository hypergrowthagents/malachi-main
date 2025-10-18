# AugmentGrowth Financial Model v8 - Implementation Instructions
**Date:** 2025-10-02
**Previous Version:** v7
**Status:** Ready for implementation

---

## Executive Summary

This document provides complete instructions for building AugmentGrowth Financial Model v8, incorporating hybrid business model (consulting + managed service + self-service platform) with realistic revenue projections and cost structures.

**Key Changes from v7:**
1. Added three separate revenue streams (consulting, managed service, self-service)
2. Three independent sales funnels with bidirectional modeling capability
3. Updated cost structure (offshore PM at $3K/month, 3% software costs)
4. Realistic scenario definitions aligned with user's execution capacity
5. Self-service launch timing and adoption curves based on three-agent consensus analysis

---

## Business Model Overview

### **Three Revenue Streams**

**1. High-Touch Consulting (Months 1-12)**
- **Pricing:** $10K/month for 25% of founder's time
- **Target:** 3 clients by Month 3 (1 in M1, 2 in M2, 3 in M3)
- **Duration:** 3-6 months average, monthly opt-out
- **Purpose:** Bridge income to cover personal shortfall while building product

**2. Managed Service (Months 1-12)**
- **Pricing:** 10% of media spend (flat rate up to $500K/month spend)
- **Client spend scaling:** $50K (M1-2) → $75K (M3-6) → $100K (M6-12)
- **Capacity:** 1 client solo, 2 clients with offshore PM support
- **Growth rate:** Varies by scenario (Conservative: 1 per 2-3 months, Realistic: 1 per month, Optimistic: 1-2 per month)

**3. Self-Service Platform (Launch varies by scenario)**
- **Pricing:** Usage-based with $500/month minimum, average $1-1.5K/month
- **Target users:** Agencies first (60-70%), then in-house marketers
- **Launch timing:**
  - Conservative: NO launch in Year 1
  - Realistic: Month 8 launch
  - Optimistic: Month 6 launch
- **Churn:** 25-30% (M1-3) → 15% (M4-6) → 8-10% (M7-12)

---

## Financial Constraints & Break-Even Definition

**Current Financial Position:**
- Available cash: $108,000
- Monthly personal expenses: $28,300
- Monthly income (Danielle + rental + interest): $12,015
- **Monthly personal shortfall:** $16,285
- **Maximum runway:** 6-7 months if making zero business income

**Break-Even Definition:**
- Total Income (Danielle $12K + Business Revenue post-tax) ≥ Total Expenses (Personal $28.3K + Business costs)
- Effectively: Business revenue (post-tax, post-costs) ≥ $16.3K/month

**Tax Rate:** 45% (California + federal combined)
- Gross revenue × 55% = Net revenue available

---

## Cost Structure

### **Labor Costs**

**Offshore Performance Marketer:**
- **Cost:** $3,000/month (full-time, 40 hours/week)
- **Hired:** Month 2-3 (when 2nd managed service client onboarded)
- **Allocation:** Handles 50% of managed service work, founder handles other 50% + client relationships
- **Scaling:** One PM can support 2-3 managed clients maximum

**Alternative cost structure (if needed):**
- Months 1-2 (1-2 clients): $500-1K/month for light PM support (gut-checks, strategy review)
- Month 3+ (3+ clients): $3K/month offshore PM

### **Software/API Costs**
- **3% of gross revenue** (down from 5% in v7)
- Covers: Anthropic API, Claude Max subscription, ad platform tools, project management software
- At $30K MRR: $900/month in software costs

### **Other Operating Expenses**
- **Assumption:** Minimal additional costs (legal, accounting handled separately)
- If needed: 2-3% of gross revenue as buffer

---

## Scenario Definitions

### **Conservative Scenario: Almost Inevitable**

**Philosophy:** "I should be able to easily hit this"

**Revenue Streams:**
- **Consulting:** 3 clients by Month 3, phase out by Month 9-12
- **Managed Service:** 1 client every 2-3 months (slow growth)
- **Self-Service:** NO LAUNCH in Year 1

**Client Acquisition (Managed):**
- Month 1: 1 client ($50K spend) = $5K MRR
- Month 3: 2 clients ($50K avg) = $10K MRR
- Month 6: 3 clients ($60K avg) = $18K MRR
- Month 9: 4 clients ($65K avg) = $26K MRR
- Month 12: 4-5 clients ($70K avg) = $28-35K MRR

**Break-Even:** Month 6 (with consulting income covering shortfall)

**Probability:** 75-80%

---

### **Realistic Scenario: Primary Planning Assumption**

**Philosophy:** "What I think we will probably hit" - requires execution but achievable

**Revenue Streams:**
- **Consulting:** 3 clients by Month 3, maintain through Month 6, phase out by Month 9
- **Managed Service:** 1 client per month with focused effort
- **Self-Service:** Launch Month 8, reach 20-25 users by Month 12

**Client Acquisition (Managed):**
- Month 1: 1 client ($50K spend) = $5K MRR
- Month 2: 2 clients ($50K avg) = $10K MRR
- Month 3: 3 clients ($55K avg) = $16.5K MRR
- Month 6: 5 clients ($70K avg) = $35K MRR
- Month 9: 6 clients ($85K avg) = $51K MRR
- Month 12: 6-7 clients ($90K avg) = $54-63K MRR

**Self-Service Adoption (Launch Month 8):**
- Month 8: 5-8 users (Product Hunt + warm network, minimal impact)
- Month 9: 10-12 users net (after churn)
- Month 10: 15-18 users net (referrals starting)
- Month 12: 20-25 users (content + referrals compounding)
- **Month 12 self-service MRR:** $22-30K

**Total Month 12 MRR:** $76-93K (Managed + Self-Service)

**Break-Even:** End of Month 3 (with consulting + managed service)

**Probability:** 60-70%

---

### **Optimistic Scenario: Things Going Really Well**

**Philosophy:** "If things are going really well" - not just "executing at my desired level"

**Revenue Streams:**
- **Consulting:** 3 clients by Month 2, maintain through Month 6, exit by Month 8
- **Managed Service:** 1-2 clients per month (accelerating Month 4+)
- **Self-Service:** Launch Month 6, reach 45-55 users by Month 12

**Client Acquisition (Managed):**
- Month 1: 2 clients ($50K spend) = $10K MRR
- Month 2: 3 clients ($50K avg) = $15K MRR
- Month 3: 4 clients ($60K avg) = $24K MRR
- Month 6: 6 clients ($85K avg) = $51K MRR
- Month 9: 8 clients ($95K avg) = $76K MRR
- Month 12: 8-9 clients ($100K avg) = $80-90K MRR

**Self-Service Adoption (Launch Month 6):**
- Month 6: 10-15 users (aggressive early launch, beta conversions)
- Month 8: 20-25 users net (after churn, referrals starting)
- Month 10: 30-38 users net (referrals accelerating)
- Month 12: 45-55 users (strong PMF, viral growth)
- **Month 12 self-service MRR:** $54-72K

**Total Month 12 MRR:** $134-162K (Managed + Self-Service)

**Break-Even:** End of Month 2 or earlier

**Probability:** 15-25%

---

## Sales Pipeline Structure

### **Three Independent Funnels**

**Need to build THREE separate sales funnel sections:**

1. **High-Touch Consulting Funnel**
2. **Managed Service Funnel**
3. **Self-Service Platform Funnel**

Each funnel should be independently adjustable.

---

### **Funnel Design: Bidirectional Modeling**

**Build BOTH approaches, but only ONE primary:**

**Section A: Forward Model (Reference, not primary)**
- Input: Discovery calls per month
- Input: Discovery → Proposal conversion rate
- Input: Proposal → Close conversion rate
- Output: Clients closed per month

**Section B: Backward Model (PRIMARY - linked to Business Scaling)**
- Input: Desired clients closed per month
- Input: Conversion rates (as above)
- Output: Required discovery calls per month
- Output: Required network intros / outreach volume

**Implementation Note:** Only link Backward Model (Section B) outputs to Business Scaling scenarios. Forward Model is for manual "what-if" analysis only.

---

### **1. High-Touch Consulting Funnel**

**Conversion Rates (User Estimates):**
- **Warm intro → Discovery call:** 60-70% (strong network)
- **Discovery → Proposal:** 50-60% (qualified intros)
- **Proposal → Close:** 40-50% (high-intent consulting buyers)

**Backward Model Inputs (by Scenario):**

**Conservative:**
- Month 1: 1 client desired → 2-3 discovery calls → 3-5 warm intros needed
- Month 2: 2 total clients → 4-5 discovery calls → 6-8 intros
- Month 3: 3 total clients → 6-8 discovery calls → 10-12 intros

**Realistic & Optimistic:**
- Same as Conservative (all scenarios assume 3 consulting clients by Month 2-3)

---

### **2. Managed Service Funnel**

**Conversion Rates (User Estimates - Warm Network Phase):**
- **Warm intro → Discovery call:** 50-60% (operator network, targeted outreach)
- **Discovery → Proposal:** 40-50% (qualifying for ICP fit: $50K+ spend, operator mindset)
- **Proposal → Close:** 30-40% (longer sales cycle, higher commitment)

**Overall warm intro → close:** ~12-20%

**Conversion Rates (Cold Outreach Phase - Month 7+):**
- **Cold outreach → Discovery call:** 5-10% (LinkedIn, content leads)
- **Discovery → Proposal:** 30-40% (less qualified)
- **Proposal → Close:** 20-30% (more skepticism)

**Backward Model Inputs (by Scenario):**

**Conservative:**
- Month 1: 1 client → 5-8 discovery calls → 10-15 warm intros
- Month 3: 1 new client → 5-8 discovery calls → 10-15 warm intros
- Month 6: 1 new client → 5-8 discovery calls → 15-20 intros (network depleting)

**Realistic:**
- Month 1: 1 client → 5-8 discovery calls → 10-15 warm intros
- Month 2: 1 new client → 5-8 discovery calls → 10-15 warm intros
- Month 3+: 1 client/month → 8-12 discovery calls/month → 15-20 intros/month

**Optimistic:**
- Month 1: 2 clients → 10-15 discovery calls → 20-25 warm intros
- Month 2-3: 1-2 new clients/month → 10-15 discovery calls → 20-30 intros
- Month 4+: 1-2 clients/month → 12-18 discovery calls → 20-30 intros (referrals increasing pool)

---

### **3. Self-Service Platform Funnel**

**Conversion Rates (Organic Channels Only - No Paid Ads):**
- **Website visitor → Free trial signup:** 8-12% (typical B2B SaaS)
- **Free trial → Paid conversion:** 15-25% (usage-based model, low friction)
- **Paid signup → Retained 3 months:** 60-75% (after initial churn)

**Traffic Sources & Conversion:**
- **Product Hunt launch:** 0-15 paying users (Conservative: 0-3, Realistic: 5-8, Optimistic: 10-15)
- **Content marketing:** 1-4 users/month by Month 9 (compounds over time)
- **Referrals:** 15-20% of satisfied users refer, 30-40% conversion

**Backward Model Inputs (by Scenario):**

**Conservative:**
- NO SELF-SERVICE LAUNCH
- All inputs = 0

**Realistic (Launch Month 8):**
- Month 8: 5-8 users (Product Hunt minimal + warm network)
- Month 9: +5-7 new users, -1 churn (20% of 5-8) = 10-12 net
- Month 10: +5-8 new, -2 churn (15% of 10-12) = 15-18 net
- Month 11: +5-8 new, -2-3 churn (12% of 15-18) = 20-23 net
- Month 12: +5-10 new, -2-3 churn (10% of 20-23) = 23-30 net

**Optimistic (Launch Month 6):**
- Month 6: 10-15 users (aggressive launch, beta conversions)
- Month 7: +8-12 new, -3 churn (20%) = 15-24 net
- Month 8: +10-15 new, -3-4 churn (15%) = 22-35 net
- Month 9: +12-18 new, -3-5 churn (12%) = 31-48 net
- Month 10: +12-18 new, -4-6 churn (10%) = 39-60 net
- Month 11: +15-20 new, -4-6 churn (8%) = 50-74 net
- Month 12: +15-25 new, -4-6 churn (7%) = 61-93 net

**Simplified Targets for Modeling:**
- Realistic Month 12: 20-25 users
- Optimistic Month 12: 45-55 users

---

## Pricing Structure

### **High-Touch Consulting**
- **Primary:** $10K/month for 25% of founder's time
- **Alternative:** $5K/month for 12.5% of time (if need to slice smaller)
- **Contract:** Monthly retainer, 3-6 month initial period, monthly opt-out option

### **Managed Service**
- **Flat 10% up to $500K/month media spend**
- $500K-1M: 7.5%
- Above $1M: 5%
- **For modeling: Use 10% only** (ICP is $50-150K spend, won't hit higher tiers in Year 1)
- **Minimum fee:** $5K/month (requires $50K+ media spend)

### **Self-Service Platform**
- **Usage-based pricing:** $500/month minimum, scales with API consumption
- **Target average:** $1,000-1,200/month per user
- **Heavy users:** Can reach $1.5-2K/month
- **For modeling:**
  - Realistic: $1,000/month average
  - Optimistic: $1,200/month average (more heavy users)

---

## Client Spend Scaling Over Time

**Managed Service clients scale media spend as campaigns prove ROI:**

**Month 1-2:** All clients start at $50K spend ($5K/month fees)

**Month 3:** Clients scale to 1.5x starting spend
- Initial $50K → $75K spend → $7.5K/month fees

**Month 6:** Clients scale to 2x starting spend
- Initial $50K → $100K spend → $10K/month fees

**Implementation:**
- Use blended "average client spend" that grows over time
- Month 1-2: $50K average
- Month 3-5: $60-75K average (mix of new $50K clients + scaled $75K clients)
- Month 6-9: $75-85K average
- Month 10-12: $85-100K average (mix of scaled clients + some new larger clients)

**Moving Upmarket (Month 4+):**
- Start targeting clients with $75-100K+ budgets (not just $50K minimums)
- Increases average client value without relying solely on spend scaling

---

## Sheet Architecture & Formulas

### **1. Input Parameters Sheet**

**Existing inputs to keep:**
- B5: Available Cash ($108,000)
- B6: Monthly Personal Expenses ($28,300)
- B14: Danielle's Monthly Income ($12,015)
- B16: Monthly Shortfall ($16,285)

**New inputs to add:**

**Consulting Pricing:**
- Row 20: Consulting monthly fee ($10,000)
- Row 21: Consulting % of time (25%)

**Managed Service Pricing:**
- Row 23: Managed service base percentage (10% = 0.10)
- Row 24: Average client media spend - Month 1-2 ($50,000)
- Row 25: Average client media spend - Month 3-5 ($65,000)
- Row 26: Average client media spend - Month 6-12 ($85,000)

**Self-Service Pricing:**
- Row 28: Self-service minimum monthly fee ($500)
- Row 29: Self-service average revenue per user - Realistic ($1,000)
- Row 30: Self-service average revenue per user - Optimistic ($1,200)

**Cost Assumptions:**
- Row 32: Offshore PM monthly cost ($3,000)
- Row 33: Offshore PM hired at client count (2)
- Row 34: Software/API costs as % of revenue (3% = 0.03)

---

### **2. Sales Pipeline Sheet (NEW)**

**Create three sections:**

**Section 1: High-Touch Consulting Pipeline**
- Subsection A: Forward Model (reference only)
- Subsection B: Backward Model (primary, linked to scenarios)

**Section 2: Managed Service Pipeline**
- Subsection A: Forward Model (reference only)
- Subsection B: Backward Model (primary, linked to scenarios)

**Section 3: Self-Service Platform Pipeline**
- Subsection A: Forward Model (reference only)
- Subsection B: Backward Model (primary, linked to scenarios)

**Each Backward Model should output:**
- Clients/users closed per month (Month 1-12)
- Required discovery calls per month
- Required warm intros / outreach volume per month

**Link to Business Scaling:**
- Business Scaling scenarios pull client/user counts from Sales Pipeline Backward Models
- User can adjust desired client counts in Sales Pipeline → automatically updates Business Scaling

---

### **3. Business Scaling Sheet (REVISED)**

**Need THREE revenue blocks per scenario:**

**Block 1: Consulting Revenue**
- Row 1: Number of consulting clients (by month)
- Row 2: Average revenue per consulting client ($10K)
- Row 3: Gross consulting revenue (Row 1 × Row 2)

**Block 2: Managed Service Revenue**
- Row 5: Number of managed clients (by month)
- Row 6: Average media spend per client (dynamic: $50K M1-2, $65K M3-5, $85K M6-12)
- Row 7: Percentage rate (10% = 0.10)
- Row 8: Gross managed revenue (Row 5 × Row 6 × Row 7)

**Block 3: Self-Service Revenue**
- Row 10: Number of self-service users (by month)
- Row 11: Average revenue per user ($1K Realistic, $1.2K Optimistic)
- Row 12: Gross self-service revenue (Row 10 × Row 11)

**Block 4: Total Revenue & Costs**
- Row 14: Total Gross Revenue (sum of Block 1-3)
- Row 15: Net Revenue (Row 14 × 55% for taxes)
- Row 17: Offshore PM cost (IF managed clients ≥ 2, THEN $3K, ELSE $500-1K light support)
- Row 18: Software/API costs (Row 14 × 3%)
- Row 19: Total Business Expenses (Row 17 + Row 18)

**Repeat this structure for:**
- Conservative Scenario (Rows 6-25)
- Realistic Scenario (Rows 27-46)
- Optimistic Scenario (Rows 48-67)

---

### **4. Monthly Cash Flow Sheet (UPDATED)**

**Each scenario section needs:**

**Revenue:**
- Danielle's income ($12,015)
- Rental income (included in Danielle's income)
- Interest income (included in Danielle's income)
- **Business Revenue - Consulting** (from Business Scaling Block 1, Gross)
- **Business Revenue - Managed** (from Business Scaling Block 2, Gross)
- **Business Revenue - Self-Service** (from Business Scaling Block 3, Gross)
- **Total Business Revenue:** Sum of above three

**Expenses:**
- Personal expenses ($28,300)
- Business expenses (from Business Scaling Row 19)

**Cash Flow:**
- Beginning cash (Month 1 = $108K, subsequent = prior month ending)
- Total income (Danielle + Total Business Revenue post-tax)
- Total expenses (Personal + Business)
- Net cash flow (Income - Expenses)
- Ending cash (Beginning + Net cash flow)

**Key Formula:**
- Total income after tax = Danielle's income + (Total Business Revenue × 55%)

---

### **5. Executive Dashboard (UPDATED)**

**Add summary metrics:**

**Revenue Breakdown (Month 12):**
- Consulting revenue and % of total
- Managed service revenue and % of total
- Self-service revenue and % of total
- Total MRR

**Client/User Counts (Month 12):**
- Consulting clients
- Managed service clients
- Self-service users
- Average revenue per managed client
- Average revenue per self-service user

**Break-Even Analysis:**
- Month achieving net cash flow positive (by scenario)
- Cumulative cash position Month 12
- Runway remaining (months at current burn rate)

---

## Key QA Checklist

After implementing v8, verify:

### **Formula Integrity:**
- [ ] Zero #REF!, #DIV/0!, #VALUE! errors (run recalc.py)
- [ ] All revenue formulas reference Input Parameters (no hardcoded values)
- [ ] Monthly Cash Flow correctly references Business Scaling Gross Revenue (not Net)
- [ ] Client spend scaling applied correctly (Month 1-2 = $50K, Month 3-5 = $65K, Month 6-12 = $85K)
- [ ] Self-service churn modeled correctly (gross adds - churn = net growth)

### **Sales Pipeline Linkages:**
- [ ] Backward Model outputs link to Business Scaling client/user counts
- [ ] Forward Model is standalone (doesn't affect scenarios)
- [ ] All three funnels independently adjustable

### **Scenario Logic:**
- [ ] Conservative: No self-service, slow managed growth, 3 consulting clients
- [ ] Realistic: Month 8 self-service launch, 1 managed client/month, 3 consulting clients
- [ ] Optimistic: Month 6 self-service launch, 1-2 managed clients/month, fast ramp

### **Cost Scaling:**
- [ ] Offshore PM cost appears when managed clients ≥ 2
- [ ] Software costs = 3% of gross revenue (not 5%)
- [ ] Costs scale with revenue, not fixed

### **Break-Even Validation:**
- [ ] Conservative breaks even Month 6 (with consulting income)
- [ ] Realistic breaks even end of Month 3
- [ ] Optimistic breaks even Month 2 or earlier

### **Self-Service Churn Modeling:**
- [ ] Churn rate starts high (20-30%) and decreases over time (to 8-10%)
- [ ] Net user growth = Gross adds - (Previous month users × Churn rate)
- [ ] Realistic Month 12: 20-25 users net
- [ ] Optimistic Month 12: 45-55 users net

---

## Implementation Priorities

**Phase 1: Core Structure**
1. Update Input Parameters with new pricing/cost assumptions
2. Build Sales Pipeline sheet with three funnels (Backward Model primary)
3. Revise Business Scaling to three revenue blocks per scenario

**Phase 2: Linkages**
4. Link Sales Pipeline Backward Model outputs to Business Scaling
5. Update Monthly Cash Flow to pull from three Business Scaling revenue blocks
6. Verify all formulas reference Input Parameters (no hardcoded values)

**Phase 3: Validation**
7. Run recalc.py to verify zero formula errors
8. Spot-check break-even timing matches expectations
9. Update Executive Dashboard with new metrics

**Phase 4: Documentation**
10. Add clear headers/labels for three revenue streams
11. Color-code sections (Consulting = Blue, Managed = Green, Self-Service = Purple)
12. Add notes explaining Sales Pipeline Backward Model usage

---

## Success Criteria

**Model v8 is complete when:**
1. All three revenue streams modeled separately and summed correctly
2. Sales Pipeline enables easy adjustment of client/user acquisition assumptions
3. Break-even timing matches expectations (Conservative M6, Realistic M3, Optimistic M2)
4. Zero formula errors (recalc.py validation passed)
5. User can quickly test "what if" scenarios by adjusting Sales Pipeline inputs
6. Self-service adoption curves match three-agent consensus recommendations
7. Cost structure reflects offshore PM ($3K/month) and 3% software costs

---

**Tags:** #financial-modeling #implementation-instructions #three-revenue-streams #hybrid-business-model