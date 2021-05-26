--ForteXorcist v1.980.8 by Xus 28-09-2012 for 5.0

if FW.CLASS == "DEMONHUNTER" then
  local FW = FW;
  local FWL = FW.L;
  local DH = FW:ClassModule("DemonHunter");

  local ST = FW:Module("Timer");
  local CA = FW:Module("Casting");
  local CD = FW:Module("Cooldown");

  if ST then
    local F = ST.F;
    ST:SetDefaultHasted(0) -- set abilities to not use haste in their durations by default

    -- Havoc Spells
    :AddDebuff(198813) -- Vengeful Retreat
    :AddDebuff(179057) -- Chaos Nova
    :AddSpell(198013, 2, "Default", F.TICKS):SetTickSpeed(0.2) -- EyeBeam
    :AddBuff(188499) -- Blade Dance
    :AddBuff(210152) -- Death Sweep
    :AddSpell(196718, 8, "Buff", F.BUFF) -- Darkness
    :AddBuff(187827) -- Metamorphosis
    :AddDebuff(200166) -- Metamorphosis Stun
    :AddBuff(198589) -- Blur
    :AddSpell(206473, 10, "Default", F.TICKS):SetTickSpeed(2) -- Bloodlet
    :AddDebuff(206491) -- Nemesis Debuff on target
    :AddBuff(208608) -- Nemesis Buff on player /beasts
    :AddBuff(211048) -- Chaos Blades

    --Vengeance Spells
    :AddBuff(203819) -- Demon Spikes
    :AddDebuff(185245) -- Torment
    :AddDebuff(207744) -- Fiery Brand
    :AddSpell(178740, 6, "Buff", F.TICKS):SetTickSpeed(1) -- Immolation Aura
    :AddBuff(203981) -- Soulshards
    :AddSpell(202137, 2,"Default", F.AOE) -- Sigil of Silence
    :AddDebuff(204490) -- Sigil of Silence Effect
    :AddSpell(204596, 2,"Default", F.AOE) -- Sigil of Flame
    :AddDebuff(204598, 6, "Default", F.TICKS):SetTickSpeed(2) -- Sigil of Flame Effect
    :AddSpell(207684, 2,"Default", F.AOE) -- Sigil of Misery
    :AddDebuff(207685, 30, "Default", F.AOE) -- Sigil of Misery Effect

    -- Shared Spells
    :AddBuff(188501) -- Spectral Sight
    :AddSpell(183752, 3,"Crowd",  F.UNIQUE) -- Consume Magic
    :AddBuff(131347) -- Glide
    :AddSpell(217832,  60, "Crowd", F.UNIQUE):SetDurationPVP(10) -- Imprison

    :AddMeleeBuffs()
  end
  if CD then
    CD:AddMeleePowerupCooldowns();
  end
  -- if CA then
  --
  -- end

end
