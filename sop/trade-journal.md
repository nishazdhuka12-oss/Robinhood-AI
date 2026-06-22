# Trade Journal

One entry per CLOSED position (Path 0/B/C/D only — legacy positions are logged in trade-log.md as usual, not here, since they're not part of this framework).

Format per entry:
```
DATE TIME(CDT) | TICKER | PATH (0/B/C/D) | Entry $X @ TIME | Exit $Y @ TIME | P&L: +/-Z% | Reason for exit (stop-loss / trailing-stop / JOB-1 momentum fade / EOD force-close / Path D next-tick exit)
```

## Entries

2026-06-22 11:50 CDT | DFTX | Path D | Entry $37.05 @ 10:20 AM | Exit ~$36.90 @ 11:50 AM | P&L: ~-0.40% (~-$0.06 on $14.89 notional) | Reason for exit: discretionary bearish-reversal — confirmed Tier 1 catalyst (Phase 3 Emerge depression trial, primary endpoint met p<0.0001) and a clean technical breakout entry above $36.89 base, but price reversed into an 11-bar (45 min) continuous downtrend from the $38.30 intraday peak with a volume-confirmed down-bar (174.7K, largest since entry) at 11:45 AM. Exited proactively rather than waiting for the $35.84 base-low breach or the 3:00 PM EOD deadline. Satisfied the minimum-1-trade-per-day rule for today.
