
E=255
K=.5
au=180
G=math
bf=G.max
cu=G.min
sqrt=math.sqrt
cC=G.floor
pi=G.pi
ah=input.getNumber
am=input.getBool
cX=output.setBool
aN=true
aC=false
bl=ipairs
abs=G.abs
cb=table.remove
bi=string
sin=G.sin
cos=G.cos
tan=G.tan
unpack=table.unpack
cd=math.huge
function aQ(_,a)return{(_[1]+a[1]),(_[2]+a[2])}end
function l(_,a)return _[1]*a[2]-_[2]*a[1]end
function sub(_,a)return{(_[1]-a[1]),(_[2]-a[2])}end
function aA(_,a)return{_[1]*a,_[2]*a}end
function cL(_)return((_+au)%360)-au end
function cT(_)return G.atan(_)*au/pi end
function cI(_)return G.atan(_[2],_[1])*au/pi end
function cV(_,a,i)return cu(bf(a,_),i)end
function cM(_)return cC(_+K)end
function cJ(_,a)return sqrt(((_[1]-a[1])^2)+((_[2]-a[2])^2)+((_[3]-a[3])^2))end
function A(_,a)return{_[1]+a[1],_[2]+a[2],_[3]+a[3]}end
function k(_,a)return{_[1]-a[1],_[2]-a[2],_[3]-a[3]}end
function h(_,a)return{_[1]*a,_[2]*a,_[3]*a}end
function cN(_)return string.format("%.3f",_ or 0)end
function bX(_,a,i)return l(k(a,_),k(i,_))end
function bN(_)return h(_,1/sqrt(_[1]^2+_[2]^2+_[3]^2))end
t={}bq=1
cO=3
Z=1
aS=aC
c_=aN
aF=0
bk=0
W={0,0,-3}x={0,0,0}bV=62.5
by=pi/au
bu=3/bV
bI=90*by/bV
cy=90*by
an=1
bk=0
bh=1/62.5
function be(b,cG,bz)cF=k(cG,b[1])b[5]=A(b[5],h(l(cF,bz),b[11]))b[2]=A(b[2],h(bz,b[10]))end
function ak(cj,n)local V=-cd
for d,m in bl(cj)do
al=j(m[2],n)if abs(al-V)<.0001 then
aH[#aH+1]=m[2]elseif al>V then
bG=m[2]aH={bG}V=al
end
end
return bG
end
function cm(bB,bZ)n={1,0,0}z={}while aN do
g=k(ak(bB,n),ak(bZ,h(n,-1)))if j(g,n)<=0 then
return
end
z={g,z[1],z[2],z[3]}local _,a,i,R=unpack(z)if R then
y=k(a,_)T=k(i,_)bJ=k(R,_)r=h(_,-1)ac=l(y,T)cr=l(T,bJ)cl=l(bJ,y)if j(ac,r)>0 then
aE(_,a,i)elseif j(cr,r)>0 then
aE(_,i,R)elseif j(cl,r)>0 then
aE(_,R,a)else
X={{_,a,i},{_,i,R},{_,R,a},{a,R,i}}for d,m in ipairs(X)do
m[4]=bN(bX(m[1],m[2],m[3]))end
for cP=1,32 do
V=cd
for d,m in ipairs(X)do
al=j(m[1],m[4])if al<V then
V=al
cc=m
end
end
n=cc[4]g=k(ak(bB,n),ak(bZ,h(n,-1)))if j(g,n)-.0001<=V then
return{cc[4],j(g,n)}end
aq={}for d=#X,1,-1 do
aB=X[d]if j(aB[4],k(g,aB[1]))>0 then
for e=1,3 do
at={aB[e],aB[(e%3)+1]}for U,bA in ipairs(aq)do
if bA[1]==at[2]and bA[2]==at[1]then
cb(aq,U)at=cK
break
end
end
if at then
aq[#aq+1]=at
end
end
cb(X,d)end
end
for d,m in ipairs(aq)do
aw={m[1],m[2],g}aw[4]=bN(bX(aw[1],aw[2],aw[3]))X[#X+1]=aw
end
end
return
end
elseif i then
aE(_,a,i)elseif a then
ct(_,a)else
z={_}n=h(_,-1)end
end
end
function aE(_,a,i)y=k(a,_)T=k(i,_)r=h(_,-1)ac=l(y,T)if j(l(ac,T),r)>0 then
z={_,i}n=l(l(T,r),T)elseif j(l(y,ac),r)>0 then
z={_,a}n=l(l(y,r),y)else
if j(ac,r)>0 then
z={_,a,i}n=ac;
else
z={_,i,a}cR=h(ac,-1)end
end
end
function ct(_,a)y=k(a,_)r=h(_,-1)if j(y,r)>0 then
n=l(l(y,r),y)else
z={_}n=r
end
end
function aK(M,B)B=B or{}bO={}e=1
for d=t[1][M][1],t[1][M][2]do
f=t[2][d]bO[e]={{f[1],f[2],f[3]},{}}e=e+1
end
bS={}e=1
for d=t[1][M][3],t[1][M][4]do
f=t[3][d]bS[e]=f
e=e+1
end
bK={}e=1
for d=t[1][M][5],t[1][M][6]do
f=t[2][d]bK[e]={{f[1],f[2],f[3]},{}}e=e+1
end
cq={B[1]or{0,0,0},B[2]or{0,0,0},B[3]or{0,0,0},B[4]or{1,0,0,0},B[5]or{0,0,0},B[6]or{0,0,0},bO,bS,bK,B[7]or 1,B[8]or 1,B[9]or{0,0,0}}N[#N+1]=cq
end
function cB(ci,bW,_,a,i)bw=k(a,_)bs=k(i,_)bF=l(bw,bs)bv=-j(bW,bF)bm=1.0/bv
bt=k(ci,_)bQ=l(bt,bW)bL=j(bs,bQ)*bm
m=-j(bw,bQ)*bm
bo=j(bt,bF)*bm
return(-bv>=1e-6 and bo>=.0 and bL>=.0 and m>=.0 and(bL+m)<=1.0)end
function l(_,a)return{_[2]*a[3]-_[3]*a[2],_[3]*a[1]-_[1]*a[3],_[1]*a[2]-_[2]*a[1]}end
function j(_,a)return _[1]*a[1]+_[2]*a[2]+_[3]*a[3]end
function cv(u)if u[1]==0 and u[2]==0 and u[3]==0 then
return{1,0,0,0}else
return{0,u[1],u[2],u[3]}end
end
function co(aL,u)local ag=cH(aL,cv(u))for d=1,4 do
ag[d]=aL[d]+ag[d]*K
end
return ag
end
function cH(bj,bc)local aJ,aG,aT,aP=unpack(bj)local q,aR,aD,aO=unpack(bc)return{aJ*q-aG*aR-aT*aD-aP*aO,aJ*aR+aG*q+aT*aO-aP*aD,aJ*aD-aG*aO+aT*q+aP*aR,aJ*aO+aG*aD-aT*aR+aP*q}end
function cS(bj,bc)local ag={}for d=1,4 do ag[d]=bj+bc end
return ag
end
function aV(u,bg)local ay={}for e=1,3 do
f=0
for U=1,3 do
f=f+u[U]*bg[e][U]end
ay[e]=f
end
return ay
end
function cW(u,bg)local ay={}for e=1,3 do
f=0
for U=1,3 do
f=f+u[U]*bg[U][e]end
ay[e]=f
end
return ay
end
function bT(_,as)as=1/sqrt(_[1]^2+_[2]^2+_[3]^2+_[4]^2)return{_[1]*as,_[2]*as,_[3]*as,_[4]*as}end
function cD(aL)local O,F,J,H=unpack(aL)return{{1-(2*J*J+2*H*H),2*F*J+2*H*O,2*F*H-2*J*O},{2*F*J-2*H*O,1-(2*F*F+2*H*H),2*J*H+2*F*O},{2*F*H+2*J*O,2*J*H-2*F*O,1-(2*F*F+2*J*J)}}end
function httpReply(_,a,i)cU=aF//2
aF=0
end
function onTick()for e=1,1 do
if am(32)and not aS then
b_=property.getText(bq)d=1
w=""
f=bi.sub(b_,d,d)while f~=""do
bE=bi.byte(f)if bE>64 then
w=(w..bE-65)+0
if Z==1 then
bM=w
t[w]=t[w]or{}elseif Z==2 then
cn=w
av=0
elseif Z==3 then
aU=w
else
if av==0 then
av=cn
aU=aU-1
bn={}t[bM][#t[bM]+1]=bn
end
bn[#bn+1]=w
av=av-1
Z=bf(av,aU)>0 and Z-1 or 0
end
Z=Z+1
w=""
else
w=w..f
end
d=d+1
f=bi.sub(b_,d,d)end
bq=bq+1
aS=b_==""
end
end
if aS then
bk=bk+1
if c_ then
N={}aK(2)aK(1,{[1]={3,0,0}})aK(2,{[1]={-5,0,0}})aK(4,{[1]={0,-5,0},[7]=0,[8]=0})end
W[1]=W[1]+(ah(1)*cos(x[1])-ah(2)*sin(x[1]))*bu
W[3]=W[3]+(ah(1)*sin(x[1])+ah(2)*cos(x[1]))*bu
x[1]=x[1]-ah(3)*bI
x[2]=x[2]+ah(4)*bI
aZ=0
bd={E,E,E}if am(1)then
aZ=-.1
bd={0,0,E}end
if am(3)then
aZ=.1
bd={E,0,0}end
f=0
if am(4)then
f=-.025
end
if am(5)then
f=.025
end
N[2][1][1]=N[2][1][1]+f
_=x[1]a=x[2]i=x[3]af=cos(_)ae=sin(_)ai=cos(a)aj=sin(a)ap=cos(i)ax=sin(i)bP={{af*ap-ae*aj*ax,-ai*ax,af*aj*ax+ap*ae},{af*ax+ap*ae*aj,ai*ap,ae*ax-af*ap*aj},{-ai*ae,aj,af*ai}}ba={-ae*ai,aj,af*ai}br=aC
D={}for M=1,#N do
b=N[M]b[4]=bT(co(b[4],h(b[5],-bh)))b[1]=A(b[1],h(b[2],bh))b[2]=A(b[2],h(b[3],bh))b[3]=h(b[12],1)b[2]=h(b[2],.995)b[5]=h(b[5],.995)cA=cD(bT(b[4]))for d=7,9,2 do
for e=1,#b[d]do
g=b[d][e]g[2]=aV(g[1],cA)g[2]=A(g[2],b[1])g[3]=k(g[2],W)g[4]=aV(g[3],bP)bb=g[3]g[7]=sqrt(bb[1]^2+bb[2]^2+bb[3]^2)g[5]={g[4][1]*an/g[4][3],-g[4][2]*an/g[4][3]}g[6]=g[4][3]>0 and 1 or-1
end
end
bx=aC
aX=2^16
for d=1,#b[8]do
c=b[8][d]cs=cB({0,0,0},ba,b[7][c[1]][3],b[7][c[2]][3],b[7][c[3]][3])if cs and bo<aX then
bx=aN
aX=bo
end
end
if bx then
br=aN
bH=A(h(ba,aX),W)be(b,bH,h(ba,aZ))if am(2)then
b[12]={0,-9.81,0}end
az=aV(k(bH,W),bP)ca={az[1]*an/az[3],az[2]*an/az[3]}end
if b[11]>0 or not b[8][1][8]then
for d=1,#b[8]do
c=b[8][d]o=b[7][c[1]]p=b[7][c[2]]s=b[7][c[3]]bU=o[2]cE=p[2]ch=s[2]cf,ce={},{}for e=1,3 do
cf[e]=cE[e]-bU[e]ce[e]=ch[e]-bU[e]end
c[8]=l(cf,ce)end
end
for d=1,#b[8]do
c=b[8][d]o=b[7][c[1]]p=b[7][c[2]]s=b[7][c[3]]c[7]=bf(o[7],p[7],s[7])_=c[8]a=o[3]if j(_,a)>0 then
ar=o[6]+p[6]+s[6]if ar==3 then
D[#D+1]={o[5],p[5],s[5],c[4],c[5],c[6],c[7]}elseif ar>=-1 then
if o[6]==-ar then
S=o[5]ab=p[5]P=s[5]elseif p[6]==-ar then
S=p[5]ab=o[5]P=s[5]else
S=s[5]ab=p[5]P=o[5]end
if ar==1 then
aM=aQ(aA(sub(ab,S),1000),ab)aW=aQ(aA(sub(P,S),1000),P)D[#D+1]={ab,aM,P,c[4],c[5],c[6],c[7]}D[#D+1]={P,aM,aW,c[4],c[5],c[6],c[7]}else
aM=aQ(aA(sub(S,ab),1000),ab)aW=aQ(aA(sub(S,P),1000),P)D[#D+1]={S,aM,aW,c[4],c[5],c[6],c[7]}end
end
end
end
end
for d,C in bl(N)do
for e,v in bl(N)do
if d~=e then
I=cm(C[9],v[9])if I then
ak(C[9],I[1])L=aH
ak(v[9],h(I[1],-1))ad=aH
if#L==1 then
Q=L[1]elseif#ad==1 then
Q=ad[1]elseif#L==2 and#ad==2 then
bp=k(L[2],L[1])bC=k(ad[2],ad[1])bR=l(bC,l(bp,bC))Q=A(L[1],h(bp,j(k(ad[1],L[1]),bR)/j(bp,bR)))else
Q=L[1]end
cg=A(l(C[5],k(Q,C[1])),C[2])cp=A(l(v[5],k(Q,v[1])),v[2])bD=j(I[1],cg)+j(I[1],h(cp,-1))if bD>0 then
aY=C[10]+v[10]bY=h(I[1],bD*(K-.25*(abs(C[10]-v[10])/aY)))be(C,Q,h(bY,-1))be(v,Q,bY)C[1]=A(C[1],h(I[1],-I[2]*C[10]/aY))v[1]=A(v[1],h(I[1],I[2]*v[10]/aY))end
end
end
end
end
table.sort(D,function(_,a)return _[7]>a[7]end)c_=aC
end
aF=aF+1
end
function onDraw()Y=screen
local ck,cz,cw,ao,cQ=Y.drawTriangleF,Y.drawTriangle,Y.drawRectF,Y.setColor,Y.drawText
O=Y.getWidth()cx=Y.getHeight()q=O/2
aa=cx/2
an=tan(cy/2)*q
ao(E,E,E)if aS then
for d=1,#D do
c=D[d]o=c[1]p=c[2]s=c[3]ao(c[4],c[5],c[6])ck(o[1]+q,o[2]+aa,p[1]+q,p[2]+aa,s[1]+q,s[2]+aa)ao(c[4]*K,c[5]*K,c[6]*K)cz(o[1]+q,o[2]+aa-K,p[1]+q,p[2]+aa-K,s[1]+q,s[2]+aa-K)end
ao(E,E,E)ao(unpack(bd))if br then
aI=10/az[3]cw(ca[1]+q-(aI//2),ca[2]+aa-(aI//2),aI,aI)end
end
end
