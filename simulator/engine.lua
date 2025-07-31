T=math
cb=T.max
cc=T.min
aV=math.sqrt
dm=T.floor
cP=T.pi
ad=input.getNumber
ae=input.getBool
dg=output.setBool
bh=true
bz=false
aB=ipairs
de=T.abs
bj=table.remove
bl=string
au=T.sin
aF=T.cos
cH=T.tan
R=table.unpack
cq=math.huge

function be(a,b)return{(a[1]+b[1]),(a[2]+b[2])}end
function aU(a,b)return{(a[1]-b[1]),(a[2]-b[2])}end
function a_(a,b)return{a[1]*b,a[2]*b}end



function y(a,b)return{a[1]+b[1],a[2]+b[2],a[3]+b[3]}end
function f(a,b)return{a[1]-b[1],a[2]-b[2],a[3]-b[3]}end
function g(a,b)return{a[1]*b,a[2]*b,a[3]*b}end

function bF(a,b,p)return j(f(b,a),f(p,a))end
function br(a)return g(a,1/aV(a[1]^2+a[2]^2+a[3]^2))end
function cg(a,b)return aV((a[1]-b[1])^2+(a[2]-b[2])^2+(a[3]-b[3])^2)end

t={}bn=1
di=3
Y=1

cd=bh
bb=0
bi=0
P={0,0,-3}G={0,0,0}bP=62.5
ct=cP/180
bv=5/bP
bQ=90*ct/bP
cZ=90*ct
aw=1
bi=0
bD=1/62.5

function bA(ba,A)B=_ENV
while A~=0 do
A,O,cs,dd=R(t[5][ba])W,as=B[cs],B[dd]

if A==1 then
B[O]=cs
elseif A==2 then
B[O][W]=as
elseif A==3 then
B[O]=W[as]elseif A==4 then
B[O]={}elseif A==5 then
B[O]=W-as
elseif A==6 then
B[O]=W/as
elseif A==7 then
B[O]=W(R(as))elseif A==8 then
B[O]=#W
elseif A==9 then
if B[O]then
ba=W-1
end
elseif A==10 then
B[O]=W>as
end

ba=ba+1
end
end

function bc(c,bp,ci)bL=f(bp,c[1])return k(j(g(j(bL,ci),c[11]),bL),ci)+c[10]end

function aJ(c,bp,cf)dc=f(bp,c[1])
c[5]=y(c[5],g(j(dc,cf),c[11]))c[2]=y(c[2],g(cf,c[10]))end

function an(cN,m)local ah=-cq
for d,q in aB(cN)do
ao=k(q[2],m)if de(ao-ah)<.0005 then
aZ[#aZ+1]=d
elseif ao>ah then
cO=q[2]aZ={d}ah=ao
end
end
return cO
end

function cY(bU,bT)m={1,0,0}r={}for dk=1,32 do
i=f(an(bU,m),an(bT,g(m,-1)))
if k(i,m)<=0 then
return
end

r={i,r[1],r[2],r[3]}
a,b,p,ag=R(r)
if ag then
H=f(b,a)ai=f(p,a)cv=f(ag,a)x=g(a,-1)
X=j(H,ai)cw=j(ai,cv)cu=j(cv,H)
if k(X,x)>0 then
r={a,b,p}m=X
elseif k(cw,x)>0 then
r={a,p,ag}m=cw
elseif k(cu,x)>0 then
r={a,ag,b}m=cu
else


af={{a,b,p},{a,p,ag},{a,ag,b},{b,ag,p}}for d,q in ipairs(af)do
q[4]=br(bF(q[1],q[2],q[3]))end

for dj=1,32 do
ah=cq
for d,q in ipairs(af)do
ao=k(q[1],q[4])if ao<ah then
ah=ao
co=q
end
end
m=co[4]
i=f(an(bU,m),an(bT,g(m,-1)))
if k(i,m)-.001<=ah then
return{co[4],k(i,m)}end

aA={}for d=#af,1,-1 do
bd=af[d]if k(bd[4],f(i,bd[1]))>0 then
for h=1,3 do
aE={bd[h],bd[(h%3)+1]}for am,cl in ipairs(aA)do
if cl[1]==aE[2]and cl[2]==aE[1]then
bj(aA,am)aE=dh
break
end
end

if aE then
aA[#aA+1]=aE
end
end



bj(af,d)end
end



for d,q in ipairs(aA)do
az={q[1],q[2],i}az[4]=br(bF(az[1],az[2],az[3]))




af[#af+1]=az
end
end
return
end
elseif p then
H=f(b,a)ai=f(p,a)x=g(a,-1)
X=j(H,ai)
if k(j(X,ai),x)>0 then
r={a,p}m=j(j(ai,x),ai)elseif k(j(H,X),x)>0 then
r={a,b}m=j(j(H,x),H)else
if k(X,x)>0 then

m=X;
else
r={a,p,b}m=g(X,-1)end
end
elseif b then
H=f(b,a)x=g(a,-1)
if k(H,x)>0 then
m=j(j(H,x),H)else
r={a}m=x
end
else
r={a}m=g(a,-1)end
end

end

function df(M,F)F=F or{}b_={}h=1
for d=t[1][M][1],t[1][M][2]do
o=t[2][d]b_[h]={{o[1],o[2],o[3]},{}}h=h+1
end
bZ={}h=1
for d=t[1][M][3],t[1][M][4]do
o=t[3][d]bZ[h]=o
h=h+1
end
ca={}h=1
for d=t[1][M][5],t[1][M][6]do
o=t[2][d]ca[h]={{o[1],o[2],o[3]},{}}h=h+1
end

cQ={F[1]or{0,0,0},F[2]or{0,0,0},F[3]or{0,0,0},F[4]or{1,0,0,0},F[5]or{0,0,0},F[6]or{0,0,0},b_,bZ,ca,F[7]or 1,F[8]or 1,F[9]or{0,0,0},t[1][M][7],M,{},}al[#al+1]=cQ
end

function cV(cJ,bR,a,b,p)cz=f(b,a)cy=f(p,a)cx=j(cz,cy)cj=-k(bR,cx)by=1.0/cj
cB=f(cJ,a)cA=j(cB,bR)bK=k(cy,cA)*by
q=-k(cz,cA)*by
bk=k(cB,cx)*by
return(-cj>=1e-6 and bk>=.0 and bK>=.0 and q>=.0 and(bK+q)<=1.0)end

function j(a,b)return{a[2]*b[3]-a[3]*b[2],a[3]*b[1]-a[1]*b[3],a[1]*b[2]-a[2]*b[1]}end

function k(a,b)return a[1]*b[1]+a[2]*b[2]+a[3]*b[3]end

function cC(L)if L[1]==0 and L[2]==0 and L[3]==0 then
return{1,0,0,0}else
return{0,L[1],L[2],L[3]}end
end

function cD(aY,L)local bs=cR(aY,cC(L))for d=1,4 do
bs[d]=aY[d]+bs[d]*.5
end
return bs
end

function cR(cM,cL)local aQ,aP,aN,aL=R(cM)local v,aO,aM,aK=R(cL)return{aQ*v-aP*aO-aN*aM-aL*aK,aQ*aO+aP*v+aN*aK-aL*aM,aQ*aM-aP*aK+aN*v+aL*aO,aQ*aK+aP*aM-aN*aO+aL*v}end

function bu(L,cU)local bY={}for h=1,3 do
o=0
for am=1,3 do
o=o+L[am]*cU[h][am]end
bY[h]=o
end
return bY
end













function bX(a,aG)aG=1/aV(a[1]^2+a[2]^2+a[3]^2+a[4]^2)return{a[1]*aG,a[2]*aG,a[3]*aG,a[4]*aG}end

function cK(aY)local Q,K,J,I=R(aY)return{{1-(2*J*J+2*I*I),2*K*J+2*I*Q,2*K*I-2*J*Q},{2*K*J-2*I*Q,1-(2*K*K+2*I*I),2*J*I+2*K*Q},{2*K*I+2*J*Q,2*J*I-2*K*Q,1-(2*K*K+2*J*J)},}end

function httpReply(a,b,p)dl=bb//2
bb=0
end

function onTick()for h=1,1 do
if ae(32)and not bx then
bo=property.getText(bn)d=1
E=""
o=bl.sub(bo,d,d)while o~=""do
bq=bl.byte(o)if bq<45 then
if bq>33 then
E=(E..bq-35)+0
end

if Y==1 then
ck=E
t[E]=t[E]or{}elseif Y==2 then
cW=E
aD=0
elseif Y==3 then
bG=E
else
if aD==0 then
aD=cW
bG=bG-1
bE={}t[ck][#t[ck]+1]=bE
end
bE[#bE+1]=E
aD=aD-1
Y=cb(aD,bG)>0 and Y-1 or 0
end
Y=Y+1
E=""
else
E=E..o
end
d=d+1
o=bl.sub(bo,d,d)end
bn=bn+1
bx=bo==""
end
end

if bx then
bi=bi+1
if cd then
bA(1)bA(6)
















end

bA(6)
if ae(31)then
P[2]=P[2]+ad(2)*bv
else
P[1]=P[1]+(ad(1)*aF(G[1])-ad(2)*au(G[1]))*bv
P[3]=P[3]+(ad(1)*au(G[1])+ad(2)*aF(G[1]))*bv
end

G[1]=G[1]-ad(3)*bQ
G[2]=G[2]+ad(4)*bQ






ab=0
if ae(31)then
bw=.5
else
bw=.1
end
ay={255,255,255}if ae(1)then
ab=-bw
ay={0,0,255}end
if ae(3)then
ab=bw
ay={255,0,0}end
if not ae(31)then
for d=1,3 do
ay[d]=cc(ay[d]+50,255)end
end









a=G[1]b=G[2]p=G[3]ar=aF(a)ak=au(a)aq=aF(b)aj=au(b)aI=aF(p)ax=au(p)


















cp={{ar*aI-ak*aj*ax,-aq*ax,ar*aj*ax+aI*ak},{ar*ax+aI*ak*aj,aq*aI,ak*ax-ar*aI*aj},{-aq*ak,aj,ar*aq}}
bI={-ak*aq,aj,ar*aq}

bV=bz
C={}
for M=1,#al do
c=al[M]c[4]=bX(cD(c[4],g(c[5],-bD)))c[1]=y(c[1],g(c[2],bD))c[2]=y(c[2],g(c[3],bD))c[3]=g(c[12],1)c[2]=g(c[2],.9995)c[5]=g(c[5],.9995)
da=cK(bX(c[4]))

for d=7,9,2 do
for h=1,#c[d]do
i=c[d][h]i[2]=bu(i[1],da)i[2]=y(i[2],c[1])i[3]=f(i[2],P)
i[4]=bu(i[3],cp)bB=i[3]i[7]=aV(bB[1]^2+bB[2]^2+bB[3]^2)
i[5]={i[4][1]*aw/i[4][3],-i[4][2]*aw/i[4][3]}i[6]=i[4][3]>0 and 1 or-1

end
end

if c[11]>0 or not c[8][1][8]then
for d=1,#c[8]do
e=c[8][d]e[8]=bF(c[7][e[1]][2],c[7][e[2]][2],c[7][e[3]][2])end
end

for d=1,#c[8]do
e=c[8][d]w=c[7][e[1]]z=c[7][e[2]]D=c[7][e[3]]e[7]=cb(w[7],z[7],D[7])a=e[8]b=w[3]if k(a,b)>0 then
av=w[6]+z[6]+D[6]if av==3 then
C[#C+1]={w[5],z[5],D[5],e[4],e[5],e[6],e[7]}elseif av>=-1 then
if w[6]==-av then
aa=w[5]_=z[5]S=D[5]elseif z[6]==-av then
aa=z[5]_=w[5]S=D[5]else
aa=D[5]_=z[5]S=w[5]end
if av==1 then
aW=be(a_(aU(_,aa),1000),_)bm=be(a_(aU(S,aa),1000),S)

C[#C+1]={_,aW,S,e[4],e[5],e[6],e[7]}C[#C+1]={S,aW,bm,e[4],e[5],e[6],e[7]}else
aW=be(a_(aU(aa,_),1000),_)bm=be(a_(aU(aa,S),1000),S)
C[#C+1]={aa,aW,bm,e[4],e[5],e[6],e[7]}end
end
end
end
end

bS=bz
bJ=2^16
for d,c in aB(al)do
for h=1,#c[8]do
e=c[8][h]db=cV({0,0,0},bI,c[7][e[1]][3],c[7][e[2]][3],c[7][e[3]][3])if db and bk<bJ then
bS=bh
bJ=bk
cr=c
end
end
end

if bS then
bV=bh
cn=y(g(bI,bJ),P)aJ(cr,cn,g(bI,ab))if ae(2)then
cr[12]={0,-9.81,0}end

aH=bu(f(cn,P),cp)cm={aH[1]*aw/aH[3],aH[2]*aw/aH[3]}end


bH=0
for d,l in aB(al)do
for h,n in aB(al)do
if d~=h and(l[10]>0 or n[10]>0 or l[11]>0 or n[11]>0)and cg(l[1],n[1])<=l[13]+n[13]then
bH=bH+1
V=l[9]ap=n[9]
u=cY(V,ap)
if u then
bt=l[15][h]or{}

an(V,u[1])N=aZ
an(ap,g(u[1],-1))U=aZ
bt[#bt+1]={N,U}aC={}
for am,r in aB(bt)do
N,U=R(r)
if#N==1 then
s=V[N[1]][2]elseif#U==1 then
s=ap[U[1]][2]elseif#N==2 and#U==2 then
bC=f(V[N[2]][2],V[N[1]][2])ch=f(ap[U[2]][2],ap[U[1]][2])bW=j(ch,j(bC,ch))s=y(V[N[1]][2],g(bC,k(f(ap[U[1]][2],V[N[1]][2]),bW)/k(bC,bW)))else
s=V[N[1]][2]end


bg=y(j(l[5],f(s,l[1])),l[2])bf=y(j(n[5],f(s,n[1])),n[2])aT=f(bg,bf)
aS=k(u[1],aT)if aS>0 then
aC[#aC+1]=r










cS=bc(l,s,u[1])+bc(n,s,u[1])

c_=aS*1
ab=c_/cS

aJ(l,s,g(u[1],-ab))aJ(n,s,g(u[1],ab))



bg=y(j(l[5],f(s,l[1])),l[2])bf=y(j(n[5],f(s,n[1])),n[2])aT=f(bg,bf)
aS=k(u[1],aT)
bM=f(aT,g(u[1],aS))
bN=cg(bM,{0,0,0})if bN>.001 then
aR=br(bM)cT=bc(l,s,aR)+bc(n,s,aR)ce=cc(bN/cT,ab)
aJ(l,s,g(aR,-ce))aJ(n,s,g(aR,ce))end

if am==1 then
bO=l[10]+n[10]l[1]=y(l[1],g(u[1],-u[2]*l[10]/bO))n[1]=y(n[1],g(u[1],u[2]*n[10]/bO))end
end
end
if#aC>3 then
bj(aC,1)end
l[15][h]=aC
end
end
end
end


table.sort(C,function(a,b)return a[7]>b[7]end)
cd=bz
end

bb=bb+1

end

function onDraw()Z=screen
local cE,cF,cI,at,cG=Z.drawTriangleF,Z.drawTriangle,Z.drawRectF,Z.setColor,Z.drawText
Q=Z.getWidth()cX=Z.getHeight()v=Q/2
ac=cX/2
aw=cH(cZ/2)*v


at(255,255,255)









if bx then
for d=1,#C do
e=C[d]w=e[1]z=e[2]D=e[3]at(e[4],e[5],e[6])cE(w[1]+v,w[2]+ac,z[1]+v,z[2]+ac,D[1]+v,D[2]+ac)at(e[4]*.5,e[5]*.5,e[6]*.5)cF(w[1]+v,w[2]+ac-.5,z[1]+v,z[2]+ac-.5,D[1]+v,D[2]+ac-.5)end






















at(255,255,255)
cG(1,1,bH)
































at(R(ay))
if bV then
aX=30/aH[3]cI(cm[1]+v-(aX//2),cm[2]+ac-(aX//2),aX,aX)end
end
end