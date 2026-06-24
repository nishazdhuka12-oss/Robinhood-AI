# Positions State — Trailing Stop High Water Marks

These are the 5 legacy positions, grandfathered per sop/SKILL.md — they follow ONLY their own specific exit rule (sop/RESUME.md), not the Path 0/B/C/D framework. Mechanical stop-loss and trailing-stop below still apply to all of them.

Trailing stop rule (updated 2026-06-19 to percentage-point math, matching the current SOP): once a position is up ≥10% from cost, track the peak gain % (high water mark). Trailing stop fires if the position pulls back ≥5 percentage points from that peak gain % (e.g. peak +12% → stop at +7%). Until +10% is reached, standard -15% from cost applies. Never move the stop down.

Partial profit rule: when position hits +20%, sell 50% of shares. Log here.
Remaining 50% continues with trailing stop from the +20% price as new high water mark.

Format: TICKER | COST_BASIS | HIGH_WATER_MARK | PARTIAL_TAKEN (yes/no) | PARTIAL_DATE | NOTES

## Active positions

| Ticker | Cost Basis | High Water Mark | Trailing Stop Level | Partial Taken | Notes |
|---|---|---|---|---|---|
| FCN | 156.90 | 156.90 | 133.37 | no | Filled 2026-06-16 at open. Below +10% threshold ($172.59), standard -15%-from-cost stop applies. Legacy exit rule: sell when price returns above $156.90. As of 6/24 8:31 AM: $143.898 (-8.29%). |
| RYAN | 36.11 | 36.55 | 30.69 | no | Filled 2026-06-16. Below +10% threshold ($39.72), standard -15%-from-cost stop applies. Legacy exit rule: sell when price returns above $36.11. As of 6/24 8:31 AM: $35.05 (-2.94%). |
| FPS | 60.48 | 65.24 | 51.41 | no | Filled 2026-06-16. Peak +7.87% vs cost, still below +10% trailing threshold ($66.53) — standard -15%-from-cost stop applies. Legacy exit rule: hold indefinitely until user says otherwise. As of 6/24 8:31 AM: $59.635 (-1.40%). |

## Closed legacy positions

- **ADC**: cost $74.51, sold 2026-06-24 8:31 AM CDT @ ~$74.65 (0.161052 sh, order id 6a3bdc3b-c5eb-41de-b79e-21bb6eb65a95) — crossed above its profit-exit trigger. Realized P&L: ~+0.19%.
- **DRAM**: cost $70.15, sold 2026-06-24 8:31 AM CDT @ ~$70.60 (0.108909 sh, order id 6a3bdc37-8c62-4973-929c-33207195e78c) — peaked $80.83 on 6/22, crashed to $69.22 close on 6/23 (breached $77.32 trailing stop, sell blocked by permission classifier at the time), recovered above cost this morning, sold per user instruction "if its in profit u can sell." Realized P&L: ~+0.64%.

**3 legacy positions remain: FCN, RYAN, FPS.**

## Path D positions (non-legacy, day-trade — EOD force-close by 3:00 PM CDT)

None open. DFTX (bought 9:21 AM CDT 6/24, 0.33746 sh @ $43.47) closed 12:21 PM CDT — sold all on a confirmed bearish-reversal exit after closing below the $43.00 support level with volume tripling (58K vs 19K prior bar). Realized P&L: ~-1.32%.

**Prior closed Path D trades:** DFTX #2 (bought 9:21 AM, closed 12:21 PM 6/24, -1.32%, bearish-reversal exit — same ticker as the 6/22 trade, disciplined breakout entry still produced a loss when momentum reversed). SMCI (bought 1:22 PM, closed 2:06 PM 6/22, -1.32%, bearish-reversal exit). DFTX #1 (bought 10:20 AM, closed 11:50 AM 6/22, -0.40%, bearish-reversal exit). See sop/trade-journal.md.
