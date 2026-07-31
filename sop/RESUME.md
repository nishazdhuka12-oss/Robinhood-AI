# OPTIONS TRADING BOT v4.3 — Account 594134744

## Session
- Date (UTC): 2026-07-31
- session_start_value: $109.91 (portfolio API at reset; live mark $119.91)
- Circuit breaker: inactive
- Last updated: 2026-07-31 18:41 UTC (13:41 CT)

## Account Snapshot
- Total value: $119.91 (cash $13.91 + TLT live mark $106.00)
- Cash: $13.91 (buying power $13.91)
- Options exposure: $106.00 (TLT mark $1.060)
- 15% cash floor: $16.49 (15% of $109.91)
- Drawdown from session start: 0% (new day reset) → CB inactive

## Open Positions
| Ticker | C/P | Strike | Expiry | DTE | Qty | Cost | Mark | P&L% | IV | Tag |
|--------|-----|--------|--------|-----|-----|------|------|------|----|-----|
| TLT | P | 82.5 | 2026-08-07 | 7 | 1 | $0.60 | $1.060 | +76.7% | 0.174 | SWING |

## Post-Earnings Watchlist
| Ticker | C/P | Dir | Beat% | ReportDate | Added |
|--------|-----|-----|-------|------------|-------|
| AAPL | C | CALLS | +6.9% | 2026-07-30 PM | 2026-07-31 |
| AMZN | C | CALLS | +215.9% | 2026-07-30 PM | 2026-07-31 |

## Pending Orders
| Ticker | C/P | Strike | Expiry | Limit$ | QueuedUTC | OrderID |
|--------|-----|--------|--------|--------|-----------|---------|
| TLT | P | 82.5 | 2026-08-07 | $1.05 | 18:41 UTC | 6a6cec45 |

## Carry-Forward
1. TLT $82.5P sell GTC @$1.05 PENDING (6a6cec45). Mark $1.06 P&L +76.7%.
2. On TLT fill: cash ~$118.87, floor $16.49, budget ~$102. Unlock trades.
3. AAPL +6.9% beat (actual $2.02 vs $1.89) → CALLS. Run full gates on TLT fill.
4. AMZN +215.9% beat (actual $5.75 vs $1.82) → CALLS. Verify move ≤15% on fill.
5. Today AM Scan A Pass1: CVX+15% LYB+33% NVT+25% TROW+10% CBOE+7% → CALLS.
6. Today AM Scan A misses: XOM-6.4% POR-13.5% → PUTS. Evaluate next tick.
7. Pre-IV 08-03: TSN AM (est $1.02), PLTR PM, OKE PM, WMB PM. Check gates on fill.
8. Pre-IV 08-04: CAT MCD BKNG AMD AMGN MRK. Evaluate next tick.

## Session Log
[13:41 UTC] NEW DAY RESET 2026-07-31. start=$109.91. CB inactive. Floor $16.49.
[13:41 UTC] S3: TLT $82.5P 8/7 open. Mark $1.06 P&L +76.7% DTE=7. Bid $1.05 ask $1.07.
[13:41 UTC] S5: TLT P&L +76.7% EXIT(a)≥75%. Sell limit $1.05 GTC placed (6a6cec45).
[13:41 UTC] S5 post-earn: AAPL+6.9% AMZN+215.9% → CALLS. Cash<floor blocks. Watchlist.
[13:41 UTC] S6: cash $13.91 < floor $16.49. SKIP. AM beats noted cf lines 5-6.
