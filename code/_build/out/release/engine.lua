
z=255
N=.5
O=math
bV=O.max
bC=O.min
sqrt=math.sqrt
cT=O.floor
pi=O.pi
Y=input.getNumber
U=input.getBool
cY=output.setBool
bh=true
by=false
ap=ipairs
abs=O.abs
bo=table.remove
bl=string
sin=O.sin
cos=O.cos
tan=O.tan
unpack=table.unpack
bX=math.huge
function aY(_,a)return{(_[1]+a[1]),(_[2]+a[2])}end
function aT(_,a)return{(_[1]-a[1]),(_[2]-a[2])}end
function aU(_,a)return{_[1]*a,_[2]*a}end
function w(_,a)return{_[1]+a[1],_[2]+a[2],_[3]+a[3]}end
function g(_,a)return{_[1]-a[1],_[2]-a[2],_[3]-a[3]}end
function e(_,a)return{_[1]*a,_[2]*a,_[3]*a}end
function ba(_,a,o)return i(g(a,_),g(o,_))end
function bf(_)return e(_,1/sqrt(_[1]^2+_[2]^2+_[3]^2))end
function cm(_,a)return sqrt((_[1]-a[1])^2+(_[2]-a[2])^2+(_[3]-a[3])^2)end
s={}bn=1
cX=3
X=1
bY=bh
aO=0
bg=0
M={0,0,-3}E={0,0,0}bZ=62.5
ck=pi/180
be=5/bZ
bK=90*ck/bZ
cx=90*ck
au=1
bg=0
bd=1/62.5
function aG(b,b_,cc)cf=g(b_,b[1])return j(i(e(i(cf,cc),b[11]),cf),cc)+b[10]end
function aE(b,b_,bM)cP=g(b_,b[1])b[5]=w(b[5],e(i(cP,bM),b[11]))b[2]=w(b[2],e(bM,b[10]))end
function aj(cL,l)local ag=-bX
for c,p in ap(cL)do
an=j(p[2],l)if abs(an-ag)<.0005 then
aJ[#aJ+1]=c
elseif an>ag then
cR=p[2]aJ={c}ag=an
end
end
return cR
end
function cB(cg,bO)l={1,0,0}q={}for cV=1,32 do
h=g(aj(cg,l),aj(bO,e(l,-1)))if j(h,l)<=0 then
return
end
q={h,q[1],q[2],q[3]}_,a,o,ab=unpack(q)if ab then
B=g(a,_)ad=g(o,_)bH=g(ab,_)x=e(_,-1)Q=i(B,ad)ci=i(ad,bH)ce=i(bH,B)if j(Q,x)>0 then
q={_,a,o}l=Q
elseif j(ci,x)>0 then
q={_,o,ab}l=ci
elseif j(ce,x)>0 then
q={_,ab,a}l=ce
else
ae={{_,a,o},{_,o,ab},{_,ab,a},{a,ab,o}}for c,p in ipairs(ae)do
p[4]=bf(ba(p[1],p[2],p[3]))end
for cW=1,32 do
ag=bX
for c,p in ipairs(ae)do
an=j(p[1],p[4])if an<ag then
ag=an
c_=p
end
end
l=c_[4]h=g(aj(cg,l),aj(bO,e(l,-1)))if j(h,l)-.001<=ag then
return{c_[4],j(h,l)}end
aD={}for c=#ae,1,-1 do
aI=ae[c]if j(aI[4],g(h,aI[1]))>0 then
for f=1,3 do
av={aI[f],aI[(f%3)+1]}for ai,cb in ipairs(aD)do
if cb[1]==av[2]and cb[2]==av[1]then
bo(aD,ai)av=cU
break
end
end
if av then
aD[#aD+1]=av
end
end
bo(ae,c)end
end
for c,p in ipairs(aD)do
ay={p[1],p[2],h}ay[4]=bf(ba(ay[1],ay[2],ay[3]))ae[#ae+1]=ay
end
end
return
end
elseif o then
B=g(a,_)ad=g(o,_)x=e(_,-1)Q=i(B,ad)if j(i(Q,ad),x)>0 then
q={_,o}l=i(i(ad,x),ad)elseif j(i(B,Q),x)>0 then
q={_,a}l=i(i(B,x),B)else
if j(Q,x)>0 then
l=Q;
else
q={_,o,a}l=e(Q,-1)end
end
elseif a then
B=g(a,_)x=e(_,-1)if j(B,x)>0 then
l=i(i(B,x),B)else
q={_}l=x
end
else
q={_}l=e(_,-1)end
end
end
function aC(J,C)C=C or{}bG={}f=1
for c=s[1][J][1],s[1][J][2]do
n=s[2][c]bG[f]={{n[1],n[2],n[3]},{}}f=f+1
end
bP={}f=1
for c=s[1][J][3],s[1][J][4]do
n=s[3][c]bP[f]=n
f=f+1
end
cd={}f=1
for c=s[1][J][5],s[1][J][6]do
n=s[2][c]cd[f]={{n[1],n[2],n[3]},{}}f=f+1
end
cJ={C[1]or{0,0,0},C[2]or{0,0,0},C[3]or{0,0,0},C[4]or{1,0,0,0},C[5]or{0,0,0},C[6]or{0,0,0},bG,bP,cd,C[7]or 1,C[8]or 1,C[9]or{0,0,0},s[1][J][7],J,{}}Z[#Z+1]=cJ
end
function cA(cv,bD,_,a,o)bI=g(a,_)cs=g(o,_)bB=i(bI,cs)cp=-j(bD,bB)bs=1.0/cp
bW=g(cv,_)bS=i(bW,bD)cr=j(cs,bS)*bs
p=-j(bI,bS)*bs
bt=j(bW,bB)*bs
return(-cp>=1e-6 and bt>=.0 and cr>=.0 and p>=.0 and(cr+p)<=1.0)end
function i(_,a)return{_[2]*a[3]-_[3]*a[2],_[3]*a[1]-_[1]*a[3],_[1]*a[2]-_[2]*a[1]}end
function j(_,a)return _[1]*a[1]+_[2]*a[2]+_[3]*a[3]end
function cG(G)if G[1]==0 and G[2]==0 and G[3]==0 then
return{1,0,0,0}else
return{0,G[1],G[2],G[3]}end
end
function cz(aV,G)local aZ=cS(aV,cG(G))for c=1,4 do
aZ[c]=aV[c]+aZ[c]*N
end
return aZ
end
function cS(ct,cK)local aK,aL,aM,aX=unpack(ct)local v,aS,aH,aP=unpack(cK)return{aK*v-aL*aS-aM*aH-aX*aP,aK*aS+aL*v+aM*aP-aX*aH,aK*aH-aL*aP+aM*v+aX*aS,aK*aP+aL*aH-aM*aS+aX*v}end
function bx(G,cQ)local cn={}for f=1,3 do
n=0
for ai=1,3 do
n=n+G[ai]*cQ[f][ai]end
cn[f]=n
end
return cn
end
function co(_,ax)ax=1/sqrt(_[1]^2+_[2]^2+_[3]^2+_[4]^2)return{_[1]*ax,_[2]*ax,_[3]*ax,_[4]*ax}end
function cw(aV)local R,L,H,K=unpack(aV)return{{1-(2*H*H+2*K*K),2*L*H+2*K*R,2*L*K-2*H*R},{2*L*H-2*K*R,1-(2*L*L+2*K*K),2*H*K+2*L*R},{2*L*K+2*H*R,2*H*K-2*L*R,1-(2*L*L+2*H*H)}}end
function httpReply(_,a,o)cZ=aO//2
aO=0
end
function onTick()for f=1,1 do
if U(32)and not bc then
bj=property.getText(bn)c=1
F=""
n=bl.sub(bj,c,c)while n~=""do
ca=bl.byte(n)if ca>64 then
F=(F..ca-65)+0
if X==1 then
cq=F
s[F]=s[F]or{}elseif X==2 then
cE=F
aw=0
elseif X==3 then
bA=F
else
if aw==0 then
aw=cE
bA=bA-1
bz={}s[cq][#s[cq]+1]=bz
end
bz[#bz+1]=F
aw=aw-1
X=bV(aw,bA)>0 and X-1 or 0
end
X=X+1
F=""
else
F=F..n
end
c=c+1
n=bl.sub(bj,c,c)end
bn=bn+1
bc=bj==""
end
end
if bc then
bg=bg+1
if bY then
Z={}for c=-1,1 do
for f=-1,1 do
aC(2,{[1]={c*2.5,0,f*2.5}})end
end
aC(5,{[1]={-6,0,0}})aC(6,{[1]={6,0,0}})aC(7,{[1]={0,-5,0},[7]=0,[8]=0})aC(8,{[1]={6,-3.85,-4},[7]=.75,[8]=50})end
if U(31)then
M[2]=M[2]+Y(2)*be
else
M[1]=M[1]+(Y(1)*cos(E[1])-Y(2)*sin(E[1]))*be
M[3]=M[3]+(Y(1)*sin(E[1])+Y(2)*cos(E[1]))*be
end
E[1]=E[1]-Y(3)*bK
E[2]=E[2]+Y(4)*bK
ac=0
if U(31)then
bb=N
else
bb=.1
end
aq={z,z,z}if U(1)then
ac=-bb
aq={0,0,z}end
if U(3)then
ac=bb
aq={z,0,0}end
if not U(31)then
for c=1,3 do
aq[c]=bC(aq[c]+50,z)end
end
_=E[1]a=E[2]o=E[3]ak=cos(_)ah=sin(_)ao=cos(a)am=sin(a)ar=cos(o)aB=sin(o)cj={{ak*ar-ah*am*aB,-ao*aB,ak*am*aB+ar*ah},{ak*aB+ar*ah*am,ao*ar,ah*aB-ak*ar*am},{-ao*ah,am,ak*ao}}bu={-ah*ao,am,ak*ao}bL=by
A={}for J=1,#Z do
b=Z[J]b[4]=co(cz(b[4],e(b[5],-bd)))b[1]=w(b[1],e(b[2],bd))b[2]=w(b[2],e(b[3],bd))b[3]=e(b[12],1)b[2]=e(b[2],.9995)b[5]=e(b[5],.9995)cO=cw(co(b[4]))for c=7,9,2 do
for f=1,#b[c]do
h=b[c][f]h[2]=bx(h[1],cO)h[2]=w(h[2],b[1])h[3]=g(h[2],M)h[4]=bx(h[3],cj)bq=h[3]h[7]=sqrt(bq[1]^2+bq[2]^2+bq[3]^2)h[5]={h[4][1]*au/h[4][3],-h[4][2]*au/h[4][3]}h[6]=h[4][3]>0 and 1 or-1
end
end
if b[11]>0 or not b[8][1][8]then
for c=1,#b[8]do
d=b[8][c]d[8]=ba(b[7][d[1]][2],b[7][d[2]][2],b[7][d[3]][2])end
end
for c=1,#b[8]do
d=b[8][c]u=b[7][d[1]]y=b[7][d[2]]D=b[7][d[3]]d[7]=bV(u[7],y[7],D[7])_=d[8]a=u[3]if j(_,a)>0 then
as=u[6]+y[6]+D[6]if as==3 then
A[#A+1]={u[5],y[5],D[5],d[4],d[5],d[6],d[7]}elseif as>=-1 then
if u[6]==-as then
V=u[5]af=y[5]T=D[5]elseif y[6]==-as then
V=y[5]af=u[5]T=D[5]else
V=D[5]af=y[5]T=u[5]end
if as==1 then
aW=aY(aU(aT(af,V),1000),af)bk=aY(aU(aT(T,V),1000),T)A[#A+1]={af,aW,T,d[4],d[5],d[6],d[7]}A[#A+1]={T,aW,bk,d[4],d[5],d[6],d[7]}else
aW=aY(aU(aT(V,af),1000),af)bk=aY(aU(aT(V,T),1000),T)A[#A+1]={V,aW,bk,d[4],d[5],d[6],d[7]}end
end
end
end
end
cl=by
bv=2^16
for c,b in ap(Z)do
for f=1,#b[8]do
d=b[8][f]cF=cA({0,0,0},bu,b[7][d[1]][3],b[7][d[2]][3],b[7][d[3]][3])if cF and bt<bv then
cl=bh
bv=bt
bN=b
end
end
end
if cl then
bL=bh
bE=w(e(bu,bv),M)aE(bN,bE,e(bu,ac))if U(2)then
bN[12]={0,-9.81,0}end
at=bx(g(bE,M),cj)ch={at[1]*au/at[3],at[2]*au/at[3]}end
bw=0
for c,k in ap(Z)do
for f,m in ap(Z)do
if c~=f and(k[10]>0 or m[10]>0 or k[11]>0 or m[11]>0)and cm(k[1],m[1])<=k[13]+m[13]then
bw=bw+1
P=k[9]al=m[9]t=cB(P,al)if t then
bp=k[15][f]or{}aj(P,t[1])I=aJ
aj(al,e(t[1],-1))S=aJ
bp[#bp+1]={I,S}aA={}for ai,q in ap(bp)do
I,S=unpack(q)if#I==1 then
r=P[I[1]][2]elseif#S==1 then
r=al[S[1]][2]elseif#I==2 and#S==2 then
bi=g(P[I[2]][2],P[I[1]][2])bR=g(al[S[2]][2],al[S[1]][2])bU=i(bR,i(bi,bR))r=w(P[I[1]][2],e(bi,j(g(al[S[1]][2],P[I[1]][2]),bU)/j(bi,bU)))else
r=P[I[1]][2]end
br=w(i(k[5],g(r,k[1])),k[2])bm=w(i(m[5],g(r,m[1])),m[2])aR=g(br,bm)aQ=j(t[1],aR)if aQ>0 then
aA[#aA+1]=q
cN=aG(k,r,t[1])+aG(m,r,t[1])cu=aQ*1
ac=cu/cN
aE(k,r,e(t[1],-ac))aE(m,r,e(t[1],ac))br=w(i(k[5],g(r,k[1])),k[2])bm=w(i(m[5],g(r,m[1])),m[2])aR=g(br,bm)aQ=j(t[1],aR)bQ=g(aR,e(t[1],aQ))bF=cm(bQ,{0,0,0})if bF>.001 then
aF=bf(bQ)cy=aG(k,r,aF)+aG(m,r,aF)bT=bC(bF/cy,ac)aE(k,r,e(aF,-bT))aE(m,r,e(aF,bT))end
if ai==1 then
bJ=k[10]+m[10]k[1]=w(k[1],e(t[1],-t[2]*k[10]/bJ))m[1]=w(m[1],e(t[1],t[2]*m[10]/bJ))end
end
end
if#aA>3 then
bo(aA,1)end
k[15][f]=aA
end
end
end
end
table.sort(A,function(_,a)return _[7]>a[7]end)bY=by
end
aO=aO+1
end
function onDraw()W=screen
local cI,cD,cC,az,cM=W.drawTriangleF,W.drawTriangle,W.drawRectF,W.setColor,W.drawText
R=W.getWidth()cH=W.getHeight()v=R/2
aa=cH/2
au=tan(cx/2)*v
az(z,z,z)if bc then
for c=1,#A do
d=A[c]u=d[1]y=d[2]D=d[3]az(d[4],d[5],d[6])cI(u[1]+v,u[2]+aa,y[1]+v,y[2]+aa,D[1]+v,D[2]+aa)az(d[4]*N,d[5]*N,d[6]*N)cD(u[1]+v,u[2]+aa-N,y[1]+v,y[2]+aa-N,D[1]+v,D[2]+aa-N)end
az(z,z,z)cM(1,1,bw)az(unpack(aq))if bL then
aN=30/at[3]cC(ch[1]+v-(aN//2),ch[2]+aa-(aN//2),aN,aN)end
end
end
