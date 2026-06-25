# Positions State — Trailing Stop High Water Marks

These are the 5 legacy positions, grandfathered per sop/SKILL.md — they follow ONLY their own specific exit rule (sop/RESUME.md), not the Path 0/B/C/D framework. Mechanical stop-loss and trailing-stop below still apply to all of them.

Trailing stop rule (updated 2026-06-19 to percentage-point math, matching the current SOP): once a position is up ≥10% from cost, track the peak gain % (high water mark). Trailing stop fires if the position pulls back ≥5 percentage points from that peak gain % (e.g. peak +12% → stop at +7%). Until +10% is reached, standard -15% from cost applies. Never move the stop down.

Partial profit rule: when position hits +20%, sell 50% of shares. Log here.
Remaining 50% continues with trailing stop from the +20% price as new high water mark.

Format: TICKER | COST_BASIS | HIGH_WATER_MARK | PARTIAL_TAKEN (yes/no) | PARTIAL_DATE | NOTES

## Active positions

| Ticker | Cost Basis | High Water Mark | Trailing Stop Level | Partial Taken | Notes |
|---|---|---|---|---|---|
| FCN | 156.90 | 156.90 | 133.37 | no | Filled 2026-06-16 at open. Below +10% threshold ($172.59), standard -15%-from-cost stop applies. Legacy exit rule: sell when price returns above $156.90. As of 6/25 3:00 PM close: $140.25 (-10.62%). No trigger today, carries overnight. |
| FPS | 60.48 | 65.24 | 51.41 | no | Filled 2026-06-16. Peak +7.87% vs cost, still below +10% trailing threshold ($66.53) — standard -15%-from-cost stop applies. Legacy exit rule: hold indefinitely until user says otherwise. As of 6/25 3:00 PM close: $58.64 (-2.95%). Carries overnight per standing hold rule. |

## Closed legacy positions

- **ADC**: cost $74.51, sold 2026-06-24 8:31 AM CDT @ ~$74.65 — crossed above its profit-exit trigger. Realized P&L: ~+0.19%.
- **DRAM**: cost $70.15, sold 2026-06-24 8:31 AM CDT @ ~$70.60 — resolved 6/23's trailing-stop decision, recovered above cost. Realized P&L: ~+0.64%.
- **RYAN**: cost $36.11, sold 2026-06-25 9:21 AM CDT @ ~$36.53 (0.332318 sh, order id 6a3d395a-fcab-4989-809f-a65167ea1dbf) — crossed above its $36.11 profit-exit trigger (live print $36.51-$36.53). Realized P&L: ~+1.16%.

**2 legacy positions remain: FCN, FPS.**

## Path D positions (non-legacy, day-trade — EOD force-close by 3:00 PM CDT)

| Ticker | Cost Basis | High Water Mark | Trailing Stop Level | Partial Taken | Notes |
|---|---|---|---|---|---|
| BB | ~10.61 | 10.64 | n/a (day-trade, EOD force-close, not trailing-stop managed) | no | Bought 2026-06-25 9:22 AM CDT, $14.79 notional (1.393981 sh), order id 6a3d3984-3e56-4d55-abe4-efd99c2a8e9c. Intraday journey: wicked to $10.17 at 10:05 AM (briefly piercing $10.19-10.27 base, recovered), climbed to near-breakeven ~$10.55 around 1:05-1:35 PM, ground back down to close the regular session at $10.33 (-2.64%). **EOD force-close sell order submitted 3:01:51 PM CDT (order id 6a3d892f-9476-444b-9e87-69251596e62f) but missed the 3:00 PM closing bell by ~2 minutes — state `queued`, unfilled as of day-end.** PENDING: must confirm/execute this sale as the very first action of the next session, ahead of any new signal scan. Not yet logged to trade-journal.md — pending final fill price. |

**Prior closed Path D trades:** DFTX #2 (6/24, -1.32%). SMCI (6/22, -1.32%). DFTX #1 (6/22, -0.40%). See sop/trade-journal.md.
