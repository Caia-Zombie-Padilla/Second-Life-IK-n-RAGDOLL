// I'am gonna try elaborate a structure for those functions here.
//Those functions would need ANIMATION PERMITION to work.

//      INVERSE KINEMATICS
llStartKinematics(AgentKey, IK_Bone, IK_Chain, Agent_Target, IK_Target_Bone, IK_Offset Vector, IK_fade_in, IK_fade_out, IK_Speed, IK_Interpolation_mode);

llObjectKinematics(ObjectKey, IK_behavior, IK_Bone, IK_Chain, IK_Offset Vector, IK_fade_in, IK_fade_out, IK_Speed, IK_Interpolation_mode);

llStopKinematics();

key AgentKey; 		// agent's key =.=
string IK_Bone; 	// bone name that will be the IK controle, R_HAND, L_FOOT, SKULL etc..
Integer IK_chain; 	// how many bones the IK will influence down the chain
key Agent_Target; 	// either the owner or another agent
string IK_Target_Bone; // the bone that will be the target of the IK, either the owner's bone or another agent
vector IK_Offset; 	// distance of the IK from its target
float IK_Fade_in 0.0 > 1.0; 	// how fast will the agent switch from animation to IK
float IK_Fade_out 0.0 > 1.0; 	// how fast will the agent switch from animation to IK
float IK_Speed; 	// in seconds, how fast it takes for the IK to reach its target
String IK_Interpolation_Mode	// What tragetory the IK takes to its target, Direct, Linear, Sinuedal, Circular...

key ObjectKey;		// Objetcs UUID
string IK_behavior	// Nearest_Surface / Prim_Root / Prim_Chield

//      RAGDOLL FUNCTIONS

llRagDollLimited(AgentKey, [IK_Bone list], IK_Chain, Vector_Force <0,0,-9.98>, PHYSIC_STAT TRUE, Fade_in, Fade_out, Interpolation_mode); <- limited ragdoll, like, a single leg or both arms.

llRagDoll(AgentKey, Vector_Force <0,0,-9.98>, PHYSIC_STAT TRUE/FALSE, Fade_in, Fade_out, Interpolation_mode); <- Fullbody ragdoll

llRagDollCollision([IK_Bone list], float FORCE, Boolean TRUE/FALSE); <-returns if said bone have collided and with which force.


llRagDollCollPartSys([IK_Bone list],[Flags list], boolean TRUE/FALSE); <-Particle System for the colliding effect at the point of contact of the physical body.

llRagDollStop();

//      ROPE FUNCTIONS
llRope(Start Target, End Target, Vector Force, Ribbon Texture, Ribbon Thicness, Ribbon_Alpha, Ribbon_Alpha_Type, Ribbon_Alpha_Mask, Ribbon_Glow, Rope Elasticity);

llRopeSnap(float lenght); <- cuts the rope at certain lenght (0.0 at its start, 1.0 at its end)

llRopeRemove();

//      3D PARTICLES FUNCTIONS
3D particles:
ll3DParticle ([Flags List], Collision Type); <- Collision type, configures which type of collision the particle will interact with (Agent, Prim, Land, ALL)
ll3DParticleCollision ([Flags List]); <- Particle System for collision of the 3D Particles
ll3DparticleSound (Sound_UUID, Volume); 
