
w=255
M=180
q=math
aI=q.max
bD=q.min
sqrt=math.sqrt
br=q.floor
pi=q.pi
G=input.getNumber
aL=input.getBool
bO=output.setBool
ay=true
ac=false
bJ=ipairs
abs=q.abs
bI=table.remove
au=string
sin=q.sin
cos=q.cos
tan=q.tan
unpack=table.unpack
function ah(_,a)return{(_[1]+a[1]),(_[2]+a[2])}end
function L(_,a)return _[1]*a[2]-_[2]*a[1]end
function sub(_,a)return{(_[1]-a[1]),(_[2]-a[2])}end
function X(_,a)return{_[1]*a,_[2]*a}end
function bP(_)return((_+M)%360)-M end
function bS(_)return q.atan(_)*M/pi end
function bL(_)return q.atan(_[2],_[1])*M/pi end
function bV(_,a,B)return bD(aI(a,_),B)end
function bR(_)return br(_+.5)end
function bK(_,a)return sqrt(((_[1]-a[1])^2)+((_[2]-a[2])^2)+((_[3]-a[3])^2))end
function be(_,a)return{_[1]+a[1],_[2]+a[2],_[3]+a[3]}end
function P(_,a)return{_[1]-a[1],_[2]-a[2],_[3]-a[3]}end
function aA(_,a)return{_[1]*a,_[2]*a,_[3]*a}end
function bM(_)return string.format("%.3f",_ or 0)end
t={}av=1
bT=3
A=1
al=ac
aP=ay
af=0
aB=0
y={0,0,-3}n={0,0,0}aT=62.5
aY=pi/M
b_=3/aT
aS=90*aY/aT
bx=90*aY
T=1
aB=0
function bn(ad,x)bb={}x=x or{}e=1
for d=t[1][ad][1],t[1][ad][2]do
f=t[2][d]bb[e]={{f[1],f[2],f[3]},{}}e=e+1
end
bd={}e=1
for d=t[1][1][3],t[1][1][4]do
f=t[3][d]bd[e]=f
e=e+1
end
bp={x[1]or{0,0,0},x[2]or{0,0,0},x[3]or{0,0,0},x[4]or{1,0,0,0},x[5]or{0,0,0},x[6]or{0,0,0},bb,bd}an[#an+1]=bp
end
function bC(bs,aR,_,a,B)aN=P(a,_)bj=P(B,_)aM=L(aN,bj)bh=-K(aR,aM)ap=1.0/bh
bl=P(bs,_)bg=L(bl,aR)ba=K(bj,bg)*ap
bk=-K(aN,bg)*ap
ar=K(bl,aM)*ap
return(-bh>=1e-6 and ar>=.0 and ba>=.0 and bk>=.0 and(ba+bk)<=1.0)end
function L(_,a)return{_[2]*a[3]-_[3]*a[2],_[3]*a[1]-_[1]*a[3],_[1]*a[2]-_[2]*a[1]}end
function K(_,a)return _[1]*a[1]+_[2]*a[2]+_[3]*a[3]end
function bw(j)if j[1]==0 and j[2]==0 and j[3]==0 then
return{1,0,0,0}else
return{0,j[1],j[2],j[3]}end
end
function bE(aa,j)local E=bv(aa,bw(j))for d=1,4 do
E[d]=aa[d]+E[d]*.5
end
return E
end
function bv(az,aH)local am,aj,ae,ak=unpack(az)local o,ab,ai,ao=unpack(aH)return{am*o-aj*ab-ae*ai-ak*ao,am*ab+aj*o+ae*ao-ak*ai,am*ai-aj*ao+ae*o+ak*ab,am*ao+aj*ai-ae*ab+ak*o}end
function bN(az,aH)local E={}for d=1,4 do E[d]=az+aH end
return E
end
function aJ(j,aw)local U={}for e=1,3 do
f=0
for R=1,3 do
f=f+j[R]*aw[e][R]end
U[e]=f
end
return U
end
function bQ(j,aw)local U={}for e=1,3 do
f=0
for R=1,3 do
f=f+j[R]*aw[R][e]end
U[e]=f
end
return U
end
function bm(_,V)V=1/sqrt(_[1]^2+_[2]^2+_[3]^2+_[4]^2)return{_[1]*V,_[2]*V,_[3]*V,_[4]*V}end
function bu(aa)local v,p,s,r=unpack(aa)return{{1-(2*s*s+2*r*r),2*p*s+2*r*v,2*p*r-2*s*v},{2*p*s-2*r*v,1-(2*p*p+2*r*r),2*s*r+2*p*v},{2*p*r+2*s*v,2*s*r-2*p*v,1-(2*p*p+2*s*s)}}end
function httpReply(_,a,B)bU=af//2
af=0
end
function onTick()for e=1,1 do
if aL(32)and not al then
ax=property.getText(av)d=1
l=""
f=au.sub(ax,d,d)while f~=""do
bc=au.byte(f)if bc>64 then
l=(l..bc-65)+0
if A==1 then
aX=l
t[l]=t[l]or{}elseif A==2 then
bt=l
O=0
elseif A==3 then
at=l
else
if O==0 then
O=bt
at=at-1
aF={}t[aX][#t[aX]+1]=aF
end
aF[#aF+1]=l
O=O-1
A=aI(O,at)>0 and A-1 or 0
end
A=A+1
l=""
else
l=l..f
end
d=d+1
f=au.sub(ax,d,d)end
av=av+1
al=ax==""
end
end
if al then
aB=aB+1
if aP then
an={}bn(1)bn(1,{[1]={3,0,0}})end
y[1]=y[1]+(G(1)*cos(n[1])-G(2)*sin(n[1]))*b_
y[3]=y[3]+(G(1)*sin(n[1])+G(2)*cos(n[1]))*b_
n[1]=n[1]-G(3)*aS
n[2]=n[2]+G(4)*aS
aD=0
aE={w,w,w}if aL(1)then
aD=.001
aE={0,0,w}end
if aL(3)then
aD=-.001
aE={w,0,0}end
_=n[1]a=n[2]B=n[3]F=cos(_)J=sin(_)D=cos(a)H=sin(a)Q=cos(B)S=sin(B)aW={{F*Q-J*H*S,-D*S,F*H*S+Q*J},{F*S+Q*J*H,D*Q,J*S-F*Q*H},{-D*J,H,F*D}}aq={-J*D,H,F*D}aQ=ac
k={}for ad=1,#an do
c=an[ad]c[4]=bm(bE(c[4],c[5]))c[5]=aA(c[5],.995)bz=bu(bm(c[4]))for d=1,#c[7]do
g=c[7][d]g[2]=aJ(g[1],bz)for e=1,3 do
g[2][e]=g[2][e]-y[e]+c[1][e]end
aG=g[2]g[5]=sqrt(aG[1]^2+aG[2]^2+aG[3]^2)g[3]=aJ(g[2],aW)g[4]={g[3][1]*T/g[3][3],-g[3][2]*T/g[3][3]}g[6]=g[3][3]>0 and 1 or-1
end
aZ=ac
aC=2^16
for d=1,#c[8]do
b=c[8][d]bF=bC({0,0,0},aq,c[7][b[1]][2],c[7][b[2]][2],c[7][b[3]][2])if bF and ar<aC then
aZ=ay
aC=ar
end
end
if aZ then
aQ=ay
aU=be(aA(aq,aC),y)bq=P(aU,c[1])c[5]=be(c[5],aA(L(bq,aq),aD))N=aJ(P(aU,y),aW)bf={N[1]*T/N[3],N[2]*T/N[3]}end
if true then
for d=1,#c[8]do
b=c[8][d]h=c[7][b[1]]i=c[7][b[2]]m=c[7][b[3]]aV=h[2]by=i[2]bB=m[2]bi,aO={},{}for e=1,3 do
bi[e]=by[e]-aV[e]aO[e]=bB[e]-aV[e]end
b[8]=L(bi,aO)end
end
for d=1,#c[8]do
b=c[8][d]h=c[7][b[1]]i=c[7][b[2]]m=c[7][b[3]]b[7]=aI(h[5],i[5],m[5])_=b[8]a=h[2]if K(_,a)>0 then
W=h[6]+i[6]+m[6]if W==3 then
k[#k+1]={h[4],i[4],m[4],b[4],b[5],b[6],b[7]}elseif W>=-1 then
if h[6]==-W then
C=h[4]z=i[4]u=m[4]elseif i[6]==-W then
C=i[4]z=h[4]u=m[4]else
C=m[4]z=i[4]u=h[4]end
if W==1 then
ag=ah(X(sub(z,C),1000),z)aK=ah(X(sub(u,C),1000),u)k[#k+1]={z,ag,u,b[4],b[5],b[6],b[7]}k[#k+1]={u,ag,aK,b[4],b[5],b[6],b[7]}else
ag=ah(X(sub(C,z),1000),z)aK=ah(X(sub(C,u),1000),u)k[#k+1]={C,ag,aK,b[4],b[5],b[6],b[7]}end
end
end
end
end
table.sort(k,function(_,a)return _[7]>a[7]end)aP=ac
end
af=af+1
end
function onDraw()I=screen
local bA,bG,as,bH=I.drawTriangleF,I.drawRectF,I.setColor,I.drawText
v=I.getWidth()bo=I.getHeight()o=v/2
Z=bo/2
T=tan(bx/2)*o
as(w,w,w)if al then
for d=1,#k do
b=k[d]h=b[1]i=b[2]m=b[3]as(b[4],b[5],b[6])bA(h[1]+o,h[2]+Z,i[1]+o,i[2]+Z,m[1]+o,m[2]+Z)end
as(unpack(aE))if aQ then
Y=10/N[3]bG(bf[1]+o-(Y//2),bf[2]+Z-(Y//2),Y,Y)end
end
end
