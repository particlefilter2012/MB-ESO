% An Example: Verification in the Absence of the Output Transformation Matrix P
clear

syms a110 a111 a120 a121 a130 a131
syms a210 a211 a220 a221 a222 a223 a230 a231 a232
syms a310 a311 a320 a321 a322 a323 a330 a331 a332
syms v11 v22 v33

A0_bar=[0 1 0 0 0 0 0 0 0;
    a110 a111 a120 a121 0 0 a130 a131 0;
    0 0 0 1 0 0 0 0 0;
    0 0 0 0 1 0 0 0 0;
    0 0 0 0 0 1 0 0 0;
    a210 a211 a220 a221 a222 a223 a230 a231 a232;
    0 0 0 0 0 0 0 1 0;
    0 0 0 0 0 0 0 0 1;
    a310 a311 a320 a321 a322 a323 a330 a331 a332];

V0=[v11 0 0;
    0 v22 0;
    0 0 v33];

E0_acute=[zeros(1,3);
    1 0 0;
    zeros(3,3);
    0 1 0;
    zeros(2,3);
    0 0 1];
A1=[A0_bar E0_acute;
    zeros(3,9) eye(3)];
E1=[zeros(9,3);
    V0];
C1=[1 0 0 0 0 0 0 0 0 0 0 0;
    0 0 1 0 0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 1 0 0 0 0 0];

S2=[C1(1,:);
C1(1,:)*A1;
C1(1,:)*A1^2;
C1(2,:);
C1(2,:)*A1;
C1(2,:)*A1^2;
C1(2,:)*A1^3;
C1(2,:)*A1^4;
C1(3,:);
C1(3,:)*A1;
C1(3,:)*A1^2;
C1(3,:)*A1^3];

A2=S2*A1/S2;
E2=S2*E1;
C2=C1/S2;



