
z=255
ab=.5
P=math
bB=P.max
cH=P.min
sqrt=math.sqrt
cS=P.floor
pi=P.pi
Y=input.getNumber
ap=input.getBool
cU=output.setBool
aH=true
aD=false
bg=ipairs
abs=P.abs
bY=table.remove
bk=string
sin=P.sin
cos=P.cos
tan=P.tan
unpack=table.unpack
bJ=math.huge
function aL(_,a)return{(_[1]+a[1]),(_[2]+a[2])}end
function az(_,a)return{(_[1]-a[1]),(_[2]-a[2])}end
function ay(_,a)return{_[1]*a,_[2]*a}end
function x(_,a)return{_[1]+a[1],_[2]+a[2],_[3]+a[3]}end
function f(_,a)return{_[1]-a[1],_[2]-a[2],_[3]-a[3]}end
function e(_,a)return{_[1]*a,_[2]*a,_[3]*a}end
function aW(_,a,k)return j(f(a,_),f(k,_))end
function ba(_)return e(_,1/sqrt(_[1]^2+_[2]^2+_[3]^2))end
function bF(_,a)return sqrt((_[1]-a[1])^2+(_[2]-a[2])^2+(_[3]-a[3])^2)end
q={}bb=1
cP=3
W=1
aB=aD
bZ=aH
aP=0
bo=0
L={0,0,-3}B={0,0,0}bV=62.5
bC=pi/180
be=3/bV
bO=90*bC/bV
cD=90*bC
at=1
bo=0
br=1/62.5
function aT(b,b_,aY)cd=f(b_,b[1])return i(j(e(j(cd,aY),b[11]),cd),aY)+b[10]end
function aq(b,b_,bG)cp=f(b_,b[1])b[5]=x(b[5],e(j(cp,bG),b[11]))b[2]=x(b[2],e(bG,b[10]))end
function ah(cE,n)local X=-bJ
for d,l in bg(cE)do
ae=i(l[2],n)if abs(ae-X)<.001 then
aO[#aO+1]=l[2]elseif ae>X then
bt=l[2]aO={bt}X=ae
end
end
return bt
end
function cM(cf,bv)n={1,0,0}F={}while aH do
g=f(ah(cf,n),ah(bv,e(n,-1)))if i(g,n)<=0 then
return
end
F={g,F[1],F[2],F[3]}local _,a,k,ac=unpack(F)if ac then
E=f(a,_)U=f(k,_)cc=f(ac,_)u=e(_,-1)V=j(E,U)cL=j(U,cc)cN=j(cc,E)if i(V,u)>0 then
aE(_,a,k)elseif i(cL,u)>0 then
aE(_,k,ac)elseif i(cN,u)>0 then
aE(_,ac,a)else
T={{_,a,k},{_,k,ac},{_,ac,a},{a,ac,k}}for d,l in ipairs(T)do
l[4]=ba(aW(l[1],l[2],l[3]))end
for cQ=1,32 do
X=bJ
for d,l in ipairs(T)do
ae=i(l[1],l[4])if ae<X then
X=ae
ch=l
end
end
n=ch[4]g=f(ah(cf,n),ah(bv,e(n,-1)))if i(g,n)-.001<=X then
return{ch[4],i(g,n)}end
am={}for d=#T,1,-1 do
aF=T[d]if i(aF[4],f(g,aF[1]))>0 then
for h=1,3 do
an={aF[h],aF[(h%3)+1]}for aJ,bE in ipairs(am)do
if bE[1]==an[2]and bE[2]==an[1]then
bY(am,aJ)an=cT
break
end
end
if an then
am[#am+1]=an
end
end
bY(T,d)end
end
for d,l in ipairs(am)do
au={l[1],l[2],g}au[4]=ba(aW(au[1],au[2],au[3]))T[#T+1]=au
end
end
return
end
elseif k then
aE(_,a,k)elseif a then
ct(_,a)else
F={_}n=e(_,-1)end
end
end
function aE(_,a,k)E=f(a,_)U=f(k,_)u=e(_,-1)V=j(E,U)if i(j(V,U),u)>0 then
F={_,k}n=j(j(U,u),U)elseif i(j(E,V),u)>0 then
F={_,a}n=j(j(E,u),E)else
if i(V,u)>0 then
F={_,a,k}n=V;
else
F={_,k,a}aY=e(V,-1)end
end
end
function ct(_,a)E=f(a,_)u=e(_,-1)if i(E,u)>0 then
n=j(j(E,u),E)else
F={_}n=u
end
end
function bA(K,D)D=D or{}ci={}h=1
for d=q[1][K][1],q[1][K][2]do
m=q[2][d]ci[h]={{m[1],m[2],m[3]},{}}h=h+1
end
bN={}h=1
for d=q[1][K][3],q[1][K][4]do
m=q[3][d]bN[h]=m
h=h+1
end
bM={}h=1
for d=q[1][K][5],q[1][K][6]do
m=q[2][d]bM[h]={{m[1],m[2],m[3]},{}}h=h+1
end
cG={D[1]or{0,0,0},D[2]or{0,0,0},D[3]or{0,0,0},D[4]or{1,0,0,0},D[5]or{0,0,0},D[6]or{0,0,0},ci,bN,bM,D[7]or 1,D[8]or 1,D[9]or{0,0,0},q[1][K][7]}ai[#ai+1]=cG
end
function cn(cK,bI,_,a,k)cj=f(a,_)bD=f(k,_)bS=j(cj,bD)by=-i(bI,bS)bq=1.0/by
cg=f(cK,_)bK=j(cg,bI)bH=i(bD,bK)*bq
l=-i(cj,bK)*bq
bl=i(cg,bS)*bq
return(-by>=1e-6 and bl>=.0 and bH>=.0 and l>=.0 and(bH+l)<=1.0)end
function j(_,a)return{_[2]*a[3]-_[3]*a[2],_[3]*a[1]-_[1]*a[3],_[1]*a[2]-_[2]*a[1]}end
function i(_,a)return _[1]*a[1]+_[2]*a[2]+_[3]*a[3]end
function cr(I)if I[1]==0 and I[2]==0 and I[3]==0 then
return{1,0,0,0}else
return{0,I[1],I[2],I[3]}end
end
function cz(aN,I)local bn=cO(aN,cr(I))for d=1,4 do
bn[d]=aN[d]+bn[d]*ab
end
return bn
end
function cO(cq,cl)local aM,aQ,aA,aC=unpack(cq)local t,aS,aK,aR=unpack(cl)return{aM*t-aQ*aS-aA*aK-aC*aR,aM*aS+aQ*t+aA*aR-aC*aK,aM*aK-aQ*aR+aA*t+aC*aS,aM*aR+aQ*aK-aA*aS+aC*t}end
function bm(I,cI)local c_={}for h=1,3 do
m=0
for aJ=1,3 do
m=m+I[aJ]*cI[h][aJ]end
c_[h]=m
end
return c_
end
function cb(_,ar)ar=1/sqrt(_[1]^2+_[2]^2+_[3]^2+_[4]^2)return{_[1]*ar,_[2]*ar,_[3]*ar,_[4]*ar}end
function cA(aN)local N,J,H,G=unpack(aN)return{{1-(2*H*H+2*G*G),2*J*H+2*G*N,2*J*G-2*H*N},{2*J*H-2*G*N,1-(2*J*J+2*G*G),2*H*G+2*J*N},{2*J*G+2*H*N,2*H*G-2*J*N,1-(2*J*J+2*H*H)}}end
function httpReply(_,a,k)cR=aP//2
aP=0
end
function onTick()for h=1,1 do
if ap(32)and not aB then
aV=property.getText(bb)d=1
y=""
m=bk.sub(aV,d,d)while m~=""do
bW=bk.byte(m)if bW>64 then
y=(y..bW-65)+0
if W==1 then
bU=y
q[y]=q[y]or{}elseif W==2 then
cu=y
ao=0
elseif W==3 then
bp=y
else
if ao==0 then
ao=cu
bp=bp-1
bj={}q[bU][#q[bU]+1]=bj
end
bj[#bj+1]=y
ao=ao-1
W=bB(ao,bp)>0 and W-1 or 0
end
W=W+1
y=""
else
y=y..m
end
d=d+1
m=bk.sub(aV,d,d)end
bb=bb+1
aB=aV==""
end
end
if aB then
bo=bo+1
if bZ then
ai={}for d=-0,0 do
for h=-0,0 do
bA(2,{[1]={2*d,0,2*h}})end
end
bA(4,{[1]={0,-5,0},[7]=0,[8]=0})end
if ap(31)then
L[2]=L[2]+Y(2)*be
else
L[1]=L[1]+(Y(1)*cos(B[1])-Y(2)*sin(B[1]))*be
L[3]=L[3]+(Y(1)*sin(B[1])+Y(2)*cos(B[1]))*be
end
B[1]=B[1]-Y(3)*bO
B[2]=B[2]+Y(4)*bO
S=0
aZ={z,z,z}if ap(1)then
S=-.1
aZ={0,0,z}end
if ap(3)then
S=.1
aZ={z,0,0}end
_=B[1]a=B[2]k=B[3]ag=cos(_)aj=sin(_)af=cos(a)ad=sin(a)al=cos(k)ax=sin(k)bw={{ag*al-aj*ad*ax,-af*ax,ag*ad*ax+al*aj},{ag*ax+al*aj*ad,af*al,aj*ax-ag*al*ad},{-af*aj,ad,ag*af}}bs={-aj*af,ad,ag*af}bR=aD
A={}for K=1,#ai do
b=ai[K]b[4]=cb(cz(b[4],e(b[5],-br)))b[1]=x(b[1],e(b[2],br))b[2]=x(b[2],e(b[3],br))b[3]=e(b[12],1)b[2]=e(b[2],.995)b[5]=e(b[5],.995)cv=cA(cb(b[4]))for d=7,9,2 do
for h=1,#b[d]do
g=b[d][h]g[2]=bm(g[1],cv)g[2]=x(g[2],b[1])g[3]=f(g[2],L)g[4]=bm(g[3],bw)bd=g[3]g[7]=sqrt(bd[1]^2+bd[2]^2+bd[3]^2)g[5]={g[4][1]*at/g[4][3],-g[4][2]*at/g[4][3]}g[6]=g[4][3]>0 and 1 or-1
end
end
ca=aD
bh=2^16
for d=1,#b[8]do
c=b[8][d]cF=cn({0,0,0},bs,b[7][c[1]][3],b[7][c[2]][3],b[7][c[3]][3])if cF and bl<bh then
ca=aH
bh=bl
end
end
if ca then
bR=aH
bT=x(e(bs,bh),L)aq(b,bT,e(bs,S))if ap(2)then
b[12]={0,-9.81,0}end
as=bm(f(bT,L),bw)bQ={as[1]*at/as[3],as[2]*at/as[3]}end
if b[11]>0 or not b[8][1][8]then
for d=1,#b[8]do
c=b[8][d]c[8]=aW(b[7][c[1]][2],b[7][c[2]][2],b[7][c[3]][2])end
end
for d=1,#b[8]do
c=b[8][d]v=b[7][c[1]]w=b[7][c[2]]C=b[7][c[3]]c[7]=bB(v[7],w[7],C[7])_=c[8]a=v[3]if i(_,a)>0 then
aw=v[6]+w[6]+C[6]if aw==3 then
A[#A+1]={v[5],w[5],C[5],c[4],c[5],c[6],c[7]}elseif aw>=-1 then
if v[6]==-aw then
R=v[5]Q=w[5]M=C[5]elseif w[6]==-aw then
R=w[5]Q=v[5]M=C[5]else
R=C[5]Q=w[5]M=v[5]end
if aw==1 then
aG=aL(ay(az(Q,R),1000),Q)bf=aL(ay(az(M,R),1000),M)A[#A+1]={Q,aG,M,c[4],c[5],c[6],c[7]}A[#A+1]={M,aG,bf,c[4],c[5],c[6],c[7]}else
aG=aL(ay(az(R,Q),1000),Q)bf=aL(ay(az(R,M),1000),M)A[#A+1]={R,aG,bf,c[4],c[5],c[6],c[7]}end
end
end
end
end
bc=0
for d,p in bg(ai)do
for h,o in bg(ai)do
if d~=h and bF(p[1],o[1])<=p[13]+o[13]then
bc=bc+1
r=cM(p[9],o[9])if r then
ah(p[9],r[1])O=aO
ah(o[9],e(r[1],-1))ak=aO
if#O==1 then
s=O[1]elseif#ak==1 then
s=ak[1]elseif#O==2 and#ak==2 then
aX=f(O[2],O[1])bu=f(ak[2],ak[1])bL=j(bu,j(aX,bu))s=x(O[1],e(aX,i(f(ak[1],O[1]),bL)/i(aX,bL)))else
s=O[1]end
cw=x(j(p[5],f(s,p[1])),p[2])cy=x(j(o[5],f(s,o[1])),o[2])bX=f(cw,cy)bi=i(r[1],bX)if bi>0 then
cJ=aT(p,s,r[1])+aT(o,s,r[1])cB=bi*1
S=cB/cJ
aq(p,s,e(r[1],-S))aq(o,s,e(r[1],S))bz=f(bX,e(r[1],bi))bx=bF(bz,{0,0,0})if bx>.001 then
aI=ba(bz)co=aT(p,s,aI)+aT(o,s,aI)bP=cH(bx/co,S)aq(p,s,e(aI,-bP))aq(o,s,e(aI,bP))end
ce=p[10]+o[10]p[1]=x(p[1],e(r[1],-r[2]*p[10]/ce))o[1]=x(o[1],e(r[1],r[2]*o[10]/ce))end
end
end
end
end
table.sort(A,function(_,a)return _[7]>a[7]end)bZ=aD
end
aP=aP+1
end
function onDraw()Z=screen
local cC,cs,ck,av,cm=Z.drawTriangleF,Z.drawTriangle,Z.drawRectF,Z.setColor,Z.drawText
N=Z.getWidth()cx=Z.getHeight()t=N/2
aa=cx/2
at=tan(cD/2)*t
av(z,z,z)if aB then
for d=1,#A do
c=A[d]v=c[1]w=c[2]C=c[3]av(c[4],c[5],c[6])cC(v[1]+t,v[2]+aa,w[1]+t,w[2]+aa,C[1]+t,C[2]+aa)av(c[4]*ab,c[5]*ab,c[6]*ab)cs(v[1]+t,v[2]+aa-ab,w[1]+t,w[2]+aa-ab,C[1]+t,C[2]+aa-ab)end
av(z,z,z)cm(1,1,bc)av(unpack(aZ))if bR then
aU=10/as[3]ck(bQ[1]+t-(aU//2),bQ[2]+aa-(aU//2),aU,aU)end
end
end
