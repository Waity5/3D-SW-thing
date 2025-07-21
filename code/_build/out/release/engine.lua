
y=255
P=.5
O=math
bL=O.max
cf=O.min
sqrt=math.sqrt
cW=O.floor
pi=O.pi
ad=input.getNumber
Z=input.getBool
cT=output.setBool
aZ=true
aU=false
aX=ipairs
abs=O.abs
c_=table.remove
bd=string
sin=O.sin
cos=O.cos
tan=O.tan
unpack=table.unpack
bZ=math.huge
function aQ(_,a)return{(_[1]+a[1]),(_[2]+a[2])}end
function aI(_,a)return{(_[1]-a[1]),(_[2]-a[2])}end
function aE(_,a)return{_[1]*a,_[2]*a}end
function v(_,a)return{_[1]+a[1],_[2]+a[2],_[3]+a[3]}end
function f(_,a)return{_[1]-a[1],_[2]-a[2],_[3]-a[3]}end
function e(_,a)return{_[1]*a,_[2]*a,_[3]*a}end
function bp(_,a,k)return i(f(a,_),f(k,_))end
function bm(_)return e(_,1/sqrt(_[1]^2+_[2]^2+_[3]^2))end
function bH(_,a)return sqrt((_[1]-a[1])^2+(_[2]-a[2])^2+(_[3]-a[3])^2)end
r={}bi=1
cX=3
X=1
aN=aU
bQ=aZ
aA=0
br=0
L={0,0,-3}C={0,0,0}bS=62.5
bF=pi/180
bt=5/bS
bP=90*bF/bS
cy=90*bF
aw=1
br=0
bx=1/62.5
function aS(b,be,bn)by=f(be,b[1])return j(i(e(i(by,bn),b[11]),by),bn)+b[10]end
function aq(b,be,bz)cH=f(be,b[1])b[5]=v(b[5],e(i(cH,bz),b[11]))b[2]=v(b[2],e(bz,b[10]))end
function ag(cu,p)local R=-bZ
for c,n in aX(cu)do
ak=j(n[2],p)if abs(ak-R)<.0005 then
aL[#aL+1]=n[2]elseif ak>R then
bU=n[2]aL={bU}R=ak
end
end
return bU
end
function cq(bW,ck)p={1,0,0}A={}for cU=1,32 do
h=f(ag(bW,p),ag(ck,e(p,-1)))if j(h,p)<=0 then
return
end
A={h,A[1],A[2],A[3]}local _,a,k,T=unpack(A)if T then
D=f(a,_)U=f(k,_)ce=f(T,_)t=e(_,-1)ac=i(D,U)cO=i(U,ce)cI=i(ce,D)if j(ac,t)>0 then
aT(_,a,k)elseif j(cO,t)>0 then
aT(_,k,T)elseif j(cI,t)>0 then
aT(_,T,a)else
Y={{_,a,k},{_,k,T},{_,T,a},{a,T,k}}for c,n in ipairs(Y)do
n[4]=bm(bp(n[1],n[2],n[3]))end
for cV=1,32 do
R=bZ
for c,n in ipairs(Y)do
ak=j(n[1],n[4])if ak<R then
R=ak
bB=n
end
end
p=bB[4]h=f(ag(bW,p),ag(ck,e(p,-1)))if j(h,p)-.001<=R then
return{bB[4],j(h,p)}end
as={}for c=#Y,1,-1 do
aK=Y[c]if j(aK[4],f(h,aK[1]))>0 then
for g=1,3 do
ao={aK[g],aK[(g%3)+1]}for aW,ch in ipairs(as)do
if ch[1]==ao[2]and ch[2]==ao[1]then
c_(as,aW)ao=cR
break
end
end
if ao then
as[#as+1]=ao
end
end
c_(Y,c)end
end
for c,n in ipairs(as)do
ay={n[1],n[2],h}ay[4]=bm(bp(ay[1],ay[2],ay[3]))Y[#Y+1]=ay
end
end
return
end
elseif k then
aT(_,a,k)elseif a then
cK(_,a)else
A={_}p=e(_,-1)end
end
end
function aT(_,a,k)D=f(a,_)U=f(k,_)t=e(_,-1)ac=i(D,U)if j(i(ac,U),t)>0 then
A={_,k}p=i(i(U,t),U)elseif j(i(D,ac),t)>0 then
A={_,a}p=i(i(D,t),D)else
if j(ac,t)>0 then
A={_,a,k}p=ac;
else
A={_,k,a}bn=e(ac,-1)end
end
end
function cK(_,a)D=f(a,_)t=e(_,-1)if j(D,t)>0 then
p=i(i(D,t),D)else
A={_}p=t
end
end
function az(K,E)E=E or{}co={}g=1
for c=r[1][K][1],r[1][K][2]do
o=r[2][c]co[g]={{o[1],o[2],o[3]},{}}g=g+1
end
bE={}g=1
for c=r[1][K][3],r[1][K][4]do
o=r[3][c]bE[g]=o
g=g+1
end
cn={}g=1
for c=r[1][K][5],r[1][K][6]do
o=r[2][c]cn[g]={{o[1],o[2],o[3]},{}}g=g+1
end
cJ={E[1]or{0,0,0},E[2]or{0,0,0},E[3]or{0,0,0},E[4]or{1,0,0,0},E[5]or{0,0,0},E[6]or{0,0,0},co,bE,cn,E[7]or 1,E[8]or 1,E[9]or{0,0,0},r[1][K][7]}W[#W+1]=cJ
end
function cp(cv,cj,_,a,k)bI=f(a,_)bA=f(k,_)bO=i(bI,bA)bD=-j(cj,bO)bu=1.0/bD
bV=f(cv,_)bK=i(bV,cj)cd=j(bA,bK)*bu
n=-j(bI,bK)*bu
bq=j(bV,bO)*bu
return(-bD>=1e-6 and bq>=.0 and cd>=.0 and n>=.0 and(cd+n)<=1.0)end
function i(_,a)return{_[2]*a[3]-_[3]*a[2],_[3]*a[1]-_[1]*a[3],_[1]*a[2]-_[2]*a[1]}end
function j(_,a)return _[1]*a[1]+_[2]*a[2]+_[3]*a[3]end
function cD(H)if H[1]==0 and H[2]==0 and H[3]==0 then
return{1,0,0,0}else
return{0,H[1],H[2],H[3]}end
end
function cB(aR,H)local bk=cP(aR,cD(H))for c=1,4 do
bk[c]=aR[c]+bk[c]*P
end
return bk
end
function cP(cw,cN)local aH,aO,aY,aD=unpack(cw)local u,aV,aM,aG=unpack(cN)return{aH*u-aO*aV-aY*aM-aD*aG,aH*aV+aO*u+aY*aG-aD*aM,aH*aM-aO*aG+aY*u+aD*aV,aH*aG+aO*aM-aY*aV+aD*u}end
function bs(H,cA)local cm={}for g=1,3 do
o=0
for aW=1,3 do
o=o+H[aW]*cA[g][aW]end
cm[g]=o
end
return cm
end
function bC(_,at)at=1/sqrt(_[1]^2+_[2]^2+_[3]^2+_[4]^2)return{_[1]*at,_[2]*at,_[3]*at,_[4]*at}end
function cx(aR)local M,G,I,J=unpack(aR)return{{1-(2*I*I+2*J*J),2*G*I+2*J*M,2*G*J-2*I*M},{2*G*I-2*J*M,1-(2*G*G+2*J*J),2*I*J+2*G*M},{2*G*J+2*I*M,2*I*J-2*G*M,1-(2*G*G+2*I*I)}}end
function httpReply(_,a,k)cS=aA//2
aA=0
end
function onTick()for g=1,1 do
if Z(32)and not aN then
bf=property.getText(bi)c=1
F=""
o=bd.sub(bf,c,c)while o~=""do
bM=bd.byte(o)if bM>64 then
F=(F..bM-65)+0
if X==1 then
ci=F
r[F]=r[F]or{}elseif X==2 then
cQ=F
au=0
elseif X==3 then
bj=F
else
if au==0 then
au=cQ
bj=bj-1
bb={}r[ci][#r[ci]+1]=bb
end
bb[#bb+1]=F
au=au-1
X=bL(au,bj)>0 and X-1 or 0
end
X=X+1
F=""
else
F=F..o
end
c=c+1
o=bd.sub(bf,c,c)end
bi=bi+1
aN=bf==""
end
end
if aN then
br=br+1
if bQ then
W={}for c=-1,1 do
for g=-1,1 do
az(2,{[1]={c*2.5,0,g*2.5}})end
end
az(5,{[1]={-6,0,0}})az(6,{[1]={6,0,0}})az(7,{[1]={0,-5,0},[7]=0,[8]=0})end
if Z(31)then
L[2]=L[2]+ad(2)*bt
else
L[1]=L[1]+(ad(1)*cos(C[1])-ad(2)*sin(C[1]))*bt
L[3]=L[3]+(ad(1)*sin(C[1])+ad(2)*cos(C[1]))*bt
end
C[1]=C[1]-ad(3)*bP
C[2]=C[2]+ad(4)*bP
ab=0
if Z(31)then
bh=P
else
bh=.1
end
an={y,y,y}if Z(1)then
ab=-bh
an={0,0,y}end
if Z(3)then
ab=bh
an={y,0,0}end
if not Z(31)then
for c=1,3 do
an[c]=cf(an[c]+50,y)end
end
_=C[1]a=C[2]k=C[3]af=cos(_)aj=sin(_)ah=cos(a)ai=sin(a)ap=cos(k)av=sin(k)cl={{af*ap-aj*ai*av,-ah*av,af*ai*av+ap*aj},{af*av+ap*aj*ai,ah*ap,aj*av-af*ap*ai},{-ah*aj,ai,af*ah}}bl={-aj*ah,ai,af*ah}bG=aU
z={}for K=1,#W do
b=W[K]b[4]=bC(cB(b[4],e(b[5],-bx)))b[1]=v(b[1],e(b[2],bx))b[2]=v(b[2],e(b[3],bx))b[3]=e(b[12],1)b[2]=e(b[2],.9995)b[5]=e(b[5],.9995)cL=cx(bC(b[4]))for c=7,9,2 do
for g=1,#b[c]do
h=b[c][g]h[2]=bs(h[1],cL)h[2]=v(h[2],b[1])h[3]=f(h[2],L)h[4]=bs(h[3],cl)bw=h[3]h[7]=sqrt(bw[1]^2+bw[2]^2+bw[3]^2)h[5]={h[4][1]*aw/h[4][3],-h[4][2]*aw/h[4][3]}h[6]=h[4][3]>0 and 1 or-1
end
end
if b[11]>0 or not b[8][1][8]then
for c=1,#b[8]do
d=b[8][c]d[8]=bp(b[7][d[1]][2],b[7][d[2]][2],b[7][d[3]][2])end
end
for c=1,#b[8]do
d=b[8][c]w=b[7][d[1]]x=b[7][d[2]]B=b[7][d[3]]d[7]=bL(w[7],x[7],B[7])_=d[8]a=w[3]if j(_,a)>0 then
ar=w[6]+x[6]+B[6]if ar==3 then
z[#z+1]={w[5],x[5],B[5],d[4],d[5],d[6],d[7]}elseif ar>=-1 then
if w[6]==-ar then
aa=w[5]V=x[5]N=B[5]elseif x[6]==-ar then
aa=x[5]V=w[5]N=B[5]else
aa=B[5]V=x[5]N=w[5]end
if ar==1 then
aF=aQ(aE(aI(V,aa),1000),V)bo=aQ(aE(aI(N,aa),1000),N)z[#z+1]={V,aF,N,d[4],d[5],d[6],d[7]}z[#z+1]={N,aF,bo,d[4],d[5],d[6],d[7]}else
aF=aQ(aE(aI(aa,V),1000),V)bo=aQ(aE(aI(aa,N),1000),N)z[#z+1]={aa,aF,bo,d[4],d[5],d[6],d[7]}end
end
end
end
end
cg=aU
ba=2^16
for c,b in aX(W)do
for g=1,#b[8]do
d=b[8][g]cC=cp({0,0,0},bl,b[7][d[1]][3],b[7][d[2]][3],b[7][d[3]][3])if cC and bq<ba then
cg=aZ
ba=bq
bR=b
end
end
end
if cg then
bG=aZ
cc=v(e(bl,ba),L)aq(bR,cc,e(bl,ab))if Z(2)then
bR[12]={0,-9.81,0}end
ax=bs(f(cc,L),cl)bJ={ax[1]*aw/ax[3],ax[2]*aw/ax[3]}end
bg=0
for c,m in aX(W)do
for g,l in aX(W)do
if c~=g and(m[10]>0 or l[10]>0 or m[11]>0 or l[11]>0)and bH(m[1],l[1])<=m[13]+l[13]then
bg=bg+1
s=cq(m[9],l[9])if s then
ag(m[9],s[1])Q=aL
ag(l[9],e(s[1],-1))al=aL
if#Q==1 then
q=Q[1]elseif#al==1 then
q=al[1]elseif#Q==2 and#al==2 then
bc=f(Q[2],Q[1])bY=f(al[2],al[1])bX=i(bY,i(bc,bY))q=v(Q[1],e(bc,j(f(al[1],Q[1]),bX)/j(bc,bX)))else
q=Q[1]end
bv=v(i(m[5],f(q,m[1])),m[2])b_=v(i(l[5],f(q,l[1])),l[2])aC=f(bv,b_)aP=j(s[1],aC)if aP>0 then
cs=aS(m,q,s[1])+aS(l,q,s[1])cr=aP*1
ab=cr/cs
aq(m,q,e(s[1],-ab))aq(l,q,e(s[1],ab))bv=v(i(m[5],f(q,m[1])),m[2])b_=v(i(l[5],f(q,l[1])),l[2])aC=f(bv,b_)aP=j(s[1],aC)cb=f(aC,e(s[1],aP))bT=bH(cb,{0,0,0})if bT>.001 then
aJ=bm(cb)cE=aS(m,q,aJ)+aS(l,q,aJ)ca=cf(bT/cE,ab)aq(m,q,e(aJ,-ca))aq(l,q,e(aJ,ca))end
bN=m[10]+l[10]m[1]=v(m[1],e(s[1],-s[2]*m[10]/bN))l[1]=v(l[1],e(s[1],s[2]*l[10]/bN))end
end
end
end
end
table.sort(z,function(_,a)return _[7]>a[7]end)bQ=aU
end
aA=aA+1
end
function onDraw()ae=screen
local cG,ct,cz,am,cM=ae.drawTriangleF,ae.drawTriangle,ae.drawRectF,ae.setColor,ae.drawText
M=ae.getWidth()cF=ae.getHeight()u=M/2
S=cF/2
aw=tan(cy/2)*u
am(y,y,y)if aN then
for c=1,#z do
d=z[c]w=d[1]x=d[2]B=d[3]am(d[4],d[5],d[6])cG(w[1]+u,w[2]+S,x[1]+u,x[2]+S,B[1]+u,B[2]+S)am(d[4]*P,d[5]*P,d[6]*P)ct(w[1]+u,w[2]+S-P,x[1]+u,x[2]+S-P,B[1]+u,B[2]+S-P)end
am(y,y,y)cM(1,1,bg)am(unpack(an))if bG then
aB=30/ax[3]cz(bJ[1]+u-(aB//2),bJ[2]+S-(aB//2),aB,aB)end
end
end
