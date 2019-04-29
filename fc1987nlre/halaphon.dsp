import("stdfaust.lib");

angle 			= os.lf_sawpos(hslider("angle",    0.0, 0, 1, 0.01));
distance 		= hslider("distance", 0.5, 0, 1, 0.01);

process 		= vgroup("Halaphon", sp.spat(4, angle, distance));
