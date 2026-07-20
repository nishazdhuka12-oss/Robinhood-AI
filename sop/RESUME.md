# OPTIONS TRADING BOT v4.3 — Account 594134744

## Session
- Date (UTC): 2026-07-20
- session_start_value: $147.11
- Circuit breaker: inactive
- Last updated: 2026-07-20 13:38 UTC

## Account Snapshot
- Total value: $147.11
- Cash: $24.11
- Options exposure: $122.50 (KEY $23C 8/21 × 1, mark $1.225)
- 15% cash floor: $22.07 (15% of $147.11)
- Buying power: $24.11
- max_cost: $2.04 (cash $24.11 − floor $22.07)

## Open Positions
| Ticker | C/P | Strike | Expiry | DTE | Qty | Cost/sh | Mark | P&L% | IV | Tag |
|--------|-----|--------|--------|-----|-----|---------|------|------|----|-----|
| KEY | C | $23.00 | 2026-08-21 | 32 | 1 | $1.30 | $1.225 | -5.4% | 32.7% | SWING-EARN |

## Post-Earnings Watchlist (execute at 14:00 UTC)
| Ticker | C/P | Direction | Beat% | Report date | Added at |
|--------|-----|-----------|-------|-------------|----------|
(none)

## Pending Orders (queued, not yet filled)
| Ticker | C/P | Strike | Expiry | Limit$ | Queued at UTC | Order ID |
|--------|-----|--------|--------|--------|---------------|----------|
(none)

## CARRY-FORWARD NOTES FOR NEXT TICK

### KEY $23C 8/21 — ACTIVE POSITION (SWING-EARN) ⚠️ EARNINGS TOMORROW
- Instrument: c6c36034-240f-4196-87c3-c978a5605270
- Cost: $1.30/sh ($130 total). Last mark: $1.225. P&L ~-5.4%.
- KEY reports Jul 21 AM. days_to_report = 1 → SWING-EARN eval ACTIVE every tick today.
- **PULL FRESH QUOTE AT EACH TICK — do not use stale pre-market data for SWING-EARN eval.**
- EXIT if: (IV > 0.80 AND pnl_pct >= 0.15) OR delta < 0.55
- HOLD THROUGH EARNINGS only if ALL: beat_rate=4/4 ✓, delta≥0.55, pnl_pct<0.15, none of (a)-(d) triggered.
- Last known (13:37 UTC): IV 32.7% (well below 0.80), delta 0.623 (≥0.55), P&L -5.4% (<15%) → HOLD THROUGH EARNINGS confirmed.
- After Jul 21 AM announcement: apply (a)-(d). Catalyst reversed → close immediately.
- Standard exits: (a) ≥75% → $2.275/sh; (b) ≤-40% → $0.78/sh; (c) DTE≤2 → Aug 19.

### BUDGET STATUS
- session_start_value $147.11, min_cash_floor $22.07, max_cost $2.04
- max_cost $2.04 → options mark ≤ $0.02/sh → blocks all meaningful contracts.
- Budget unlocks fully when KEY exits (cash returns ~$147+).

### SCAN A PASS 2 — PIPELINE (budget currently blocked; notes for when KEY exits)
**Jul 21 (days_to_report=1 today → Gate 1 FAIL — too late to enter):**
- KEY: already in. GM, CB, MMM: Gate 1 fails (DTR=1).

**Jul 22 (DTR=2 today → Gate 1 FAIL):**
- TSLA, GOOGL, IBM, TXN (PM), T (AM, beat_rate 1/4 → PUTS), PM, CME.

**Jul 23 (DTR=3 today → Gate 1 ✓ — ACTIONABLE if budget permits):**
- HON (Honeywell): Jul 23 AM. Est $2.42. Need beat rate → verify.
- LMT (Lockheed Martin): Jul 23 AM. Est $7.23. Need beat rate → verify.
- RTX (Raytheon): Jul 23 AM. Est $1.66. Need beat rate → verify.
- INTC (Intel): Jul 23 AM. Need beat rate → verify.
- TMUS (T-Mobile): Jul 23 AM. Need beat rate → verify.
- **→ All require KEY to exit first (budget $2.04 → blocks all). Re-evaluate post-KEY.**

**Jul 24 (DTR=4 today → Gate 1 ✓):**
- AXP, NEE, VZ, SLB: Need beat rates → verify.

### KEY EARNINGS CALENDAR (today forward)
- **Jul 20 (today)**: SWING-EARN eval all day. STLD/WRB/WTFC/ZION report PM (budget blocked, no entry).
- **Jul 21 AM**: KEY reports. Apply (a)-(d) immediately. Catalyst reversed → close. Budget unlocks.
- **Jul 21 (post-KEY exit)**: Scan for HON/LMT/RTX/INTC/TMUS pre-earnings entries (DTR=2, Gate 1 fails same day — missed window).
- **Jul 22**: HON/LMT/RTX/INTC/TMUS (if entry Jul 20–21 possible) + post-earnings: TSLA/GOOGL/IBM.
- **Jul 23**: HON/LMT/RTX/INTC/TMUS report AM.
- **Jul 24**: AXP/NEE/VZ/SLB report AM.

### DISQUALIFIED (do not re-evaluate)
- NOC: 2/4 beat rate
- COF: 2/4 beat rate
- SCHW: 2/4 beat rate
- AAL: Gate 3 conflict
- HAL: Spread 50-65% fail
- CMCSA: Spread 33% fail

## Session Log (today — one line per event)
[11:13 UTC] NEW DAY RESET 2026-07-20. session_start_value = $147.11. Circuit breaker inactive. min_cash_floor = $22.07. max_cost = $2.04.
[11:13 UTC] STEP 2: Portfolio total $147.11, cash $24.11, options $123.00 (KEY mark stale). BP $24.11.
[11:13 UTC] STEP 3 RECONCILE: 1 open position confirmed (KEY $23C 8/21 × 1, avg $1.30, instrument c6c36034). 0 pending orders. State matches.
[11:13 UTC] STEP 4: Drawdown 0% (new session). Circuit breaker inactive.
[11:13 UTC] STEP 5: KEY quote STALE (updated 2026-07-17 19:59 UTC — 63h ago). Pre-market: skip P&L exits on stale data. DTE=32 → no exit (c). SWING-EARN eval deferred to open.
[11:13 UTC] STEP 6: max_cost $2.04. Pre-market — all scans budget-blocked. No qualifying setup.
[13:35 UTC] STEP 2: Portfolio total $147.11, cash $24.11, options $123.00. BP $24.11.
[13:35 UTC] STEP 3 RECONCILE: KEY $23C 8/21 × 1 confirmed. 0 pending orders. State matches.
[13:35 UTC] STEP 4: Drawdown 0%. Circuit breaker inactive.
[13:35 UTC] STEP 5: KEY quote FRESH (13:35:04 UTC) — mark $1.225 (adj $1.230), IV 32.7%, delta 0.623. Bid $1.05×408 / Ask $1.40×454 (spread 28.6% at open — wide, normal). P&L -5.4%. DTE 32. days_to_report=1. SWING-EARN EVAL: IV 0.327 < 0.80 → exit cond 1 NOT met. Delta 0.623 ≥ 0.55 → exit cond 2 NOT met. Hold-through criteria: beat_rate 4/4 ✓, delta 0.623 ✓, P&L -5.4% < 15% ✓, no (a)-(d) ✓ → HOLD THROUGH EARNINGS (Jul 21 AM).
[13:35 UTC] STEP 6: max_cost $2.04 — budget blocks all scans. No new trade.
[13:38 UTC] STEP 2: Portfolio $147.11, cash $24.11, options $122.50 (KEY mark $1.225). BP $24.11.
[13:38 UTC] STEP 3 RECONCILE: KEY $23C 8/21 × 1 confirmed (instrument c6c36034). 0 pending orders. State matches.
[13:38 UTC] STEP 4: Drawdown 0%. Circuit breaker inactive.
[13:38 UTC] STEP 5: KEY quote FRESH (13:37:08 UTC) — mark $1.225 (adj $1.230), IV 32.7%, delta 0.623. P&L -5.4%. DTE 32. days_to_report=1. SWING-EARN EVAL: IV 0.327 < 0.80 → exit cond 1 NOT met. Delta 0.623 ≥ 0.55 → exit cond 2 NOT met. Hold-through criteria: beat_rate 4/4 ✓, delta 0.623 ✓, P&L -5.4% < 15% ✓, no (a)-(d) ✓ → HOLD THROUGH EARNINGS (Jul 21 AM).
[13:38 UTC] STEP 6: max_cost $2.04 — budget blocks all scans. No new trade.
