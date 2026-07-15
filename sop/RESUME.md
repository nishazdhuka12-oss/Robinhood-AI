# OPTIONS TRADING BOT v4.3 — Account 594134744

## Session
- Date (UTC): 2026-07-15
- session_start_value: $154.21 (set at 13:45 UTC — new day; BAC filled $118 at open)
- Circuit breaker: inactive
- Last updated: 2026-07-15 13:50 UTC

## Account Snapshot
- Total value: $154.21 (est. after BAC sell fills; cash $154.17 incl. $0.04 fees)
- Cash: $36.21 (buying power; BAC proceeds $118 NOT YET SETTLED as BP)
- Options exposure: $0 (BAC closed)
- 15% cash floor: $23.13 (15% of $154.21)
- Buying power: $36.21 (unsettled; true available cash ~$154.17 once BAC settles)

## Open Positions
| Ticker | C/P | Strike | Expiry | DTE | Qty | Cost/sh | Mark | P&L% | IV | Tag |

## Post-Earnings Watchlist (execute at 14:00 UTC)
| Ticker | C/P | Direction | Beat% | Report date | Added at |
|--------|-----|-----------|-------|-------------|----------|
| PNC | C | UP | +9.5% | 2026-07-15 AM | 13:45 UTC |

## Pending Orders (queued, not yet filled)
| Ticker | C/P | Strike | Expiry | Limit$ | Queued at UTC | Order ID |
|--------|-----|--------|--------|--------|---------------|----------|

## Session Log (today — one line per event)
[13:45 UTC] NEW SESSION 2026-07-15. session_start_value = $154.21. BAC $61C filled at $1.18/sh (sell-to-close, order 6a578e80). Proceeds $118. P&L: +$56 (+90.3%) on $0.62 cost basis. Exit triggers: DTE=2 (condition c) + P&L +85.5% (condition a). BAC position closed.
[13:45 UTC] STEP 2: Portfolio total $154.21, cash $36.21 (BAC proceeds unsettled), options $0. New day: session_start_value = $154.21, min_cash_floor = $23.13, max_cost = $131.08. Circuit breaker inactive (drawdown 0%).
[13:45 UTC] STEP 3: BAC $61C 7/17 (248cf175) closed per get_option_orders confirmation. RESUME reconciled. No open positions.
[13:47 UTC] SCAN A Pass 1 — PNC: Q2 2026 beat +9.5% ($4.85 vs $4.43 est), 4/4 beat rate. CALLS. Stock $253.795 vs prev close $251.88 = +0.76% (≤15% move ✓). UTC 13:47 < 14:00 → added to post-earnings watchlist for 14:00 UTC execution. Expect budget failure (PNC at $253, ATM options likely $200-400/contract). CTAS beat only +2.4% (fails ≥5% threshold).
[13:47 UTC] SCAN A Pass 2 GATE CHECKS — 20-day SMA computed from historicals: KEY $23.042, HAL $34.726, ALLY $45.691. KEY $23.385 > $23.042 ✓. HAL $35.50 > $34.726 ✓ (Gate 3 NOW PASSES — SMA has dropped from $35.43 to $34.726 as June lows rolled off). ALLY $45.91 > $45.691 ✓ (4/4 beat rate, reports Jul 21, new candidate).
[13:49 UTC] SCAN A Pass 2 QUOTES — KEY $23C 8/21: spread 17.4% PASSES (OI 1,167 ≥ 500 → 20% cap), delta 0.601, CoP 36.4%, IV 30.4%, DTE=37, cost $115 — ALL GATES PASS. HAL Jul 24: ALL strikes fail spread (35C: 51.5%, 35.50C: 64.9%, 36C: 63.9%) — SKIP. ALLY Aug 21: 45C spread 21.3% (fails 20% cap OI≥500), 46C spread 53.7% — ALL FAIL spread.
[13:50 UTC] KEY $23C 8/21 review: BROKER ALERT OPTION_NOT_ENOUGH_BP_FOR_PREMIUM (need $78.83 deposit). BAC proceeds $118 NOT SETTLED in buying power — effective BP still $36.21. Per SOP GFV/restriction → STOP. KEY $23C trade NOT placed. Setup remains valid. Will attempt next tick once BAC proceeds clear.

## CARRY-FORWARD NOTES FOR NEXT TICK
- KEY $23C 8/21 (id: c6c36034) — TOP PRIORITY ENTRY NEXT TICK: 4/4 beat rate, reports Jul 21 AM (6 days), stock $23.385 > 20-day avg $23.042, delta 0.601, CoP 36.4%, IV 30.4%, spread 17.4%, OI 1,167, cost $115. ALL QUALITY GATES PASS. ONLY BLOCKER: BAC proceeds not settled as BP. Once BP reflects full ~$154 available, max_cost = $131 → KEY $23C $115 fits. Enter immediately next tick if BP ≥ $138 (floor $23 + cost $115). Tag SWING-EARN.
- HAL $35.50C 7/24: Gate 3 NOW PASSES ($35.50 > 20-day avg $34.726). BUT all Jul 24 strikes have massive bid-ask spreads (50-65%). Spread gate fails at all strikes. Skip HAL unless spread tightens. Jul 31 expiry might have tighter spreads — check next tick.
- ALLY Aug 21: 4/4 beat rate confirmed, reports Jul 21 AM, stock $45.91 > 20-day avg $45.691, IV ~31-35%. But ALL Aug 21 call strikes fail spread gate (21-54%). Skip until spread tightens.
- PNC post-earnings watchlist: PNC reported AM today (Jul 15), beat +9.5%, 4/4 beat rate. Stock at $253.795 (+0.76%). At 14:00 UTC check options — expect over budget (ATM ~$200-400/contract). Likely watchlist will be cleared as budget failure.
- BAC PERMANENTLY CLOSED: +90.3% P&L. No re-entry.
- KEY reports Jul 21 AM: Last viable entry is ~Jul 17-18 (3 days before). Must enter by Jul 18.
- ALLY reports Jul 21 AM: last viable entry Jul 18.
- HAL reports Jul 21 AM: last viable entry Jul 18 if spread tightens.
- CMCSA (Jul 23, 8 days): 3/4 beat rate, options over budget — check next tick with full budget.
- AAL (Jul 23, 8 days): 3/4 beat rate, options over budget at prior budget — check next tick.
- HBAN (Jul 23, 8 days): 3/4 beat rate, Aug 21 spreads still very wide — monitor.
- USB (Jul 16 AM): DTE=2 for Jul 17 expiry → pre-earnings HARD SKIP. No trade.
- CFG (Jul 16 AM): DTE=2 → pre-earnings HARD SKIP. Spreads also fail.
- RF/TFC/FITB (Jul 17 AM): DTE=2 → HARD SKIP.
- SCHW (Jul 21 AM, 6 days): beat rate unknown — check next tick.
- GM (Jul 21 AM, 6 days): ATM options far over budget even with $131 max_cost (stock ~$78).
- session_start_value $154.21, min_cash_floor $23.13. Effective max_cost once settled: $131.08.
