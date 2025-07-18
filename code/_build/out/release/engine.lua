
L=255
M=.5
aq=180
C=math
aW=C.max
ck=C.min
sqrt=math.sqrt
cf=C.floor
pi=C.pi
aa=input.getNumber
ao=input.getBool
cF=output.setBool
az=true
av=false
bq=ipairs
abs=C.abs
bv=table.remove
aX=string
sin=C.sin
cos=C.cos
tan=C.tan
unpack=table.unpack
bf=math.huge
function aG(_,a)return{(_[1]+a[1]),(_[2]+a[2])}end
function k(_,a)return _[1]*a[2]-_[2]*a[1]end
function sub(_,a)return{(_[1]-a[1]),(_[2]-a[2])}end
function aF(_,a)return{_[1]*a,_[2]*a}end
function cx(_)return((_+aq)%360)-aq end
function cC(_)return C.atan(_)*aq/pi end
function cz(_)return C.atan(_[2],_[1])*aq/pi end
function cA(_,a,h)return ck(aW(a,_),h)end
function cw(_)return cf(_+M)end
function cE(_,a)return sqrt(((_[1]-a[1])^2)+((_[2]-a[2])^2)+((_[3]-a[3])^2))end
function aH(_,a)return{_[1]+a[1],_[2]+a[2],_[3]+a[3]}end
function l(_,a)return{_[1]-a[1],_[2]-a[2],_[3]-a[3]}end
function s(_,a)return{_[1]*a,_[2]*a,_[3]*a}end
function bF(_)return string.format("%.3f",_ or 0)end
function bL(_,a,h)return k(l(a,_),l(h,_))end
function by(_)return s(_,1/sqrt(_[1]^2+_[2]^2+_[3]^2))end
B={}aR=1
cD=3
R=1
aL=av
bC=az
aN=0
aU=0
X={0,0,-3}v={0,0,0}bB=62.5
bA=pi/aq
bl=3/bB
bP=90*bA/bB
cb=90*bA
ar=1
aU=0
function bo(au,aJ)cp=s(t,-1)local F=-bf
for c,f in bq(au)do
H=j(f[2],t)if H>F then
cc=f[2]F=H
end
end
F=-bf
for c,f in bq(aJ)do
H=j(f[2],cp)if H>F then
cn=f[2]F=H
end
end
g=l(cc,cn)end
function bS(au,aJ)t={1,0,0}w={}while az do
bo(au,aJ)if j(g,t)<=0 then
return
end
w={g,w[1],w[2],w[3]}local _,a,h,W=unpack(w)if W then
local x=l(a,_)local P=l(h,_)local bM=l(W,_)local p=s(_,-1)local S=k(x,P)local bX=k(P,bM)local cl=k(bM,x)if j(S,p)>0 then
aK(_,a,h)elseif j(bX,p)>0 then
aK(_,h,W)elseif j(cl,p)>0 then
aK(_,W,a)else
V={{_,a,h},{_,h,W},{_,W,a},{a,W,h}}for c,f in ipairs(V)do
f[4]=by(bL(f[1],f[2],f[3]))if j(f[1],f[4])<0 then
f[1],f[2]=f[2],f[1]f[4]=s(f[4],-1)end
end
for cs=1,32 do
F=bf
for c,f in ipairs(V)do
H=j(f[1],f[4])if H<F then
F=H
bR=f
end
end
t=bR[4]bo(au,aJ)if j(g,t)-.0001<=F then
return{bR[4],j(g,t)}end
al={}for c=#V,1,-1 do
aE=V[c]if j(aE[4],l(g,aE[1]))>0 then
for e=1,3 do
ai={aE[e],aE[(e%3)+1]}for U,bN in ipairs(al)do
if bN[1]==ai[2]and bN[2]==ai[1]then
bv(al,U)ai=cu
break
end
end
if ai then
al[#al+1]=ai
end
end
bv(V,c)end
end
for c,f in ipairs(al)do
q={f[1],f[2],g}q[4]=by(bL(q[1],q[2],q[3]))if j(q[1],q[4])<0 then
q[1],q[2]=q[2],q[1]q[4]=s(q[4],-1)end
V[#V+1]=q
end
end
return
end
elseif h then
aK(_,a,h)elseif a then
cj(_,a)else
w={_}t=s(_,-1)end
end
end
function aK(_,a,h)local x=l(a,_)local P=l(h,_)local p=s(_,-1)local S=k(x,P)if j(k(S,P),p)>0 then
w={_,h}t=k(k(P,p),P)elseif j(k(x,S),p)>0 then
w={_,a}t=k(k(x,p),x)else
if j(S,p)>0 then
w={_,a,h}t=S;
else
w={_,h,a}cy=s(S,-1)end
end
end
function cj(_,a)local x=l(a,_)local p=s(_,-1)if j(x,p)>0 then
t=k(k(x,p),x)else
w={_}t=p
end
end
function aY(Z,I)bK={}I=I or{}e=1
for c=B[1][Z][1],B[1][Z][2]do
i=B[2][c]bK[e]={{i[1],i[2],i[3]},{}}e=e+1
end
bO={}e=1
for c=B[1][Z][3],B[1][Z][4]do
i=B[3][c]bO[e]=i
e=e+1
end
cg={I[1]or{0,0,0},I[2]or{0,0,0},I[3]or{0,0,0},I[4]or{1,0,0,0},I[5]or{0,0,0},I[6]or{0,0,0},bK,bO,{},1,{0,0,0},{0,0,0},1,{0,0,0},{0,0,0}}G[#G+1]=cg
end
function cr(bZ,bJ,_,a,h)bD=l(a,_)bs=l(h,_)bt=k(bD,bs)bQ=-j(bJ,bt)aZ=1.0/bQ
bm=l(bZ,_)bu=k(bm,bJ)bk=j(bs,bu)*aZ
f=-j(bD,bu)*aZ
be=j(bm,bt)*aZ
return(-bQ>=1e-6 and be>=.0 and bk>=.0 and f>=.0 and(bk+f)<=1.0)end
function k(_,a)return{_[2]*a[3]-_[3]*a[2],_[3]*a[1]-_[1]*a[3],_[1]*a[2]-_[2]*a[1]}end
function j(_,a)return _[1]*a[1]+_[2]*a[2]+_[3]*a[3]end
function cd(u)if u[1]==0 and u[2]==0 and u[3]==0 then
return{1,0,0,0}else
return{0,u[1],u[2],u[3]}end
end
function bT(aB,u)local ab=ce(aB,cd(u))for c=1,4 do
ab[c]=aB[c]+ab[c]*M
end
return ab
end
function ce(aP,ba)local aI,aM,as,aD=unpack(aP)local r,aC,ay,at=unpack(ba)return{aI*r-aM*aC-as*ay-aD*at,aI*aC+aM*r+as*at-aD*ay,aI*ay-aM*at+as*r+aD*aC,aI*at+aM*ay-as*aC+aD*r}end
function cB(aP,ba)local ab={}for c=1,4 do ab[c]=aP+ba end
return ab
end
function bh(u,aT)local an={}for e=1,3 do
i=0
for U=1,3 do
i=i+u[U]*aT[e][U]end
an[e]=i
end
return an
end
function cv(u,aT)local an={}for e=1,3 do
i=0
for U=1,3 do
i=i+u[U]*aT[U][e]end
an[e]=i
end
return an
end
function bj(_,ag)ag=1/sqrt(_[1]^2+_[2]^2+_[3]^2+_[4]^2)return{_[1]*ag,_[2]*ag,_[3]*ag,_[4]*ag}end
function ci(aB)local J,D,A,E=unpack(aB)return{{1-(2*A*A+2*E*E),2*D*A+2*E*J,2*D*E-2*A*J},{2*D*A-2*E*J,1-(2*D*D+2*E*E),2*A*E+2*D*J},{2*D*E+2*A*J,2*A*E-2*D*J,1-(2*D*D+2*A*A)}}end
function httpReply(_,a,h)ct=aN//2
aN=0
end
function onTick()for e=1,1 do
if ao(32)and not aL then
bd=property.getText(aR)c=1
z=""
i=aX.sub(bd,c,c)while i~=""do
bE=aX.byte(i)if bE>64 then
z=(z..bE-65)+0
if R==1 then
bI=z
B[z]=B[z]or{}elseif R==2 then
ca=z
aj=0
elseif R==3 then
bi=z
else
if aj==0 then
aj=ca
bi=bi-1
bb={}B[bI][#B[bI]+1]=bb
end
bb[#bb+1]=z
aj=aj-1
R=aW(aj,bi)>0 and R-1 or 0
end
R=R+1
z=""
else
z=z..i
end
c=c+1
i=aX.sub(bd,c,c)end
aR=aR+1
aL=bd==""
end
end
if aL then
aU=aU+1
if bC then
G={}aY(1)aY(1,{[1]={3,0,0}})aY(2,{[1]={-5,0,0}})end
X[1]=X[1]+(aa(1)*cos(v[1])-aa(2)*sin(v[1]))*bl
X[3]=X[3]+(aa(1)*sin(v[1])+aa(2)*cos(v[1]))*bl
v[1]=v[1]-aa(3)*bP
v[2]=v[2]+aa(4)*bP
aV=0
aO={L,L,L}if ao(1)then
aV=.001
aO={0,0,L}end
if ao(3)then
aV=-.001
aO={L,0,0}end
i=0
if ao(4)then
i=-.025
end
if ao(5)then
i=.025
end
G[2][1][1]=G[2][1][1]+i
_=v[1]a=v[2]h=v[3]ad=cos(_)af=sin(_)Y=cos(a)ac=sin(a)ak=cos(h)ah=sin(h)bn={{ad*ak-af*ac*ah,-Y*ah,ad*ac*ah+ak*af},{ad*ah+ak*af*ac,Y*ak,af*ah-ad*ak*ac},{-Y*af,ac,ad*Y}}aQ={-af*Y,ac,ad*Y}bG=av
y={}for Z=1,#G do
d=G[Z]d[1]=aH(d[1],d[11])d[11]={0,0,0}d[4]=bj(bT(d[4],d[5]))d[5]=s(d[5],.995)bV=ci(bj(d[4]))for c=1,#d[7]do
g=d[7][c]g[2]=bh(g[1],bV)for e=1,3 do
g[2][e]=g[2][e]+d[1][e]end
g[3]={}for e=1,3 do
g[3][e]=g[2][e]-X[e]end
g[4]=bh(g[3],bn)aS=g[3]g[7]=sqrt(aS[1]^2+aS[2]^2+aS[3]^2)g[5]={g[4][1]*ar/g[4][3],-g[4][2]*ar/g[4][3]}g[6]=g[4][3]>0 and 1 or-1
end
bw=av
bc=2^16
for c=1,#d[8]do
b=d[8][c],1
bU=cr({0,0,0},aQ,d[7][b[1]][3],d[7][b[2]][3],d[7][b[3]][3]),1
if bU and be<bc then
bw=az
bc=be
end
end
if bw then
bG=az
br=aH(s(aQ,bc),X)c_=l(br,d[1])d[5]=aH(d[5],s(k(c_,aQ),aV))am=bh(l(br,X),bn)bx={am[1]*ar/am[3],am[2]*ar/am[3]}end
if true then
for c=1,#d[8]do
b=d[8][c]m=d[7][b[1]]n=d[7][b[2]]o=d[7][b[3]]bp=m[2]bY=n[2]bW=o[2]bz,bH={},{}for e=1,3 do
bz[e]=bY[e]-bp[e]bH[e]=bW[e]-bp[e]end
b[8]=k(bz,bH)end
end
for c=1,#d[8]do
b=d[8][c]m=d[7][b[1]]n=d[7][b[2]]o=d[7][b[3]]b[7]=aW(m[7],n[7],o[7])_=b[8]a=m[3]if j(_,a)>0 then
ap=m[6]+n[6]+o[6]if ap==3 then
y[#y+1]={m[5],n[5],o[5],b[4],b[5],b[6],b[7]}elseif ap>=-1 then
if m[6]==-ap then
N=m[5]T=n[5]K=o[5]elseif n[6]==-ap then
N=n[5]T=m[5]K=o[5]else
N=o[5]T=n[5]K=m[5]end
if ap==1 then
ax=aG(aF(sub(T,N),1000),T)bg=aG(aF(sub(K,N),1000),K)y[#y+1]={T,ax,K,b[4],b[5],b[6],b[7]}y[#y+1]={K,ax,bg,b[4],b[5],b[6],b[7]}else
ax=aG(aF(sub(N,T),1000),T)bg=aG(aF(sub(N,K),1000),K)y[#y+1]={N,ax,bg,b[4],b[5],b[6],b[7]}end
end
end
end
end
ae=bS(G[1][7],G[2][7])if ae then
d=G[2]d[11]=aH(d[11],s(ae[1],ae[2]))end
table.sort(y,function(_,a)return _[7]>a[7]end)bC=av
end
aN=aN+1
end
function onDraw()Q=screen
local co,cq,cm,aA,b_=Q.drawTriangleF,Q.drawTriangle,Q.drawRectF,Q.setColor,Q.drawText
J=Q.getWidth()ch=Q.getHeight()r=J/2
O=ch/2
ar=tan(cb/2)*r
aA(L,L,L)if aL then
if ae then
b_(1,1,"Collision:")for c=1,3 do
b_(1,c*6+1,bF(ae[1][c]))end
b_(1,4*6+1,bF(ae[2]))end
for c=1,#y do
b=y[c]m=b[1]n=b[2]o=b[3]aA(b[4],b[5],b[6])co(m[1]+r,m[2]+O,n[1]+r,n[2]+O,o[1]+r,o[2]+O)aA(b[4]*M,b[5]*M,b[6]*M)cq(m[1]+r,m[2]+O-M,n[1]+r,n[2]+O-M,o[1]+r,o[2]+O-M)end
aA(unpack(aO))if bG then
aw=10/am[3]cm(bx[1]+r-(aw//2),bx[2]+O-(aw//2),aw,aw)end
end
end
