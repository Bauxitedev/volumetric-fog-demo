# Volumetric Fog Demo
Volumetric fog in Godot using particles.

Usually, volumetric fog is done as a post processing effect, but here's an example on how to do it with particles.

This has the following advantages:

- very easy to implement, automatically works with GI if you place a GIProbe around it
- can easily change the texture of the fog
- can easily animate the fog, can e.g. apply wind, attractors, and random movement

But it has disadvantages as well:

- it's very slow
- because the particles are billboards, rotating the camera results in the fog rotating as well, which looks weird
- only works in a small region of space, unless you parent the fog emitter to the camera (which only looks nice if the camera moves slowly)
- doesn't work if light is pointing towards the camera (since the particle normal points towards the camera as well)
- probably looks bad if the ambient/background color isn't black

----
Made with Godot 3.0 alpha1.
