# Positions State — Trailing Stop High Water Marks

Tracks the highest price reached for each open position since entry.
Updated every daily scan. Used to compute trailing stop level.

Trailing stop rule: -15% from high_water_mark (not from cost).
High water mark activates trailing once position is up >=10% from cost.
Until +10% is reached, standard -15% from cost applies.

Partial profit rule: when position hits +20%, sell 50% of shares. Log here.
Remaining 50% continues with trailing stop from the +20% price as new high water mark.

Format: TICKER | COST_BASIS | HIGH_WATER_MARK | PARTIAL_TAKEN (yes/no) | PARTIAL_DATE | NOTES

## Active positions

| Ticker | Cost Basis | High Water Mark | Trailing Stop Level | Partial Taken | Notes |
|---|---|---|---|---|---|
| FCN | 156.90 | 156.90 | 133.37 | no | Filled 2026-06-16 at open. Trailing activates at +10% ($172.59). Signal: Path B insider cluster (3 insiders May 13-14). |
| RYAN | 36.11 | 36.11 | 30.69 | no | Filled 2026-06-16 ~9:51 AM ET. Trailing activates at +10% ($39.72). Signal: Path B insider cluster (Chair+CFO+GC, June 3-5). |
| ADC | 74.51 | 74.51 | 63.33 | no | Filled 2026-06-16 ~9:51 AM ET. Trailing activates at +10% ($81.96). Signal: Path B insider cluster (Chair+CEO+2 dirs, May 14-Jun 4). |
