P=math
bW=P.max
bX=P.min
aR=math.sqrt
dd=P.floor
cI=P.pi
_=input.getNumber
aa=input.getBool
cY=output.setBool
bc=true
bt=false
ax=ipairs
cX=P.abs
be=table.remove
bg=string
aq=P.sin
aB=P.cos
cA=P.tan
af=table.unpack
ck=math.huge
function a_(a,b)return{(a[1]+b[1]),(a[2]+b[2])}end
function aQ(a,b)return{(a[1]-b[1]),(a[2]-b[2])}end
function aW(a,b)return{a[1]*b,a[2]*b}end
function y(a,b)return{a[1]+b[1],a[2]+b[2],a[3]+b[3]}end
function f(a,b)return{a[1]-b[1],a[2]-b[2],a[3]-b[3]}end
function g(a,b)return{a[1]*b,a[2]*b,a[3]*b}end
function by(a,b,p)return j(f(b,a),f(p,a))end
function bl(a)return g(a,1/aR(a[1]^2+a[2]^2+a[3]^2))end
function ca(a,b)return aR((a[1]-b[1])^2+(a[2]-b[2])^2+(a[3]-b[3])^2)end
u={}bi=1
c_=3
T=1
bY=bc
aX=0
bd=0
M={0,0,-3}E={0,0,0}bI=62.5
cm=cI/180
bp=5/bI
bJ=90*cm/bI
cS=90*cm
as=1
bd=0
bw=1/62.5
function aY(c,bk,cc)bE=f(bk,c[1])return k(j(g(j(bE,cc),c[11]),bE),cc)+c[10]end
function aF(c,bk,b_)cW=f(bk,c[1])c[5]=y(c[5],g(j(cW,b_),c[11]))c[2]=y(c[2],g(b_,c[10]))end
function aj(cG,m)local ad=-ck
for d,q in ax(cG)do
ak=k(q[2],m)if cX(ak-ad)<.0005then
aV[#aV+1]=d
elseif ak>ad then
cH=q[2]aV={d}ad=ak
end
end
return cH
end
function cR(bO,bN)m={1,0,0}r={}for db=1,32 do
i=f(aj(bO,m),aj(bN,g(m,-1)))if k(i,m)<=0then
return
end
r={i,r[1],r[2],r[3]}a,b,p,ac=af(r)if ac then
F=f(b,a)ae=f(p,a)co=f(ac,a)x=g(a,-1)S=j(F,ae)cp=j(ae,co)cn=j(co,F)if k(S,x)>0then
r={a,b,p}m=S
elseif k(cp,x)>0then
r={a,p,ac}m=cp
elseif k(cn,x)>0then
r={a,ac,b}m=cn
else
ab={{a,b,p},{a,p,ac},{a,ac,b},{b,ac,p}}for d,q in ipairs(ab)do
q[4]=bl(by(q[1],q[2],q[3]))end
for da=1,32 do
ad=ck
for d,q in ipairs(ab)do
ak=k(q[1],q[4])if ak<ad then
ad=ak
ci=q
end
end
m=ci[4]i=f(aj(bO,m),aj(bN,g(m,-1)))if k(i,m)-.001<=ad then
return{ci[4],k(i,m)}end
aw={}for d=#ab,1,-1 do
aZ=ab[d]if k(aZ[4],f(i,aZ[1]))>0then
for h=1,3 do
aA={aZ[h],aZ[(h%3)+1]}for ai,cf in ipairs(aw)do
if cf[1]==aA[2]and cf[2]==aA[1]then
be(aw,ai)aA=cZ
break
end
end
if aA then
aw[#aw+1]=aA
end
end
be(ab,d)end
end
for d,q in ipairs(aw)do
av={q[1],q[2],i}av[4]=bl(by(av[1],av[2],av[3]))ab[#ab+1]=av
end
end
return
end
elseif p then
F=f(b,a)ae=f(p,a)x=g(a,-1)S=j(F,ae)if k(j(S,ae),x)>0then
r={a,p}m=j(j(ae,x),ae)elseif k(j(F,S),x)>0then
r={a,b}m=j(j(F,x),F)else
if k(S,x)>0then
m=S;
else
r={a,p,b}m=g(S,-1)end
end
elseif b then
F=f(b,a)x=g(a,-1)if k(F,x)>0then
m=j(j(F,x),F)else
r={a}m=x
end
else
r={a}m=g(a,-1)end
end
end
function ao(K,D)D=D or{}bU={}h=1
for d=u[1][K][1],u[1][K][2]do
o=u[2][d]bU[h]={{o[1],o[2],o[3]},{}}h=h+1
end
bT={}h=1
for d=u[1][K][3],u[1][K][4]do
o=u[3][d]bT[h]=o
h=h+1
end
bV={}h=1
for d=u[1][K][5],u[1][K][6]do
o=u[2][d]bV[h]={{o[1],o[2],o[3]},{}}h=h+1
end
cJ={D[1]or{0,0,0},D[2]or{0,0,0},D[3]or{0,0,0},D[4]or{1,0,0,0},D[5]or{0,0,0},D[6]or{0,0,0},bU,bT,bV,D[7]or 1,D[8]or 1,D[9]or{0,0,0},u[1][K][7],K,{},}Y[#Y+1]=cJ
end
function cO(cC,bK,a,b,p)cs=f(b,a)cr=f(p,a)cq=j(cs,cr)cd=-k(bK,cq)bs=1.0/cd
cu=f(cC,a)ct=j(cu,bK)bD=k(cr,ct)*bs
q=-k(cs,ct)*bs
bf=k(cu,cq)*bs
return(-cd>=1e-6 and bf>=.0 and bD>=.0 and q>=.0 and(bD+q)<=1.0)end
function j(a,b)return{a[2]*b[3]-a[3]*b[2],a[3]*b[1]-a[1]*b[3],a[1]*b[2]-a[2]*b[1]}end
function k(a,b)return a[1]*b[1]+a[2]*b[2]+a[3]*b[3]end
function cv(J)if J[1]==0 and J[2]==0 and J[3]==0then
return{1,0,0,0}else
return{0,J[1],J[2],J[3]}end
end
function cw(aU,J)local bm=cK(aU,cv(J))for d=1,4 do
bm[d]=aU[d]+bm[d]*.5
end
return bm
end
function cK(cF,cE)local aM,aL,aJ,aH=af(cF)local v,aK,aI,aG=af(cE)return{aM*v-aL*aK-aJ*aI-aH*aG,aM*aK+aL*v+aJ*aG-aH*aI,aM*aI-aL*aG+aJ*v+aH*aK,aM*aG+aL*aI-aJ*aK+aH*v}end
function bo(J,cN)local bS={}for h=1,3 do
o=0
for ai=1,3 do
o=o+J[ai]*cN[h][ai]end
bS[h]=o
end
return bS
end
function bR(a,aC)aC=1/aR(a[1]^2+a[2]^2+a[3]^2+a[4]^2)return{a[1]*aC,a[2]*aC,a[3]*aC,a[4]*aC}end
function cD(aU)local N,I,H,G=af(aU)return{{1-(2*H*H+2*G*G),2*I*H+2*G*N,2*I*G-2*H*N},{2*I*H-2*G*N,1-(2*I*I+2*G*G),2*H*G+2*I*N},{2*I*G+2*H*N,2*H*G-2*I*N,1-(2*I*I+2*H*H)},}end
function httpReply(a,b,p)dc=aX//2
aX=0
end
function onTick()for h=1,1 do
if aa(32)and not br then
bj=property.getText(bi)d=1
C=""
o=bg.sub(bj,d,d)while o~=""do
bM=bg.byte(o)if bM>64then
C=(C..bM-65)+0
if T==1then
ce=C
u[C]=u[C]or{}elseif T==2then
cP=C
az=0
elseif T==3then
bz=C
else
if az==0then
az=cP
bz=bz-1
bx={}u[ce][#u[ce]+1]=bx
end
bx[#bx+1]=C
az=az-1
T=bW(az,bz)>0 and T-1or 0
end
T=T+1
C=""
else
C=C..o
end
d=d+1
o=bg.sub(bj,d,d)end
bi=bi+1
br=bj==""
end
end
if br then
bd=bd+1
if bY then
Y={}for d=-1,1 do
for h=-1,1 do
ao(2,{[1]={d*2.5,0,h*2.5}})end
end
ao(5,{[1]={-6,0,0}})ao(6,{[1]={6,0,0}})ao(7,{[1]={0,-5,0},[7]=0,[8]=0})ao(8,{[1]={6,-3.85,-4},[7]=.75,[8]=50})end
if aa(31)then
M[2]=M[2]+_(2)*bp
else
M[1]=M[1]+(_(1)*aB(E[1])-_(2)*aq(E[1]))*bp
M[3]=M[3]+(_(1)*aq(E[1])+_(2)*aB(E[1]))*bp
end
E[1]=E[1]-_(3)*bJ
E[2]=E[2]+_(4)*bJ
X=0
if aa(31)then
bq=.5
else
bq=.1
end
au={255,255,255}if aa(1)then
X=-bq
au={0,0,255}end
if aa(3)then
X=bq
au={255,0,0}end
if not aa(31)then
for d=1,3 do
au[d]=bX(au[d]+50,255)end
end
a=E[1]b=E[2]p=E[3]an=aB(a)ah=aq(a)am=aB(b)ag=aq(b)aE=aB(p)at=aq(p)
cj={{an*aE-ah*ag*at,-am*at,an*ag*at+aE*ah},{an*at+aE*ah*ag,am*aE,ah*at-an*aE*ag},{-am*ah,ag,an*am}}bB={-ah*am,ag,an*am}bP=bt
A={}for K=1,#Y do
c=Y[K]c[4]=bR(cw(c[4],g(c[5],-bw)))c[1]=y(c[1],g(c[2],bw))c[2]=y(c[2],g(c[3],bw))c[3]=g(c[12],1)c[2]=g(c[2],.9995)c[5]=g(c[5],.9995)cU=cD(bR(c[4]))for d=7,9,2 do
for h=1,#c[d]do
i=c[d][h]i[2]=bo(i[1],cU)i[2]=y(i[2],c[1])i[3]=f(i[2],M)i[4]=bo(i[3],cj)bu=i[3]i[7]=aR(bu[1]^2+bu[2]^2+bu[3]^2)i[5]={i[4][1]*as/i[4][3],-i[4][2]*as/i[4][3]}i[6]=i[4][3]>0 and 1or-1
end
end
if c[11]>0or not c[8][1][8]then
for d=1,#c[8]do
e=c[8][d]e[8]=by(c[7][e[1]][2],c[7][e[2]][2],c[7][e[3]][2])end
end
for d=1,#c[8]do
e=c[8][d]w=c[7][e[1]]z=c[7][e[2]]B=c[7][e[3]]e[7]=bW(w[7],z[7],B[7])a=e[8]b=w[3]if k(a,b)>0then
ar=w[6]+z[6]+B[6]if ar==3then
A[#A+1]={w[5],z[5],B[5],e[4],e[5],e[6],e[7]}elseif ar>=-1then
if w[6]==-ar then
W=w[5]V=z[5]O=B[5]elseif z[6]==-ar then
W=z[5]V=w[5]O=B[5]else
W=B[5]V=z[5]O=w[5]end
if ar==1then
aS=a_(aW(aQ(V,W),1000),V)bh=a_(aW(aQ(O,W),1000),O)A[#A+1]={V,aS,O,e[4],e[5],e[6],e[7]}A[#A+1]={O,aS,bh,e[4],e[5],e[6],e[7]}else
aS=a_(aW(aQ(W,V),1000),V)bh=a_(aW(aQ(W,O),1000),O)A[#A+1]={W,aS,bh,e[4],e[5],e[6],e[7]}end
end
end
end
end
bL=bt
bC=2^16
for d,c in ax(Y)do
for h=1,#c[8]do
e=c[8][h]cV=cO({0,0,0},bB,c[7][e[1]][3],c[7][e[2]][3],c[7][e[3]][3])if cV and bf<bC then
bL=bc
bC=bf
cl=c
end
end
end
if bL then
bP=bc
ch=y(g(bB,bC),M)aF(cl,ch,g(bB,X))if aa(2)then
cl[12]={0,-9.81,0}end
aD=bo(f(ch,M),cj)cg={aD[1]*as/aD[3],aD[2]*as/aD[3]}end
bA=0
for d,l in ax(Y)do
for h,n in ax(Y)do
if d~=h and(l[10]>0or n[10]>0or l[11]>0or n[11]>0)and ca(l[1],n[1])<=l[13]+n[13]then
bA=bA+1
R=l[9]al=n[9]t=cR(R,al)if t then
bn=l[15][h]or{}aj(R,t[1])L=aV
aj(al,g(t[1],-1))Q=aV
bn[#bn+1]={L,Q}ay={}for ai,r in ax(bn)do
L,Q=af(r)if#L==1then
s=R[L[1]][2]elseif#Q==1then
s=al[Q[1]][2]elseif#L==2 and#Q==2then
bv=f(R[L[2]][2],R[L[1]][2])cb=f(al[Q[2]][2],al[Q[1]][2])bQ=j(cb,j(bv,cb))s=y(R[L[1]][2],g(bv,k(f(al[Q[1]][2],R[L[1]][2]),bQ)/k(bv,bQ)))else
s=R[L[1]][2]end
bb=y(j(l[5],f(s,l[1])),l[2])ba=y(j(n[5],f(s,n[1])),n[2])aP=f(bb,ba)aO=k(t[1],aP)if aO>0then
ay[#ay+1]=r
cL=aY(l,s,t[1])+aY(n,s,t[1])cT=aO*1
X=cT/cL
aF(l,s,g(t[1],-X))aF(n,s,g(t[1],X))bb=y(j(l[5],f(s,l[1])),l[2])ba=y(j(n[5],f(s,n[1])),n[2])aP=f(bb,ba)aO=k(t[1],aP)bF=f(aP,g(t[1],aO))bG=ca(bF,{0,0,0})if bG>.001then
aN=bl(bF)cM=aY(l,s,aN)+aY(n,s,aN)bZ=bX(bG/cM,X)aF(l,s,g(aN,-bZ))aF(n,s,g(aN,bZ))end
if ai==1then
bH=l[10]+n[10]l[1]=y(l[1],g(t[1],-t[2]*l[10]/bH))n[1]=y(n[1],g(t[1],t[2]*n[10]/bH))end
end
end
if#ay>3then
be(ay,1)end
l[15][h]=ay
end
end
end
end
table.sort(A,function(a,b)return a[7]>b[7]end)bY=bt
end
aX=aX+1
end
function onDraw()U=screen
local cx,cy,cB,ap,cz=U.drawTriangleF,U.drawTriangle,U.drawRectF,U.setColor,U.drawText
N=U.getWidth()cQ=U.getHeight()v=N/2
Z=cQ/2
as=cA(cS/2)*v
ap(255,255,255)if br then
for d=1,#A do
e=A[d]w=e[1]z=e[2]B=e[3]ap(e[4],e[5],e[6])cx(w[1]+v,w[2]+Z,z[1]+v,z[2]+Z,B[1]+v,B[2]+Z)ap(e[4]*.5,e[5]*.5,e[6]*.5)cy(w[1]+v,w[2]+Z-.5,z[1]+v,z[2]+Z-.5,B[1]+v,B[2]+Z-.5)end
ap(255,255,255)cz(1,1,bA)ap(af(au))if bP then
aT=30/aD[3]cB(cg[1]+v-(aT//2),cg[2]+Z-(aT//2),aT,aT)end
end
end