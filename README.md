# 🚗 RPG CAR GAME — 3D OFF-ROAD ADVENTURE

> **Drive • Explore • Collect • Upgrade • Crash • Conquer**

A browser-based 3D off-road driving game powered by **Three.js WebGPU** and **Rapier 3D physics**. Explore a procedurally generated world containing desert and forest environments, drive through water, collect coins, destroy objects, perform jumps and flips, and upgrade your vehicle as you explore.

---

## 🎮 About The Game

**RPG Car Game** combines physics-based driving with a lightweight roguelike upgrade system.

Instead of driving on a fixed static map, the terrain and environmental objects are generated dynamically around the vehicle. This creates a large, continuous exploration experience while keeping the browser workload manageable.

The game combines:

```text
🚗 PHYSICS-BASED DRIVING
        +
🌄 PROCEDURAL TERRAIN
        +
🏜️ DESERT + FOREST BIOMES
        +
🌊 WATER
        +
🪙 COIN COLLECTION
        +
💥 DESTRUCTIBLE OBJECTS
        +
🚀 BOOST
        +
🦘 JUMP & FLIPS
        +
🛠️ RPG UPGRADES
        +
⚙️ REAL-TIME SETTINGS
```

---

# ✨ Features

## 🚗 Physics-Based Vehicle

The vehicle is simulated using **Rapier 3D physics** rather than simply moving a visual model.

The vehicle includes:

* Four physical wheels
* Wheel suspension
* Tire friction
* Steering
* Acceleration
* Deceleration
* Maximum speed
* Vehicle grip
* Wheel rotation
* Suspension movement
* Collision physics
* Jumping
* Flipping
* Boosting

The physics controller uses independent wheel configuration for suspension, friction and wheel behavior.

---

## 🛞 Advanced Wheel & Suspension Physics

Each of the four wheels has its own physics configuration.

The simulation handles:

```text
Wheel Contact
     ↓
Suspension
     ↓
Tire Friction
     ↓
Vehicle Body
     ↓
Terrain Collision
```

Adjustable vehicle parameters include:

* Steering
* Acceleration
* Deceleration
* Maximum Speed
* Boost Multiplier
* Jump Force
* Jump Crouch Time
* Flip Force
* Tire Grip
* Tire Lerp

---

# 🚀 Nitro / Boost

Hold:

```text
SHIFT
```

to activate the vehicle's boost.

The default boost multiplier is:

```text
2.5×
```

Boost can be adjusted through the in-game settings panel.

Use it to:

* Reach higher speeds
* Cross difficult terrain
* Clear jumps
* Explore the world faster

---

# 🦘 Jump & Flip System

Press:

```text
SPACE
```

to jump.

Jumping uses a **physics impulse**, allowing the vehicle to actually leave the ground rather than simply teleporting upward.

The jump system supports:

* Jump force
* Jump preparation
* Airborne movement
* Vehicle flipping
* Flip force

This makes hills and uneven terrain suitable for stunts and off-road driving.

---

# 🌄 Procedural World

The game generates terrain using procedural noise.

Multiple noise layers are combined to produce natural terrain variation:

```text
Noise Layer 1
      +
Noise Layer 2
      +
Noise Layer 3
      ↓
Procedural Terrain
```

The terrain can contain:

* Hills
* Valleys
* Rolling terrain
* Dunes
* Forest elevations
* Natural elevation changes

Terrain generation is dynamically updated as the vehicle moves.

---

# 🏜️ Desert Biome

The desert region features flatter, rolling terrain designed around a dry landscape.

Desert terrain uses:

* Sand
* Dirt
* Grass transitions
* Procedural elevation
* Environmental scattering
* Water boundaries

The desert's appearance can be customized through the settings panel.

---

# 🌲 Forest Biome

The forest region uses a different procedural terrain profile.

It contains:

* Hillier terrain
* Steeper valleys
* Forest-style ground colors
* Vegetation/environmental scattering
* Different atmospheric colors

---

# 🌈 Dynamic Biome Transition

The game smoothly transitions between the desert and forest regions.

```text
🏜️ DESERT
     ↓
  TRANSITION
     ↓
🌲 FOREST
```

The transition is based on the vehicle's position in the world instead of switching environments instantly.

---

# 🌊 Water System

The world includes a configurable water level.

When the vehicle enters water:

* Vehicle movement is affected
* Additional drag is applied
* Vehicle speed is reduced
* Splash effects can appear
* Physics behavior changes

Water has animated shader-based surface variation.

---

# 💦 Water Splash Effects

Driving through water at sufficient speed produces wheel splash particles.

The splash system supports configurable:

* Emission rate
* Minimum speed
* Particle size
* Size variation
* Lifetime
* Opac­ity
* Spread
* Velocity
* Upward force
* Drag
* Particle color

Splash effects can be enabled or disabled from the settings panel.

---

# 💨 Dust Effects

Driving over dry terrain can generate dust behind the vehicle.

Dust emission depends on:

* Vehicle speed
* Wheel contact
* Minimum speed
* Emission rate
* Particle size
* Lifetime
* Spread
* Velocity
* Upward force
* Drag

Dust is automatically reduced/avoided while the vehicle is in water.

The world also includes ambient wind-driven dust for additional environmental movement.

---

# 🪙 Coin Collection

Coins are scattered throughout the procedural world.

Collect them by driving close to them.

```text
COIN SPAWN
    ↓
BOB + ROTATE
    ↓
PLAYER APPROACHES
    ↓
COLLECT
    ↓
+1 COIN
    ↓
✨ SPARKLE EFFECT
```

Coins feature:

* Floating animation
* Continuous rotation
* Glow
* Collection distance
* Collection animation
* Sparkle effects

The current coin count is displayed in the HUD.

---

# 🛠️ RPG Upgrade System

The game includes a **roguelike-style vehicle upgrade system**.

Press:

```text
U
```

to open the upgrade shop.

Press:

```text
U / ESC
```

to close it.

Coins can be used to improve vehicle performance.

### Available Upgrades

| Upgrade         | Effect                    |
| --------------- | ------------------------- |
| ⚡ Top Speed     | Increase maximum speed    |
| 🔥 Acceleration | Improve acceleration      |
| 🚀 Nitro Boost  | Increase boost multiplier |
| 🦘 Jump Power   | Increase jump strength    |
| 🎯 Steering     | Improve steering response |
| 🛞 Tire Grip    | Improve vehicle grip      |

Each upgrade has multiple levels and becomes progressively more expensive.

This creates a simple progression loop:

```text
DRIVE
  ↓
EXPLORE
  ↓
COLLECT COINS
  ↓
BUY UPGRADES
  ↓
BECOME FASTER
  ↓
EXPLORE FURTHER
```

---

# 💥 Destructible Environment

Certain environmental objects can be damaged and destroyed through vehicle collisions.

High-speed impacts can trigger:

* Collision damage
* Object shaking
* HP reduction
* Debris
* Particles
* Impact effects
* Screen shake
* Object removal

Large structures can have multiple hit points and require repeated impacts.

---

# 🏚️ Destructible Structures

Larger environmental structures can have their own health.

```text
STRUCTURE
   ↓
COLLISION
   ↓
DAMAGE
   ↓
HP ↓
   ↓
SHAKE
   ↓
DESTROY
   ↓
💥 DEBRIS
```

This makes the environment interactive instead of purely decorative.

---

# 🗺️ Dynamic World Generation

The world is continuously managed around the player's current position.

As the vehicle travels:

```text
PLAYER MOVES
     ↓
NEW AREA
     ↓
GENERATE TERRAIN
     ↓
GENERATE OBJECTS
     ↓
GENERATE COLLECTIBLES
     ↓
REMOVE DISTANT CONTENT
```

Spatial cells are used to manage environmental objects and prevent the scene from accumulating unlimited objects.

---

# 🎥 Camera System

The default camera follows the vehicle from behind and above.

Camera settings include:

* Distance
* Height
* Look Height
* Smoothing
* Field of View

The camera smoothly follows the vehicle for a more natural driving experience.

---

# 🔭 Orbit Camera

Press:

```text
O
```

to toggle orbit camera mode.

Orbit mode allows the player to freely inspect the vehicle and surrounding environment.

Press `O` again to return to the normal follow camera.

---

# 🐞 Debug Mode

Press:

```text
P
```

to toggle physics debugging.

Debug mode can display:

* Vehicle collision geometry
* Wheel debug meshes
* Physics debug lines

The settings panel also provides a debug toggle.

---

# ⚙️ Real-Time Settings

The game includes a custom glass-style settings interface.

Open it using the:

```text
⚙ Settings
```

button.

The settings system includes configurable sections for:

### 🚗 Car

* Steering
* Acceleration
* Deceleration
* Maximum Speed
* Boost
* Jump Force
* Jump Crouch
* Flip Force
* Grip
* Tire Lerp
* Debug
* Orbit Camera

### 🎥 Camera

* Distance
* Height
* Look Height
* Smoothing
* FOV

### 🌄 Terrain

* Frequency
* Amplitude

### ☀️ Lighting

* Sun Azimuth
* Sun Elevation
* Shadows
* Shadow Resolution
* Ambient lighting
* Hemisphere lighting

### 🌫️ Fog

* Fog Color
* Near Distance
* Far Distance

### 🎨 Biomes

* Water Level
* Sand → Dirt transition
* Dirt → Grass transition
* Terrain transition width
* Sand colors
* Dirt colors
* Grass colors
* Water colors

### 💨 Dust

* Enable/Disable
* Emission rate
* Minimum speed
* Size
* Lifetime
* Opacity
* Spread
* Upward force
* Drag

---

# 🎮 Controls

| Key     | Action                    |
| ------- | ------------------------- |
| `W`     | Drive Forward             |
| `S`     | Reverse / Brake           |
| `A`     | Steer Left                |
| `D`     | Steer Right               |
| `SHIFT` | Nitro / Boost             |
| `SPACE` | Jump                      |
| `R`     | Reset Vehicle             |
| `P`     | Toggle Debug              |
| `O`     | Toggle Orbit Camera       |
| `U`     | Open / Close Upgrade Shop |
| `ESC`   | Close Upgrade Shop        |
| `Mouse` | Orbit Camera Interaction  |

---

# 🔄 Vehicle Reset

If the vehicle gets stuck or falls into an unreachable location, press:

```text
R
```

The vehicle is returned to its starting position and its movement/rotation velocities are reset.

---

# 🚗 Custom 3D Car Models

The game supports optional custom GLB models.

Place the following files inside:

```text
models/
```

```text
models/
├── chassis.glb
└── tire.glb
```

### `chassis.glb`

The main vehicle body.

### `tire.glb`

A single tire model that is reused across all four wheels.

## If either model is missing or fails to load, the game automatically uses procedural fallback geometry instead, so the game can still run.

# 🧊 Technology Stack

| Technology          | Purpose                       |
| ------------------- | ----------------------------- |
| **Three.js**        | 3D rendering                  |
| **Three.js WebGPU** | GPU-accelerated rendering     |
| **Three.js TSL**    | GPU shader/procedural effects |
| **Rapier 3D**       | Vehicle & collision physics   |
| **ImprovedNoise**   | Procedural terrain generation |
| **Stats GL**        | Performance monitoring        |
| **JavaScript**      | Game logic                    |
| **HTML5**           | Application structure         |
| **CSS**             | UI and styling                |

The application imports Three.js WebGPU, Three.js TSL, Rapier 3D, Three.js addons, and Stats GL through browser import maps.

---

# ⚡ WebGPU Rendering

The game uses:

```text
Three.js WebGPU
```

instead of the traditional WebGL renderer.

This allows the project to experiment with modern GPU-accelerated browser rendering and shader-based effects.

The renderer also supports:

* Anti-aliasing
* Dynamic lighting
* Shadows
* Fog
* GPU shader effects
* Configurable rendering quality

---

# 🧱 Rapier Physics

Physics are powered by:

```text
@dimforge/rapier3d-compat
```

Rapier handles:

* Rigid bodies
* Colliders
* Vehicle controller
* Wheels
* Suspension
* Friction
* Collision detection
* Terrain physics
* Destructible-object physics

The physics simulation runs using a fixed timestep.

---

# 📊 Performance

The project contains several systems designed to reduce performance spikes.

### Terrain

* Incremental terrain generation
* Dynamic heightfield updates
* Procedural terrain rebuilding

### Environment

* Spatial cells
* Dynamic object generation
* Distant object cleanup

### Physics

* Fixed timestep
* Rapier vehicle controller
* Controlled collision processing

### Rendering

* Three.js WebGPU
* Configurable shadows
* GPU-based effects

### Particles

* Dust
* Water splash
* Ambient wind dust
* Destruction debris

---

# 📁 Project Structure

```text
RPG-CAR-GAME/
│
├── 📄 index.html
├── 📄 README.md
├── 📄 LICENSE
├── 📄 run.bat
│
└── 📁 models/
    ├── 🚗 chassis.glb
    └── 🛞 tire.glb
```

The custom models are optional because the game contains procedural fallback vehicle and tire geometry.

---

# 🪟 Windows Quick Start

A launcher batch file is included for Windows.

Run:

```text
run.bat
```

The launcher starts a local server using:

```bash
npx serve .
```

and serves the game locally on the address displayed by the launcher.

### Manual Start

Open a terminal in the project directory and run:

```bash
npx serve .
```

Then open the local address shown in the terminal.

---

# 🌐 Browser Requirements

Recommended:

* Modern Chromium-based browser
* WebGPU-compatible GPU
* Hardware acceleration enabled
* Internet connection for CDN dependencies

The game depends on browser-loaded CDN modules, so an active internet connection is recommended.

---

# 🐛 Troubleshooting

## Blank Screen

Run the game through a local HTTP server instead of opening the HTML file directly.

```bash
npx serve .
```

---

## WebGPU Not Available

Check that:

* Your browser is updated
* Hardware acceleration is enabled
* Your GPU supports WebGPU
* You are using a WebGPU-compatible browser

---

## Physics Not Loading

Open:

```text
F12 → Console
```

and check for module or Rapier loading errors.

---

## Vehicle Is Stuck

Press:

```text
R
```

to reset the vehicle.

---

## Low FPS

Try:

* Lowering shadow resolution
* Disabling dust
* Disabling unnecessary effects
* Disabling debug mode
* Reducing terrain complexity

---

# 🧠 Game Architecture

The core game loop combines the major systems together:

```text
INPUT
  ↓
VEHICLE CONTROL
  ↓
RAPIER PHYSICS
  ↓
WHEEL / SUSPENSION
  ↓
TERRAIN UPDATE
  ↓
WORLD SCATTER
  ↓
PARTICLES
  ↓
COINS
  ↓
DESTRUCTIBLE OBJECTS
  ↓
CAMERA
  ↓
WEBGPU RENDER
```

This architecture allows the driving simulation, procedural world, physics, collectibles and environment effects to operate together in real time.

---

# 🌍 World Generation Flow

```text
VEHICLE POSITION
       ↓
PROCEDURAL TERRAIN
       ↓
HEIGHTFIELD
       ↓
WORLD CELLS
       ↓
ENVIRONMENT
       ↓
VEGETATION / OBJECTS
       ↓
COINS
```

As the vehicle moves, new areas are generated and distant areas are cleaned up.

---

# 🏎️ Vehicle Simulation Flow

```text
W / S
  ↓
THROTTLE
  ↓
VEHICLE CONTROLLER
  ↓
WHEEL FORCES
  ↓
SUSPENSION + FRICTION
  ↓
RIGID BODY
  ↓
TERRAIN COLLISION
  ↓
VEHICLE TRANSFORM
  ↓
3D VEHICLE MODEL
```

---

# 🪙 Progression Loop

The RPG element is built around exploration and vehicle improvement:

```text
🚗 DRIVE
   ↓
🌄 EXPLORE
   ↓
🪙 COLLECT COINS
   ↓
🛠️ BUY UPGRADES
   ↓
⚡ IMPROVE VEHICLE
   ↓
🚀 DRIVE FASTER
   ↓
🌍 EXPLORE FURTHER
```

---

# 🚀 Future Improvements

Possible future additions include:

* 🏁 Racing checkpoints
* ⏱️ Timed challenges
* 🗺️ Larger procedural regions
* 🚗 Multiple vehicles
* 🛞 More tire types
* 🔧 More upgrade categories
* 🌧️ Dynamic weather
* 🌙 Day/night cycle
* 🎮 Gamepad support
* 📱 Touch controls
* 🔊 Engine audio
* 🎵 Environmental audio
* 🏆 High-score system
* 💾 Persistent progression
* 🌐 Online leaderboards
* 👥 Multiplayer

---

# 🤝 Contributing

Contributions, improvements and experiments are welcome.

Basic workflow:

```bash
git clone <repository>
cd RPG-CAR-GAME
npx serve .
```

Make your changes, test them in a WebGPU-compatible browser, and submit a pull request.

---

# ⚠️ Disclaimer

This project is an experimental browser-based 3D driving game created for:

* 🎓 Learning
* 🧪 Experimentation
* 🎮 Game development
* 🌐 WebGPU exploration
* 🚗 Vehicle physics experimentation
* 🌄 Procedural generation
* 💻 Modern browser graphics

Performance may vary depending on the browser, GPU and device.

---

# 📜 License

This project is released under the **MIT License**.

You are free to:

* Use the project
* Study the source code
* Modify the project
* Create derivative works
* Distribute copies

See the `LICENSE` file for the complete license text.

---

# 🚗 FINAL DRIVE

```text
╔══════════════════════════════════════════════╗
║                                              ║
║             🚗  RPG CAR GAME                 ║
║                                              ║
║          🌄 EXPLORE THE TERRAIN              ║
║                                              ║
║              🚗 DRIVE                        ║
║              🚀 BOOST                        ║
║              🦘 JUMP                         ║
║              💥 CRASH                        ║
║              🪙 COLLECT                      ║
║              🛠️ UPGRADE                     ║
║              🌊 SPLASH                       ║
║                                              ║
╚══════════════════════════════════════════════╝
```

## **Drive further. Upgrade harder. Explore everything. 🚗🌄**

<p align="center">

**Made with 🚗 + Three.js WebGPU + Rapier 3D + JavaScript**

</p>
