
C=255
O=.5
Q=math
cm=Q.max
cN=Q.min
sqrt=math.sqrt
cT=Q.floor
pi=Q.pi
Y=input.getNumber
al=input.getBool
cR=output.setBool
aL=true
aI=false
aU=ipairs
abs=Q.abs
bM=table.remove
bv=string
sin=Q.sin
cos=Q.cos
tan=Q.tan
unpack=table.unpack
bz=math.huge
function aQ(_,a)return{(_[1]+a[1]),(_[2]+a[2])}end
function aF(_,a)return{(_[1]-a[1]),(_[2]-a[2])}end
function aP(_,a)return{_[1]*a,_[2]*a}end
function w(_,a)return{_[1]+a[1],_[2]+a[2],_[3]+a[3]}end
function e(_,a)return{_[1]-a[1],_[2]-a[2],_[3]-a[3]}end
function f(_,a)return{_[1]*a,_[2]*a,_[3]*a}end
function bn(_,a,k)return i(e(a,_),e(k,_))end
function b_(_)return f(_,1/sqrt(_[1]^2+_[2]^2+_[3]^2))end
function bF(_,a)return sqrt((_[1]-a[1])^2+(_[2]-a[2])^2+(_[3]-a[3])^2)end
r={}bs=1
cU=3
ac=1
aW=aI
bG=aL
aC=0
bh=0
L={0,0,-3}F={0,0,0}bL=62.5
bI=pi/180
bl=3/bL
cd=90*bI/bL
cr=90*bI
aw=1
bh=0
bt=1/62.5
function ay(b,bw,bg)bU=e(bw,b[1])return j(i(f(i(bU,bg),b[11]),bU),bg)+b[10]end
function au(b,bw,ci)co=e(bw,b[1])b[5]=w(b[5],f(i(co,ci),b[11]))b[2]=w(b[2],f(ci,b[10]))end
function ak(cF,p)local U=-bz
for d,n in aU(cF)do
ag=j(n[2],p)if abs(ag-U)<.0001 then
aX[#aX+1]=n[2]elseif ag>U then
bY=n[2]aX={bY}U=ag
end
end
return bY
end
function cP(bN,bE)p={1,0,0}E={}while aL do
h=e(ak(bN,p),ak(bE,f(p,-1)))if j(h,p)<=0 then
return
end
E={h,E[1],E[2],E[3]}local _,a,k,S=unpack(E)if S then
y=e(a,_)Z=e(k,_)bR=e(S,_)t=f(_,-1)V=i(y,Z)cu=i(Z,bR)cp=i(bR,y)if j(V,t)>0 then
aO(_,a,k)elseif j(cu,t)>0 then
aO(_,k,S)elseif j(cp,t)>0 then
aO(_,S,a)else
X={{_,a,k},{_,k,S},{_,S,a},{a,S,k}}for d,n in ipairs(X)do
n[4]=b_(bn(n[1],n[2],n[3]))end
for cV=1,32 do
U=bz
for d,n in ipairs(X)do
ag=j(n[1],n[4])if ag<U then
U=ag
bH=n
end
end
p=bH[4]h=e(ak(bN,p),ak(bE,f(p,-1)))if j(h,p)-.001<=U then
return{bH[4],j(h,p)}end
at={}for d=#X,1,-1 do
aA=X[d]if j(aA[4],e(h,aA[1]))>0 then
for g=1,3 do
ap={aA[g],aA[(g%3)+1]}for aE,bB in ipairs(at)do
if bB[1]==ap[2]and bB[2]==ap[1]then
bM(at,aE)ap=cS
break
end
end
if ap then
at[#at+1]=ap
end
end
bM(X,d)end
end
for d,n in ipairs(at)do
am={n[1],n[2],h}am[4]=b_(bn(am[1],am[2],am[3]))X[#X+1]=am
end
end
return
end
elseif k then
aO(_,a,k)elseif a then
ct(_,a)else
E={_}p=f(_,-1)end
end
end
function aO(_,a,k)y=e(a,_)Z=e(k,_)t=f(_,-1)V=i(y,Z)if j(i(V,Z),t)>0 then
E={_,k}p=i(i(Z,t),Z)elseif j(i(y,V),t)>0 then
E={_,a}p=i(i(y,t),y)else
if j(V,t)>0 then
E={_,a,k}p=V;
else
E={_,k,a}bg=f(V,-1)end
end
end
function ct(_,a)y=e(a,_)t=f(_,-1)if j(y,t)>0 then
p=i(i(y,t),y)else
E={_}p=t
end
end
function cb(K,B)B=B or{}bO={}g=1
for d=r[1][K][1],r[1][K][2]do
m=r[2][d]bO[g]={{m[1],m[2],m[3]},{}}g=g+1
end
bW={}g=1
for d=r[1][K][3],r[1][K][4]do
m=r[3][d]bW[g]=m
g=g+1
end
ce={}g=1
for d=r[1][K][5],r[1][K][6]do
m=r[2][d]ce[g]={{m[1],m[2],m[3]},{}}g=g+1
end
cw={B[1]or{0,0,0},B[2]or{0,0,0},B[3]or{0,0,0},B[4]or{1,0,0,0},B[5]or{0,0,0},B[6]or{0,0,0},bO,bW,ce,B[7]or 1,B[8]or 1,B[9]or{0,0,0},r[1][K][7]}T[#T+1]=cw
end
function cC(cQ,bD,_,a,k)c_=e(a,_)cf=e(k,_)bQ=i(c_,cf)ca=-j(bD,bQ)bj=1.0/ca
bx=e(cQ,_)bJ=i(bx,bD)bS=j(cf,bJ)*bj
n=-j(c_,bJ)*bj
bo=j(bx,bQ)*bj
return(-ca>=1e-6 and bo>=.0 and bS>=.0 and n>=.0 and(bS+n)<=1.0)end
function i(_,a)return{_[2]*a[3]-_[3]*a[2],_[3]*a[1]-_[1]*a[3],_[1]*a[2]-_[2]*a[1]}end
function j(_,a)return _[1]*a[1]+_[2]*a[2]+_[3]*a[3]end
function cs(I)if I[1]==0 and I[2]==0 and I[3]==0 then
return{1,0,0,0}else
return{0,I[1],I[2],I[3]}end
end
function cv(aJ,I)local ba=cH(aJ,cs(I))for d=1,4 do
ba[d]=aJ[d]+ba[d]*O
end
return ba
end
function cH(cy,cq)local az,aV,aN,aD=unpack(cy)local v,aG,aM,aR=unpack(cq)return{az*v-aV*aG-aN*aM-aD*aR,az*aG+aV*v+aN*aR-aD*aM,az*aM-aV*aR+aN*v+aD*aG,az*aR+aV*aM-aN*aG+aD*v}end
function bd(I,cA)local cc={}for g=1,3 do
m=0
for aE=1,3 do
m=m+I[aE]*cA[g][aE]end
cc[g]=m
end
return cc
end
function bA(_,ar)ar=1/sqrt(_[1]^2+_[2]^2+_[3]^2+_[4]^2)return{_[1]*ar,_[2]*ar,_[3]*ar,_[4]*ar}end
function cL(aJ)local M,J,H,G=unpack(aJ)return{{1-(2*H*H+2*G*G),2*J*H+2*G*M,2*J*G-2*H*M},{2*J*H-2*G*M,1-(2*J*J+2*G*G),2*H*G+2*J*M},{2*J*G+2*H*M,2*H*G-2*J*M,1-(2*J*J+2*H*H)}}end
function httpReply(_,a,k)cW=aC//2
aC=0
end
function onTick()for g=1,1 do
if al(32)and not aW then
bm=property.getText(bs)d=1
D=""
m=bv.sub(bm,d,d)while m~=""do
cl=bv.byte(m)if cl>64 then
D=(D..cl-65)+0
if ac==1 then
bK=D
r[D]=r[D]or{}elseif ac==2 then
cD=D
av=0
elseif ac==3 then
bb=D
else
if av==0 then
av=cD
bb=bb-1
be={}r[bK][#r[bK]+1]=be
end
be[#be+1]=D
av=av-1
ac=cm(av,bb)>0 and ac-1 or 0
end
ac=ac+1
D=""
else
D=D..m
end
d=d+1
m=bv.sub(bm,d,d)end
bs=bs+1
aW=bm==""
end
end
if aW then
bh=bh+1
if bG then
T={}for d=-1,1 do
for g=-1,1 do
cb(2,{[1]={d*2.5,0,g*2.5}})end
end
cb(4,{[1]={0,-5,0},[7]=0,[8]=0})end
if al(31)then
L[2]=L[2]+Y(2)*bl
else
L[1]=L[1]+(Y(1)*cos(F[1])-Y(2)*sin(F[1]))*bl
L[3]=L[3]+(Y(1)*sin(F[1])+Y(2)*cos(F[1]))*bl
end
F[1]=F[1]-Y(3)*cd
F[2]=F[2]+Y(4)*cd
ab=0
if al(31)then
bf=O
else
bf=.1
end
aZ={C,C,C}if al(1)then
ab=-bf
aZ={0,0,C}end
if al(3)then
ab=bf
aZ={C,0,0}end
_=F[1]a=F[2]k=F[3]ai=cos(_)af=sin(_)ae=cos(a)ah=sin(a)aq=cos(k)an=sin(k)bC={{ai*aq-af*ah*an,-ae*an,ai*ah*an+aq*af},{ai*an+aq*af*ah,ae*aq,af*an-ai*aq*ah},{-ae*af,ah,ai*ae}}bq={-af*ae,ah,ai*ae}cj=aI
z={}for K=1,#T do
b=T[K]b[4]=bA(cv(b[4],f(b[5],-bt)))b[1]=w(b[1],f(b[2],bt))b[2]=w(b[2],f(b[3],bt))b[3]=f(b[12],1)b[2]=f(b[2],.995)b[5]=f(b[5],.995)cK=cL(bA(b[4]))for d=7,9,2 do
for g=1,#b[d]do
h=b[d][g]h[2]=bd(h[1],cK)h[2]=w(h[2],b[1])h[3]=e(h[2],L)h[4]=bd(h[3],bC)bp=h[3]h[7]=sqrt(bp[1]^2+bp[2]^2+bp[3]^2)h[5]={h[4][1]*aw/h[4][3],-h[4][2]*aw/h[4][3]}h[6]=h[4][3]>0 and 1 or-1
end
end
if b[11]>0 or not b[8][1][8]then
for d=1,#b[8]do
c=b[8][d]c[8]=bn(b[7][c[1]][2],b[7][c[2]][2],b[7][c[3]][2])end
end
for d=1,#b[8]do
c=b[8][d]u=b[7][c[1]]x=b[7][c[2]]A=b[7][c[3]]c[7]=cm(u[7],x[7],A[7])_=c[8]a=u[3]if j(_,a)>0 then
ao=u[6]+x[6]+A[6]if ao==3 then
z[#z+1]={u[5],x[5],A[5],c[4],c[5],c[6],c[7]}elseif ao>=-1 then
if u[6]==-ao then
ad=u[5]R=x[5]P=A[5]elseif x[6]==-ao then
ad=x[5]R=u[5]P=A[5]else
ad=A[5]R=x[5]P=u[5]end
if ao==1 then
aH=aQ(aP(aF(R,ad),1000),R)aY=aQ(aP(aF(P,ad),1000),P)z[#z+1]={R,aH,P,c[4],c[5],c[6],c[7]}z[#z+1]={P,aH,aY,c[4],c[5],c[6],c[7]}else
aH=aQ(aP(aF(ad,R),1000),R)aY=aQ(aP(aF(ad,P),1000),P)z[#z+1]={ad,aH,aY,c[4],c[5],c[6],c[7]}end
end
end
end
end
cn=aI
bk=2^16
for d,b in aU(T)do
for g=1,#b[8]do
c=b[8][g]cB=cC({0,0,0},bq,b[7][c[1]][3],b[7][c[2]][3],b[7][c[3]][3])if cB and bo<bk then
cn=aL
bk=bo
cg=b
end
end
end
if cn then
cj=aL
bX=w(f(bq,bk),L)au(cg,bX,f(bq,ab))if al(2)then
cg[12]={0,-9.81,0}end
as=bd(e(bX,L),bC)ch={as[1]*aw/as[3],as[2]*aw/as[3]}end
br=0
for d,o in aU(T)do
for g,l in aU(T)do
if d~=g and bF(o[1],l[1])<=o[13]+l[13]then
br=br+1
s=cP(o[9],l[9])if s then
ak(o[9],s[1])N=aX
ak(l[9],f(s[1],-1))aj=aX
if#N==1 then
q=N[1]elseif#aj==1 then
q=aj[1]elseif#N==2 and#aj==2 then
bu=e(N[2],N[1])by=e(aj[2],aj[1])bP=i(by,i(bu,by))q=w(N[1],f(bu,j(e(aj[1],N[1]),bP)/j(bu,bP)))else
q=N[1]end
bc=w(i(o[5],e(q,o[1])),o[2])bi=w(i(l[5],e(q,l[1])),l[2])aK=e(bc,bi)aB=j(s[1],aK)if aB>0 then
cO=ay(o,q,s[1])+ay(l,q,s[1])cM=aB*1
ab=cM/cO
au(o,q,f(s[1],-ab))au(l,q,f(s[1],ab))bc=w(i(o[5],e(q,o[1])),o[2])bi=w(i(l[5],e(q,l[1])),l[2])aK=e(bc,bi)aB=j(s[1],aK)bV=e(aK,f(s[1],aB))bZ=bF(bV,{0,0,0})if bZ>.001 then
aT=b_(bV)cz=ay(o,q,aT)+ay(l,q,aT)bT=cN(bZ/cz,ab)au(o,q,f(aT,-bT))au(l,q,f(aT,bT))end
ck=o[10]+l[10]o[1]=w(o[1],f(s[1],-s[2]*o[10]/ck))l[1]=w(l[1],f(s[1],s[2]*l[10]/ck))end
end
end
end
end
table.sort(z,function(_,a)return _[7]>a[7]end)bG=aI
end
aC=aC+1
end
function onDraw()aa=screen
local cE,cJ,cI,ax,cx=aa.drawTriangleF,aa.drawTriangle,aa.drawRectF,aa.setColor,aa.drawText
M=aa.getWidth()cG=aa.getHeight()v=M/2
W=cG/2
aw=tan(cr/2)*v
ax(C,C,C)if aW then
for d=1,#z do
c=z[d]u=c[1]x=c[2]A=c[3]ax(c[4],c[5],c[6])cE(u[1]+v,u[2]+W,x[1]+v,x[2]+W,A[1]+v,A[2]+W)ax(c[4]*O,c[5]*O,c[6]*O)cJ(u[1]+v,u[2]+W-O,x[1]+v,x[2]+W-O,A[1]+v,A[2]+W-O)end
ax(C,C,C)cx(1,1,br)ax(unpack(aZ))if cj then
aS=10/as[3]cI(ch[1]+v-(aS//2),ch[2]+W-(aS//2),aS,aS)end
end
end
