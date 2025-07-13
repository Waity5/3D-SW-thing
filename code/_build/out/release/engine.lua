
B=255
J=180
o=math
at=o.max
bj=o.min
sqrt=math.sqrt
bx=o.floor
pi=o.pi
D=input.getNumber
bk=input.getBool
bK=output.setBool
aU=true
au=false
bz=ipairs
abs=o.abs
bC=table.remove
aE=string
sin=o.sin
cos=o.cos
tan=o.tan
unpack=table.unpack
function V(_,a)return{(_[1]+a[1]),(_[2]+a[2])}end
function Y(_,a)return _[1]*a[2]-_[2]*a[1]end
function sub(_,a)return{(_[1]-a[1]),(_[2]-a[2])}end
function af(_,a)return{_[1]*a,_[2]*a}end
function bB(_)return((_+J)%360)-J end
function bA(_)return o.atan(_)*J/pi end
function bH(_)return o.atan(_[2],_[1])*J/pi end
function bJ(_,a,z)return bj(at(a,_),z)end
function by(_)return bx(_+.5)end
function bD(_,a)return sqrt(((_[1]-a[1])^2)+((_[2]-a[2])^2)+((_[3]-a[3])^2))end
function bt(_,a)return{_[1]+a[1],_[2]+a[2],_[3]+a[3]}end
function al(_,a)return{_[1]-a[1],_[2]-a[2],_[3]-a[3]}end
function bm(_,a)return{_[1]*a,_[2]*a,_[3]*a}end
d={}aB=1
bE=3
x=1
ae=au
b_=aU
ak=0
aA=0
w={0,0,-3}k={0,0,0}aX=62.5
aI=pi/J
aR=3/aX
aM=90*aI/aX
bh=90*aI
P=1
aA=0
function bo(bg,aK,_,a,z)aW=al(a,_)bb=al(z,_)aO=Y(aW,bb)aJ=-T(aK,aO)az=1.0/aJ
aV=al(bg,_)bc=Y(aV,aK)aH=T(bb,bc)*az
aT=-T(aW,bc)*az
ao=T(aV,aO)*az
return(aJ>=1e-6 and ao>=.0 and aH>=.0 and aT>=.0 and(aH+aT)<=1.0)end
function Y(_,a)return{_[2]*a[3]-_[3]*a[2],_[3]*a[1]-_[1]*a[3],_[1]*a[2]-_[2]*a[1]}end
function T(_,a)return _[1]*a[1]+_[2]*a[2]+_[3]*a[3]end
function bl(i)if i[1]==0 and i[2]==0 and i[3]==0 then
return{1,0,0,0}else
return{0,i[1],i[2],i[3]}end
end
function br(ah,i)local E=bi(ah,bl(i))for c=1,4 do
E[c]=ah[c]+E[c]*.5
end
return E
end
function bi(ar,aw)local ai,ad,am,ac=unpack(ar)local s,W,ab,aa=unpack(aw)return{ai*s-ad*W-am*ab-ac*aa,ai*W+ad*s+am*aa-ac*ab,ai*ab-ad*aa+am*s+ac*W,ai*aa+ad*ab-am*W+ac*s}end
function bG(ar,aw)local E={}for c=1,4 do E[c]=ar+aw end
return E
end
function av(i,aq)local N={}for e=1,3 do
j=0
for S=1,3 do
j=j+i[S]*aq[e][S]end
N[e]=j
end
return N
end
function bI(i,aq)local N={}for e=1,3 do
j=0
for S=1,3 do
j=j+i[S]*aq[S][e]end
N[e]=j
end
return N
end
function aZ(_,L)L=1/sqrt(_[1]^2+_[2]^2+_[3]^2+_[4]^2)return{_[1]*L,_[2]*L,_[3]*L,_[4]*L}end
function bv(ah)local t,q,r,p=unpack(ah)return{{1-(2*r*r+2*p*p),2*q*r+2*p*t,2*q*p-2*r*t},{2*q*r-2*p*t,1-(2*q*q+2*p*p),2*r*p+2*q*t},{2*q*p+2*r*t,2*r*p-2*q*t,1-(2*q*q+2*r*r)}}end
function httpReply(_,a,z)bF=ak//2
ak=0
end
function onTick()for e=1,1 do
if bk(32)and not ae then
ax=property.getText(aB)c=1
n=""
j=aE.sub(ax,c,c)while j~=""do
aL=aE.byte(j)if aL>64 then
n=(n..aL-65)+0
if x==1 then
aY=n
d[n]=d[n]or{}elseif x==2 then
bd=n
K=0
elseif x==3 then
ay=n
else
if K==0 then
K=bd
ay=ay-1
ap={}d[aY][#d[aY]+1]=ap
end
ap[#ap+1]=n
K=K-1
x=at(K,ay)>0 and x-1 or 0
end
x=x+1
n=""
else
n=n..j
end
c=c+1
j=aE.sub(ax,c,c)end
aB=aB+1
ae=ax==""
end
end
if ae then
aA=aA+1
if b_ then
U={1,0,0,0}for c=1,#d[1]do
d[1][c]={d[1][c],{},0}end
end
w[1]=w[1]+(D(1)*cos(k[1])-D(2)*sin(k[1]))*aR
w[3]=w[3]+(D(1)*sin(k[1])+D(2)*cos(k[1]))*aR
k[1]=k[1]-D(3)*aM
k[2]=k[2]+D(4)*aM
_=k[1]a=k[2]z=k[3]H=cos(_)A=sin(_)C=cos(a)G=sin(a)O=cos(z)I=sin(z)aP={{H*O-A*G*I,-C*I,H*G*I+O*A},{H*I+O*A*G,C*O,A*I-H*O*G},{-C*A,G,H*C}}aN={-A*C,G,H*C}aG={0,0,0}U=aZ(br(U,aG))bn=bv(aZ(U))for c=1,#d[1]do
f=d[1][c]f[2]=av(f[1],bn)for e=1,3 do
f[2][e]=f[2][e]-w[e]end
an=f[2]f[5]=sqrt(an[1]^2+an[2]^2+an[3]^2)f[3]=av(f[2],aP)f[4]={f[3][1]*P/f[3][3],-f[3][2]*P/f[3][3]}f[6]=f[3][3]>0 and 1 or-1
end
ag=au
aD=2^16
for c=1,#d[2]do
b=d[2][c]be=bo({0,0,0},aN,d[1][b[1]][2],d[1][b[2]][2],d[1][b[3]][2])if be and ao<aD then
ag=aU
aD=ao
end
end
if ag then
bp=bt(bm(aN,aD),w)R=av(al(bp,w),aP)aQ={R[1]*P/R[3],R[2]*P/R[3]}end
if true then
for c=1,#d[2]do
b=d[2][c]g=d[1][b[1]]h=d[1][b[2]]l=d[1][b[3]]ba=g[2]bf=h[2]bq=l[2]aS,aF={},{}for e=1,3 do
aS[e]=bf[e]-ba[e]aF[e]=bq[e]-ba[e]end
b[8]=Y(aS,aF)end
end
m={}for c=1,#d[2]do
b=d[2][c]g=d[1][b[1]]h=d[1][b[2]]l=d[1][b[3]]b[7]=at(g[5],h[5],l[5])_=b[8]a=g[2]if T(_,a)>0 then
M=g[6]+h[6]+l[6]if M==3 then
m[#m+1]={g[4],h[4],l[4],b[4],b[5],b[6],b[7]}elseif M>=-1 then
if g[6]==-M then
v=g[4]y=h[4]u=l[4]elseif h[6]==-M then
v=h[4]y=g[4]u=l[4]else
v=l[4]y=h[4]u=g[4]end
if M==1 then
aj=V(af(sub(y,v),1000),y)as=V(af(sub(u,v),1000),u)m[#m+1]={y,aj,u,b[4],b[5],b[6],b[7]}m[#m+1]={u,aj,as,b[4],b[5],b[6],b[7]}else
aj=V(af(sub(v,y),1000),y)as=V(af(sub(v,u),1000),u)m[#m+1]={v,aj,as,b[4],b[5],b[6],b[7]}end
end
end
end
table.sort(m,function(_,a)return _[7]>a[7]end)b_=au
end
ak=ak+1
end
function onDraw()F=screen
local bw,bs,aC,Q=F.drawTriangleF,F.drawRectF,F.setColor,F.drawText
t=F.getWidth()bu=F.getHeight()s=t/2
Z=bu/2
P=tan(bh/2)*s
aC(B,B,B)if ae then
Q(1,1,"Quaternion:")for c=1,4 do
Q(1,c*6+1,U[c])end
Q(1,37,"Monkey input:")for c=1,3 do
Q(1,c*6+37,aG[c])end
Q(100,1,ag and "YES" or "NO")for c=1,#m do
b=m[c]g=b[1]h=b[2]l=b[3]aC(b[4],b[5],b[6])bw(g[1]+s,g[2]+Z,h[1]+s,h[2]+Z,l[1]+s,l[2]+Z)end
aC(B,B,B)if ag then
X=10/R[3]bs(aQ[1]+s-(X//2),aQ[2]+Z-(X//2),X,X)end
end
end
