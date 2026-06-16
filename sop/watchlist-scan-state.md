# Watchlist Scan State — "First list" (ID: 21082e53-3589-40cd-8f4b-418d7494d565)

Auto-scan feature enabled: 2026-06-16
Logic: any ticker ADDED to "First list" after this date triggers a full research scan on the next loop tick.
If it passes all gates → buy autonomously.
If soft fail (RSI overbought, earnings too close, VIX spike) → RECHECK on next tick or after date.
If hard fail (price <$5, mktcap <$2B, adverse 8-K) → DISQUALIFIED.

Status values:
- EXISTING   : was in list before feature enabled — skip auto-scan
- PENDING    : newly detected, scan queued
- PASS_BOUGHT: passed all gates, order placed (see trade-log.md)
- DISQUALIFIED: failed hard gate (see Notes)
- RECHECK    : soft fail — re-scan on next tick
- RECHECK_DATE [YYYY-MM-DD]: soft fail — re-scan after this date (e.g. post-earnings)

Signal path for user watchlist adds: "Path F — User Watchlist"
Buy sizing: BASE (12% of portfolio) × 0.85 multiplier
All hard rules still apply: price >=5, mktcap >=2B, no earnings within 2 days, VIX<=40, sector limit, cash >=5%

Format: TICKER | STATUS | LAST_SCANNED | NOTES

## Pre-existing tickers (skip auto-scan — added before 2026-06-16)

| Ticker | Status | Last Scanned | Notes |
|--------|--------|--------------|-------|
| TSLA | EXISTING | — | Pre-loaded. Remove & re-add to trigger scan. |
| NVDA | EXISTING | — | Pre-loaded. Remove & re-add to trigger scan. |
| AAPL | EXISTING | — | Pre-loaded. Remove & re-add to trigger scan. |
| LCID | EXISTING | — | Pre-loaded. Remove & re-add to trigger scan. |
| AMZN | EXISTING | — | Pre-loaded. Remove & re-add to trigger scan. |
| RIVN | EXISTING | — | Pre-loaded. Remove & re-add to trigger scan. |
| MSFT | EXISTING | — | Pre-loaded. Remove & re-add to trigger scan. |
| GOOGL | EXISTING | — | Pre-loaded. Remove & re-add to trigger scan. |
| F | EXISTING | — | Pre-loaded. Remove & re-add to trigger scan. |
| AMD | EXISTING | — | Pre-loaded. Remove & re-add to trigger scan. |
| META | EXISTING | — | Pre-loaded. Remove & re-add to trigger scan. |
| AMC | EXISTING | — | Pre-loaded. Remove & re-add to trigger scan. |
| DIS | EXISTING | — | Pre-loaded. Remove & re-add to trigger scan. |
| WMT | EXISTING | — | Pre-loaded. Remove & re-add to trigger scan. |
| NFLX | EXISTING | — | Pre-loaded. Remove & re-add to trigger scan. |
| KO | EXISTING | — | Pre-loaded. Remove & re-add to trigger scan. |

## New additions (auto-scan queue)

| Ticker | Status | Last Scanned | Notes |
|--------|--------|--------------|-------|
| _(empty — add a stock to "First list" in Robinhood to trigger a scan)_ | | | |
