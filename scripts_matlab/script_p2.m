A = [0 0 1 0;
     0 0 0 1;
     0 5.51 -18.29 -0.002;
     0 64.9 -77.53 -0.026];

B = [0;
     0;
     2.73;
     11.59];

C = eye(4);
D = zeros(4,1);

Co = ctrb(A,B);
Ob = obsv(A,C);

rang_controlabilitat = rank(Co)
rang_observabilitat = rank(Ob)

autovalors_obert = eig(A)

Q = diag([40 400 5 20]);
R = 0.08;

K = lqr(A,B,Q,R)
autovalors_tancat = eig(A-B*K)