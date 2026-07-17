# OPTIONS TRADING BOT v4.3 — Account 594134744

## Session
- Date (UTC): 2026-07-17
- session_start_value: $157.11
- Circuit breaker: inactive
- Last updated: 2026-07-17 17:42 UTC

## Account Snapshot
- Total value: $159.11 (+$2.00 / +1.3% session gain)
- Cash: $24.11
- Options exposure: $135.00 (KEY $23C 8/21 × 1 contract, mark $1.35)
- 15% cash floor: $23.57 (15% of $157.11)
- Buying power: $24.11
- max_cost: $0.54 (no new contracts affordable)
- Last updated: 2026-07-17 17:42 UTC

## Open Positions
| Ticker | C/P | Strike | Expiry | DTE | Qty | Cost/sh | Mark | P&L% | IV | Tag |
|--------|-----|--------|--------|-----|-----|---------|------|------|----|-----|
| KEY | C | $23.00 | 2026-08-21 | 35 | 1 | $1.30 | $1.35 | +3.8% | 32.5% | SWING-EARN |

## Post-Earnings Watchlist (execute at 14:00 UTC)
| Ticker | C/P | Direction | Beat% | Report date | Added at |
|--------|-----|-----------|-------|-------------|----------|
(none — budget max_cost $0.54 blocks all entries)

## Pending Orders (queued, not yet filled)
| Ticker | C/P | Strike | Expiry | Limit$ | Queued at UTC | Order ID |
|--------|-----|--------|--------|--------|---------------|----------|
(none)

## CARRY-FORWARD NOTES FOR NEXT TICK

### KEY $23C 8/21 — ACTIVE POSITION (SWING-EARN)
- Filled 2026-07-17 at 13:31 UTC, order 6a59e190-b069-47c4-b44d-a32c1b080333
- Instrument: c6c36034-240f-4196-87c3-c978a5605270
- Cost: $1.30/sh ($130 total). Live mark 16:01 UTC: $1.40/sh. P&L +7.7%
- Bid $1.30 × 1 / Ask $1.50 × 728 (spread 14.3% — within 20% OI≥500 gate; bid side thin at ×1 but ask heavy ×728)
- IV 33.01%, delta 0.649, CoP 38.3%, OI 1192, volume 27
- KEY reports Jul 21 AM. days_to_report = 4 today (Jul 17).
- **SWING-EARN IV eval triggers Jul 19 (days_to_report ≤ 2):**
  - EXIT if: (IV > 0.80 AND pnl_pct >= 0.15) OR delta < 0.55
  - HOLD THROUGH EARNINGS only if ALL: beat_rate=4/4 ✓, delta≥0.55, pnl_pct<0.15, none of (a)-(d) triggered.
  - After announcement (Jul 21 AM): apply (a)-(d). Catalyst reversed → close immediately.
- Beat rate 4/4 → hold-through eligible if conditions met on Jul 19
- NOTE: Mark stable at $1.40 (P&L +7.7%, session high was +15.4%). At current IV ~33.0%, exit condition (IV>0.80 AND pnl≥0.15) very unlikely to trigger on Jul 19 — hold-through increasingly likely if delta ≥ 0.55. Standard exits: (a) ≥75% → $2.275/sh; (b) ≤-40% → $0.78/sh; (c) DTE≤2 → Aug 19.
- Spread 14.3% (bid $1.30×1 / ask $1.50×728). Bid side very thin (only ×1 at 16:52 UTC). Within gate.

### BUDGET STATUS
- session_start_value $157.11, min_cash_floor $23.57, max_cost $0.54
- Cash $24.11 — unchanged. No new trades possible until KEY exits or position gains close.
- Budget unlocks only when KEY exits (cash returns to ~$280+) or unexpected cash infusion.

### SCAN A PASS 1 — BLOCKED BY BUDGET (log for reference)
**Jul 15-16 reporters (window closes today Jul 17):**
- **STT** (State Street): Jul 16 AM, est $3.24 actual $3.65 → +12.7% beat → CALLS. Budget blocked.
- **UNH** (UnitedHealth): Jul 16 AM, est $4.85 actual $6.38 → +31.5% beat → CALLS. Stock ~$300+. Budget blocked.
- **TSM** (Taiwan Semi): Jul 16 AM, est $3.77 actual $4.31 → +14.3% beat → CALLS. Stock ~$200+. Budget blocked.
- **GE**: Jul 16 AM, est $1.85 actual $2.02 → +9.2% beat → CALLS. Budget blocked.
- **USB** (U.S. Bancorp): Jul 16 AM, est $1.27 actual $1.35 → +6.3% beat → CALLS. Budget blocked.
- **PLD** (Prologis): Jul 16 AM, est $1.53 actual $1.63 → +6.5% beat → CALLS. Budget blocked.
- **RF** (Regions Financial): Jul 17 AM, est $0.63 actual $0.68 → +7.9% beat → CALLS. Budget blocked.
- **TFC** (Truist Financial): Jul 17 AM, est $1.08 actual $1.23 → +13.9% beat → CALLS. Budget blocked.
- **TRV** (Travelers): Jul 17 AM, est $4.94 actual $10.04 → +103.2% beat → CALLS. Stock ~$275. Budget blocked.
- **FITB** (Fifth Third): Jul 17 AM, est $0.88 actual $1.02 → +15.9% beat → CALLS. Budget blocked.
- **AA** (Alcoa): Jul 16 PM, est $2.35 actual $2.12 → -9.8% miss → PUTS. Budget blocked.
- **CMA**: Jul 17 AM — actual still null (unverified), est $1.38. Budget blocked regardless.

### SCAN A PASS 2 — HIGH-PRIORITY UPCOMING (budget-permitting)
**Jul 20 (3 days — deadline today to enter, DTE≥3 constraint):**
- **STLD** (Steel Dynamics): Jul 20 PM. Est $3.68. Need beat rate ≥3/4 → CALLS.
- **WRB** (W.R. Berkley): Jul 20 PM. Est $1.09. Need beat rate → CALLS.
- **WTFC** (Wintrust Financial): Jul 20 PM. Est $3.17. Need beat rate → CALLS.
- **ZION** (Zions Bancorp): Jul 20 PM. Est $1.56. Need beat rate → CALLS.
- All budget-blocked regardless.

**Jul 21 (4 days):**
- **KEY**: OUR POSITION. Already in.
- **GM** (General Motors): Jul 21 AM. Est $3.15. Beat rate 4/4 → CALLS. Stock $77. Budget blocked.
- **CB** (Chubb): Jul 21 AM. Need beat rate → check when budget permits.
- **MMM** (3M): Jul 21 AM. Need beat rate → check.

**Jul 22 (5 days):**
- **T** (AT&T): Jul 22 AM. Est $0.59. Beat rate 1/4 → PUTS. Deadline Jul 19 (DTE≥3). Budget blocked.
- **TSLA**: Jul 22 PM. Beat rate 3/4 → CALLS. HIGH IV likely.
- **GOOGL/GOOG**: Jul 22 PM. Beat rate 4/4 → CALLS. High stock price.
- **IBM**: Jul 22 PM. Need beat rate → check.
- **TXN** (Texas Instruments): Jul 22 PM. Est $1.92. Need beat rate → check.
- **PM** (Philip Morris): Jul 22 AM. Need beat rate → check.
- **CME Group**: Jul 22 AM. Need beat rate → check.

**Jul 23 (6 days):**
- **HON** (Honeywell): Jul 23 AM. Est $2.42. Need beat rate → check.
- **LMT** (Lockheed Martin): Jul 23 AM. Est $7.23. Need beat rate → check.
- **RTX** (Raytheon): Jul 23 AM. Est $1.66. Need beat rate → check.
- **INTC** (Intel): Jul 23 AM. Need beat rate → check.
- **TMUS** (T-Mobile): Jul 23 AM. Need beat rate → check.

**Jul 24 (7 days):**
- **AXP** (AmEx): Jul 24 AM. Need beat rate → check.
- **NEE** (NextEra): Jul 24 AM. Need beat rate → check.
- **VZ** (Verizon): Jul 24 AM. Need beat rate → check.
- **SLB** (Schlumberger): Jul 24 AM. Need beat rate → check.

### KEY EARNINGS DEADLINE CALENDAR
- **Jul 19**: SWING-EARN eval triggers (days_to_report = 2). Assess exit vs hold-through. At current IV ~32.7%, hold-through likely if delta ≥ 0.55 and pnl_pct < 0.15.
- **Jul 20**: Last day to enter STLD/ZION/WTFC/WRB pre-earnings plays (DTE≥3). Also last day for T Jul 31P entries.
- **Jul 21 AM**: KEY reports. Pre-announcement decision needed Jul 19 per SWING-EARN eval.
- **Jul 22**: TSLA/GOOGL/IBM/TXN/T report.
- **Jul 23**: HON/LMT/RTX/INTC/TMUS report.
- **Jul 24**: AXP/NEE/VZ/SLB report.

### DISQUALIFIED (do not re-evaluate)
- NOC: 2/4 beat rate → Gate 2 fail
- COF: 2/4 beat rate → Gate 2 fail
- SCHW: 2/4 beat rate → Gate 2 fail
- AAL: Gate 3 conflict (price below SMA → PUTS, beat rate → CALLS)
- HAL: All strikes fail spread 50-65%
- CMCSA: Spread 33% fails ≤25% gate

## Session Log (today — one line per event)
[13:31 UTC] NEW SESSION 2026-07-17. NEW DAY RESET: session_start_value = $157.11. Circuit breaker inactive. min_cash_floor = $23.57. max_cost = $0.54.
[13:31 UTC] KEY $23C 8/21 FILLED: order 6a59e190 at $1.30/sh ($130 total). Position confirmed open.
[13:37 UTC] STEP 2: Portfolio total $157.11, cash $24.11, options $133.00, equity $0. BP $24.11.
[13:37 UTC] STEP 3 RECONCILE: 1 open position confirmed (KEY $23C 8/21 × 1, avg $1.30). 0 pending orders. State matches.
[13:37 UTC] STEP 4: Drawdown 0%. Circuit breaker inactive.
[13:37 UTC] STEP 5: KEY mark $1.33, cost $1.30, P&L +2.3%. DTE 35. days_to_report=4. No exits triggered.
[13:37 UTC] STEP 6: max_cost $0.54 — all scans budget-blocked. No new trade.
[13:58 UTC] STEP 2: Portfolio total $174.11 (+$17.00/+10.8% session gain), cash $24.11, options $150.00. max_cost $0.54 (unchanged).
[13:58 UTC] STEP 3 RECONCILE: KEY $23C 8/21 × 1 confirmed. 0 pending orders. State matches.
[13:58 UTC] STEP 4: Portfolio UP +10.8% from session start. No drawdown. Circuit breaker inactive.
[13:58 UTC] STEP 5: KEY mark $1.50 (updated 13:57 UTC), cost $1.30, P&L +15.4%. IV 30.91%, delta 0.692. DTE 35. days_to_report=4. No exits triggered (a)-(d). SWING-EARN eval not yet (days_to_report>2, triggers Jul 19).
[13:58 UTC] STEP 6: max_cost $0.54 — no contract affordable. All scans budget-blocked. No new trade.
[14:15 UTC] STEP 2: Portfolio total $172.11 (+$15.00/+9.5% session), cash $24.11, options $148.00. Slight pullback from $174.11 high.
[14:15 UTC] STEP 3 RECONCILE: KEY $23C 8/21 × 1 confirmed (instrument c6c36034). 0 pending orders. State matches.
[14:15 UTC] STEP 4: Portfolio UP +9.5% from session start ($157.11). No drawdown. Circuit breaker inactive.
[14:15 UTC] STEP 5: KEY quote fresh (14:15:31 UTC) — mark $1.50, IV 31.58%, delta 0.686. P&L +15.4%. DTE 35. days_to_report=4. Exits (a)-(d): NONE triggered. SWING-EARN eval not yet (needs days_to_report≤2, triggers Jul 19).
[14:15 UTC] SCAN A PASS 1: New Jul 16 beats — STT +12.7%, UNH +31.5%, TSM +14.3%, GE +9.2%, USB +6.3%, PLD +6.5% → all CALLS candidates, all BUDGET BLOCKED ($0.54 max_cost). CMA actual still null.
[14:15 UTC] SCAN A PASS 2: Calendar confirmed Jul 20-24 reporters (STLD/ZION/WTFC/WRB/GM/GOOGL/TSLA/IBM/TXN/T/HON/LMT/RTX etc.) — all BUDGET BLOCKED.
[14:15 UTC] STEP 6: max_cost $0.54 — budget blocks all scans. No new trade. Daily minimum not yet applicable (UTC<18:30).
[14:35 UTC] STEP 2: Portfolio total $169.11 (+$12.00/+7.6% session gain), cash $24.11, options $145.00. Pullback from $172.11.
[14:35 UTC] STEP 3 RECONCILE: KEY $23C 8/21 × 1 confirmed. 0 pending orders. State matches.
[14:35 UTC] STEP 4: Portfolio UP +7.6% from session start. No drawdown. Circuit breaker inactive.
[14:35 UTC] STEP 5: KEY quote fresh (14:35:17 UTC) — mark $1.45, IV 30.21%, delta 0.689. P&L +11.5%. DTE 35. days_to_report=4. Exits (a)-(d): NONE triggered. SWING-EARN eval not yet (triggers Jul 19). HOLD.
[14:35 UTC] STEP 6: max_cost $0.54 — budget blocks all scans. No new trade. Daily minimum not applicable (UTC<18:30).
[14:52 UTC] STEP 2: Portfolio total $169.11 (+$12.00/+7.6% session), cash $24.11, options $145.00. No change from prior tick.
[14:52 UTC] STEP 3 RECONCILE: KEY $23C 8/21 × 1 confirmed. 0 pending orders. State matches.
[14:52 UTC] STEP 4: Portfolio UP +7.6% from session start. No drawdown. Circuit breaker inactive.
[14:52 UTC] STEP 5: KEY quote fresh (14:52:24 UTC) — mark $1.45, IV 30.35%, delta 0.687. P&L +11.5%. DTE 35. days_to_report=4. Exits (a)-(d): NONE triggered. SWING-EARN eval not yet (triggers Jul 19). HOLD.
[14:52 UTC] STEP 6: max_cost $0.54 — budget blocks all scans. No new trade. Daily minimum not applicable (UTC<18:30).
[15:09 UTC] STEP 2: Portfolio total $169.11 (+$12.00/+7.6% session), cash $24.11, options $145.00. No change.
[15:09 UTC] STEP 3 RECONCILE: KEY $23C 8/21 × 1 confirmed. 0 pending orders. State matches.
[15:09 UTC] STEP 4: Portfolio UP +7.6% from session start. No drawdown. Circuit breaker inactive.
[15:09 UTC] STEP 5: KEY quote fresh (15:09:09 UTC) — mark $1.45, IV 30.23%, delta 0.689. P&L +11.5%. DTE 35. days_to_report=4. Bid $1.35×489 / Ask $1.55×402 (spread 13.8%). Exits (a)-(d): NONE triggered. SWING-EARN eval not yet (triggers Jul 19). HOLD.
[15:09 UTC] STEP 6: max_cost $0.54 — budget blocks all scans. No new trade. Daily minimum not applicable (UTC<18:30).
[15:25 UTC] STEP 2: Portfolio total $167.11 (+$10.00/+6.4% session), cash $24.11, options $143.00. Pullback continues.
[15:25 UTC] STEP 3 RECONCILE: KEY $23C 8/21 × 1 confirmed. 0 pending orders. State matches.
[15:25 UTC] STEP 4: Portfolio UP +6.4% from session start. No drawdown. Circuit breaker inactive.
[15:25 UTC] STEP 5: KEY quote fresh (15:25:14 UTC) — mark $1.425 (adj $1.43), IV 31.27%, delta 0.673. Bid $1.30×719 / Ask $1.55×923 (spread 17.5%, OI≥500 gate ≤20% ✓). P&L +10.0%. DTE 35. days_to_report=4. Exits (a)-(d): NONE triggered. SWING-EARN eval not yet (triggers Jul 19). HOLD.
[15:25 UTC] STEP 6: max_cost $0.54 — budget blocks all scans. No new trade. Daily minimum not applicable (UTC<18:30).
[15:41 UTC] STEP 2: Portfolio total $164.11 (+$7.00/+4.5% session), cash $24.11, options $140.00. Continued pullback.
[15:41 UTC] STEP 3 RECONCILE: KEY $23C 8/21 × 1 confirmed. 0 pending orders. State matches.
[15:41 UTC] STEP 4: Portfolio UP +4.5% from session start. No drawdown. Circuit breaker inactive.
[15:41 UTC] STEP 5: KEY quote fresh (15:40:57 UTC) — mark $1.40, IV 31.52%, delta 0.664. Bid $1.25×457 / Ask $1.55×955 (spread 21.4% — above 20% gate, WARN on exit side; existing position, hold unaffected). P&L +7.7%. DTE 35. days_to_report=4. Exits (a)-(d): NONE triggered. SWING-EARN eval not yet (triggers Jul 19). HOLD.
[15:41 UTC] STEP 6: max_cost $0.54 — budget blocks all scans. No new trade. Daily minimum not applicable (UTC<18:30).
[16:01 UTC] STEP 2: Portfolio total $164.11 (+$7.00/+4.5% session), cash $24.11, options $140.00. No change from prior tick.
[16:01 UTC] STEP 3 RECONCILE: KEY $23C 8/21 × 1 confirmed. 0 pending orders. State matches.
[16:01 UTC] STEP 4: Portfolio UP +4.5% from session start. No drawdown. Circuit breaker inactive.
[16:01 UTC] STEP 5: KEY quote fresh (16:01:14 UTC) — mark $1.40, IV 32.75%, delta 0.6515. Bid $1.25×97 / Ask $1.55×591 (spread 21.4% — WARN on exit side). P&L +7.7%. DTE 35. days_to_report=4. Exits (a)-(d): NONE triggered. SWING-EARN eval not yet (triggers Jul 19). HOLD.
[16:01 UTC] STEP 6: max_cost $0.54 — budget blocks all scans. No new trade. Daily minimum not yet applicable (UTC<18:30).
[16:21 UTC] STEP 2: Portfolio total $164.11 (+$7.00/+4.5% session), cash $24.11, options $140.00. No change.
[16:21 UTC] STEP 3 RECONCILE: KEY $23C 8/21 × 1 confirmed. 0 pending orders. State matches.
[16:21 UTC] STEP 4: Portfolio UP +4.5% from session start. No drawdown. Circuit breaker inactive.
[16:21 UTC] STEP 5: KEY quote fresh (16:18:40 UTC) — mark $1.40, IV 33.0%, delta 0.649. Bid $1.25×102 / Ask $1.55×913 (spread 21.4% — WARN on exit side). P&L +7.7%. DTE 35. days_to_report=4. Exits (a)-(d): NONE triggered. SWING-EARN eval not yet (triggers Jul 19). HOLD.
[16:21 UTC] STEP 6: max_cost $0.54 — budget blocks all scans. No new trade. Daily minimum not applicable (UTC<18:30).
[16:35 UTC] STEP 2: Portfolio total $164.11 (+$7.00/+4.5% session), cash $24.11, options $140.00. No change.
[16:35 UTC] STEP 3 RECONCILE: KEY $23C 8/21 × 1 confirmed. 0 pending orders. State matches.
[16:35 UTC] STEP 4: Portfolio UP +4.5% from session start. No drawdown. Circuit breaker inactive.
[16:35 UTC] STEP 5: KEY quote fresh (16:34:36 UTC) — mark $1.40, IV 33.83%, delta 0.641. Bid $1.25×148 / Ask $1.55×1141 (spread 21.4% — WARN on exit side). P&L +7.7%. DTE 35. days_to_report=4. Exits (a)-(d): NONE triggered. SWING-EARN eval not yet (triggers Jul 19). HOLD.
[16:35 UTC] STEP 6: max_cost $0.54 — budget blocks all scans. No new trade. Daily minimum not applicable (UTC<18:30).
[16:52 UTC] STEP 2: Portfolio total $164.11 (+$7.00/+4.5% session), cash $24.11, options $140.00. No change.
[16:52 UTC] STEP 3 RECONCILE: KEY $23C 8/21 × 1 confirmed. 0 pending orders. State matches.
[16:52 UTC] STEP 4: Portfolio UP +4.5% from session start. No drawdown. Circuit breaker inactive.
[16:52 UTC] STEP 5: KEY quote fresh (16:52:18 UTC) — mark $1.40, IV 33.01%, delta 0.649. Bid $1.30×1 / Ask $1.50×728 (spread 14.3%, OI≥500 gate ≤20% ✓; bid side thin at ×1). P&L +7.7%. DTE 35. days_to_report=4. Exits (a)-(d): NONE triggered. SWING-EARN eval not yet (triggers Jul 19). HOLD.
[16:52 UTC] STEP 6: max_cost $0.54 — budget blocks all scans. No new trade. Daily minimum not applicable (UTC<18:30).
[17:09 UTC] STEP 2: Portfolio total $159.11 (+$2.00/+1.3% session), cash $24.11, options $135.00. Pullback from $164.11.
[17:09 UTC] STEP 3 RECONCILE: KEY $23C 8/21 × 1 confirmed. 0 pending orders. State matches.
[17:09 UTC] STEP 4: Portfolio UP +1.3% from session start. No drawdown. Circuit breaker inactive.
[17:09 UTC] STEP 5: KEY quote fresh (17:08:59 UTC) — mark $1.35, IV 32.48%, delta 0.6423. Bid $1.20×324 / Ask $1.50×1136 (spread 22.2% — WARN exit side; OI≥500 gate ≤20% exceeded, applies to new entries only). P&L +3.8%. DTE 35. days_to_report=4. Exits (a)-(d): NONE triggered. SWING-EARN eval not yet (triggers Jul 19). HOLD.
[17:09 UTC] STEP 6: max_cost $0.54 — budget blocks all scans. No new trade. Daily minimum not applicable (UTC<18:30).
[17:25 UTC] STEP 2: Portfolio total $159.11 (+$2.00/+1.3% session), cash $24.11, options $135.00. No change from prior tick.
[17:25 UTC] STEP 3 RECONCILE: KEY $23C 8/21 × 1 confirmed. 0 pending orders. State matches.
[17:25 UTC] STEP 4: Portfolio UP +1.3% from session start. No drawdown. Circuit breaker inactive.
[17:25 UTC] STEP 5: KEY quote fresh (17:22:22 UTC) — mark $1.35, IV 31.78%, delta 0.649. Bid $1.20×501 / Ask $1.50×1100 (spread 22.2% — WARN exit side; OI≥500 gate ≤20% exceeded, applies to new entries only). P&L +3.8%. DTE 35. days_to_report=4. Exits (a)-(d): NONE triggered. SWING-EARN eval not yet (triggers Jul 19). HOLD.
[17:25 UTC] STEP 6: max_cost $0.54 — budget blocks all scans. No new trade. Daily minimum not applicable (UTC<18:30).
[17:42 UTC] STEP 2: Portfolio total $159.11 (+$2.00/+1.3% session), cash $24.11, options $135.00. No change from prior tick.
[17:42 UTC] STEP 3 RECONCILE: KEY $23C 8/21 × 1 confirmed. 0 pending orders. State matches.
[17:42 UTC] STEP 4: Portfolio UP +1.3% from session start. No drawdown. Circuit breaker inactive.
[17:42 UTC] STEP 5: KEY quote fresh (17:40:04 UTC) — mark $1.35, IV 32.73%, delta 0.640. Bid $1.20×342 / Ask $1.50×1108 (spread 22.2% — WARN exit side; OI≥500 gate ≤20% exceeded). P&L +3.8%. DTE 35. days_to_report=4. Exits (a)-(d): NONE triggered. SWING-EARN eval not yet (triggers Jul 19). HOLD.
[17:42 UTC] STEP 6: max_cost $0.54 — budget blocks all scans. No new trade. Daily minimum not applicable (UTC<18:30).
