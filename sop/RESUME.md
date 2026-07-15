# OPTIONS TRADING BOT v4.3 — Account 594134744

## Session
- Date (UTC): 2026-07-15
- session_start_value: $154.21
- Circuit breaker: inactive
- Last updated: 2026-07-15 14:15 UTC

## Account Snapshot
- Total value: $154.15
- Cash: $154.15 (portfolio.cash; includes unsettled BAC proceeds)
- Options exposure: $0
- 15% cash floor: $23.13 (15% of $154.21)
- Buying power: $36.21 (BAC $118 proceeds still unsettled — settles Jul 16)

## Open Positions
| Ticker | C/P | Strike | Expiry | DTE | Qty | Cost/sh | Mark | P&L% | IV | Tag |

## Post-Earnings Watchlist (execute at 14:00 UTC)
| Ticker | C/P | Direction | Beat% | Report date | Added at |
|--------|-----|-----------|-------|-------------|----------|

## Pending Orders (queued, not yet filled)
| Ticker | C/P | Strike | Expiry | Limit$ | Queued at UTC | Order ID |
|--------|-----|--------|--------|--------|---------------|----------|

## Session Log (today — one line per event)
[13:45 UTC] NEW SESSION 2026-07-15. session_start_value = $154.21. BAC $61C filled at $1.18/sh (sell-to-close, order 6a578e80). Proceeds $118. P&L: +$56 (+90.3%) on $0.62 cost basis. Exit triggers: DTE=2 (condition c) + P&L +85.5% (condition a). BAC position closed.
[13:45 UTC] STEP 2: Portfolio total $154.21, cash $36.21 (BAC proceeds unsettled), options $0. New day: session_start_value = $154.21, min_cash_floor = $23.13, max_cost = $131.08. Circuit breaker inactive (drawdown 0%).
[13:45 UTC] STEP 3: BAC $61C 7/17 (248cf175) closed per get_option_orders confirmation. RESUME reconciled. No open positions.
[13:47 UTC] SCAN A Pass 1 — PNC: Q2 2026 beat +9.5% ($4.85 vs $4.43 est), 4/4 beat rate. CALLS. Stock $253.795 vs prev close $251.88 = +0.76% (≤15% move ✓). UTC 13:47 < 14:00 → added to post-earnings watchlist for 14:00 UTC execution.
[13:47 UTC] SCAN A Pass 2 GATE CHECKS — KEY $23.042 SMA, HAL $34.726 SMA, ALLY $45.691 SMA. KEY $23.385 > $23.042 ✓. HAL $35.50 > $34.726 ✓ but all Jul 24 strikes fail spread (50-65%). ALLY $45.91 > $45.691 ✓ but Aug 21 spreads 21-54% — all fail.
[13:49 UTC] SCAN A Pass 2 — KEY $23C 8/21: spread 17.4%, delta 0.601, CoP 36.4%, IV 30.4%, DTE=37, cost $115 — ALL GATES PASS. HAL/ALLY fail spread.
[13:50 UTC] KEY $23C trade blocked: OPTION_NOT_ENOUGH_BP_FOR_PREMIUM (BP $36.21, need $115). BAC proceeds not settled. Setup valid. Carry forward.
[14:05 UTC] STEP 2 tick 2: Total value $154.15, BP $36.21. Drawdown = ($154.21-$154.15)/$154.21 = 0.04%. Circuit breaker inactive. Max_cost = $36.21 - $23.13 = $13.08 effective.
[14:05 UTC] STEP 3 tick 2: get_option_positions confirms no open positions. Reconcile complete. No discrepancies.
[14:07 UTC] STEP 5 Post-earnings watchlist: PNC confirmed UP at $252.18 (+0.12% from $251.88 prev close). Direction valid. But PNC ATM call at $252 stock >> $13.08 max_cost. Budget failure. PNC CLEARED from watchlist.
[14:07 UTC] SCAN A Pass 1 (today AM beaters with actuals published): MS +23.1%, ELV +20.2%, MTB +14.6%, BNY +11.8%, BLK +10.8%, PGR +5.9%, CTBI +7.9% (likely <$500M mcap → skip). FHN +1.9%, CTAS +2.4%, JNJ +1.8%, CAG +2.2% all <5% → skip. All large-cap AM beaters (MS/ELV/MTB/BNY/BLK/PGR) have high stock prices — ATM calls >> $13.08 budget. PM reporters (JBHT, UAL, SNV) actuals not yet out.
[14:09 UTC] SCAN A Pass 2 — NEW CANDIDATE: T (AT&T). Beat rate 1/4 (Q4'25 +10.6% beat only; Q3'25 0%, Q2'25 +3.8%, Q1'26 +3.6% all <5%) → PUTS. Reports Jul 22 AM (7 days, Gate 1 ✓). T at $21.545, 20-day SMA $21.73 → price below SMA → Gate 3 PUTS ✓. T $21P Jul 31: spread ($0.45-$0.41)/$0.43 = 9.3% ✓, delta 0.357 ✓, IV 37.4% ✓, OI 1108 ✓, CoP 29.1% ✓, DTE=16 ✓. COST $43 > $13.08 max → BLOCKED by insufficient BP.
[14:09 UTC] SCAN A Pass 2 — KEY $23C $115 > $13.08 → BLOCKED. SCHW 2/4 beat → SKIP Gate 2. AAL: 20-day SMA $16.86 > price $15.85 → Gate 3 FAILS for CALLS (direction conflict, beat rate 3/4 = CALLS but price below avg = PUTS) → SKIP. CMCSA Jul 31 checked: $25C spread 33% FAIL, $26C spread 42% FAIL, $27C bid $0.02/ask $0.28 spread 173% FAIL — all strikes fail spread gate AND cost gate. CMCSA SKIP.
[14:10 UTC] SCAN B-F SKIPPED: Budget constraint $13.08 max (BP $36.21 - floor $23.13) prevents all viable option trades. No quality stock option exists at ≤$0.13/share with delta ≥ 0.10 and spread ≤ 25%. Confirmed across CMCSA (deepest OTM checked $27C), T puts ($19P cheapest viable: delta 0.077 < 0.10, spread 57%). Budget is the sole limiting factor.
[14:10 UTC] NO TRADE PLACED. BP = $36.21 (BAC proceeds $118 unsettled). BAC settles Jul 16 → BP ~$154 expected at next session open. KEY $23C ($115) and T $21P ($43) both become viable tomorrow. KEY takes first trade priority (4/4 beat > 1/4 beat). KEY must enter by Jul 18; T by Jul 18.

## CARRY-FORWARD NOTES FOR NEXT TICK
### FIRST PRIORITY — KEY $23C 8/21 (Enter Jul 16)
- All quality gates confirmed passing: spread 17.4% ✓, delta 0.601 ✓, CoP 36.4% ✓, IV 30.4% ✓, OI 1167 ✓, DTE=37 ✓, cost $115 ✓
- Beat rate 4/4, reports Jul 21 AM (6 days). Gate 1 ✓ (3-14 days). Gate 3 ✓ ($23.36 > SMA $23.042 per today's quote).
- Instrument ID: c6c36034 (from prior tick). Re-verify spread and quote freshness next tick.
- Tag SWING-EARN. Limit at mark_price. Entry requires BP ≥ $138.13 (cost $115 + floor $23.13).
- HARD DEADLINE: Enter by Jul 18 (3 days before Jul 21 report). TODAY IS PREFERRED entry day.

### SECOND PRIORITY — T $21P 7/31 (Enter Jul 16 if budget allows after KEY)
- NEW CANDIDATE discovered this tick. Beat rate 1/4 → PUTS. Reports Jul 22 AM.
- T at $21.545, 20-day SMA $21.73 → price below SMA (Gate 3 PUTS ✓). Confirmed downtrend (Jun 15: $23.29 → Jul 14: $21.28).
- T $21P Jul 31 (id: d84c315f-863b-405b-9637-064ddf4828ef): spread 9.3% ✓, delta -0.357 ✓, IV 37.4% ✓, OI 1108 ✓, CoP 29.1% ✓, cost $43 ✓
- AFTER KEY ($115): remaining above floor = $154 - $115 - $23.13 = $15.87 → T ($43) WON'T FIT in same tick as KEY.
- T DEADLINE: Jul 18 (last viable entry, 4 days before Jul 22 AM report; 3-day minimum = Jul 19 but markets closed Sun → Jul 18 Friday is last chance).
- If KEY is placed Jul 16, T cannot be placed same tick. Could attempt T on Jul 17 tick IF KEY already settled (unlikely T+1 same day as entry). T window closes Jul 18.
- NOTE: With full $154 BP and only T placed ($43): remaining = $154 - $43 - $23.13 = $87.87 → KEY $115 still fits! Could do T FIRST then KEY in a LATER tick. But SOP says AT MOST ONE NEW TRADE per tick.
- Resolve: KEY first (higher priority, 4/4 beat), T second on Jul 17 tick if budget allows.

### POST-EARNINGS WATCHLIST CANDIDATES (Check next tick for PM actuals)
- JBHT (J.B. Hunt): est $1.71, reports Jul 15 PM. Likely over budget (stock ~$140-160).
- UAL (United Airlines): est $1.81, reports Jul 15 PM. Likely over budget (stock ~$85-100).
- SNV (Synovus Financial): reports Jul 15 PM. Small-mid bank. Check mcap and price next tick.

### OTHER CARRY-FORWARDS (Lower priority)
- ALLY Aug 21: 4/4 beat rate, reports Jul 21 AM. Spread still fails (21-54%). Monitor for tightening.
- HAL Jul 31: Gate 3 NOW passes. But ALL strikes fail spread (50-65%). Skip until spread tightens.
- CMCSA Jul 31: 3/4 beat, Gate 3 passes ($23.60 > SMA $23.34). BUT spread fails all strikes + cost > $13.08. With full $154 BP, $25C ($43 cost) fits budget — but spread 33% still fails gate (≤25%). Skip unless spread tightens significantly.
- AAL: Gate 3 conflict — price below SMA → PUTS direction, but 3/4 beat → CALLS direction. SKIP.
- SCHW Jul 21 AM: 2/4 beat rate → Gate 2 fails. Skip.
- KEY reports Jul 21 AM: HARD DEADLINE Jul 18. Enter Jul 16 (priority #1).
- T reports Jul 22 AM: HARD DEADLINE Jul 18. Enter Jul 17 if budget allows (priority #2).
- BAC PERMANENTLY CLOSED: +90.3% P&L. No re-entry.
- session_start_value $154.21, min_cash_floor $23.13.
