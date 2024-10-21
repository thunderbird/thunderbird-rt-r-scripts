# thunderbird-rt-r-scripts
## 2024-10-20 Spike in Thunderbird and Firefox questions after AAQ sidebar deployed Week 28
- We believe the spike in TB desktop questions is due to: the new AAQ widget introduced on July 8, 2024 as part of [SUMO release 1.0.9](https://github.com/mozilla/kitsune/releases/tag/1.0.9) See also the [announcement in SUMO Community Discussions Forum](https://support.mozilla.org/en-US/forums/contributors/717059?last=87867)) ; specifically the AAQ widget implemented by this PR:  [Update AAQ widget redirects and text #6076](https://github.com/mozilla/kitsune/pull/6076). And of course some of the spike is caused by Thunderbird 128 issues.
	- Seburo: `I agree with cor-el, the AAQ prompt is not something we need.  It is in the sidebar on desktop, but is the centre on mobile and is kind of in the way a bit.`
	- [August 2024 SUMO Questions tagged by Partner Hero folks spreadsheet](https://docs.google.com/spreadsheets/d/1nG_klR3Af1ld_3MS46Vdqan2XVVG2wWfgBVfrsy6Dns/edit?gid=0#gid=0), [October 2024 spreadsheet](https://docs.google.com/spreadsheets/d/1MExZi3oAaBrXTUoGTh0xR7DhpZI_DlBRMqFC2AomDQ4/edit?gid=0#gid=0)
- Daily Timeline:
	- 2024-07-06 26 questions
	- 2024-07-07: 19 questions
	- 2024-07-08: 41 questions <-  **AAQ sidebar deployed**
	- 2024-07-09: 39 questions
	- 2024-07-10: 53 questions
	- 2024-07-11: 52 questions <- **Thunderbird 128 released**
	- 2024-07-12: 45 questions
	- 20-24-07-13: 29 questions
- Weekly Timeline:
	- Week 26: 194 questions
	- Week 27: 190 questions ; Firefox 262 questions
	- Week 28: 295 questions <-- **AAQ released July 8 of week 28, TB128 July 11**  ; Firefox: 259
	- Week 29: 337 questions ; Firefox 392
	- Week 30: 331 questions; Firefox 531
## 2024-10-20 Plots are named after the r script :-) and are in the PLOTS directory
* Just change `.r` to `.png`
    * [2024-10-20-daily-tb-desktop-sumo-questions-2023-04-01-2024-10-17.r](https://github.com/thunderbird/thunderbird-rt-r-scripts/blob/main/2024-10-20-daily-tb-desktop-sumo-questions-2023-04-01-2024-10-17.r), plot is [PLOTS/2024-10-20-daily-tb-desktop-sumo-questions-2023-04-01-2024-10-17.png](https://github.com/thunderbird/thunderbird-rt-r-scripts/blob/main/PLOTS/2024-10-20-daily-tb-desktop-sumo-questions-2023-04-01-2024-10-17.png)
    * [2024-10-20-daily-tb-desktop-sumo-questions-2024-06-01-2024-10-17.r](https://github.com/thunderbird/thunderbird-rt-r-scripts/blob/main/2024-10-20-daily-tb-desktop-sumo-questions-2024-06-01-2024-10-17.r), plot is [PLOTS/2024-10-20-daily-tb-desktop-sumo-questions-2024-06-01-2024-10-17](https://github.com/thunderbird/thunderbird-rt-r-scripts/blob/main/PLOTS/2024-10-20-daily-tb-desktop-sumo-questions-2024-06-01-2024-10-17.png)
    * [2024-10-20-weekly-tb-desktop-sumo-questions-week1-41-2024-0-01-2024-10-17.r](https://github.com/thunderbird/thunderbird-rt-r-scripts/blob/main/2024-10-20-weekly-tb-desktop-sumo-questions-week1-41-2024-0-01-2024-10-17.r), plot is [PLOTS/2024-10-20-weekly-tb-desktop-sumo-questions-week1-41-2024-0-01-2024-10-17](https://github.com/thunderbird/thunderbird-rt-r-scripts/blob/main/PLOTS/2024-10-20-weekly-tb-desktop-sumo-questions-week1-41-2024-0-01-2024-10-17.png).
