# Trade Journal

One entry per CLOSED position (Path 0/B/C/D only — legacy positions are logged in trade-log.md as usual, not here, since they're not part of this framework).

Format per entry:
```
DATE TIME(CDT) | TICKER | PATH (0/B/C/D) | Entry $X @ TIME | Exit $Y @ TIME | P&L: +/-Z% | Reason for exit (stop-loss / trailing-stop / JOB-1 momentum fade / EOD force-close / Path D next-tick exit)
```

## Entries

2026-06-22 11:50 CDT | DFTX | Path D | Entry $37.05 @ 10:20 AM | Exit ~$36.90 @ 11:50 AM | P&L: ~-0.40% (~-$0.06 on $14.89 notional) | Reason for exit: discretionary bearish-reversal — confirmed Tier 1 catalyst (Phase 3 Emerge depression trial, primary endpoint met p<0.0001) and a clean technical breakout entry above $36.89 base, but price reversed into an 11-bar (45 min) continuous downtrend from the $38.30 intraday peak with a volume-confirmed down-bar (174.7K, largest since entry) at 11:45 AM. Exited proactively rather than waiting for the $35.84 base-low breach or the 3:00 PM EOD deadline. Satisfied the minimum-1-trade-per-day rule for today.

2026-06-22 14:06 CDT | SMCI | Path D | Entry $36.40 @ 1:22 PM | Exit ~$35.92 @ 2:06 PM | P&L: ~-1.32% (~-$0.20 on $14.85 notional) | Reason for exit: confirmed bearish-reversal — entered on a clean Tier 2 catalyst (GF Securities Hold→Buy upgrade, $48 PT) plus a confirmed afternoon breakout to $36.80, but price retraced and closed below $35.97 (the breakout level used as the support marker) for 2 consecutive 5-min bars. Volume was declining rather than spiking, but the level break itself was the pre-committed exit trigger from the prior tick. Exited proactively ~55 min ahead of the 3:00 PM EOD deadline.

2026-06-24 12:21 CDT | DFTX | Path D | Entry $43.47 @ 9:21 AM | Exit ~$42.90 @ 12:21 PM | P&L: ~-1.32% (~-$0.19 on $14.72 notional) | Reason for exit: confirmed bearish-reversal — same ticker as the 6/22 trade, this time entered only after a clean volume-confirmed breakout above $43.00 (417K vs 157K, 2.65x) with 3 consecutive higher-high bars, not on the initial open-spike. Climbed as high as +2.12% (peak $44.39) before drifting down over ~2 hours and then closing below the $43.00 support level with volume tripling (58K vs 19K prior bar). Disciplined entry methodology didn't prevent a second loss in this name — momentum simply reversed after the morning peak. Exited proactively rather than letting it run further or waiting for the 3:00 PM EOD deadline.
