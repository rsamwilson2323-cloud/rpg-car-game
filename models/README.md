# Custom 3D models (optional)

This game will run fine with no files in this folder — it automatically
falls back to simple procedural car/tire shapes that are correctly sized
to match the physics.

If you have your own car model, drop these two files right here:

- `chassis.glb` — the car body
- `tire.glb` — a single wheel (it gets reused for all four)

Notes for best results:
- Model the car facing forward along -Z (the common glTF/Blender export
  convention) — the game rotates it 90° automatically to align with the
  vehicle's forward axis.
- Keep it close to real-world scale in meters (a car roughly 4-4.5m long,
  1.8m wide works well); the game applies an additional 3.3x scale on top
  of whatever size the file is, calibrated for a compact glTF export.
- Keep the file size reasonable (a few MB) so it loads quickly. Draco
  compression is supported.

If a file is missing or fails to load, the game logs a warning to the
browser console and uses the built-in fallback shape instead — it will
never crash because a model is missing.
