R=math
bW=R.max
cO=R.min
aN=math.sqrt
dl=R.floor
cJ=R.pi
dk=input.getNumber
bY=input.getBool
db=output.setBool
ba=true
br=false
au=ipairs
c_=R.abs
bc=table.remove
be=string
bf=R.sin
bz=R.cos
cB=R.tan
P=table.unpack
ck=math.huge

function aY(a,b)return{(a[1]+b[1]),(a[2]+b[2])}end
function aM(a,b)return{(a[1]-b[1]),(a[2]-b[2])}end
function aT(a,b)return{a[1]*b,a[2]*b}end



function y(a,b)return{a[1]+b[1],a[2]+b[2],a[3]+b[3]}end
function f(a,b)return{a[1]-b[1],a[2]-b[2],a[3]-b[3]}end
function g(a,b)return{a[1]*b,a[2]*b,a[3]*b}end

function bx(a,b,p)return j(f(b,a),f(p,a))end
function bl(a)return g(a,1/aN(a[1]^2+a[2]^2+a[3]^2))end
function ca(a,b)return aN((a[1]-b[1])^2+(a[2]-b[2])^2+(a[3]-b[3])^2)end

t={}bh=1
dg=3
W=1

bX=ba
aV=0
bb=0
bD={0,0,-3}bC={0,0,0}bK=62.5
cn=cJ/180
df=5/bK
dc=90*cn/bK
cU=90*cn
aq=1
bb=0
bv=1/62.5

function bs(aU,A)B=_ENV
while A~=0 do
A,N,cm,cZ=P(t[5][aU])U,an=B[cm],B[cZ]

if A==1 then
B[N]=cm
elseif A==2 then
B[N][U]=an
elseif A==3 then
B[N]=U[an]elseif A==4 then
B[N]={}elseif A==5 then
B[N]=U-an
elseif A==6 then
B[N]=U/an
elseif A==7 then
B[N]=U(P(an))elseif A==8 then
B[N]=#U
elseif A==9 then
if B[N]then
aU=U-1
end
elseif A==10 then
B[N]=U>an
end

aU=aU+1
end
end

function aW(c,bj,cc)bG=f(bj,c[1])return k(j(g(j(bG,cc),c[11]),bG),cc)+c[10]end

function aB(c,bj,b_)cY=f(bj,c[1])
c[5]=y(c[5],g(j(cY,b_),c[11]))c[2]=y(c[2],g(b_,c[10]))end

function ai(cH,m)local ac=-ck
for e,q in au(cH)do
aj=k(q[2],m)if c_(aj-ac)<.0005 then
aS[#aS+1]=e
elseif aj>ac then
cI=q[2]aS={e}ac=aj
end
end
return cI
end

function cT(bO,bN)m={1,0,0}r={}for di=1,32 do
i=f(ai(bO,m),ai(bN,g(m,-1)))
if k(i,m)<=0 then
return
end

r={i,r[1],r[2],r[3]}
a,b,p,ab=P(r)
if ab then
G=f(b,a)ad=f(p,a)cp=f(ab,a)x=g(a,-1)
V=j(G,ad)cq=j(ad,cp)co=j(cp,G)
if k(V,x)>0 then
r={a,b,p}m=V
elseif k(cq,x)>0 then
r={a,p,ab}m=cq
elseif k(co,x)>0 then
r={a,ab,b}m=co
else


aa={{a,b,p},{a,p,ab},{a,ab,b},{b,ab,p}}for e,q in ipairs(aa)do
q[4]=bl(bx(q[1],q[2],q[3]))end

for dh=1,32 do
ac=ck
for e,q in ipairs(aa)do
aj=k(q[1],q[4])if aj<ac then
ac=aj
ci=q
end
end
m=ci[4]
i=f(ai(bO,m),ai(bN,g(m,-1)))
if k(i,m)-.001<=ac then
return{ci[4],k(i,m)}end

at={}for e=#aa,1,-1 do
aX=aa[e]if k(aX[4],f(i,aX[1]))>0 then
for h=1,3 do
ax={aX[h],aX[(h%3)+1]}for ah,cf in ipairs(at)do
if cf[1]==ax[2]and cf[2]==ax[1]then
bc(at,ah)ax=de
break
end
end

if ax then
at[#at+1]=ax
end
end



bc(aa,e)end
end



for e,q in ipairs(at)do
as={q[1],q[2],i}as[4]=bl(bx(as[1],as[2],as[3]))




aa[#aa+1]=as
end
end
return
end
elseif p then
G=f(b,a)ad=f(p,a)x=g(a,-1)
V=j(G,ad)
if k(j(V,ad),x)>0 then
r={a,p}m=j(j(ad,x),ad)elseif k(j(G,V),x)>0 then
r={a,b}m=j(j(G,x),G)else
if k(V,x)>0 then

m=V;
else
r={a,p,b}m=g(V,-1)end
end
elseif b then
G=f(b,a)x=g(a,-1)
if k(G,x)>0 then
m=j(j(G,x),G)else
r={a}m=x
end
else
r={a}m=g(a,-1)end
end

end

function da(L,F)F=F or{}bU={}h=1
for e=t[1][L][1],t[1][L][2]do
o=t[2][e]bU[h]={{o[1],o[2],o[3]},{}}h=h+1
end
bT={}h=1
for e=t[1][L][3],t[1][L][4]do
o=t[3][e]bT[h]=o
h=h+1
end
bV={}h=1
for e=t[1][L][5],t[1][L][6]do
o=t[2][e]bV[h]={{o[1],o[2],o[3]},{}}h=h+1
end

cK={F[1]or{0,0,0},F[2]or{0,0,0},F[3]or{0,0,0},F[4]or{1,0,0,0},F[5]or{0,0,0},F[6]or{0,0,0},bU,bT,bV,F[7]or 1,F[8]or 1,F[9]or{0,0,0},t[1][L][7],L,{},}ag[#ag+1]=cK
end

function cQ(cD,bL,a,b,p)ct=f(b,a)cs=f(p,a)cr=j(ct,cs)cd=-k(bL,cr)bq=1.0/cd
cv=f(cD,a)cu=j(cv,bL)bF=k(cs,cu)*bq
q=-k(ct,cu)*bq
bd=k(cv,cr)*bq
return(-cd>=1e-6 and bd>=.0 and bF>=.0 and q>=.0 and(bF+q)<=1.0)end

function j(a,b)return{a[2]*b[3]-a[3]*b[2],a[3]*b[1]-a[1]*b[3],a[1]*b[2]-a[2]*b[1]}end

function k(a,b)return a[1]*b[1]+a[2]*b[2]+a[3]*b[3]end

function cw(K)if K[1]==0 and K[2]==0 and K[3]==0 then
return{1,0,0,0}else
return{0,K[1],K[2],K[3]}end
end

function cx(aQ,K)local bm=cL(aQ,cw(K))for e=1,4 do
bm[e]=aQ[e]+bm[e]*.5
end
return bm
end

function cL(cG,cF)local aI,aH,aF,aD=P(cG)local v,aG,aE,aC=P(cF)return{aI*v-aH*aG-aF*aE-aD*aC,aI*aG+aH*v+aF*aC-aD*aE,aI*aE-aH*aC+aF*v+aD*aG,aI*aC+aH*aE-aF*aG+aD*v}end

function bo(K,cP)local bS={}for h=1,3 do
o=0
for ah=1,3 do
o=o+K[ah]*cP[h][ah]end
bS[h]=o
end
return bS
end













function bR(a,ay)ay=1/aN(a[1]^2+a[2]^2+a[3]^2+a[4]^2)return{a[1]*ay,a[2]*ay,a[3]*ay,a[4]*ay}end

function cE(aQ)local O,J,I,H=P(aQ)return{{1-(2*I*I+2*H*H),2*J*I+2*H*O,2*J*H-2*I*O},{2*J*I-2*H*O,1-(2*J*J+2*H*H),2*I*H+2*J*O},{2*J*H+2*I*O,2*I*H-2*J*O,1-(2*J*J+2*I*I)},}end

function httpReply(a,b,p)dj=aV//2
aV=0
end

function onTick()for h=1,1 do
if bY(32)and not bp then
bi=property.getText(bh)e=1
E=""
o=be.sub(bi,e,e)while o~=""do
bk=be.byte(o)if bk<45 then
if bk>33 then
E=(E..bk-35)+0
end

if W==1 then
ce=E
t[E]=t[E]or{}elseif W==2 then
cR=E
aw=0
elseif W==3 then
by=E
else
if aw==0 then
aw=cR
by=by-1
bw={}t[ce][#t[ce]+1]=bw
end
bw[#bw+1]=E
aw=aw-1
W=bW(aw,by)>0 and W-1 or 0
end
W=W+1
E=""
else
E=E..o
end
e=e+1
o=be.sub(bi,e,e)end
bh=bh+1
bp=bi==""
end
end

if bp then
bb=bb+1
if bX then
bs(1)bs(11)
















end

bs(62)












































a=bC[1]b=bC[2]p=bC[3]am=bz(a)af=bf(a)al=bz(b)ae=bf(b)aA=bz(p)ar=bf(p)


















cj={{am*aA-af*ae*ar,-al*ar,am*ae*ar+aA*af},{am*ar+aA*af*ae,al*aA,af*ar-am*aA*ae},{-al*af,ae,am*al}}
bB={-af*al,ae,am*al}

bP=br
C={}
for L=1,#ag do
c=ag[L]c[4]=bR(cx(c[4],g(c[5],-bv)))c[1]=y(c[1],g(c[2],bv))c[2]=y(c[2],g(c[3],bv))c[3]=g(c[12],1)c[2]=g(c[2],.9995)c[5]=g(c[5],.9995)
cW=cE(bR(c[4]))

for e=7,9,2 do
for h=1,#c[e]do
i=c[e][h]i[2]=bo(i[1],cW)i[2]=y(i[2],c[1])i[3]=f(i[2],bD)
i[4]=bo(i[3],cj)bt=i[3]i[7]=aN(bt[1]^2+bt[2]^2+bt[3]^2)
i[5]={i[4][1]*aq/i[4][3],-i[4][2]*aq/i[4][3]}i[6]=i[4][3]>0 and 1 or-1

end
end

if c[11]>0 or not c[8][1][8]then
for e=1,#c[8]do
d=c[8][e]d[8]=bx(c[7][d[1]][2],c[7][d[2]][2],c[7][d[3]][2])end
end

for e=1,#c[8]do
d=c[8][e]w=c[7][d[1]]z=c[7][d[2]]D=c[7][d[3]]d[7]=bW(w[7],z[7],D[7])a=d[8]b=w[3]if k(a,b)>0 then
ap=w[6]+z[6]+D[6]if ap==3 then
C[#C+1]={w[5],z[5],D[5],d[4],d[5],d[6],d[7]}elseif ap>=-1 then
if w[6]==-ap then
Z=w[5]Y=z[5]Q=D[5]elseif z[6]==-ap then
Z=z[5]Y=w[5]Q=D[5]else
Z=D[5]Y=z[5]Q=w[5]end
if ap==1 then
aO=aY(aT(aM(Y,Z),1000),Y)bg=aY(aT(aM(Q,Z),1000),Q)

C[#C+1]={Y,aO,Q,d[4],d[5],d[6],d[7]}C[#C+1]={Q,aO,bg,d[4],d[5],d[6],d[7]}else
aO=aY(aT(aM(Z,Y),1000),Y)bg=aY(aT(aM(Z,Q),1000),Q)
C[#C+1]={Z,aO,bg,d[4],d[5],d[6],d[7]}end
end
end
end
end

bM=br
bE=2^16
for e,c in au(ag)do
for h=1,#c[8]do
d=c[8][h]cX=cQ({0,0,0},bB,c[7][d[1]][3],c[7][d[2]][3],c[7][d[3]][3])if cX and bd<bE then
bM=ba
bE=bd
cl=c
end
end
end

if bM then
bP=ba
ch=y(g(bB,bE),bD)aB(cl,ch,g(bB,aR))if bY(2)then
cl[12]={0,-9.81,0}end

az=bo(f(ch,bD),cj)cg={az[1]*aq/az[3],az[2]*aq/az[3]}end


bA=0
for e,l in au(ag)do
for h,n in au(ag)do
if e~=h and(l[10]>0 or n[10]>0 or l[11]>0 or n[11]>0)and ca(l[1],n[1])<=l[13]+n[13]then
bA=bA+1
T=l[9]ak=n[9]
u=cT(T,ak)
if u then
bn=l[15][h]or{}

ai(T,u[1])M=aS
ai(ak,g(u[1],-1))S=aS
bn[#bn+1]={M,S}av={}
for ah,r in au(bn)do
M,S=P(r)
if#M==1 then
s=T[M[1]][2]elseif#S==1 then
s=ak[S[1]][2]elseif#M==2 and#S==2 then
bu=f(T[M[2]][2],T[M[1]][2])cb=f(ak[S[2]][2],ak[S[1]][2])bQ=j(cb,j(bu,cb))s=y(T[M[1]][2],g(bu,k(f(ak[S[1]][2],T[M[1]][2]),bQ)/k(bu,bQ)))else
s=T[M[1]][2]end


a_=y(j(l[5],f(s,l[1])),l[2])aZ=y(j(n[5],f(s,n[1])),n[2])aL=f(a_,aZ)
aK=k(u[1],aL)if aK>0 then
av[#av+1]=r










cM=aW(l,s,u[1])+aW(n,s,u[1])

cV=aK*1
aR=cV/cM

aB(l,s,g(u[1],-aR))aB(n,s,g(u[1],aR))



a_=y(j(l[5],f(s,l[1])),l[2])aZ=y(j(n[5],f(s,n[1])),n[2])aL=f(a_,aZ)
aK=k(u[1],aL)
bH=f(aL,g(u[1],aK))
bI=ca(bH,{0,0,0})if bI>.001 then
aJ=bl(bH)cN=aW(l,s,aJ)+aW(n,s,aJ)bZ=cO(bI/cN,aR)
aB(l,s,g(aJ,-bZ))aB(n,s,g(aJ,bZ))end

if ah==1 then
bJ=l[10]+n[10]l[1]=y(l[1],g(u[1],-u[2]*l[10]/bJ))n[1]=y(n[1],g(u[1],u[2]*n[10]/bJ))end
end
end
if#av>3 then
bc(av,1)end
l[15][h]=av
end
end
end
end


table.sort(C,function(a,b)return a[7]>b[7]end)
bX=br
end

aV=aV+1

end

function onDraw()X=screen
local cy,cz,cC,ao,cA=X.drawTriangleF,X.drawTriangle,X.drawRectF,X.setColor,X.drawText
O=X.getWidth()cS=X.getHeight()v=O/2
_=cS/2
aq=cB(cU/2)*v


ao(255,255,255)









if bp then
for e=1,#C do
d=C[e]w=d[1]z=d[2]D=d[3]ao(d[4],d[5],d[6])cy(w[1]+v,w[2]+_,z[1]+v,z[2]+_,D[1]+v,D[2]+_)ao(d[4]*.5,d[5]*.5,d[6]*.5)cz(w[1]+v,w[2]+_-.5,z[1]+v,z[2]+_-.5,D[1]+v,D[2]+_-.5)end






















ao(255,255,255)
cA(1,1,bA)
































ao(P(dd))
if bP then
aP=30/az[3]cC(cg[1]+v-(aP//2),cg[2]+_-(aP//2),aP,aP)end
end
end