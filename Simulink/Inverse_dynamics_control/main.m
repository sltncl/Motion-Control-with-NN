mdl_puma560;
p1 = p560;
p2 = SerialLink(p1);

p2.links(1).m = p2.links(1).m + 0.2;
p2.links(2).m = p2.links(2).m + 0.1;
p2.links(3).m = p2.links(3).m - 0.5;
p2.links(4).m = p2.links(4).m - 0.1;
p2.links(5).m = p2.links(5).m - 0.6;
p2.links(6).m = p2.links(6).m - 0.4;