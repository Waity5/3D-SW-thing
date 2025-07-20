
I=255
O=.5
J=math
bW=J.max
cI=J.min
sqrt=math.sqrt
cE=J.floor
pi=J.pi
ah=input.getNumber
az=input.getBool
cH=output.setBool
aD=true
aN=false
bk=ipairs
abs=J.abs
bm=table.remove
aZ=string
sin=J.sin
cos=J.cos
tan=J.tan
unpack=table.unpack
bS=math.huge
function aK(_,a)return{(_[1]+a[1]),(_[2]+a[2])}end
function sub(_,a)return{(_[1]-a[1]),(_[2]-a[2])}end
function aE(_,a)return{_[1]*a,_[2]*a}end
function u(_,a)return{_[1]+a[1],_[2]+a[2],_[3]+a[3]}end
function h(_,a)return{_[1]-a[1],_[2]-a[2],_[3]-a[3]}end
function e(_,a)return{_[1]*a,_[2]*a,_[3]*a}end
function ba(_,a,j)return k(h(a,_),h(j,_))end
function bo(_)return e(_,1/sqrt(_[1]^2+_[2]^2+_[3]^2))end
r={}bf=1
cA=3
U=1
aF=aN
bT=aD
aA=0
bh=0
Q={0,0,-3}w={0,0,0}bX=62.5
bA=pi/180
bp=3/bX
bu=90*bA/bX
ct=90*bA
ao=1
bh=0
bl=1/62.5
function aV(b,ck,bt)cb=h(ck,b[1])b[5]=u(b[5],e(k(cb,bt),b[11]))b[2]=u(b[2],e(bt,b[10]))end
function aj(cp,n)local W=-bS
for d,l in bk(cp)do
ai=g(l[2],n)if abs(ai-W)<.0001 then
aQ[#aQ+1]=l[2]elseif ai>W then
bD=l[2]aQ={bD}W=ai
end
end
return bD
end
function cy(bJ,bn)n={1,0,0}x={}while aD do
f=h(aj(bJ,n),aj(bn,e(n,-1)))if g(f,n)<=0 then
return
end
x={f,x[1],x[2],x[3]}local _,a,j,Z=unpack(x)if Z then
C=h(a,_)T=h(j,_)bH=h(Z,_)p=e(_,-1)S=k(C,T)cw=k(T,bH)cn=k(bH,C)if g(S,p)>0 then
aM(_,a,j)elseif g(cw,p)>0 then
aM(_,j,Z)elseif g(cn,p)>0 then
aM(_,Z,a)else
P={{_,a,j},{_,j,Z},{_,Z,a},{a,Z,j}}for d,l in ipairs(P)do
l[4]=bo(ba(l[1],l[2],l[3]))end
for cG=1,32 do
W=bS
for d,l in ipairs(P)do
ai=g(l[1],l[4])if ai<W then
W=ai
bY=l
end
end
n=bY[4]f=h(aj(bJ,n),aj(bn,e(n,-1)))if g(f,n)-.0001<=W then
return{bY[4],g(f,n)}end
al={}for d=#P,1,-1 do
aw=P[d]if g(aw[4],h(f,aw[1]))>0 then
for i=1,3 do
at={aw[i],aw[(i%3)+1]}for aG,bC in ipairs(al)do
if bC[1]==at[2]and bC[2]==at[1]then
bm(al,aG)at=cC
break
end
end
if at then
al[#al+1]=at
end
end
bm(P,d)end
end
for d,l in ipairs(al)do
ap={l[1],l[2],f}ap[4]=bo(ba(ap[1],ap[2],ap[3]))P[#P+1]=ap
end
end
return
end
elseif j then
aM(_,a,j)elseif a then
ci(_,a)else
x={_}n=e(_,-1)end
end
end
function aM(_,a,j)C=h(a,_)T=h(j,_)p=e(_,-1)S=k(C,T)if g(k(S,T),p)>0 then
x={_,j}n=k(k(T,p),T)elseif g(k(C,S),p)>0 then
x={_,a}n=k(k(C,p),C)else
if g(S,p)>0 then
x={_,a,j}n=S;
else
x={_,j,a}cF=e(S,-1)end
end
end
function ci(_,a)C=h(a,_)p=e(_,-1)if g(C,p)>0 then
n=k(k(C,p),C)else
x={_}n=p
end
end
function ax(M,z)z=z or{}bE={}i=1
for d=r[1][M][1],r[1][M][2]do
m=r[2][d]bE[i]={{m[1],m[2],m[3]},{}}i=i+1
end
bP={}i=1
for d=r[1][M][3],r[1][M][4]do
m=r[3][d]bP[i]=m
i=i+1
end
bv={}i=1
for d=r[1][M][5],r[1][M][6]do
m=r[2][d]bv[i]={{m[1],m[2],m[3]},{}}i=i+1
end
cz={z[1]or{0,0,0},z[2]or{0,0,0},z[3]or{0,0,0},z[4]or{1,0,0,0},z[5]or{0,0,0},z[6]or{0,0,0},bE,bP,bv,z[7]or 1,z[8]or 1,z[9]or{0,0,0}}ab[#ab+1]=cz
end
function cv(cj,by,_,a,j)bQ=h(a,_)bO=h(j,_)bz=k(bQ,bO)bx=-g(by,bz)aU=1.0/bx
bR=h(cj,_)bG=k(bR,by)bU=g(bO,bG)*aU
l=-g(bQ,bG)*aU
b_=g(bR,bz)*aU
return(-bx>=1e-6 and b_>=.0 and bU>=.0 and l>=.0 and(bU+l)<=1.0)end
function k(_,a)return{_[2]*a[3]-_[3]*a[2],_[3]*a[1]-_[1]*a[3],_[1]*a[2]-_[2]*a[1]}end
function g(_,a)return _[1]*a[1]+_[2]*a[2]+_[3]*a[3]end
function cc(F)if F[1]==0 and F[2]==0 and F[3]==0 then
return{1,0,0,0}else
return{0,F[1],F[2],F[3]}end
end
function cu(aL,F)local bb=ce(aL,cc(F))for d=1,4 do
bb[d]=aL[d]+bb[d]*O
end
return bb
end
function ce(ca,cg)local aC,ay,aI,av=unpack(ca)local o,au,aO,aJ=unpack(cg)return{aC*o-ay*au-aI*aO-av*aJ,aC*au+ay*o+aI*aJ-av*aO,aC*aO-ay*aJ+aI*o+av*au,aC*aJ+ay*aO-aI*au+av*o}end
function bi(F,cd)local bV={}for i=1,3 do
m=0
for aG=1,3 do
m=m+F[aG]*cd[i][aG]end
bV[i]=m
end
return bV
end
function bF(_,as)as=1/sqrt(_[1]^2+_[2]^2+_[3]^2+_[4]^2)return{_[1]*as,_[2]*as,_[3]*as,_[4]*as}end
function cm(aL)local K,D,E,G=unpack(aL)return{{1-(2*E*E+2*G*G),2*D*E+2*G*K,2*D*G-2*E*K},{2*D*E-2*G*K,1-(2*D*D+2*G*G),2*E*G+2*D*K},{2*D*G+2*E*K,2*E*G-2*D*K,1-(2*D*D+2*E*E)}}end
function httpReply(_,a,j)cD=aA//2
aA=0
end
function onTick()for i=1,1 do
if az(32)and not aF then
bc=property.getText(bf)d=1
v=""
m=aZ.sub(bc,d,d)while m~=""do
bB=aZ.byte(m)if bB>64 then
v=(v..bB-65)+0
if U==1 then
bw=v
r[v]=r[v]or{}elseif U==2 then
cf=v
aq=0
elseif U==3 then
bd=v
else
if aq==0 then
aq=cf
bd=bd-1
aW={}r[bw][#r[bw]+1]=aW
end
aW[#aW+1]=v
aq=aq-1
U=bW(aq,bd)>0 and U-1 or 0
end
U=U+1
v=""
else
v=v..m
end
d=d+1
m=aZ.sub(bc,d,d)end
bf=bf+1
aF=bc==""
end
end
if aF then
bh=bh+1
if bT then
ab={}ax(2)ax(1,{[1]={3,0,0}})ax(2,{[1]={-5,0,0}})ax(4,{[1]={0,-5,0},[7]=0,[8]=0})end
Q[1]=Q[1]+(ah(1)*cos(w[1])-ah(2)*sin(w[1]))*bp
Q[3]=Q[3]+(ah(1)*sin(w[1])+ah(2)*cos(w[1]))*bp
w[1]=w[1]-ah(3)*bu
w[2]=w[2]+ah(4)*bu
aY=0
aS={I,I,I}if az(1)then
aY=-.1
aS={0,0,I}end
if az(3)then
aY=.1
aS={I,0,0}end
_=w[1]a=w[2]j=w[3]ae=cos(_)ad=sin(_)ac=cos(a)ag=sin(a)ar=cos(j)ak=sin(j)br={{ae*ar-ad*ag*ak,-ac*ak,ae*ag*ak+ar*ad},{ae*ak+ar*ad*ag,ac*ar,ad*ak-ae*ar*ag},{-ac*ad,ag,ae*ac}}bg={-ad*ac,ag,ae*ac}bI=aN
t={}for M=1,#ab do
b=ab[M]b[4]=bF(cu(b[4],e(b[5],-bl)))b[1]=u(b[1],e(b[2],bl))b[2]=u(b[2],e(b[3],bl))b[3]=e(b[12],1)b[2]=e(b[2],.995)b[5]=e(b[5],.995)cl=cm(bF(b[4]))for d=7,9,2 do
for i=1,#b[d]do
f=b[d][i]f[2]=bi(f[1],cl)f[2]=u(f[2],b[1])f[3]=h(f[2],Q)f[4]=bi(f[3],br)aX=f[3]f[7]=sqrt(aX[1]^2+aX[2]^2+aX[3]^2)f[5]={f[4][1]*ao/f[4][3],-f[4][2]*ao/f[4][3]}f[6]=f[4][3]>0 and 1 or-1
end
end
bM=aN
aT=2^16
for d=1,#b[8]do
c=b[8][d]ch=cv({0,0,0},bg,b[7][c[1]][3],b[7][c[2]][3],b[7][c[3]][3])if ch and b_<aT then
bM=aD
aT=b_
end
end
if bM then
bI=aD
bK=u(e(bg,aT),Q)aV(b,bK,e(bg,aY))if az(2)then
b[12]={0,-9.81,0}end
am=bi(h(bK,Q),br)bL={am[1]*ao/am[3],am[2]*ao/am[3]}end
if b[11]>0 or not b[8][1][8]then
for d=1,#b[8]do
c=b[8][d]c[8]=ba(b[7][c[1]][2],b[7][c[2]][2],b[7][c[3]][2])end
end
for d=1,#b[8]do
c=b[8][d]q=b[7][c[1]]s=b[7][c[2]]y=b[7][c[3]]c[7]=bW(q[7],s[7],y[7])_=c[8]a=q[3]if g(_,a)>0 then
an=q[6]+s[6]+y[6]if an==3 then
t[#t+1]={q[5],s[5],y[5],c[4],c[5],c[6],c[7]}elseif an>=-1 then
if q[6]==-an then
R=q[5]aa=s[5]N=y[5]elseif s[6]==-an then
R=s[5]aa=q[5]N=y[5]else
R=y[5]aa=s[5]N=q[5]end
if an==1 then
aB=aK(aE(sub(aa,R),1000),aa)aR=aK(aE(sub(N,R),1000),N)t[#t+1]={aa,aB,N,c[4],c[5],c[6],c[7]}t[#t+1]={N,aB,aR,c[4],c[5],c[6],c[7]}else
aB=aK(aE(sub(R,aa),1000),aa)aR=aK(aE(sub(R,N),1000),N)t[#t+1]={R,aB,aR,c[4],c[5],c[6],c[7]}end
end
end
end
end
for d,A in bk(ab)do
for i,B in bk(ab)do
if d~=i then
H=cy(A[9],B[9])if H then
aj(A[9],H[1])L=aQ
aj(B[9],e(H[1],-1))af=aQ
if#L==1 then
X=L[1]elseif#af==1 then
X=af[1]elseif#L==2 and#af==2 then
bj=h(L[2],L[1])bs=h(af[2],af[1])bq=k(bs,k(bj,bs))X=u(L[1],e(bj,g(h(af[1],L[1]),bq)/g(bj,bq)))else
X=L[1]end
cx=u(k(A[5],h(X,A[1])),A[2])co=u(k(B[5],h(X,B[1])),B[2])bN=g(H[1],cx)+g(H[1],e(co,-1))if bN>0 then
be=A[10]+B[10]bZ=e(H[1],bN*(O-.25*(abs(A[10]-B[10])/be)))aV(A,X,e(bZ,-1))aV(B,X,bZ)A[1]=u(A[1],e(H[1],-H[2]*A[10]/be))B[1]=u(B[1],e(H[1],H[2]*B[10]/be))end
end
end
end
end
table.sort(t,function(_,a)return _[7]>a[7]end)bT=aN
end
aA=aA+1
end
function onDraw()V=screen
local cq,c_,cr,aP,cB=V.drawTriangleF,V.drawTriangle,V.drawRectF,V.setColor,V.drawText
K=V.getWidth()cs=V.getHeight()o=K/2
Y=cs/2
ao=tan(ct/2)*o
aP(I,I,I)if aF then
for d=1,#t do
c=t[d]q=c[1]s=c[2]y=c[3]aP(c[4],c[5],c[6])cq(q[1]+o,q[2]+Y,s[1]+o,s[2]+Y,y[1]+o,y[2]+Y)aP(c[4]*O,c[5]*O,c[6]*O)c_(q[1]+o,q[2]+Y-O,s[1]+o,s[2]+Y-O,y[1]+o,y[2]+Y-O)end
aP(unpack(aS))if bI then
aH=10/am[3]cr(bL[1]+o-(aH//2),bL[2]+Y-(aH//2),aH,aH)end
end
end
