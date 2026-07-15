# OPTIONS TRADING BOT v4.3 — Account 594134744

## Session
- Date (UTC): 2026-07-15
- session_start_value: $154.21
- Circuit breaker: inactive
- Last updated: 2026-07-15 19:02 UTC

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
[14:32 UTC] TICK 3: Portfolio $154.15, BP $36.21, no positions. max_cost = $13.08 (BP - floor $23.13). SCAN A Pass 1: Today AM beaters confirmed — MS +23.1%, ELV +20.2%, BNY +11.8%, BLK +10.8%, PGR +5.9%, MTB +14.6%, PNC +9.5%. All → CALLS. All ATM options >> $13.08 budget → BLOCKED. JBHT/UAL/SNV (Jul 15 PM reporters) actuals not yet available (09:32 AM CT). SCAN A Pass 2: KEY $115 blocked, T $43 blocked, all upcoming candidates (GOOGL/TSLA/TXN/IBM Jul 22; LMT/RTX/HON Jul 23; NOC/GM Jul 21) also blocked by budget. SCANS B-F: Budget blocks all. Daily minimum rule not triggered (UTC 14:32 < 18:30). NO TRADE PLACED. New candidates logged for Jul 16 evaluation. BAC settles Jul 16 → KEY $23C enters next session.
[17:41 UTC] TICK 4 (12:41 CT): Portfolio $154.15, BP $36.21 (unsettled). max_cost = $13.08. SCAN A Pass 1 — ASML beat +10.6% Jul 15 AM → CALLS, stock >$800 → options >> budget BLOCKED. WFC (Jul 14 AM) beat +14.6% → CALLS, stock +1.76% from Jul 14 close ✓ but $86.79 → BLOCKED. C (Jul 14 AM) beat +18% → CALLS, stock +0.55% ✓ but $134 → BLOCKED. JBHT/UAL/SNV not yet reported (PM today). SCAN A Pass 2 — NOC 2/4 beat rate → Gate 2 FAIL (removed). COF 2/4 beat rate → Gate 2 FAIL (removed). GM 4/4 beat ✓ → CALLS, reports Jul 21 AM, but stock $77.39 → ATM options >> $13.08 → BLOCKED. GOOGL 4/4 beat ✓ → CALLS, reports Jul 22 PM, stock >> budget. TSLA 3/4 beat ✓ → CALLS, reports Jul 22 PM, high IV + stock >> budget. KEY $115 BLOCKED. T $43 BLOCKED. SCANS B-F: budget blocks all. Daily minimum not triggered (17:41 < 18:30). NO TRADE PLACED. BAC settles Jul 16 → full BP tomorrow.
[18:03 UTC] TICK 5 (13:03 CT): Portfolio $154.15, BP $36.21 (unsettled — BAC settles Jul 16). max_cost = $13.08. SCAN A Pass 1 — Jul 15 AM reporters with actuals confirmed (BLK +10.8%, BNY +11.8%, PNC +9.5%, PGR +5.9%, ELV +20.2%, MS +23.1%, ASML +10.6%, MTB +14.6% — all CALLS candidates but options >> $13.08 budget). Jul 15 PM reporters JBHT/UAL/SNV: actuals NOT yet published at 13:03 CT (PM reporters release after market close ~20:00+ UTC). SCAN A Pass 2: KEY $115 BLOCKED, GM/GOOGL/TSLA/T all BLOCKED by BP. Additional upcoming names identified from calendar: DHR/MMM/SYF/EFX (Jul 21), NOW/CME/MCO/CSX/PHM (Jul 22), NSC/BX/NEM/FCX (Jul 23) — beat rates TBD, to evaluate Jul 16 with full BP. SCANS B-F: budget blocks all. Daily minimum rule: 18:30 UTC trigger not yet reached (18:03 UTC). Even at 18:30 UTC trigger, cost ≤ $13.08 blocks all viable options (no bid>0 option with spread ≤25% exists at ≤$0.13/share). NO TRADE PLACED. BAC settles Jul 16 → KEY $23C first execution next session.
[18:22 UTC] TICK 6 (13:22 CT): Portfolio $154.15, BP $36.21 (unsettled — BAC settles Jul 16). max_cost = $13.08. SCAN A Pass 1 — JBHT/UAL/SNV actuals still null (PM reporters, release expected after 20:00 UTC / market close). Beat rates confirmed from earnings history: JBHT 2/4 (Gate 2 fails for SCAN A Pass 2; Pass 1 only if ≥5% tonight). UAL 1/4 (PUTS Gate 2 if miss ≥-5% tonight, Pass 1 candidate). SNV 4/4 ✓ (new high-priority — CALLS if beats ≥5% tonight; mcap $5-6B ✓, stock ~$45). Forward calendar checked Jul 16-28: Jul 16 reporters (UNH, GE, ABT, CFG, STT, USB, TSM, NFLX, ISRG) already in carry-forward. New Jul 20 reporters identified: STLD, DPZ, ZION, WRB, CCK, RYAAY — beat rates TBD for Jul 16 evaluation. SCAN A Pass 2: KEY $115 BLOCKED, all others BLOCKED by $13.08 budget. SCANS B-F: budget blocks all. Daily minimum rule: 18:22 < 18:30 threshold; preemptively confirmed that even at 18:30 trigger, $13.08 budget blocks all viable options (no bid>0 option with spread ≤25%, DTE≥3 at ≤$0.1308/sh). NO TRADE PLACED. BAC settles Jul 16 → full BP ~$154 → KEY $23C priority #1 at open.
[18:42 UTC] TICK 7 (13:42 CT) — DAILY MINIMUM RULE TRIGGERED (UTC ≥ 18:30): Portfolio $154.15, BP $36.21, max_cost $13.08. SCAN A Pass 1: JBHT/UAL/SNV actuals still null (PM reporters, ~20:00+ UTC release). No new actuals. SCAN F (daily movers, relaxed gates): PYPL +17.2% ($55.505 vs close $47.370) — large catalyst-driven move, potentially viable; AEHR +22.8% (disqualified: mcap <$500M); LCID +27.5% (disqualified: price <$7); PNR -14.6% ($64.635 vs close $75.680). BUDGET MATH KILL: spread ≤ 25% (relaxed gate) requires minimum mark ≥ $0.20 (min option tick $0.05 ÷ 0.25 = $0.20 minimum viable mark); cost ≤ $13.08 requires mark ≤ $0.1308/sh. These constraints are mathematically contradictory — no option can satisfy both simultaneously at any strike or DTE. SCAN E: same math. NO QUALIFYING SETUP TODAY. BAC settles Jul 16 → full BP ~$154 tomorrow → KEY $23C FIRST TRADE priority at open.
[19:02 UTC] TICK 8 (14:02 CT) — LAST HOUR (Hard Rule 17: no new SCAN E/F). Portfolio $154.15, BP $36.21 (still unsettled), max_cost $13.08. SCAN A Pass 1: JBHT/UAL/SNV actuals still null — PM reporters, release expected after 20:00 UTC. No new actuals. SCAN A Pass 2 / B / C / D: budget $13.08 blocks all viable options (no viable option exists at ≤$0.13/sh with bid>0 and spread ≤25%). SCAN E/F: prohibited (last hour). Daily minimum already attempted Tick 7. NO TRADE PLACED. BAC settles Jul 16 → KEY $23C first priority at open.

## CARRY-FORWARD NOTES FOR NEXT TICK
### FIRST PRIORITY — KEY $23C 8/21 (Enter Jul 16 — TOMORROW, BAC SETTLES)
- All quality gates confirmed passing: spread 17.4% ✓, delta 0.601 ✓, CoP 36.4% ✓, IV 30.4% ✓, OI 1167 ✓, DTE=37 ✓, cost $115 ✓
- Beat rate 4/4, reports Jul 21 AM (6 days). Gate 1 ✓ (3-14 days). Gate 3 ✓ ($23.36 > SMA $23.042 per Jul 15 quote).
- Instrument ID: c6c36034 (from prior tick). Re-verify spread and quote freshness next tick.
- Tag SWING-EARN. Limit at mark_price. Entry requires BP ≥ $138.13 (cost $115 + floor $23.13).
- HARD DEADLINE: Enter by Jul 18 (3 days before Jul 21 report). JUL 16 IS PREFERRED entry day.

### SECOND PRIORITY — T $21P 7/31 (Enter Jul 17 if budget allows after KEY)
- Beat rate 1/4 → PUTS. Reports Jul 22 AM.
- T at $21.545, 20-day SMA $21.73 → price below SMA (Gate 3 PUTS ✓). Confirmed downtrend (Jun 15: $23.29 → Jul 14: $21.28).
- T $21P Jul 31 (id: d84c315f-863b-405b-9637-064ddf4828ef): spread 9.3% ✓, delta -0.357 ✓, IV 37.4% ✓, OI 1108 ✓, CoP 29.1% ✓, cost $43 ✓
- AFTER KEY ($115 Jul 16): remaining above floor = $154 - $115 - $23.13 = $15.87 → T ($43) WON'T FIT same tick as KEY.
- T DEADLINE: Jul 18 (last viable entry; 3-day minimum = Jul 19 but markets closed Sun → Jul 18 Friday is last chance).
- Resolve: KEY first Jul 16 (4/4 beat, higher priority), T second Jul 17 tick.

### POST-EARNINGS WATCHLIST CANDIDATES (Check Jul 16 AM tick for actuals)
- JBHT (J.B. Hunt): est $1.71, reports Jul 15 PM. Stock ~$140-160 → options likely over budget.
- UAL (United Airlines): est $1.81, reports Jul 15 PM. Stock ~$85-100 → OTM may fit ~$50 with full BP. Check Jul 16.
- SNV (Synovus Financial): reports Jul 15 PM. Small-mid bank → verify market cap ≥ $500M.

### NEW CANDIDATES (Beat rates confirmed Jul 15 — evaluate options Jul 16 with full BP ~$154)
- GM (General Motors): 4/4 beat rate ✓ → CALLS. Reports Jul 21 AM (DTE=6 from Jul 16). Stock $77.39. Gate 3: need 20-day SMA (check Jul 16). Gate 4: check IV < 0.85. ATM options ~$1-2/sh → ~$100-200/contract. Verify spread, delta, CoP Jul 16.
- GOOGL (Alphabet): 4/4 beat rate ✓ → CALLS. Reports Jul 22 PM (DTE=7 from Jul 16). Gate 3/4: check price vs SMA + IV. High stock price → check affordable strikes. Verify Jul 16.
- TSLA (Tesla): 3/4 beat rate ✓ → CALLS. Reports Jul 22 PM (DTE=7 from Jul 16). WARNING: High IV typical → check Gate 4 (IV < 0.85). High stock price → check budget fit. Verify Jul 16.
- TXN (Texas Instruments): Jul 22 PM (7 days from Jul 16). Check beat rate + all Gates Jul 16.
- IBM: Jul 22 PM (confirmed). Check beat rate + all Gates Jul 16.
- LMT (Lockheed Martin): Jul 23 AM (8 days from Jul 16). Defense. Check beat rate + Gates Jul 16.
- RTX (Raytheon): Jul 23 AM (8 days from Jul 16). Defense. Check beat rate + Gates Jul 16.
- HON (Honeywell): Jul 23 AM (8 days from Jul 16). Industrial. Check beat rate + Gates Jul 16.
- NOC: DISQUALIFIED — 2/4 beat rate (Gate 2 fail). Do not re-evaluate.
- COF: DISQUALIFIED — 2/4 beat rate (Gate 2 fail). Do not re-evaluate.

### ADDITIONAL CANDIDATES (Identified Jul 15 Tick 5 — check beat rates Jul 16)
Jul 21 reporters (DTE=5 from Jul 16):
- DHR (Danaher): Jul 21 AM. Large-cap medical/industrial. Check beat rate + all Gates Jul 16.
- MMM (3M): Jul 21 AM. Industrial. Check beat rate + Gates Jul 16.
- EFX (Equifax): Jul 21 AM. Financial data. Check beat rate + Gates Jul 16.
- SYF (Synchrony Financial): Jul 21 AM. Consumer finance. Check beat rate + Gates Jul 16.
- DHI (D.R. Horton): Jul 21 AM. Homebuilder. Check beat rate + Gates Jul 16.
- MSCI (MSCI Inc.): Jul 21 AM. Financial data. Check beat rate + Gates Jul 16.

Jul 22 reporters (DTE=6 from Jul 16):
- NOW (ServiceNow): Jul 22 PM. SaaS. Check beat rate + Gates Jul 16. High IV possible.
- CME (CME Group): Jul 22 AM. Financial exchange. Check beat rate + Gates Jul 16.
- MCO (Moody's): Jul 22 AM. Financial ratings. Check beat rate + Gates Jul 16.
- CSX (CSX Corp): Jul 22 PM. Railroad. Check beat rate + Gates Jul 16.
- PHM (PulteGroup): Jul 22 AM. Homebuilder. Check beat rate + Gates Jul 16.
- GEV (GE Vernova): Jul 22 AM. Energy. Check beat rate + Gates Jul 16.
- NTRS (Northern Trust): Jul 22 AM. Financial. Check beat rate + Gates Jul 16.

Jul 23 reporters (DTE=7 from Jul 16):
- NSC (Norfolk Southern): Jul 23 AM. Railroad. Check beat rate + Gates Jul 16.
- BX (Blackstone): Jul 23 AM. Private equity. Check beat rate + Gates Jul 16.
- NEM (Newmont): Jul 23 PM. Gold miner. Check beat rate + Gates Jul 16.
- FCX (Freeport-McMoRan): Jul 23 AM. Copper miner. Check beat rate + Gates Jul 16.
- DOV (Dover Corp): Jul 23 AM. Industrial. Check beat rate + Gates Jul 16.
- TMUS (T-Mobile): Jul 23 AM. Telecom. Check beat rate + Gates Jul 16.
- DGX (Quest Diagnostics): Jul 23 AM. Healthcare. Check beat rate + Gates Jul 16.
- HBAN (Huntington Bancshares): Jul 23 AM. Regional bank. Check beat rate + Gates Jul 16.

### POST-EARNINGS PASS 1 CHECKS FOR JUL 16 TICK (Check actuals at next session open)
- JBHT (J.B. Hunt): Reports Jul 15 PM. Beat rate history 2/4 (Q3'25 +19.7% ✓, Q4'25 +5.6% ✓, Q1'26 +2.8% miss, Q2'25 -1.5% miss). Check actuals Jul 16 open. est $1.71. If beat ≥5% → CALLS; if miss ≤-5% → PUTS. Stock ~$140-160, options likely >> budget for Jul 16 even with full BP unless deeply OTM.
- UAL (United Airlines): Reports Jul 15 PM. Beat rate history 1/4 (Q1'26 +9.2% ✓ only; Q4'25 +4.7%, Q3'25 +4.5%, Q2'25 0% all miss). Check actuals Jul 16 open. est $1.81. If beat ≥5% → CALLS; if miss ≤-5% → PUTS. Stock ~$85-100 → check OTM that fits ≤$131 max_cost Jul 16.
- SNV (Synovus Financial): Reports Jul 15 PM. *** HIGH PRIORITY *** Beat rate 4/4 (Q4'24 +8.7% ✓, Q1'25 +16.1% ✓, Q2'25 +18.4% ✓, Q3'25 +7.4% ✓). MCap $5-6B ✓, stock ~$45. est $1.39. Beat ≥5% (actual ≥ $1.46) → CALLS. Miss ≤-5% (actual ≤ $1.32) → PUTS. If beats: confirm stock ≤15% move since yesterday. Execute at 14:00 UTC if UTC ≥ 14:00 at check time; else add to watchlist. ATM options ~$45C at Jul 31 likely $50-150/contract — check fits within $131 max_cost on Jul 16.
- GE (General Electric): Reports Jul 16 AM. Get actuals immediately at open; check stock move ≤15%. If beat ≥5% → CALLS. High stock price → check budget fit.
- UNH (UnitedHealth): Reports Jul 16 AM. Check actuals at open. High stock price (~$270+) → options likely over budget.
- TSM (TSMC): Reports Jul 16 AM. Check actuals. High stock price (~$180+) → check OTM.
- STT (State Street): Reports Jul 16 AM. est $3.24. Mid-size bank. Stock ~$80-100. Check actuals + options Jul 16.
- ABT (Abbott Labs): Reports Jul 16 AM. est $1.28. Large-cap medical. Check actuals + options.
- CFG (Citizens Financial): Reports Jul 16 AM. Regional bank. Potentially affordable options. Check actuals + gates.
- NFLX (Netflix): Reports Jul 16 PM. High stock price → options likely over budget. Check actuals Jul 17.

### NEW CANDIDATES FROM CALENDAR — Jul 17 AM reporters (SCAN A Pass 1 checks Jul 17)
- RF (Regions Financial): Jul 17 AM. est $0.63. Regional bank. Check actuals + beat% Jul 17.
- TFC (Truist Financial): Jul 17 AM. est $1.08. Large regional bank. Check actuals + beat% Jul 17.
- TRV (Travelers Companies): Jul 17 AM. est $4.94. Large P&C insurer. Check actuals + beat% Jul 17.
- FITB (Fifth Third Bancorp): Jul 17 AM. est $0.88. Regional bank. Check actuals + beat% Jul 17.
- ALV (Autoliv): Jul 17 AM. est $2.43. Auto safety. Check actuals + beat% Jul 17.
- CMA (Comerica): Jul 17 AM. est $1.38 (unverified date). Regional bank. Check Jul 17.

### NEW CANDIDATES FROM CALENDAR — Jul 20 AM/PM reporters (SCAN A Pass 2 candidates from Jul 16)
- STLD (Steel Dynamics): Jul 20 PM. Industrial metals. Check beat rate + Gates Jul 16.
- DPZ (Domino's Pizza): Jul 20 AM. est $4.21. Consumer. Check beat rate + Gates Jul 16.
- ZION (Zions Bancorporation): Jul 20 PM. est $1.56. Regional bank. Check beat rate + Gates Jul 16.
- WRB (W.R. Berkley): Jul 20 PM. est $1.09. P&C insurance. Check beat rate + Gates Jul 16.
- CCK (Crown Holdings): Jul 20 PM. est $2.15. Packaging. Check beat rate + Gates Jul 16.
- RYAAY (Ryanair): Jul 20 AM. est $1.35. Airline ADR. Check beat rate + Gates Jul 16.

### OTHER CARRY-FORWARDS (Lower priority)
- ALLY Aug 21: 4/4 beat rate, reports Jul 21 AM. Spread still fails (21-54%). Monitor.
- HAL Jul 31: Gate 3 passes but ALL strikes fail spread (50-65%). Skip until tightens.
- CMCSA Jul 23 AM (8 days): 3/4 beat → Gate 2 requires confirmation. Spread 33% fails ≤25% gate.
- AAL Jul 23 AM: Gate 3 conflict (price below SMA → PUTS, 3/4 beat → CALLS). SKIP.
- SCHW Jul 21 AM: 2/4 beat rate → Gate 2 fails. Skip.
- BAC PERMANENTLY CLOSED: +90.3% P&L. No re-entry.
- session_start_value $154.21, min_cash_floor $23.13.
