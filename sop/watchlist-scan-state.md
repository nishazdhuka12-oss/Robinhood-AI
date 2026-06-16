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

## New additions (auto-scan results)

| Ticker | Status | Last Scanned | Notes |
|--------|--------|--------------|-------|
| FPS | PASS_BOUGHT | 2026-06-16 10:48 ET | GREEN. RSI ~64, strong uptrend, 103% YoY revenue growth, data center power equipment. Bought $10.18 @ ~$60.30. Order ID: 6a316224-1352-497d-8e71-93e94ea2c1a5 |
| AAOI | RECHECK_DATE 2026-08-07 | 2026-06-16 10:48 ET | 4 flags: down 7.3% today, 20% off ATH $223, above all analyst targets ($177 vs $160 top), ongoing net losses. Q2 earnings Aug 6 — re-scan Aug 7. |
| DRAM | PASS_BOUGHT | 2026-06-16 10:48 ET | YELLOW (×0.75 size). RSI ~62, AI/memory ETF, not leveraged. 1 flag: high volatility (15%+ single-day swings). Bought $7.64 @ ~$70.11. Order ID: 6a316227-65b0-4734-9691-fe1ce095804b |
| OUST | RECHECK_DATE 2026-06-30 | 2026-06-16 11:00 ET | Chase gate FAIL: up ~42% in last 30 days (May 17 ~$30.74 → $43.65 today), limit is 20%. Fundamentals strong: $2.53B mktcap, Strong Buy, avg target $46.86, Rev8 LiDAR platform, RSI-14 ~54, above 20-SMA $39.63 and 50-SMA $31.67. Re-scan Jun 30 when 30-day window advances (baseline ~$42-44 by then). |
