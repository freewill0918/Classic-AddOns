# Hekili

## [v4.4.2-1.0.0](https://github.com/Hekili/hekili/tree/v4.4.2-1.0.0) (2025-02-28)
[Full Changelog](https://github.com/Hekili/hekili/compare/v4.4.1-1.0...v4.4.2-1.0.0) [Previous Releases](https://github.com/Hekili/hekili/releases)

- Merge pull request #4403 from Smufrik/cataclysm  
    Rogue update Phase 4  
- Update RogueAssasination.simc  
    Assassination Rogue Changes  
    Vendetta Alignment: Improved cooldown usage centered around Vendetta windows  
    Simplified Variables: Removed overcomplicated variable conditions while maintaining effectiveness  
    Energy Pooling: Added resource pooling for key abilities  
    Improved AoE: Enhanced multi-target handling with clearer priorities  
    Poison Application: Added proper poison setup in precombat  
    Defensive Usage: Improved defensive cooldown conditions for better survivability  
    DoT Management: Better Rupture refresh logic based on target lifetime  
- Update RogueCombat.simc  
    Combat Rogue Changes  
    Bandit's Guile Integration: Enhanced rotation to prioritize finishers based on Insight buff levels  
    Cooldown Synergy: Aligned cooldowns with Deep Insight and Adrenaline Rush for maximum effectiveness  
    AoE Handling: Created dedicated AoE action list with proper Blade Flurry and Fan of Knives thresholds  
    Resource Management: Improved energy usage with better Adrenaline Rush and Killing Spree timing  
    Revealing Strike: Better management of the Revealing Strike debuff  
    Trinket Usage: Optimized on-use trinkets and engineering enhancements  
- Update RogueSubtlety.simc  
    Subtlety Rogue Changes  
    Precombat Sequence: Implemented optimized precombat with Tricks, Recuperate, potion, stealth, and Premeditation  
    Find Weakness Management: Enhanced rotation to maximize Find Weakness uptime through proper Shadow Dance and Vanish usage  
    Cooldown Optimization: Improved cooldown synergy based on energy thresholds and fight conditions  
    Energy Management: Adjusted energy thresholds specifically for Cataclysm mechanics  
    AoE Improvements: Implemented target-specific cycling for multi-target fights  
    Engineering Support: Added Synapse Springs usage aligned with burst windows  
    Simulation Focus: Removed non-optimal abilities like Garrote for better sim performance  
- Update Rogue.lua  
    Subtlety Rogue Changes  
    Precombat Sequence: Implemented optimized precombat with Tricks, Recuperate, potion, stealth, and Premeditation  
    Find Weakness Management: Enhanced rotation to maximize Find Weakness uptime through proper Shadow Dance and Vanish usage  
    Cooldown Optimization: Improved cooldown synergy based on energy thresholds and fight conditions  
    Energy Management: Adjusted energy thresholds specifically for Cataclysm mechanics  
    AoE Improvements: Implemented target-specific cycling for multi-target fights  
    Engineering Support: Added Synapse Springs usage aligned with burst windows  
    Simulation Focus: Removed non-optimal abilities like Garrote for better sim performance  
    Combat Rogue Changes  
    Bandit's Guile Integration: Enhanced rotation to prioritize finishers based on Insight buff levels  
    Cooldown Synergy: Aligned cooldowns with Deep Insight and Adrenaline Rush for maximum effectiveness  
    AoE Handling: Created dedicated AoE action list with proper Blade Flurry and Fan of Knives thresholds  
    Resource Management: Improved energy usage with better Adrenaline Rush and Killing Spree timing  
    Revealing Strike: Better management of the Revealing Strike debuff  
    Trinket Usage: Optimized on-use trinkets and engineering enhancements  
    Assassination Rogue Changes  
    Vendetta Alignment: Improved cooldown usage centered around Vendetta windows  
    Simplified Variables: Removed overcomplicated variable conditions while maintaining effectiveness  
    Energy Pooling: Added resource pooling for key abilities  
    Improved AoE: Enhanced multi-target handling with clearer priorities  
    Poison Application: Added proper poison setup in precombat  
    Defensive Usage: Improved defensive cooldown conditions for better survivability  
    DoT Management: Better Rupture refresh logic based on target lifetime  
- Merge pull request #4389 from himea-saito/cataclysm  
- Merge pull request #4386 from Adal4/patch-1  
- Fixes and improvements for Shadow Priest, add Raging Blow lua support for Fury Warrior  
- Updated Shadow Priest and Ret Paladin for Tier 13  
- Update Hekili.toc  
- Merge pull request #4354 from himea-saito/cataclysm  
    Fix Destruction Warlock Recommendations  
- Fix Destruction Warlock Recommendations  
- Merge branch 'cataclysm' of https://github.com/himea-saito/hekili into cataclysm  
- Merge pull request #4314 from Smufrik/cataclysm  
    Cataclysm: Mage Profile Update  
- Create MageFrost.simc  
    Rewriten Frost Profile  
- Update Mage.lua  
    Dudu's rewriten frost profile for cataclysm  
- Merge pull request #4208 from Smufrik/cataclysm  
    Cataclysm  
- Update WarlockDestruction.simc  
- Rename WarlockDestructionbeta.simc to WarlockDestruction.simc  
- Rename WarlockAfflictionBeta.simc to WarlockAffliction.simc  
- Update Warlock.lua  
    Added the cleanup work done by Burgaduk  
    to the ingame profiles  
    Optimized Destro profile from changes made to wowsims  
- Merge pull request #4189 from Smufrik/cataclysm  
    Cataclysm  
- Update Rogue.lua  
    Updated profiles  
    Added setting for tricks of the trade  
- Update RogueAssasination.simc  
    Added tricks cast for t13 proc  
- Update RogueCombat.simc  
    added Tricks of the trade cast For 4pc t13 bonus  
- Update RogueSubtlety.simc  
    Rewriten sub rota from wowhead and wowsims  
- Merge branch 'Hekili:cataclysm' into cataclysm  
- Initial update for Priest.lua  
    Updated talents array  
    Updated buffs for Discipline spec  
    Updated some abilities for Discipline spec  
    Added TODO's for areas that are still WIP  
