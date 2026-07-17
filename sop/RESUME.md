# OPTIONS TRADING BOT v4.3 — Account 594134744

## Session
- Date (UTC): 2026-07-17
- session_start_value: $157.11
- Circuit breaker: inactive
- Last updated: 2026-07-17 13:37 UTC

## Account Snapshot
- Total value: $157.11
- Cash: $24.11
- Options exposure: $133.00 (KEY $23C 8/21 × 1 contract, mark $1.33)
- 15% cash floor: $23.57 (15% of $157.11)
- Buying power: $24.11
- max_cost: $0.54 (no new contracts affordable)

## Open Positions
| Ticker | C/P | Strike | Expiry | DTE | Qty | Cost/sh | Mark | P&L% | IV | Tag |
|--------|-----|--------|--------|-----|-----|---------|------|------|----|-----|
| KEY | C | $23.00 | 2026-08-21 | 35 | 1 | $1.30 | $1.33 | +2.3% | 30.6% | SWING-EARN |

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
- Filled today 2026-07-17 at 13:31 UTC, order 6a59e190-b069-47c4-b44d-a32c1b080333
- Instrument: c6c36034-240f-4196-87c3-c978a5605270
- Cost: $1.30/sh ($130 total). Mark at 13:37 UTC: $1.325 (adj $1.33). P&L +2.3%
- Bid $1.15 × 681 / Ask $1.50 × 870 (spread 26.4% wide at open — normal)
- IV 30.6%, delta 0.656, CoP 38.8%, OI 1192, volume 1
- KEY reports Jul 21 AM. days_to_report = 4 today.
- **SWING-EARN IV eval triggers Jul 19 (days_to_report ≤ 2):**
  - EXIT if: IV > 0.80 AND pnl_pct >= 0.15, OR delta < 0.55
  - HOLD THROUGH if ALL: beat_rate=4/4 ✓, delta≥0.55, pnl_pct<0.15, no (a)-(d)
  - Standard exits always apply: (a) ≥75% profit, (b) ≤-40% loss, (c) DTE≤2
- Beat rate 4/4 → hold-through eligible if conditions met on Jul 19
- After announcement (Jul 21 AM): apply (a)-(d), catalyst reversed → close immediately

### BUDGET STATUS
- session_start_value $157.11, min_cash_floor $23.57, max_cost $0.54
- No new trades possible while KEY is only position (cash $24.11 - floor $23.57 = $0.54)
- Budget unlocks meaningfully only when KEY exits or gains significantly (options_value ↑)
- NOTE: max_cost recalculates each tick from current total_value

### SCAN A PASS 1 — BLOCKED BY BUDGET (log for reference)
- **RF** (Regions Financial): Jul 17 AM, est $0.63 actual $0.68 → +7.9% beat → CALLS. Budget blocked.
- **TFC** (Truist Financial): Jul 17 AM, est $1.08 actual $1.23 → +13.9% beat → CALLS. Budget blocked.
- **TRV** (Travelers): Jul 17 AM, est $4.94 actual $10.04 → +103.2% beat → CALLS. Stock ~$275 expensive + budget blocked.
- **FITB** (Fifth Third): Jul 17 AM, est $0.88 actual $1.02 → +15.9% beat → CALLS. Budget blocked.
- **CMA** (Comerica): Jul 17 AM — actual NOT YET available (check next tick). Est $1.38.
- **AA** (Alcoa): Jul 16 PM, est $2.35 actual $2.12 → -9.8% miss → PUTS. Budget blocked.
- **NFLX**: Jul 16 PM, +1.3% → < 5% skip.
- **FNB**: Jul 16 PM, 0% → skip.
- **ISRG**: Jul 16 PM, +16.2% beat → stock $500+ BLOCKED.
- Window closes today (Jul 17) for Jul 15 reporters: MS +23.1% CALLS → stock $115+ too expensive + budget blocked.

### SCAN A PASS 2 — HIGH-PRIORITY UPCOMING (budget-permitting)
- **STLD** (Steel Dynamics): Jul 20 PM (3 days). Est $3.68. Need beat rate → check.
- **WRB** (W.R. Berkley): Jul 20 PM (3 days). Est $1.09. Need beat rate → check.
- **WTFC** (Wintrust Financial): Jul 20 PM (3 days). Est $3.17. Need beat rate → check.
- **ZION** (Zions Bancorp): Jul 20 PM (3 days). Est $1.56. Need beat rate → check.
- **GM** (General Motors): Jul 21 AM (4 days). Est $3.15. Beat rate 4/4 → CALLS. Stock $77 — options affordable? Check.
- **T** (AT&T): Jul 22 AM (5 days). Est $0.59. Beat rate 1/4 → PUTS. Deadline Jul 19 (DTE≥3). Instrument d84c315f. Budget must unlock.
- **TSLA**: Jul 22 PM (5 days). Beat rate 3/4 → CALLS. WARNING: high IV likely. Check Gate 4.
- **GOOGL**: Jul 22 PM (5 days). Beat rate 4/4 → CALLS. High stock price — check affordable strikes.
- **IBM**: Jul 22 PM (5 days). Need beat rate → check.
- **TXN** (Texas Instruments): Jul 22 PM (5 days). Est $1.92. Need beat rate → check.
- **HON** (Honeywell): Jul 23 AM (6 days). Est $2.42. Need beat rate → check.
- **LMT** (Lockheed Martin): Jul 23 AM (6 days). Est $7.23. Need beat rate → check.
- **RTX** (Raytheon): Jul 23 AM (6 days). Est $1.66. Need beat rate → check.

### KEY EARNINGS DEADLINE CALENDAR
- Jul 19: SWING-EARN eval (days_to_report = 2). Assess exit vs hold-through.
- Jul 20: Last day to enter T $21P Jul 31 (DTE = 11 → qualifies). Last day for STLD/ZION/WTFC/WRB pre-earnings plays.
- Jul 21 AM: KEY reports. Exit before open if not holding through.
- Jul 22: Last day for TSLA/GOOGL/IBM/TXN pre-earnings entries (DTE ≥ 3 on their expirations).

### DISQUALIFIED (do not re-evaluate)
- NOC: 2/4 beat rate → Gate 2 fail
- COF: 2/4 beat rate → Gate 2 fail
- SCHW: 2/4 beat rate → Gate 2 fail
- AAL: Gate 3 conflict (price below SMA → PUTS, beat rate → CALLS)
- HAL: All strikes fail spread 50-65%
- CMCSA: Spread 33% fails ≤25% gate
- BAC: PERMANENTLY CLOSED +90.3% P&L. No re-entry.

## Session Log (today — one line per event)
[13:31 UTC] NEW SESSION 2026-07-17. NEW DAY RESET: session_start_value = $157.11 (total_value at open). Circuit breaker inactive. min_cash_floor = $23.57. max_cost = $0.54 (very limited — KEY position consuming most cash).
[13:31 UTC] KEY $23C 8/21 FILLED: order 6a59e190 placed 08:02 UTC (pre-market), filled at 13:31 UTC at $1.30/sh ($130 total). Position confirmed open. Prior GFD order 6a58e15b cancelled 20:30 UTC Jul 16 (voided at market close, as expected).
[13:37 UTC] STEP 2: Portfolio total $157.11, cash $24.11, options $133.00, equity $0. BP $24.11.
[13:37 UTC] STEP 3 RECONCILE: 1 open position confirmed (KEY $23C 8/21 × 1, avg $1.30). 0 pending orders. State matches.
[13:37 UTC] STEP 4: Drawdown 0% (session_start = $157.11, current = $157.11). Circuit breaker inactive.
[13:37 UTC] STEP 5: KEY mark $1.33 (adj), cost $1.30, P&L +2.3%. DTE 35. days_to_report = 4. No exits triggered (a)-(d). SWING-EARN eval not yet (days_to_report > 2). Quote fresh 13:37 UTC.
[13:37 UTC] STEP 5 POST-EARNINGS WATCHLIST: UTC 13:37 < 14:00 — execution window not open. Budget max_cost $0.54 → no contracts affordable regardless.
[13:37 UTC] STEP 6: max_cost $0.54 → no option contract affordable (min ~$5). SCAN A Pass 1 beats identified (RF +7.9%, TFC +13.9%, TRV +103.2%, FITB +15.9%, AA miss -9.8%) — ALL budget-blocked. SCAN A Pass 2 candidates noted but all budget-blocked. No new trade placed.
