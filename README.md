# Brick Prix

A browser racing game in the style of Formula 1 for one or two players on one keyboard. It's 3D, with TV-broadcast cameras, and you play it straight in the browser with nothing to install.

**▶ Play: https://zanielzazo.github.io/brick-prix/**

## Tracks

Spa-Francorchamps · Red Bull Ring · Monza · Silverstone · Algarve (Portimão)

**Kart tracks** (their own row on the menu): Kartódromo de Chaves · Graz (Styria Karting Premstätten) · Graz Airport (apron circuit)

The layouts are the real circuits, taken from OpenStreetMap. Elevation and scenery are approximate.

Chaves is a real-size kart track (0.59 km, 12 turns, flat), raced in karts instead of F1 cars: about 90 km/h flat out, no downforce, rear brakes only, and a lap of roughly 30–35 s. Its sections run close side by side, so tyre walls sit between them. It isn't part of the Cup. Past Curva do Zazo there's a croquetas stand where Filipe eats a croqueta, turns green and throws up, over and over.

Graz is the "Spielberg" circuit at Styria Karting Premstätten (0.36 km, 11 turns), straight from OpenStreetMap like Chaves, raced right to left on the main straight. Graz Airport is next door, so the sky is busy: A380s, 777s, A320s, An-124s, An-225s, ATRs, Dash 8s and Cessnas land, take off and cross overhead, flying in every direction: some in Aeroficial colours, some in Condor-style stripes (sunshine yellow, red, blue, green, sand). A (fake) Schlossberg with the Uhrturm stands straight ahead of the grid, with a huge Aeroficial airship hovering beside it. The track is dressed in Aeroficial Intelligence colours, with their ads on the billboards, the gantry and the tyre walls.

Around Graz there's more to look at: skiers and a chairlift on a snowy mountain (with a downhill bike trail, berms and jumps down its green flank), cross-country skiers on a trail, skaters on a frozen lake, and a football match (black-and-white v red, the Graz derby) with a stand full of fans.

**Graz Airport** is a made-up 1.16 km kart circuit on the real apron of Graz Airport (layout of the airport from OpenStreetMap): a start straight past the terminal, then a twisty section through the remote stands with parked aircraft. Aircraft taxi across the circuit twice a lap: wait at the red light (running it costs +3 s, or the lap in hot lap), and don't hit the landing gear. Planes land and take off on runway 16C/34C next to you.

Karts have no ERS or DRS.

## Modes

- **2 players**: split screen, standing start, 1–10 laps
- **1 player**: race from the grid, or **Hot lap** (rolling start, endless timed laps, live delta, ERS refilled at the line every lap, track limits in the last sector delete the next lap too, as in F1, and a **ghost car**: the track record holder's lap in gold, your own best in blue, or off)
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

Press **T** (or 📈 Telemetry on the pause or results screen) for the lap telemetry: your last lap's speed trace against a reference (the record ghost in hot lap, otherwise your previous best), the gap along the lap, sector deltas, where you braked and where the reference started braking, and the minimum speed in every turn.

**Replays and photos**: press **V** (or 🎬 on the results or pause screen) to replay the race through the TV cameras, onboard, the rear cam or a free camera you drag around (scroll to zoom), at 0.25× to 4×, following any car; scrub the timeline or jump ±5 s. **P** in the pause menu is photo mode, and 📷 saves the picture as a PNG.

**On a phone or tablet** (landscape): drag the left pad to steer (or tap TILT and tilt the phone), GAS and BRAKE bottom right, ERS/item above them, camera and pause at the top. Starting a race goes full screen.

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
| Chaves (karts) | 0:35.858 | 0:33.575 |
| Graz (karts) | 0:25.717 | 0:23.733 |
| Graz Airport (karts) | 0:52.425 | 0:51.092 |

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
