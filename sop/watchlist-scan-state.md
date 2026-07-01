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
Path F YELLOW rule (updated 2026-06-17): Full size if 0 flags OR sole flag is HIGH VOLATILITY. Keep 0.75× YELLOW penalty if 2+ flags, or if the flag is anything other than high volatility alone (e.g. overbought RSI, below SMA, negative news, etc.). 3+ flags → RECHECK as normal.
All hard rules still apply: price >=5, mktcap >=2B, no earnings within 2 days, VIX<=40, sector limit, cash >=5%

Format: TICKER | STATUS | LAST_SCANNED | NOTES

## New additions (auto-scan results)

| Ticker | Status | Last Scanned | Notes |
|--------|--------|--------------|-------|
| FPS | PASS_BOUGHT | 2026-06-16 10:48 ET | GREEN. RSI ~64, strong uptrend, 103% YoY revenue growth, data center power equipment. Bought $10.18 @ ~$60.30. Order ID: 6a316224-1352-497d-8e71-93e94ea2c1a5 |
| AAOI | RECHECK_DATE 2026-08-07 | 2026-06-16 10:48 ET | 4 flags: down 7.3% today, 20% off ATH $223, above all analyst targets ($177 vs $160 top), ongoing net losses. Q2 earnings Aug 6 — re-scan Aug 7. |
| DRAM | PASS_BOUGHT | 2026-06-16 10:48 ET | YELLOW (×0.75 size). RSI ~62, AI/memory ETF, not leveraged. 1 flag: high volatility (15%+ single-day swings). Bought $7.64 @ ~$70.11. Order ID: 6a316227-65b0-4734-9691-fe1ce095804b |
| OUST | RECHECK_DATE 2026-08-07 | 2026-07-01 05:54 CDT | Re-scanned Jul 1. Hard gates PASS (price $62.52 ✓, mktcap ~$3.98B ✓, earnings Aug 6 ✓, no adverse news ✓, Technology sector 0/2 ✓). Chase gate FAIL: signal date Jun 16 close $42.73 → $62.52 = +46.3% (hard rule limit 15%). RSI-14 ≈ 75.5 (overbought). Analyst consensus Strong Buy but targets $39 median / $50 high (new outlier $75 from Roth). Q1 rev +49% YoY. Re-scan Aug 7 post-earnings (Q2 report Aug 6). Chase gate clears if price pulls back below ~$49. |
