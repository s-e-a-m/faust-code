import("stdfaust.lib");

vmeter(x)		= attach(x, envelop(x) : vbargraph("[2][unit:dB]", -70, +5));
//hmeter(x)		= attach(x, envelop(x) : hbargraph("[2][unit:dB]", -70, +5));

envelop         = abs : max ~ -(1.0/ma.SR) : max(ba.db2linear(-70)) : ba.linear2db;


time = hslider("time", 0.0, 0, 23, 0.01);

p = os.lf_sawpos(1/(time));

distance = hslider("distance", 0.5, 0, 1, 0.01);

process = vmeter, hgroup("Halaphon", sp.spat(4, p, distance));
