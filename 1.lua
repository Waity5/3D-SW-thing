z=255
U=.5
T=math
cc=T.max
cv=T.min
aI=math.sqrt
df=T.floor
cy=T.pi
ac=input.getNumber
ag=input.getBool
da=output.setBool
bu=true
bd=false
aC=ipairs
cZ=T.abs
bn=table.remove
bq=string
aq=T.sin
ar=T.cos
cx=T.tan
ah=table.unpack
ca=math.huge
function aJ(a,b)return{(a[1]+b[1]),(a[2]+b[2])}end
function aO(a,b)return{(a[1]-b[1]),(a[2]-b[2])}end
function aN(a,b)return{a[1]*b,a[2]*b}end
function w(a,b)return{a[1]+b[1],a[2]+b[2],a[3]+b[3]}end
function g(a,b)return{a[1]-b[1],a[2]-b[2],a[3]-b[3]}end
function f(a,b)return{a[1]*b,a[2]*b,a[3]*b}end
function bB(a,b,o)return j(g(b,a),g(o,a))end
function bw(a)return f(a,1/aI(a[1]^2+a[2]^2+a[3]^2))end
function bL(a,b)return aI((a[1]-b[1])^2+(a[2]-b[2])^2+(a[3]-b[3])^2)end
u={}bo=1
db=3
ad=1
b_=bu
aT=0
bv=0
N={0,0,-3}C={0,0,0}bZ=62.5
bN=cy/180
bx=5/bZ
cn=90*bN/bZ
cB=90*bN
ax=1
bv=0
by=1/62.5
function ba(c,bC,bV)bS=g(bC,c[1])return k(j(f(j(bS,bV),c[11]),bS),bV)+c[10]end
function aD(c,bC,cl)cJ=g(bC,c[1])c[5]=w(c[5],f(j(cJ,cl),c[11]))c[2]=w(c[2],f(cl,c[10]))end
function an(cN,m)local V=-ca
for d,q in aC(cN)do
aj=k(q[2],m)if cZ(aj-V)<.0005then
aY[#aY+1]=d
elseif aj>V then
cH=q[2]aY={d}V=aj
end
end
return cH
end
function cX(bR,cj)m={1,0,0}r={}for dd=1,32 do
i=g(an(bR,m),an(cj,f(m,-1)))if k(i,m)<=0then
return
end
r={i,r[1],r[2],r[3]}a,b,o,_=ah(r)if _ then
F=g(b,a)Y=g(o,a)cq=g(_,a)v=f(a,-1)R=j(F,Y)bP=j(Y,cq)bT=j(cq,F)if k(R,v)>0then
r={a,b,o}m=R
elseif k(bP,v)>0then
r={a,o,_}m=bP
elseif k(bT,v)>0then
r={a,_,b}m=bT
else
X={{a,b,o},{a,o,_},{a,_,b},{b,_,o}}for d,q in ipairs(X)do
q[4]=bw(bB(q[1],q[2],q[3]))end
for dc=1,32 do
V=ca
for d,q in ipairs(X)do
aj=k(q[1],q[4])if aj<V then
V=aj
bY=q
end
end
m=bY[4]i=g(an(bR,m),an(cj,f(m,-1)))if k(i,m)-.001<=V then
return{bY[4],k(i,m)}end
aE={}for d=#X,1,-1 do
aZ=X[d]if k(aZ[4],g(i,aZ[1]))>0then
for h=1,3 do
aw={aZ[h],aZ[(h%3)+1]}for ao,bW in ipairs(aE)do
if bW[1]==aw[2]and bW[2]==aw[1]then
bn(aE,ao)aw=de
break
end
end
if aw then
aE[#aE+1]=aw
end
end
bn(X,d)end
end
for d,q in ipairs(aE)do
at={q[1],q[2],i}at[4]=bw(bB(at[1],at[2],at[3]))X[#X+1]=at
end
end
return
end
elseif o then
F=g(b,a)Y=g(o,a)v=f(a,-1)R=j(F,Y)if k(j(R,Y),v)>0then
r={a,o}m=j(j(Y,v),Y)elseif k(j(F,R),v)>0then
r={a,b}m=j(j(F,v),F)else
if k(R,v)>0then
m=R;
else
r={a,o,b}m=f(R,-1)end
end
elseif b then
F=g(b,a)v=f(a,-1)if k(F,v)>0then
m=j(j(F,v),F)else
r={a}m=v
end
else
r={a}m=f(a,-1)end
end
end
function aF(J,E)E=E or{}cr={}h=1
for d=u[1][J][1],u[1][J][2]do
p=u[2][d]cr[h]={{p[1],p[2],p[3]},{}}h=h+1
end
ci={}h=1
for d=u[1][J][3],u[1][J][4]do
p=u[3][d]ci[h]=p
h=h+1
end
bU={}h=1
for d=u[1][J][5],u[1][J][6]do
p=u[2][d]bU[h]={{p[1],p[2],p[3]},{}}h=h+1
end
cP={E[1]or{0,0,0},E[2]or{0,0,0},E[3]or{0,0,0},E[4]or{1,0,0,0},E[5]or{0,0,0},E[6]or{0,0,0},cr,ci,bU,E[7]or 1,E[8]or 1,E[9]or{0,0,0},u[1][J][7],J,{}}ab[#ab+1]=cP
end
function cY(cD,cu,a,b,o)cp=g(b,a)bF=g(o,a)cw=j(cp,bF)bI=-k(cu,cw)bj=1.0/bI
cb=g(cD,a)cf=j(cb,cu)bG=k(bF,cf)*bj
q=-k(cp,cf)*bj
bi=k(cb,cw)*bj
return(-bI>=1e-6 and bi>=.0 and bG>=.0 and q>=.0 and(bG+q)<=1.0)end
function j(a,b)return{a[2]*b[3]-a[3]*b[2],a[3]*b[1]-a[1]*b[3],a[1]*b[2]-a[2]*b[1]}end
function k(a,b)return a[1]*b[1]+a[2]*b[2]+a[3]*b[3]end
function cS(M)if M[1]==0 and M[2]==0 and M[3]==0then
return{1,0,0,0}else
return{0,M[1],M[2],M[3]}end
end
function cz(aM,M)local bE=cG(aM,cS(M))for d=1,4 do
bE[d]=aM[d]+bE[d]*U
end
return bE
end
function cG(cF,cO)local aX,aW,aV,aK=ah(cF)local x,aP,a_,aS=ah(cO)return{aX*x-aW*aP-aV*a_-aK*aS,aX*aP+aW*x+aV*aS-aK*a_,aX*a_-aW*aS+aV*x+aK*aP,aX*aS+aW*a_-aV*aP+aK*x}end
function be(M,cI)local bK={}for h=1,3 do
p=0
for ao=1,3 do
p=p+M[ao]*cI[h][ao]end
bK[h]=p
end
return bK
end
function bJ(a,au)au=1/aI(a[1]^2+a[2]^2+a[3]^2+a[4]^2)return{a[1]*au,a[2]*au,a[3]*au,a[4]*au}end
function cC(aM)local Q,H,L,I=ah(aM)return{{1-(2*L*L+2*I*I),2*H*L+2*I*Q,2*H*I-2*L*Q},{2*H*L-2*I*Q,1-(2*H*H+2*I*I),2*L*I+2*H*Q},{2*H*I+2*L*Q,2*L*I-2*H*Q,1-(2*H*H+2*L*L)}}end
function httpReply(a,b,o)c_=aT//2
aT=0
end
function onTick()for h=1,1 do
if ag(32)and not bz then
bs=property.getText(bo)d=1
B=""
p=bq.sub(bs,d,d)while p~=""do
bX=bq.byte(p)if bX>64then
B=(B..bX-65)+0
if ad==1then
bH=B
u[B]=u[B]or{}elseif ad==2then
cU=B
av=0
elseif ad==3then
bD=B
else
if av==0then
av=cU
bD=bD-1
bc={}u[bH][#u[bH]+1]=bc
end
bc[#bc+1]=B
av=av-1
ad=cc(av,bD)>0 and ad-1or 0
end
ad=ad+1
B=""
else
B=B..p
end
d=d+1
p=bq.sub(bs,d,d)end
bo=bo+1
bz=bs==""
end
end
if bz then
bv=bv+1
if b_ then
ab={}for d=-1,1 do
for h=-1,1 do
aF(2,{[1]={d*2.5,0,h*2.5}})end
end
aF(5,{[1]={-6,0,0}})aF(6,{[1]={6,0,0}})aF(7,{[1]={0,-5,0},[7]=0,[8]=0})aF(8,{[1]={6,-3.85,-4},[7]=.75,[8]=50})end
if ag(31)then
N[2]=N[2]+ac(2)*bx
else
N[1]=N[1]+(ac(1)*ar(C[1])-ac(2)*aq(C[1]))*bx
N[3]=N[3]+(ac(1)*aq(C[1])+ac(2)*ar(C[1]))*bx
end
C[1]=C[1]-ac(3)*cn
C[2]=C[2]+ac(4)*cn
Z=0
if ag(31)then
bA=U
else
bA=.1
end
aB={z,z,z}if ag(1)then
Z=-bA
aB={0,0,z}end
if ag(3)then
Z=bA
aB={z,0,0}end
if not ag(31)then
for d=1,3 do
aB[d]=cv(aB[d]+50,z)end
end
a=C[1]b=C[2]o=C[3]am=ar(a)ap=aq(a)ai=ar(b)ak=aq(b)aA=ar(o)aG=aq(o)bO={{am*aA-ap*ak*aG,-ai*aG,am*ak*aG+aA*ap},{am*aG+aA*ap*ak,ai*aA,ap*aG-am*aA*ak},{-ai*ap,ak,am*ai}}bh={-ap*ai,ak,am*ai}cm=bd
G={}for J=1,#ab do
c=ab[J]c[4]=bJ(cz(c[4],f(c[5],-by)))c[1]=w(c[1],f(c[2],by))c[2]=w(c[2],f(c[3],by))c[3]=f(c[12],1)c[2]=f(c[2],.9995)c[5]=f(c[5],.9995)cK=cC(bJ(c[4]))for d=7,9,2 do
for h=1,#c[d]do
i=c[d][h]i[2]=be(i[1],cK)i[2]=w(i[2],c[1])i[3]=g(i[2],N)i[4]=be(i[3],bO)bl=i[3]i[7]=aI(bl[1]^2+bl[2]^2+bl[3]^2)i[5]={i[4][1]*ax/i[4][3],-i[4][2]*ax/i[4][3]}i[6]=i[4][3]>0 and 1or-1
end
end
if c[11]>0or not c[8][1][8]then
for d=1,#c[8]do
e=c[8][d]e[8]=bB(c[7][e[1]][2],c[7][e[2]][2],c[7][e[3]][2])end
end
for d=1,#c[8]do
e=c[8][d]y=c[7][e[1]]A=c[7][e[2]]D=c[7][e[3]]e[7]=cc(y[7],A[7],D[7])a=e[8]b=y[3]if k(a,b)>0then
az=y[6]+A[6]+D[6]if az==3then
G[#G+1]={y[5],A[5],D[5],e[4],e[5],e[6],e[7]}elseif az>=-1then
if y[6]==-az then
af=y[5]W=A[5]O=D[5]elseif A[6]==-az then
af=A[5]W=y[5]O=D[5]else
af=D[5]W=A[5]O=y[5]end
if az==1then
aL=aJ(aN(aO(W,af),1000),W)br=aJ(aN(aO(O,af),1000),O)G[#G+1]={W,aL,O,e[4],e[5],e[6],e[7]}G[#G+1]={O,aL,br,e[4],e[5],e[6],e[7]}else
aL=aJ(aN(aO(af,W),1000),W)br=aJ(aN(aO(af,O),1000),O)G[#G+1]={af,aL,br,e[4],e[5],e[6],e[7]}end
end
end
end
end
bM=bd
bg=2^16
for d,c in aC(ab)do
for h=1,#c[8]do
e=c[8][h]cT=cY({0,0,0},bh,c[7][e[1]][3],c[7][e[2]][3],c[7][e[3]][3])if cT and bi<bg then
bM=bu
bg=bi
ck=c
end
end
end
if bM then
cm=bu
ct=w(f(bh,bg),N)aD(ck,ct,f(bh,Z))if ag(2)then
ck[12]={0,-9.81,0}end
ay=be(g(ct,N),bO)bQ={ay[1]*ax/ay[3],ay[2]*ax/ay[3]}end
bf=0
for d,l in aC(ab)do
for h,n in aC(ab)do
if d~=h and(l[10]>0or n[10]>0or l[11]>0or n[11]>0)and bL(l[1],n[1])<=l[13]+n[13]then
bf=bf+1
S=l[9]al=n[9]t=cX(S,al)if t then
bm=l[15][h]or{}an(S,t[1])K=aY
an(al,f(t[1],-1))P=aY
bm[#bm+1]={K,P}aH={}for ao,r in aC(bm)do
K,P=ah(r)if#K==1then
s=S[K[1]][2]elseif#P==1then
s=al[P[1]][2]elseif#K==2 and#P==2then
bt=g(S[K[2]][2],S[K[1]][2])cg=g(al[P[2]][2],al[P[1]][2])cd=j(cg,j(bt,cg))s=w(S[K[1]][2],f(bt,k(g(al[P[1]][2],S[K[1]][2]),cd)/k(bt,cd)))else
s=S[K[1]][2]end
bk=w(j(l[5],g(s,l[1])),l[2])bp=w(j(n[5],g(s,n[1])),n[2])aQ=g(bk,bp)aR=k(t[1],aQ)if aR>0then
aH[#aH+1]=r
cL=ba(l,s,t[1])+ba(n,s,t[1])cE=aR*1
Z=cE/cL
aD(l,s,f(t[1],-Z))aD(n,s,f(t[1],Z))bk=w(j(l[5],g(s,l[1])),l[2])bp=w(j(n[5],g(s,n[1])),n[2])aQ=g(bk,bp)aR=k(t[1],aQ)ch=g(aQ,f(t[1],aR))cs=bL(ch,{0,0,0})if cs>.001then
bb=bw(ch)cA=ba(l,s,bb)+ba(n,s,bb)ce=cv(cs/cA,Z)aD(l,s,f(bb,-ce))aD(n,s,f(bb,ce))end
if ao==1then
co=l[10]+n[10]l[1]=w(l[1],f(t[1],-t[2]*l[10]/co))n[1]=w(n[1],f(t[1],t[2]*n[10]/co))end
end
end
if#aH>3then
bn(aH,1)end
l[15][h]=aH
end
end
end
end
table.sort(G,function(a,b)return a[7]>b[7]end)b_=bd
end
aT=aT+1
end
function onDraw()ae=screen
local cQ,cV,cW,as,cM=ae.drawTriangleF,ae.drawTriangle,ae.drawRectF,ae.setColor,ae.drawText
Q=ae.getWidth()cR=ae.getHeight()x=Q/2
aa=cR/2
ax=cx(cB/2)*x
as(z,z,z)if bz then
for d=1,#G do
e=G[d]y=e[1]A=e[2]D=e[3]as(e[4],e[5],e[6])cQ(y[1]+x,y[2]+aa,A[1]+x,A[2]+aa,D[1]+x,D[2]+aa)as(e[4]*U,e[5]*U,e[6]*U)cV(y[1]+x,y[2]+aa-U,A[1]+x,A[2]+aa-U,D[1]+x,D[2]+aa-U)end
as(z,z,z)cM(1,1,bf)as(ah(aB))if cm then
aU=30/ay[3]cW(bQ[1]+x-(aU//2),bQ[2]+aa-(aU//2),aU,aU)end
end
end
