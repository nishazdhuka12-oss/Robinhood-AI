# Positions State — Trailing Stop High Water Marks

These are the 5 legacy positions, grandfathered per sop/SKILL.md — they follow ONLY their own specific exit rule (sop/RESUME.md), not the Path 0/B/C/D framework. Mechanical stop-loss and trailing-stop below still apply to all of them.

Trailing stop rule (updated 2026-06-19 to percentage-point math, matching the current SOP): once a position is up ≥10% from cost, track the peak gain % (high water mark). Trailing stop fires if the position pulls back ≥5 percentage points from that peak gain % (e.g. peak +12% → stop at +7%). Until +10% is reached, standard -15% from cost applies. Never move the stop down.

Partial profit rule: when position hits +20%, sell 50% of shares. Log here.
Remaining 50% continues with trailing stop from the +20% price as new high water mark.

Format: TICKER | COST_BASIS | HIGH_WATER_MARK | PARTIAL_TAKEN (yes/no) | PARTIAL_DATE | NOTES

## Active positions

| Ticker | Cost Basis | High Water Mark | Trailing Stop Level | Partial Taken | Notes |
|---|---|---|---|---|---|
| FCN | 156.90 | 156.90 | 133.37 | no | Filled 2026-06-16 at open. Below +10% threshold ($172.59), standard -15%-from-cost stop applies. Legacy exit rule: sell when price returns above $156.90. As of 6/29 11:06 AM: $149.545 (-4.69%). No trigger. |
| FPS | 60.48 | 65.24 | 51.41 | no | Filled 2026-06-16. Peak +7.87% vs cost, still below +10% trailing threshold ($66.53) — standard -15%-from-cost stop applies. Legacy exit rule: hold indefinitely until user says otherwise. As of 6/29 11:06 AM: $54.73 (-9.51%). |

## Closed legacy positions

- **ADC**: cost $74.51, sold 2026-06-24 8:31 AM CDT @ ~$74.65 — crossed above its profit-exit trigger. Realized P&L: ~+0.19%.
- **DRAM**: cost $70.15, sold 2026-06-24 8:31 AM CDT @ ~$70.60 — resolved 6/23's trailing-stop decision, recovered above cost. Realized P&L: ~+0.64%.
- **RYAN**: cost $36.11, sold 2026-06-25 9:21 AM CDT @ ~$36.53 (0.332318 sh, order id 6a3d395a-fcab-4989-809f-a65167ea1dbf) — crossed above its $36.11 profit-exit trigger (live print $36.51-$36.53). Realized P&L: ~+1.16%.

**2 legacy positions remain: FCN, FPS.**

## Path D positions (non-legacy, day-trade — EOD force-close by 3:00 PM CDT)

| Ticker | Cost Basis | High Water Mark | Trailing Stop Level | Partial Taken | Notes |
|---|---|---|---|---|---|
| OUST | 51.80 | 51.94 | n/a (day-trade, EOD force-close, not trailing-stop managed) | no | Bought 2026-06-29 11:06 AM CDT, 0.282239 sh @ $51.80 avg ($14.62 notional), order id 6a42983d-1e65-409f-8b1a-866d2660862b, FILLED. As of 11:24 AM: $51.94 (+0.27%). Tier 2 catalyst: strategic partnership with AIM Intelligent Machines for lidar sensors (autonomous heavy equipment — mining/construction/defense), concrete production-scale details (100K units/yr capacity, 10-yr production life). Entered on a confirmed volume-backed breakout above $50.50 (2 consecutive higher-high bars, volume 50K→70K→108K) after an earlier spike-to-$52.50/pullback-to-$47.10/hour-long consolidation. Must close by 3:00 PM CDT regardless of P&L (Hard Rule 29) — apply Hold-vs-Sell loop and profit-locking ladder (+7%→floor+4%, +12%→sell half, +15%+→sell all) each tick until then. |

**Prior closed Path D trades:** BB (6/26 open fill, EOD force-close delayed overnight, -4.34%). DFTX #2 (6/24, -1.32%). SMCI (6/22, -1.32%). DFTX #1 (6/22, -0.40%). See sop/trade-journal.md.
