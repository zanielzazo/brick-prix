# F1 Arcade

A browser racing game in the style of Formula 1 for one or two players on one keyboard. It's 3D, with TV-broadcast cameras, and you play it straight in the browser with nothing to install.

**▶ Play: https://zanielzazo.github.io/f1-arcade/**

## Tracks

Algarve (Portimão) · Spa-Francorchamps · Monza · Red Bull Ring · Silverstone

The layouts are the real circuits, taken from OpenStreetMap. Elevation and scenery are approximate.

## Modes

- **2 players**: split screen, standing start, 1–10 laps
- **1 player**: race from the grid, or **Hot lap** (rolling start, endless timed laps, live delta to your best)
- **Handling**: *Arcade* (forgiving) or *F1* (more grip and braking in slow corners, and you can over-rotate the car)
- **Cameras**: TV broadcast cameras, chase or onboard, switchable during the race

## Controls

| | Player 1 | Player 2 |
|---|---|---|
| Throttle / brake | W / S | ↑ / ↓ |
| Steer | A / D | ← / → |
| ERS boost | Space | Enter or Right Ctrl |
| Change camera | C | Delete or . |

You can also use gamepads (right trigger to accelerate, left trigger to brake, stick to steer, Y for the camera). Esc pauses and M mutes. In Hot lap, R restarts the run.

## Race rules

- **DRS** opens on the straights if you're less than 1 s behind at the detection line. In single player it opens in every DRS zone.
- **ERS boost** gives extra power and recharges when you brake.
- **Slipstream** gives you a tow when you sit behind the other car.
- **Track limits**: all four wheels past the kerb deletes the lap. After 3 warnings, each offence adds +5 s. Cutting a corner forces you to slow down and give the time back.
- **Braking boards** stand 150 / 100 / 50 m before each big braking zone.

## Track records

The **🏆 Records** table on the menu shows the best valid lap for every circuit, with separate columns for Arcade and F1 handling. It starts with Claude's hot laps as the times to beat:

| Circuit | Arcade | F1 |
|---|---|---|
| Algarve | 1:31.258 | 1:22.833 |
| Spa-Francorchamps | 1:58.500 | 1:47.958 |
| Monza | 1:26.975 | 1:22.258 |
| Red Bull Ring | 1:11.033 | 1:05.583 |
| Silverstone | 1:41.775 | 1:33.775 |

Beat one of these and your name replaces Claude's. Your records are saved in your own browser.

## Files

- `index.html`: the 3D game
- `index-2d.html`: the original top-down 2D version (Algarve only, works offline)

## Credits

- Track layouts © [OpenStreetMap](https://www.openstreetmap.org/copyright) contributors, available under the Open Database License (ODbL)
- 3D rendering: [three.js](https://threejs.org) (MIT), loaded from cdnjs

This is a fan project with no connection to Formula 1 or the circuits.
