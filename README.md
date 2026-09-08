# 🚗 TERRAIN VEHICLE 3D

> 🌍 A browser-based 3D off-road driving experience built with Three.js WebGPU, Rapier 3D physics, procedural terrain, destructible environments, dynamic biomes, particles, collectibles, and real-time vehicle tuning.

<p align="center">

**🚗 DRIVE • EXPLORE • BOOST • JUMP • CRASH • COLLECT 🌄**

</p>

<p align="center">
Drive a physics-based terrain vehicle across a procedurally generated world, explore desert and forest regions, cross water, destroy objects, collect coins, and tune almost every part of the experience in real time.
</p>

---

# 🌄 About The Game

**TERRAIN VEHICLE 3D** is a real-time browser 3D driving simulation focused on off-road exploration, physics-based vehicle movement, procedural terrain generation, environmental effects, and interactive world objects.

The world is generated dynamically around the vehicle, allowing the player to keep driving through a large terrain without loading one giant static map.

The game combines:

```text
🚗 VEHICLE PHYSICS
        +
🌄 PROCEDURAL TERRAIN
        +
🌵 MULTIPLE BIOMES
        +
💥 DESTRUCTIBLE OBJECTS
        +
🪙 COLLECTIBLES
        +
🌊 WATER EFFECTS
        +
💨 PARTICLES
        +
⚙️ LIVE SETTINGS
```

---

# 🎯 Main Objectives

* 🚗 Drive the terrain vehicle
* 🌄 Explore the procedural world
* 🏜️ Explore desert terrain
* 🌲 Explore forest terrain
* 🌊 Drive through water
* 🚀 Use boost to reach higher speeds
* 🪂 Jump across terrain
* 💥 Crash into destructible objects
* 🪙 Collect coins
* 🧭 Explore continuously generated terrain
* 🎥 Switch between follow camera and orbit camera
* ⚙️ Tune vehicle and world settings
* 📊 Monitor performance with the debug system

---

# ✨ Features

## 🚗 Physics-Based Vehicle

The vehicle uses a four-wheel physics controller powered by **Rapier 3D**.

The simulation includes:

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
* Vehicle jumping
* Vehicle flipping
* Boosting
* Collision physics

The vehicle reacts to the terrain instead of simply moving as a visual model.

---

# 🛞 Wheel & Suspension System

Each wheel is configured with independent suspension properties.

The physics system handles:

```text
Wheel Contact
     ↓
Suspension
     ↓
Friction
     ↓
Vehicle Body
     ↓
Terrain Interaction
```

Wheel settings include:

* Suspension rest length
* Suspension stiffness
* Maximum suspension force
* Suspension travel
* Suspension compression
* Suspension relaxation
* Side friction
* Tire friction slip

This provides a more physical off-road driving feel.

---

# 🚀 Boost System

The vehicle includes a boost multiplier that increases its effective driving speed.

### Boost

```text
SHIFT
```

Hold **Shift** to activate the boost.

Boost can be tuned from the Settings panel.

Default boost multiplier:

```text
2.5×
```

Boost is useful for:

* Crossing difficult terrain
* Reaching higher speeds
* Clearing jumps
* Exploring the world faster

---

# 🪂 Jump System

The vehicle can jump using:

```text
SPACE
```

Jumping uses a physics impulse rather than simply teleporting the vehicle upward.

Jump settings can be tuned in the Settings panel.

Available controls include:

* Jump force
* Jump crouch time
* Flip force

This allows the vehicle to perform airborne jumps and flips across uneven terrain.

---

# 🔄 Vehicle Reset

If the vehicle becomes stuck or falls into an unreachable area, press:

```text
R
```

The vehicle will be reset to its starting position and orientation.

The reset system also restores the vehicle's linear and angular velocity.

---

# 🌄 Procedural Terrain

The world is generated using procedural noise.

Terrain height is calculated from layered noise functions to create natural-looking elevation changes.

The terrain uses:

```text
Noise Layer 1
      +
Noise Layer 2
      +
Noise Layer 3
      ↓
Procedural Terrain Height
```

This produces:

* Hills
* Valleys
* Rolling terrain
* Dunes
* Forest elevations
* Natural terrain variation

---

# 🏜️ Desert Biome

The desert region contains flatter, rolling terrain designed to resemble dunes and dry landscapes.

The terrain system uses multiple noise layers to create variation.

Desert visuals include configurable:

* Sand colors
* Dirt colors
* Terrain transitions
* Water boundaries
* Environmental scattering

---

# 🌲 Forest Biome

The forest region uses a different terrain profile with more varied and steeper elevation.

The forest biome provides:

* Hillier terrain
* Steeper valleys
* Different ground colors
* Vegetation / environmental scattering
* A different visual atmosphere

---

# 🌈 Biome Transition

The world contains a transition between major terrain regions.

The biome system blends terrain characteristics based on the vehicle's world position.

```text
🏜️ DESERT
     ↓
  TRANSITION
     ↓
🌲 FOREST
```

This allows the world to change gradually rather than switching instantly between environments.

---

# 🌊 Water System

The terrain includes a configurable water level.

When the vehicle enters water:

* Vehicle movement is affected
* Physics behavior changes
* Water particles can appear
* Splash effects are generated
* Vehicle speed is damped

The game applies additional drag while the vehicle is below the configured water threshold.

---

# 💦 Water Splash Effects

When the vehicle drives through water at sufficient speed, splash particles are generated around contacting wheels.

Splash effects include:

* Particle emission
* Velocity spread
* Upward force
* Lifetime
* Size variation
* Drag
* Configurable colors

The splash system can be enabled or disabled through the Settings panel.

---

# 💨 Dust System

Driving across dry terrain can generate dust particles behind the wheels.

Dust emission depends on:

* Vehicle speed
* Wheel contact
* Minimum speed threshold
* Emission rate
* Particle lifetime
* Particle size
* Velocity spread
* Upward force
* Drag

The system automatically avoids normal dust emission while the vehicle is in water.

---

# 🌬️ Ambient Wind Dust

The world also contains ambient wind-driven dust particles.

These particles are spawned around the vehicle and updated continuously to create additional environmental movement.

This adds subtle motion to otherwise static terrain.

---

# 🪙 Coin Collection

Coins are scattered throughout the procedural world.

Coins have animated visual behavior:

* Floating / bobbing motion
* Continuous rotation
* Glow effect
* Collection distance
* Collection animation
* Sparkle particles

When the vehicle approaches a coin:

```text
COIN FOUND
   ↓
COLLECT
   ↓
+1 COIN
   ↓
SPARKLE EFFECT ✨
```

The collected coin count is displayed in the game HUD.

---

# 🏆 Coin System

Each collected coin increments the current coin score.

The system tracks:

```text
COINS: 000
```

Coins are generated as part of the world's procedural scatter system.

Their position and behavior are handled dynamically as the player explores.

---

# 💥 Destructible Environment

Some objects in the environment can be destroyed by vehicle collisions.

The system supports destructible objects with physics colliders.

Objects can receive damage when the vehicle hits them at sufficient speed.

```text
VEHICLE
   ↓
HIGH-SPEED COLLISION
   ↓
DAMAGE
   ↓
SHAKE
   ↓
DESTROY
   ↓
DEBRIS 💥
```

---

# 🏚️ Destructible Ruins

The environment can contain different types of ruins and structures.

Smaller destructible objects can be destroyed after a collision.

Larger ruins have multiple hit points.

Example:

```text
LARGE RUIN

HP ███
```

Repeated collisions can reduce the object's HP until it is destroyed.

---

# ❤️ Building Health

Large destructible buildings use an HP system.

When damaged:

* The building shakes
* Its HP is reduced
* A health indicator can appear
* Further impacts can damage it
* The object is eventually destroyed

This provides visible feedback when crashing into larger structures.

---

# 💥 Destruction Effects

When a destructible object is destroyed, the game can create:

* Debris
* Particles
* Impact effects
* Screen shake
* Object removal
* Physics interaction

The system limits destruction processing per frame to help maintain performance during heavy collisions.

---

# 📦 Dynamic World Scattering

Environmental objects are generated around the player's current location.

The world uses spatial cells to manage scattered objects.

This allows the game to:

* Generate objects near the vehicle
* Remove distant objects
* Limit the number of active cells
* Reuse world space efficiently
* Keep the scene responsive during exploration

---

# 🗺️ Infinite-Style Exploration

The terrain is not limited to a single small static area.

As the vehicle moves:

```text
PLAYER MOVES
     ↓
NEW TERRAIN AREA
     ↓
NEW HEIGHTFIELD
     ↓
NEW SCATTER CELLS
     ↓
OLD CELLS CLEANED
```

Terrain and environment sections are updated around the player's position.

This creates a continuous exploration experience.

---

# 🔄 Dynamic Heightfield

The physics terrain is updated around the vehicle as it travels.

A heightfield is generated from the same procedural terrain function used by the visual world.

This keeps:

```text
VISUAL TERRAIN
       ↕
PHYSICS TERRAIN
```

aligned during exploration.

---

# ⚡ Incremental Terrain Updates

Large terrain updates are divided into smaller processing steps.

The game incrementally updates:

* Ground geometry
* Heightfield data
* Scatter objects
* Environment cells

This helps avoid large frame-time spikes during world generation.

---

# 🎥 Camera System

The game includes a third-person follow camera.

The camera follows the vehicle using configurable:

* Distance
* Height
* Look height
* Smoothing
* Field of view

Default camera values provide a wide view of the vehicle and surrounding terrain.

---

# 🔭 Orbit Camera

Press:

```text
O
```

to toggle orbit controls.

Orbit mode allows the camera to rotate independently around the vehicle.

Press `O` again to return to the standard follow camera.

---

# 🐞 Debug Mode

Press:

```text
P
```

to toggle debug mode.

Debug mode can display physics-related visualization such as:

* Vehicle collision box
* Wheel debug meshes
* Debug lines

The Settings panel also provides a Debug checkbox.

---

# 📊 Performance Monitoring

The project uses **stats-gl** for performance monitoring.

The debug system can display information related to:

* FPS
* GPU performance
* Frame timing

This is useful when testing procedural terrain, particles, physics, and destructible objects.

---

# ⚙️ Real-Time Settings Panel

The game includes a custom settings interface.

The settings panel uses:

* Glass-style UI
* Backdrop blur
* Collapsible folders
* Sliders
* Checkboxes
* Color pickers
* Select controls

Press the:

```text
⚙
```

button in the top-right corner to open the settings panel.

---

# 🚗 Vehicle Settings

The **Car** settings folder provides controls for:

| Setting | Purpose |
| ------- | ------- |
| Steering | Steering response |
| Acceleration | Vehicle acceleration |
| Deceleration | Vehicle slowdown |
| Max Speed | Maximum driving speed |
| Boost | Boost multiplier |
| Jump Force | Jump strength |
| Jump Crouch | Jump preparation timing |
| Flip Force | Airborne flip force |
| Grip | Tire grip |
| Tire Lerp | Visual tire movement smoothing |

---

# 🎥 Camera Settings

The **Camera** settings folder provides:

| Setting | Purpose |
| ------- | ------- |
| Distance | Follow-camera distance |
| Height | Camera vertical position |
| Look Height | Camera target height |
| Smoothing | Camera interpolation |
| FOV | Camera field of view |

---

# 🌄 Terrain Settings

Terrain generation can be adjusted in real time.

Available settings include:

```text
Frequency
Amplitude
```

Changing these values rebuilds the terrain and heightfield.

### Frequency

Controls the scale of terrain variation.

### Amplitude

Controls the height variation of the terrain.

---

# ☀️ Lighting Settings

The lighting panel includes controls for:

* Sun azimuth
* Sun elevation
* Shadows
* Shadow resolution
* Ambient shadow color
* Ambient intensity
* Hemisphere sky color
* Hemisphere lighting

Available shadow resolutions include:

```text
512
1024
2048
4096
```

---

# 🌫️ Fog Settings

The environment includes configurable atmospheric fog.

Fog controls include:

```text
Color
Near
Far
```

Fog helps blend distant terrain into the environment and adds depth to the world.

---

# 🌊 Splash Settings

The splash system provides real-time controls for:

* Enabled
* Emission rate
* Minimum speed
* Particle size
* Size variance
* Lifetime
* Opacity
* Spread
* Velocity spread
* Upward force
* Drag
* Particle color

---

# 💨 Dust Settings

The dust system provides controls for:

* Enabled
* Emission rate
* Minimum speed
* Particle size
* Size variance
* Lifetime
* Opacity
* Spread
* Velocity spread
* Upward force
* Drag
* Primary dust color
* Secondary dust color

---

# 🪙 Coin Settings

The coin system includes configurable properties such as:

* Spawn chance
* Coin radius
* Coin height
* Primary color
* Secondary color
* Bob speed
* Bob height
* Spin speed
* Collection distance
* Glow color
* Glow size

---

# 🖥️ Loading Screen

The project includes a dedicated loading screen.

The loader displays:

```text
Loading terrain vehicle

Initializing physics…
```

and provides a progress indicator while the scene and physics system initialize.

Once the environment is ready, the loading screen smoothly fades away.

---

# 🎮 Controls

## 🖥️ Desktop

| Key / Input | Action |
| ----------- | ------ |
| `W` | Drive forward |
| `S` | Reverse / brake |
| `A` | Steer left |
| `D` | Steer right |
| `SHIFT` | Boost |
| `SPACE` | Jump |
| `R` | Reset vehicle |
| `P` | Toggle debug mode |
| `O` | Toggle orbit camera |
| `U` | Open / close upgrade shop |
| `ESC` | Close upgrade shop |
| `Mouse` | Camera interaction in orbit mode |

---

# 🛠️ Upgrade System

The project contains an upgrade-shop interface that can be opened using:

```text
U
```

The upgrade interface can be toggled while playing and closed with:

```text
U
```

or:

```text
ESC
```

---

# 🧊 Technology Stack

| Technology | Purpose |
| ---------- | ------- |
| ⚡ Three.js | 3D rendering |
| 🚀 WebGPU | Hardware-accelerated rendering |
| 🧠 Three.js TSL | GPU shader / procedural effects |
| 🧱 Rapier 3D | Vehicle and collision physics |
| 🌄 ImprovedNoise | Procedural terrain generation |
| 📊 Stats GL | Performance monitoring |
| 🎮 JavaScript | Game logic |
| 🌐 HTML5 | Application structure |
| 🎨 CSS | Interface and settings UI |
| 📦 CDN Import Maps | Browser dependency loading |

---

# 🔧 Core Technologies

## Three.js WebGPU

The project uses the WebGPU build of Three.js rather than the traditional WebGL renderer.

The application imports:

```text
three/webgpu
three/tsl
```

This enables modern GPU-accelerated rendering and shader-based effects.

---

## Rapier 3D

Physics are handled by:

```text
@dimforge/rapier3d-compat
```

Rapier is responsible for:

* Rigid bodies
* Colliders
* Vehicle controller
* Wheel physics
* Suspension
* Friction
* Collision detection
* Destructible object physics

---

## ImprovedNoise

The terrain uses Three.js's `ImprovedNoise` implementation to generate procedural height variation.

Multiple noise frequencies are combined to create different terrain characteristics.

---

# 📁 Project Structure

```text
3D-car-game/
│
├── 📄 index.html
├── 📄 README.md
├── 📄 LICENSE
└── 📄 .gitignore
```

### Main Application

```text
index.html
```

The project is intentionally compact, with the game engine, UI, physics integration, terrain generation, rendering, settings system, and gameplay logic contained in the main HTML application.

---

# 🌐 External Dependencies

The project uses browser import maps to load dependencies from CDN sources.

Main dependencies include:

```text
Three.js 0.183.1
Rapier 3D 0.14.0
Stats GL 2.4.2
```

Three.js addons used include:

```text
GLTFLoader
DRACOLoader
OrbitControls
ImprovedNoise
```

---

# ⚙️ Requirements

Before running the project, make sure you have:

* A modern web browser
* WebGPU support
* Hardware acceleration enabled
* Internet connection for CDN dependencies

Recommended:

```text
Modern Chrome / Chromium-based browser
WebGPU-capable GPU
Hardware acceleration enabled
```

---

# 🚀 Installation

Clone the repository:

```bash
git clone https://github.com/rsamwilson2323-cloud/3D-car-game.git
```

Enter the project directory:

```bash
cd 3D-car-game
```

The project does not require a traditional `npm install` workflow for its main dependencies because the browser loads them through import maps and CDN modules.

---

# ▶️ Run The Game

Because the project uses ES modules and browser imports, running it through a local web server is recommended.

Using `npx`:

```bash
npx serve .
```

Then open the local address shown by the server.

A typical address is:

```text
http://localhost:3000
```

---

# 🌐 Alternative Local Server

If Python is installed:

```bash
python -m http.server 8000
```

Then open:

```text
http://localhost:8000
```

---

# 🪟 Windows Quick Start

Open Command Prompt inside the project folder:

```bash
cd 3D-car-game
npx serve .
```

Then open the URL shown in the terminal.

---

# 📱 Mobile / Touch Devices

The current project is primarily designed around keyboard-based vehicle controls.

The main driving controls are:

```text
W A S D
SHIFT
SPACE
R
P
O
U
```

A desktop or laptop keyboard is recommended for the full experience.

---

# 🧠 Performance

The project includes several systems designed to manage a large procedural world.

### Terrain

* Incremental terrain generation
* Dynamic heightfield rebuilding
* Spatial terrain updates

### World Objects

* Cell-based scatter management
* Distant cell cleanup
* Limited active scatter range

### Physics

* Fixed timestep vehicle updates
* Rapier vehicle controller
* Controlled collision processing

### Particles

* Dust particles
* Splash particles
* Wind particles
* Debris particles

### Rendering

* Three.js WebGPU
* GPU shader calculations
* Dynamic lighting
* Configurable shadow resolution

---

# 🧹 Dynamic Resource Management

The game continuously manages objects around the player.

As the vehicle moves:

```text
NEW AREA
   ↓
GENERATE
   ↓
UPDATE
   ↓
PLAYER MOVES
   ↓
DISTANT AREA
   ↓
CLEAN UP
```

This prevents the world from endlessly accumulating objects during exploration.

---

# 🐛 Troubleshooting

## ❌ Blank Screen

Make sure the project is being served through a local HTTP server.

Do not rely on simply double-clicking the HTML file if your browser blocks module or CDN behavior.

Try:

```bash
npx serve .
```

---

## ❌ WebGPU Not Available

Make sure:

* Your browser is updated
* Hardware acceleration is enabled
* Your GPU supports WebGPU
* You are using a WebGPU-compatible browser

---

## ❌ Physics Does Not Load

Check the browser console:

```text
F12 → Console
```

Make sure the Rapier CDN module can be reached.

An active internet connection is required for the external CDN dependencies.

---

## ❌ Terrain Looks Incorrect

Try opening the Settings panel and adjusting:

```text
Terrain
→ Frequency
→ Amplitude
```

Changing these values rebuilds the procedural terrain.

---

## ❌ Low FPS

Try reducing:

```text
Shadow Resolution
```

and disabling unnecessary effects such as:

```text
Dust
Splash
Debug
```

You can also reduce the terrain complexity through the terrain settings.

---

## ❌ Vehicle Is Stuck

Press:

```text
R
```

to reset the vehicle.

---

# 🔬 Technical Architecture

The game loop combines several systems every frame.

```text
INPUT
  ↓
VEHICLE CONTROL
  ↓
RAPIER PHYSICS
  ↓
WHEEL / SUSPENSION UPDATE
  ↓
TERRAIN UPDATE
  ↓
SCATTER UPDATE
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

---

# 🏎️ Vehicle Simulation Flow

```text
W / S
  ↓
Throttle
  ↓
Vehicle Controller
  ↓
Wheel Forces
  ↓
Suspension + Friction
  ↓
Rigid Body
  ↓
Terrain Collision
  ↓
Vehicle Transform
  ↓
Visual Car Model
```

---

# 💥 Collision System

High-speed collisions are detected against registered destructible objects.

The system:

1. Checks vehicle speed
2. Finds contact pairs
3. Identifies destructible objects
4. Applies collision damage
5. Updates object HP
6. Triggers shaking
7. Destroys the object when HP reaches zero
8. Generates destruction effects

---

# 🌍 World Generation Flow

```text
VEHICLE POSITION
       ↓
GROUND SNAP
       ↓
PROCEDURAL TERRAIN
       ↓
HEIGHTFIELD
       ↓
SCATTER CELLS
       ↓
ENVIRONMENT OBJECTS
       ↓
COINS / RUINS / VEGETATION
```

---

# 🪙 Collectible Flow

```text
COIN SPAWN
    ↓
BOB + ROTATE
    ↓
PLAYER APPROACHES
    ↓
COLLECTION DISTANCE
    ↓
COIN SCORE +1
    ↓
COLLECT ANIMATION
    ↓
SPARKLE EFFECT
    ↓
REMOVE COIN
```

---

# 🎨 Visual Style

The game uses a naturalistic off-road environment rather than a neon arcade aesthetic.

The visual design focuses on:

* 🏜️ Warm desert colors
* 🌲 Natural forest colors
* 🌊 Blue water
* 🌫️ Atmospheric fog
* ☀️ Directional sunlight
* 🌄 Large terrain silhouettes
* 💨 Environmental particles
* 🏚️ Scattered ruins
* 🪙 Glowing collectible coins

---

# 🔭 Camera Experience

The default camera follows the vehicle from behind and above.

```text
             CAMERA
                📷
                 \
                  \
                   🚗
                  /  \
             🌄 TERRAIN
```

The camera smoothly interpolates toward the desired position, producing a less rigid follow effect.

Orbit mode provides an alternative way to inspect the vehicle and environment.

---

# 🧪 Experimental Nature

This project is designed as an experimental browser-based 3D vehicle simulation.

It demonstrates how modern web technologies can be combined to create:

```text
WEBGPU
   +
PHYSICS
   +
PROCEDURAL GENERATION
   +
PARTICLES
   +
DESTRUCTIBLE OBJECTS
   +
REAL-TIME SETTINGS
```

---

# 🚀 Future Improvements

Potential future additions include:

* 🏁 Racing checkpoints
* 🏆 Timed races
* 🗺️ Larger world maps
* 🚗 Multiple vehicles
* 🔧 More vehicle upgrades
* 🛞 More tire types
* 🌧️ Dynamic weather
* 🌙 Day/night cycle
* 🌲 More environmental objects
* 🏚️ More destructible structures
* 🪙 Persistent coin collection
* 🏆 High-score system
* 🎮 Gamepad support
* 📱 Touch controls
* 🔊 Engine audio
* 🎵 Environmental sound
* 🚦 Race tracks
* 🏁 Lap system
* 👥 Multiplayer
* 🌐 Online leaderboards
* 💾 Save-game support

---

# 🤝 Contributing

Contributions and improvements are welcome.

### Basic workflow

```bash
git clone https://github.com/rsamwilson2323-cloud/3D-car-game.git

cd 3D-car-game

npx serve .
```

Create your changes, test them in a WebGPU-compatible browser, and submit a pull request.

---

# 🚫 Git Ignore

Generated files and local dependencies should not be committed.

The repository ignores:

```text
node_modules
dist
.DS_Store
```

---

# ⚠️ Disclaimer

This project is intended for:

* 🎓 Educational purposes
* 🧪 Experimental development
* 🎮 Game development learning
* 🌐 WebGPU experimentation
* 🚗 Vehicle physics experimentation
* 🌄 Procedural world generation
* 🎨 Creative 3D development

The project is a browser-based experimental driving experience.

---

# 📜 License

This project is released under the **MIT License**.

You are free to:

* ✅ Use the project
* ✅ Study the source code
* ✅ Modify the project
* ✅ Create derivative works
* ✅ Distribute copies
* ✅ Use it for personal or educational projects

---

# 🚗 FINAL DRIVE

```text
╔════════════════════════════════════════════╗
║                                            ║
║          🚗  T E R R A I N                 ║
║              V E H I C L E                 ║
║                                            ║
║          🌄 EXPLORE THE WORLD              ║
║                                            ║
║              🚗 DRIVE                      ║
║              🚀 BOOST                      ║
║              🪂 JUMP                       ║
║              💥 CRASH                      ║
║              🪙 COLLECT                    ║
║              🌊 SPLASH                     ║
║              🌲 EXPLORE                    ║
║                                            ║
╚════════════════════════════════════════════╝
```

## 🚗 Start the engine.

## 🌄 Explore the terrain.

## 🚀 Push the limits.

## 💥 Leave your mark.

---

<p align="center">

**Made with 🚗 + 🌄 + Three.js WebGPU + Rapier 3D**

</p>

<p align="center">

**Repository:**  
https://github.com/rsamwilson2323-cloud/TERRAIN-VEHICLE-3D.git

</p>
