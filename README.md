# Brick Prix

A browser racing game in the style of Formula 1 for one or two players on one keyboard. It's 3D, with TV-broadcast cameras, and you play it straight in the browser with nothing to install.

**▶ Play: https://zanielzazo.github.io/brick-prix/**

## Tracks

Spa-Francorchamps · Red Bull Ring · Monza · Silverstone · Algarve (Portimão) · **Kartódromo de Chaves** (karts)

The layouts are the real circuits, taken from OpenStreetMap. Elevation and scenery are approximate.

Chaves is a real-size kart track (0.59 km, 12 turns, flat), raced in karts instead of F1 cars: about 90 km/h flat out, no downforce, rear brakes only, and a lap of roughly 30–35 s. Its sections run close side by side, so tyre walls sit between them. It isn't part of the Cup.

## Modes

- **2 players**: split screen, standing start, 1–10 laps
- **1 player**: race from the grid, or **Hot lap** (rolling start, endless timed laps, live delta, and a **ghost car**: the track record holder's lap in gold, your own best in blue, or off)
- **Chaos** (1 or 2 players): mystery **?** boxes on the straights give you an item, and your boost key fires it. Whoever is behind gets better items. No ERS, DRS or track-limit penalties; chaos laps don't count for records.
  - **Items**: Turbo Brick (or Triple Turbo), Oil Slick, Loose Tyre (rolls ahead), Safety Car (slows the leader), Local Shower (a rain cloud over the car ahead, less grip for 4 s), Phantom (drive through cars and hazards for 3.5 s), Brick Wall (dropped behind you) and Pit Stop (clears a spin, Safety Car or shower and gives a short boost)
  - **Boost pads** (blue arrows) at corner exits and **jump ramps** (yellow and black) on the two fastest straights; you can drive around the ramps
  - **Drift boost**: hold throttle and brake together while steering. Blue sparks after 1 s and orange after 2 s; let go for a boost
  - **Weather** can change every lap: dry, rain (less grip) or a glitter storm
- **CPU drivers**: add 1, 3 or 5 computer opponents to a race or Chaos, in 1- or 2-player mode. They pass slower cars, use items in Chaos, and their laps don't count for records. *Easy* drives about at the seeded record pace, *Medium* a bit faster, and *Hard* about as fast as the quickest human laps so far.
- **🏆 Cup** (next to the tracks on the menu): race all five tracks in a row, Spa → Red Bull Ring → Monza → Silverstone → Algarve, with Race or Chaos rules. Points per race are 10-8-6-5-4-3-2, the same CPU drivers race the whole cup, and the final result has a podium.
- **Handling**: *F1* (more grip and braking in slow corners, and you can over-rotate the car) or *Arcade* (forgiving)
- **Cameras**: onboard, rear cam (fixed behind the car) or TV broadcast cameras, switchable during the race

## Controls

| | Player 1 | Player 2 |
|---|---|---|
| Throttle / brake | W / S | ↑ / ↓ |
| Steer | A / D | ← / → |
| ERS boost | Space | Enter or Right Ctrl |
| Change camera | C | Delete or . |

You can also use gamepads (right trigger to accelerate, left trigger to brake, stick to steer, Y for the camera). Esc pauses and M mutes. In Hot lap, R restarts the run and G switches the ghost (record / my best / off).

## Race rules

- **DRS** opens on the straights if you're less than 1 s behind at the detection line. In single player it opens in every DRS zone.
- **ERS boost** gives extra power and recharges when you brake.
- **Slipstream** gives you a tow when you sit behind the other car.
- **Track limits**: all four wheels past the white line (kerbs are outside it) deletes that lap time for best laps and records. In races, going wide while keeping your speed on the kerb or run-off earns a warning, and cutting a corner forces you to slow down and give the time back (plus a warning). A real mistake (onto the grass, or losing more than 10% of your speed) isn't punished again. After 3 warnings, each offence adds +5 s.
- **Braking boards** stand 150 / 100 / 50 m before each big braking zone.

## Track records

The **🏆 Records** screen on the menu has a tab for each circuit. Each tab shows the F1 and Arcade leaderboards (each driver's best valid lap, with the gap to the leader). They start with Claude's hot laps as the times to beat:

| Circuit | Arcade | F1 |
|---|---|---|
| Algarve | 1:31.258 | 1:22.833 |
| Spa-Francorchamps | 1:58.500 | 1:47.958 |
| Monza | 1:26.975 | 1:22.258 |
| Red Bull Ring | 1:11.033 | 1:05.583 |
| Silverstone | 1:41.775 | 1:33.775 |

**The leaderboard is online and shared by everyone.** Set your name on the menu, drive a valid lap, and your personal best is uploaded ("LAP UPLOADED"). Laps under the default names "Player 1" and "Player 2" aren't uploaded, but when you then type your name on the menu, those laps saved in your browser are renamed and uploaded.

The online records use a free [Supabase](https://supabase.com) table (see [`supabase.sql`](supabase.sql)). The public key in the game can only read laps and add new ones; nobody can edit or delete laps, and impossible lap times are rejected. If the database can't be reached, the game falls back to the records in your own browser.

## Files

- `index.html`: the 3D game
- `index-2d.html`: the original top-down 2D version (Algarve only, works offline)

## Credits

Made by **Zaniel Zazo b2b Claudius Maximus**.

- Track layouts © [OpenStreetMap](https://www.openstreetmap.org/copyright) contributors, available under the Open Database License (ODbL)
- 3D rendering: [three.js](https://threejs.org) (MIT), loaded from cdnjs

This is a fan project with no connection to Formula 1 or the circuits.
