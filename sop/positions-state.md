# Positions State — Trailing Stop High Water Marks

These are the 5 legacy positions, grandfathered per sop/SKILL.md — they follow ONLY their own specific exit rule (sop/RESUME.md), not the Path 0/B/C/D framework. Mechanical stop-loss and trailing-stop below still apply to all of them.

Trailing stop rule (updated 2026-06-19 to percentage-point math, matching the current SOP): once a position is up ≥10% from cost, track the peak gain % (high water mark). Trailing stop fires if the position pulls back ≥5 percentage points from that peak gain % (e.g. peak +12% → stop at +7%). Until +10% is reached, standard -15% from cost applies. Never move the stop down.

Partial profit rule: when position hits +20%, sell 50% of shares. Log here.
Remaining 50% continues with trailing stop from the +20% price as new high water mark.

Format: TICKER | COST_BASIS | HIGH_WATER_MARK | PARTIAL_TAKEN (yes/no) | PARTIAL_DATE | NOTES

## Active positions

| Ticker | Cost Basis | High Water Mark | Trailing Stop Level | Partial Taken | Notes |
|---|---|---|---|---|---|
| FCN | 156.90 | 156.90 | 133.37 | no | Filled 2026-06-16 at open. Below +10% threshold ($172.59), standard -15%-from-cost stop applies. Legacy exit rule: sell when price returns above $156.90. |
| RYAN | 36.11 | 36.55 | 30.69 | no | Filled 2026-06-16. Below +10% threshold ($39.72), standard -15%-from-cost stop applies. Legacy exit rule: sell when price returns above $36.11. |
| ADC | 74.51 | 74.78 | 63.33 | no | Filled 2026-06-16. Below +10% threshold ($81.96), standard -15%-from-cost stop applies. Legacy exit rule: sell when price returns above $74.51. |
| FPS | 60.48 | 65.24 | 51.41 | no | Filled 2026-06-16. Peak +7.87% vs cost, still below +10% trailing threshold ($66.53) — standard -15%-from-cost stop applies. Legacy exit rule: hold indefinitely until user says otherwise. |
| DRAM | 70.15 | 80.83 | 77.32 | no | Filled 2026-06-16. **TRAILING ACTIVE.** New HWM 2026-06-22 ~8:35 AM CDT (exchange print $80.83, +15.22% vs cost — big move). Trigger gain = peak% − 5pp = 10.22% → trigger price = cost × 1.1022 = **$77.32**. Sells if price falls to/below $77.32. Legacy exit rule: hold indefinitely until user says otherwise. |
