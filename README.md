# Ellipse-and-Hyperbola

I was reading about the Hierarchial Clustering when I realised that one can use the elliptic curves to highlight the closeness and hyperbolic curves for separation of two given points. So, an algorithm for clustering would potentially be like following:

Fix a number λ>1 and then describing an elliptic region in the feature space(Assuming it to two-dimensional) with two closest points P1, P2 as the foci and then 2d(P1,P2)∗λ as the length of the major axis. Call this region E1
Identify a point P3 farthest away from the center C1 of E1 and with that point and the center of E1 as the foci for a hyperbola and 2d(C1,P3)/λ as the length of transverse axis of the hyperbola.
Repeat the steps 1,2 with the two foci of the ellipse represented by the center of the ellipse.
Stop when either there are k number of separation in the data.
So, the idea is still forming in my head. I will appreciate any comment on this idea and if it is looking like something that is intuitive.
