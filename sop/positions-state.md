# Positions State — Trailing Stop High Water Marks

These are the 5 legacy positions, grandfathered per sop/SKILL.md — they follow ONLY their own specific exit rule (sop/RESUME.md), not the Path 0/B/C/D framework. Mechanical stop-loss and trailing-stop below still apply to all of them.

Trailing stop rule (updated 2026-06-19 to percentage-point math, matching the current SOP): once a position is up ≥10% from cost, track the peak gain % (high water mark). Trailing stop fires if the position pulls back ≥5 percentage points from that peak gain % (e.g. peak +12% → stop at +7%). Until +10% is reached, standard -15% from cost applies. Never move the stop down.

Partial profit rule: when position hits +20%, sell 50% of shares. Log here.
Remaining 50% continues with trailing stop from the +20% price as new high water mark.

Format: TICKER | COST_BASIS | HIGH_WATER_MARK | PARTIAL_TAKEN (yes/no) | PARTIAL_DATE | NOTES

## Active positions

| Ticker | Cost Basis | High Water Mark | Trailing Stop Level | Partial Taken | Notes |
|---|---|---|---|---|---|
| FCN | 156.90 | 156.90 | 133.37 | no | Filled 2026-06-16 at open. Below +10% threshold ($172.59), standard -15%-from-cost stop applies. Legacy exit rule: sell when price returns above $156.90. As of 7/2 1:56 PM CT: $152.48 (+2.07% today). No trigger. $4.43 below exit trigger — drift slowing (-$0.16 this tick), -$1.78 from $154.26 session high, bid/ask $152.46/$152.78, 10-min watch active. |

## Closed legacy positions

- **ADC**: cost $74.51, sold 2026-06-24 8:31 AM CDT @ ~$74.65 — crossed above its profit-exit trigger. Realized P&L: ~+0.19%.
- **DRAM**: cost $70.15, sold 2026-06-24 8:31 AM CDT @ ~$70.60 — resolved 6/23's trailing-stop decision, recovered above cost. Realized P&L: ~+0.64%.
- **RYAN**: cost $36.11, sold 2026-06-25 9:21 AM CDT @ ~$36.53 (0.332318 sh, order id 6a3d395a-fcab-4989-809f-a65167ea1dbf) — crossed above its $36.11 profit-exit trigger (live print $36.51-$36.53). Realized P&L: ~+1.16%.
- **FPS**: cost $60.48, sold 2026-07-01 2:05 PM ET @ $51.5801 (0.168320 sh, order id 6a4556e4-f332-4440-be46-1f8a21a4f178) — hard stop triggered ($51.320 < $51.408 = $60.48×0.85). Sell blocked by auto-mode classifier at 1:59 PM, retried and filled at 2:05 PM. Realized P&L: -14.72% (-$1.50). Industrials sector now 1/2 (FCN only).

**1 legacy position remains: FCN.**

## Path D positions (non-legacy, day-trade — EOD force-close by 3:00 PM CDT)

| Ticker | Cost Basis | High Water Mark | Trailing Stop Level | Partial Taken | Notes |
|---|---|---|---|---|---|
No open Path D positions. OUST closed out via partial exit + EOD force-close — see closed trades below.

**Prior closed Path D trades:** OUST (6/29, bought $51.80, partial 1/3 @ $54.3891 + EOD close 2/3 @ $53.8101, blended +4.25%). BB (6/26 open fill, EOD force-close delayed overnight, -4.34%). DFTX #2 (6/24, -1.32%). SMCI (6/22, -1.32%). DFTX #1 (6/22, -0.40%). See sop/trade-journal.md.
