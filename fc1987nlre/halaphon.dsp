import("stdfaust.lib");

time        = hslider("time", 0.0, 0, 23, 0.01);

phasor 			= os.lf_sawpos(1/time);

distance 		= hslider("distance", 0.5, 0, 1, 0.01);

process 		= vgroup("Halaphon", sp.spat(4, angle, distance));
