
v=255
U=180
q=math
aH=q.max
bv=q.min
sqrt=math.sqrt
bp=q.floor
pi=q.pi
E=input.getNumber
aI=input.getBool
bE=output.setBool
bl=true
ay=false
bN=ipairs
abs=q.abs
bL=table.remove
aC=string
sin=q.sin
cos=q.cos
tan=q.tan
unpack=table.unpack
function ak(_,a)return{(_[1]+a[1]),(_[2]+a[2])}end
function V(_,a)return _[1]*a[2]-_[2]*a[1]end
function sub(_,a)return{(_[1]-a[1]),(_[2]-a[2])}end
function X(_,a)return{_[1]*a,_[2]*a}end
function bI(_)return((_+U)%360)-U end
function bM(_)return q.atan(_)*U/pi end
function bH(_)return q.atan(_[2],_[1])*U/pi end
function bF(_,a,B)return bv(aH(a,_),B)end
function bK(_)return bp(_+.5)end
function bP(_,a)return sqrt(((_[1]-a[1])^2)+((_[2]-a[2])^2)+((_[3]-a[3])^2))end
function aQ(_,a)return{_[1]+a[1],_[2]+a[2],_[3]+a[3]}end
function Z(_,a)return{_[1]-a[1],_[2]-a[2],_[3]-a[3]}end
function aw(_,a)return{_[1]*a,_[2]*a,_[3]*a}end
function ao(_)return string.format("%.3f",_ or 0)end
d={}av=1
bJ=3
A=1
ag=ay
bg=bl
aa=0
as=0
y={0,0,-3}n={0,0,0}aT=62.5
aR=pi/U
aV=3/aT
bf=90*aR/aT
bo=90*aR
P=1
as=0
function bx(bn,aY,_,a,B)bk=Z(a,_)ba=Z(B,_)aX=V(bk,ba)aS=-T(aY,aX)aB=1.0/aS
bh=Z(bn,_)bb=V(bh,aY)be=T(ba,bb)*aB
bj=-T(bk,bb)*aB
ax=T(bh,aX)*aB
return(-aS>=1e-6 and ax>=.0 and be>=.0 and bj>=.0 and(be+bj)<=1.0)end
function V(_,a)return{_[2]*a[3]-_[3]*a[2],_[3]*a[1]-_[1]*a[3],_[1]*a[2]-_[2]*a[1]}end
function T(_,a)return _[1]*a[1]+_[2]*a[2]+_[3]*a[3]end
function bu(i)if i[1]==0 and i[2]==0 and i[3]==0 then
return{1,0,0,0}else
return{0,i[1],i[2],i[3]}end
end
function bq(ad,i)local G=br(ad,bu(i))for b=1,4 do
G[b]=ad[b]+G[b]*.5
end
return G
end
function br(ar,aJ)local Y,ac,af,aj=unpack(ar)local p,ah,ae,an=unpack(aJ)return{Y*p-ac*ah-af*ae-aj*an,Y*ah+ac*p+af*an-aj*ae,Y*ae-ac*an+af*p+aj*ah,Y*an+ac*ae-af*ah+aj*p}end
function bG(ar,aJ)local G={}for b=1,4 do G[b]=ar+aJ end
return G
end
function aA(i,at)local L={}for e=1,3 do
j=0
for R=1,3 do
j=j+i[R]*at[e][R]end
L[e]=j
end
return L
end
function aW(i,at)local L={}for e=1,3 do
j=0
for R=1,3 do
j=j+i[R]*at[R][e]end
L[e]=j
end
return L
end
function aZ(_,N)N=1/sqrt(_[1]^2+_[2]^2+_[3]^2+_[4]^2)return{_[1]*N,_[2]*N,_[3]*N,_[4]*N}end
function bC(ad)local t,o,s,r=unpack(ad)return{{1-(2*s*s+2*r*r),2*o*s+2*r*t,2*o*r-2*s*t},{2*o*s-2*r*t,1-(2*o*o+2*r*r),2*s*r+2*o*t},{2*o*r+2*s*t,2*s*r-2*o*t,1-(2*o*o+2*s*s)}}end
function httpReply(_,a,B)bO=aa//2
aa=0
end
function onTick()for e=1,1 do
if aI(32)and not ag then
aG=property.getText(av)b=1
l=""
j=aC.sub(aG,b,b)while j~=""do
bi=aC.byte(j)if bi>64 then
l=(l..bi-65)+0
if A==1 then
aO=l
d[l]=d[l]or{}elseif A==2 then
bt=l
K=0
elseif A==3 then
aF=l
else
if K==0 then
K=bt
aF=aF-1
au={}d[aO][#d[aO]+1]=au
end
au[#au+1]=l
K=K-1
A=aH(K,aF)>0 and A-1 or 0
end
A=A+1
l=""
else
l=l..j
end
b=b+1
j=aC.sub(aG,b,b)end
av=av+1
ag=aG==""
end
end
if ag then
as=as+1
if bg then
ai={1,0,0,0}J={0,0,0}for b=1,#d[1]do
d[1][b]={d[1][b],{},0}end
end
y[1]=y[1]+(E(1)*cos(n[1])-E(2)*sin(n[1]))*aV
y[3]=y[3]+(E(1)*sin(n[1])+E(2)*cos(n[1]))*aV
n[1]=n[1]-E(3)*bf
n[2]=n[2]+E(4)*bf
aN=0
ap={v,v,v}if aI(1)then
aN=.001
ap={0,0,v}end
if aI(3)then
aN=-.001
ap={v,0,0}end
_=n[1]a=n[2]B=n[3]D=cos(_)C=sin(_)H=cos(a)I=sin(a)S=cos(B)O=sin(B)b_={{D*S-C*I*O,-H*O,D*I*O+S*C},{D*O+S*C*I,H*S,C*O-D*S*I},{-H*C,I,D*H}}ab={-C*H,I,D*H}ai=aZ(bq(ai,J))aw(J,.80)aL=bC(aZ(ai))for b=1,#d[1]do
f=d[1][b]f[2]=aA(f[1],aL)for e=1,3 do
f[2][e]=f[2][e]-y[e]end
az=f[2]f[5]=sqrt(az[1]^2+az[2]^2+az[3]^2)f[3]=aA(f[2],b_)f[4]={f[3][1]*P/f[3][3],-f[3][2]*P/f[3][3]}f[6]=f[3][3]>0 and 1 or-1
end
aD=ay
aE=2^16
for b=1,#d[2]do
c=d[2][b]bm=bx({0,0,0},ab,d[1][c[1]][2],d[1][c[2]][2],d[1][c[3]][2])if bm and ax<aE then
aD=bl
aE=ax
end
end
if aD then
aM=aQ(aw(ab,aE),y)by=aW(aM,aL)bB=aW(ab,aL)J=aQ(J,aw(V(aM,ab),aN))M=aA(Z(aM,y),b_)bd={M[1]*P/M[3],M[2]*P/M[3]}end
if true then
for b=1,#d[2]do
c=d[2][b]g=d[1][c[1]]h=d[1][c[2]]k=d[1][c[3]]aU=g[2]bA=h[2]bz=k[2]aP,bc={},{}for e=1,3 do
aP[e]=bA[e]-aU[e]bc[e]=bz[e]-aU[e]end
c[8]=V(aP,bc)end
end
m={}for b=1,#d[2]do
c=d[2][b]g=d[1][c[1]]h=d[1][c[2]]k=d[1][c[3]]c[7]=aH(g[5],h[5],k[5])_=c[8]a=g[2]if T(_,a)>0 then
Q=g[6]+h[6]+k[6]if Q==3 then
m[#m+1]={g[4],h[4],k[4],c[4],c[5],c[6],c[7]}elseif Q>=-1 then
if g[6]==-Q then
x=g[4]z=h[4]u=k[4]elseif h[6]==-Q then
x=h[4]z=g[4]u=k[4]else
x=k[4]z=h[4]u=g[4]end
if Q==1 then
W=ak(X(sub(z,x),1000),z)aq=ak(X(sub(u,x),1000),u)m[#m+1]={z,W,u,c[4],c[5],c[6],c[7]}m[#m+1]={u,W,aq,c[4],c[5],c[6],c[7]}else
W=ak(X(sub(x,z),1000),z)aq=ak(X(sub(x,u),1000),u)m[#m+1]={x,W,aq,c[4],c[5],c[6],c[7]}end
end
end
end
table.sort(m,function(_,a)return _[7]>a[7]end)bg=ay
end
aa=aa+1
end
function onDraw()F=screen
local bw,bD,aK,w=F.drawTriangleF,F.drawRectF,F.setColor,F.drawText
t=F.getWidth()bs=F.getHeight()p=t/2
am=bs/2
P=tan(bo/2)*p
aK(v,v,v)if ag then
w(1,1,"Orientation Quaternion:")for b=1,4 do
w(1,b*6+1,ao(ai[b]))end
w(1,37,"Rotational Velocity:")for b=1,3 do
w(1,b*6+37,ao(J[b]))end
w(1,73,"Ray col pos:")for b=1,3 do
w(1,b*6+73,ao(by[b]))end
w(1,109,"Ray dir:")for b=1,3 do
w(1,b*6+109,ao(bB[b]))end
for b=1,#m do
c=m[b]g=c[1]h=c[2]k=c[3]aK(c[4],c[5],c[6])bw(g[1]+p,g[2]+am,h[1]+p,h[2]+am,k[1]+p,k[2]+am)end
aK(unpack(ap))if aD then
al=10/M[3]bD(bd[1]+p-(al//2),bd[2]+am-(al//2),al,al)end
end
end
