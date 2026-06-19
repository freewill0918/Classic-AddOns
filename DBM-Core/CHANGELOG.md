# DBM - Core

## [12.0.53](https://github.com/DeadlyBossMods/DeadlyBossMods/tree/12.0.53) (2026-06-17)
[Full Changelog](https://github.com/DeadlyBossMods/DeadlyBossMods/compare/12.0.52...12.0.53) [Previous Releases](https://github.com/DeadlyBossMods/DeadlyBossMods/releases)

- correct creatureid, bump dbm version  
- no message  
- Fix bug  
- push preliminary mythc rotmire hardcode  
- Update Translations (#2112)  
- cleanup obsolete mop game version  
- Account for even greater drift of Nullbeam timer in mythic stage 3  
- variables consolidation  
- Improve stage 2 mythic routing to handle variations in ability orders  
    Adjust bugged breath scan window a little for 2nd intermission so it doesn't miss 2nd intermission 1 breath target on some pulls.  
- Revise TLCountFinish to make a cleaner way of handling Vaelgor breath bugs.  
- Remove erroneous line  
- Dragons Update:  
     - Improve stage 2 start handling on mythic since event order can change  
     - Added full hardcode support for rest of stage 2 and 2.5  
     - Work around more blizzard bugs where they incorrectly fire state 3 for finished bars (or fire nothing at all)  
     - Attempt to make the dread breath special target warnings more robust against blizzard bugs  
- bugfix duplicate beams alert. The bug correction code doesn't need to run on first beam timer, only 2 and later  
- bump alpha  
