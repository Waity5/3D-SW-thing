
n=255
R=.5
at=180
F=math
bc=F.max
cv=F.min
sqrt=math.sqrt
cj=F.floor
pi=F.pi
ad=input.getNumber
au=input.getBool
cI=output.setBool
ax=true
ar=false
aZ=ipairs
abs=F.abs
bN=table.remove
be=string
sin=F.sin
cos=F.cos
tan=F.tan
unpack=table.unpack
bY=math.huge
function aR(_,a)return{(_[1]+a[1]),(_[2]+a[2])}end
function m(_,a)return _[1]*a[2]-_[2]*a[1]end
function sub(_,a)return{(_[1]-a[1]),(_[2]-a[2])}end
function J(_,a)return{_[1]*a,_[2]*a}end
function cM(_)return((_+at)%360)-at end
function cJ(_)return F.atan(_)*at/pi end
function cL(_)return F.atan(_[2],_[1])*at/pi end
function cK(_,a,j)return cv(bc(a,_),j)end
function cR(_)return cj(_+R)end
function cP(_,a)return sqrt(((_[1]-a[1])^2)+((_[2]-a[2])^2)+((_[3]-a[3])^2))end
function ae(_,a)return{_[1]+a[1],_[2]+a[2],_[3]+a[3]}end
function l(_,a)return{_[1]-a[1],_[2]-a[2],_[3]-a[3]}end
function h(_,a)return{_[1]*a,_[2]*a,_[3]*a}end
function cH(_)return string.format("%.3f",_ or 0)end
function bP(_,a,j)return m(l(a,_),l(j,_))end
function bO(_)return h(_,1/sqrt(_[1]^2+_[2]^2+_[3]^2))end
K={}bg=1
cO=3
Z=1
aN=ar
bK=ax
aG=0
bb=0
G={0,0,-3}z={0,0,0}bZ=62.5
bC=pi/at
bW=3/bZ
bR=90*bC/bZ
cD=90*bC
O=1
bb=0
bm=1/62.5
function bd(b,ck,bs)cm=l(ck,b[1])b[5]=ae(b[5],h(m(cm,bs),-b[11]))b[2]=ae(b[2],h(bs,b[10]))end
function aj(cz,p)local X=-bY
for e,g in aZ(cz)do
ag=i(g[2],p)if abs(ag-X)<.0001 then
aW[#aW+1]=g[2]elseif ag>X then
ce=g[2]aW={ce}X=ag
end
end
return ce
end
function cC(bA,by)p={1,0,0}B={}while ax do
c=l(aj(bA,p),aj(by,h(p,-1)))if i(c,p)<=0 then
return
end
B={c,B[1],B[2],B[3]}local _,a,j,V=unpack(B)if V then
local x=l(a,_)local S=l(j,_)local bI=l(V,_)local u=h(_,-1)local U=m(x,S)local cx=m(S,bI)local cs=m(bI,x)if i(U,u)>0 then
aQ(_,a,j)elseif i(cx,u)>0 then
aQ(_,j,V)elseif i(cs,u)>0 then
aQ(_,V,a)else
ac={{_,a,j},{_,j,V},{_,V,a},{a,V,j}}for e,g in ipairs(ac)do
g[4]=bO(bP(g[1],g[2],g[3]))if i(g[1],g[4])<0 then
g[1],g[2]=g[2],g[1]g[4]=h(g[4],-1)end
end
for cQ=1,32 do
X=bY
for e,g in ipairs(ac)do
ag=i(g[1],g[4])if ag<X then
X=ag
bG=g
end
end
p=bG[4]c=l(aj(bA,p),aj(by,h(p,-1)))if i(c,p)-.0001<=X then
return{bG[4],i(c,p)}end
aC={}for e=#ac,1,-1 do
aU=ac[e]if i(aU[4],l(c,aU[1]))>0 then
for f=1,3 do
ay={aU[f],aU[(f%3)+1]}for W,bx in ipairs(aC)do
if bx[1]==ay[2]and bx[2]==ay[1]then
bN(aC,W)ay=cS
break
end
end
if ay then
aC[#aC+1]=ay
end
end
bN(ac,e)end
end
for e,g in ipairs(aC)do
t={g[1],g[2],c}t[4]=bO(bP(t[1],t[2],t[3]))if i(t[1],t[4])<0 then
t[1],t[2]=t[2],t[1]t[4]=h(t[4],-1)end
ac[#ac+1]=t
end
end
return
end
elseif j then
aQ(_,a,j)elseif a then
cG(_,a)else
B={_}p=h(_,-1)end
end
end
function aQ(_,a,j)local x=l(a,_)local S=l(j,_)local u=h(_,-1)local U=m(x,S)if i(m(U,S),u)>0 then
B={_,j}p=m(m(S,u),S)elseif i(m(x,U),u)>0 then
B={_,a}p=m(m(x,u),x)else
if i(U,u)>0 then
B={_,a,j}p=U;
else
B={_,j,a}cW=h(U,-1)end
end
end
function cG(_,a)local x=l(a,_)local u=h(_,-1)if i(x,u)>0 then
p=m(m(x,u),x)else
B={_}p=u
end
end
function aP(ai,w)bL={}w=w or{}f=1
for e=K[1][ai][1],K[1][ai][2]do
k=K[2][e]bL[f]={{k[1],k[2],k[3]},{}}f=f+1
end
cd={}f=1
for e=K[1][ai][3],K[1][ai][4]do
k=K[3][e]cd[f]=k
f=f+1
end
cA={w[1]or{0,0,0},w[2]or{0,0,0},w[3]or{0,0,0},w[4]or{1,0,0,0},w[5]or{0,0,0},w[6]or{0,0,0},bL,cd,{},w[7]or 1,w[8]or 1,w[9]or{0,0,0}}P[#P+1]=cA
end
function cg(cl,bw,_,a,j)bT=l(a,_)bH=l(j,_)bF=m(bT,bH)bX=-i(bw,bF)bj=1.0/bX
bE=l(cl,_)bv=m(bE,bw)bD=i(bH,bv)*bj
g=-i(bT,bv)*bj
aX=i(bE,bF)*bj
return(-bX>=1e-6 and aX>=.0 and bD>=.0 and g>=.0 and(bD+g)<=1.0)end
function m(_,a)return{_[2]*a[3]-_[3]*a[2],_[3]*a[1]-_[1]*a[3],_[1]*a[2]-_[2]*a[1]}end
function i(_,a)return _[1]*a[1]+_[2]*a[2]+_[3]*a[3]end
function cn(v)if v[1]==0 and v[2]==0 and v[3]==0 then
return{1,0,0,0}else
return{0,v[1],v[2],v[3]}end
end
function co(aH,v)local ah=cB(aH,cn(v))for e=1,4 do
ah[e]=aH[e]+ah[e]*R
end
return ah
end
function cB(br,bi)local aE,aJ,aK,aL=unpack(br)local o,aI,aD,aO=unpack(bi)return{aE*o-aJ*aI-aK*aD-aL*aO,aE*aI+aJ*o+aK*aO-aL*aD,aE*aD-aJ*aO+aK*o+aL*aI,aE*aO+aJ*aD-aK*aI+aL*o}end
function cT(br,bi)local ah={}for e=1,4 do ah[e]=br+bi end
return ah
end
function al(v,bh)local aw={}for f=1,3 do
k=0
for W=1,3 do
k=k+v[W]*bh[f][W]end
aw[f]=k
end
return aw
end
function cV(v,bh)local aw={}for f=1,3 do
k=0
for W=1,3 do
k=k+v[W]*bh[W][f]end
aw[f]=k
end
return aw
end
function ca(_,as)as=1/sqrt(_[1]^2+_[2]^2+_[3]^2+_[4]^2)return{_[1]*as,_[2]*as,_[3]*as,_[4]*as}end
function cy(aH)local L,H,D,E=unpack(aH)return{{1-(2*D*D+2*E*E),2*H*D+2*E*L,2*H*E-2*D*L},{2*H*D-2*E*L,1-(2*H*H+2*E*E),2*D*E+2*H*L},{2*H*E+2*D*L,2*D*E-2*H*L,1-(2*H*H+2*D*D)}}end
function httpReply(_,a,j)cN=aG//2
aG=0
end
function onTick()for f=1,1 do
if au(32)and not aN then
bk=property.getText(bg)e=1
A=""
k=be.sub(bk,e,e)while k~=""do
bJ=be.byte(k)if bJ>64 then
A=(A..bJ-65)+0
if Z==1 then
bQ=A
K[A]=K[A]or{}elseif Z==2 then
ch=A
aA=0
elseif Z==3 then
ba=A
else
if aA==0 then
aA=ch
ba=ba-1
bo={}K[bQ][#K[bQ]+1]=bo
end
bo[#bo+1]=A
aA=aA-1
Z=bc(aA,ba)>0 and Z-1 or 0
end
Z=Z+1
A=""
else
A=A..k
end
e=e+1
k=be.sub(bk,e,e)end
bg=bg+1
aN=bk==""
end
end
if aN then
bb=bb+1
if bK then
P={}aP(2)aP(2,{[1]={3,0,0}})aP(2,{[1]={-5,0,0}})aP(3,{[1]={0,-5,0},[7]=0,[8]=0})end
G[1]=G[1]+(ad(1)*cos(z[1])-ad(2)*sin(z[1]))*bW
G[3]=G[3]+(ad(1)*sin(z[1])+ad(2)*cos(z[1]))*bW
z[1]=z[1]-ad(3)*bR
z[2]=z[2]+ad(4)*bR
aY=0
bl={n,n,n}if au(1)then
aY=-.1
bl={0,0,n}end
if au(3)then
aY=.1
bl={n,0,0}end
k=0
if au(4)then
k=-.025
end
if au(5)then
k=.025
end
P[2][1][1]=P[2][1][1]+k
_=z[1]a=z[2]j=z[3]am=cos(_)ao=sin(_)af=cos(a)an=sin(a)aq=cos(j)aB=sin(j)av={{am*aq-ao*an*aB,-af*aB,am*an*aB+aq*ao},{am*aB+aq*ao*an,af*aq,ao*aB-am*aq*an},{-af*ao,an,am*af}}bf={-ao*af,an,am*af}bS=ar
y={}for ai=1,#P do
b=P[ai]b[4]=ca(co(b[4],h(b[5],bm)))b[1]=ae(b[1],h(b[2],bm))b[2]=ae(b[2],h(b[3],bm))b[3]=h(b[12],1)b[2]=h(b[2],.995)b[5]=h(b[5],.995)cw=cy(ca(b[4]))for e=1,#b[7]do
c=b[7][e]c[2]=al(c[1],cw)for f=1,3 do
c[2][f]=c[2][f]+b[1][f]end
c[3]={}for f=1,3 do
c[3][f]=c[2][f]-G[f]end
c[4]=al(c[3],av)bp=c[3]c[7]=sqrt(bp[1]^2+bp[2]^2+bp[3]^2)c[5]={c[4][1]*O/c[4][3],-c[4][2]*O/c[4][3]}c[6]=c[4][3]>0 and 1 or-1
end
bt=ar
b_=2^16
for e=1,#b[8]do
d=b[8][e]cF=cg({0,0,0},bf,b[7][d[1]][3],b[7][d[2]][3],b[7][d[3]][3])if cF and aX<b_ then
bt=ax
b_=aX
end
end
if bt then
bS=ax
bV=ae(h(bf,b_),G)bd(b,bV,h(bf,aY))ap=al(l(bV,G),av)bU={ap[1]*O/ap[3],ap[2]*O/ap[3]}end
if b[11]>0 or not b[8][1][8]then
for e=1,#b[8]do
d=b[8][e]q=b[7][d[1]]r=b[7][d[2]]s=b[7][d[3]]bu=q[2]cu=r[2]cq=s[2]cf,bB={},{}for f=1,3 do
cf[f]=cu[f]-bu[f]bB[f]=cq[f]-bu[f]end
d[8]=m(cf,bB)end
end
for e=1,#b[8]do
d=b[8][e]q=b[7][d[1]]r=b[7][d[2]]s=b[7][d[3]]d[7]=bc(q[7],r[7],s[7])_=d[8]a=q[3]if i(_,a)>0 then
az=q[6]+r[6]+s[6]if az==3 then
y[#y+1]={q[5],r[5],s[5],d[4],d[5],d[6],d[7]}elseif az>=-1 then
if q[6]==-az then
T=q[5]aa=r[5]M=s[5]elseif r[6]==-az then
T=r[5]aa=q[5]M=s[5]else
T=s[5]aa=r[5]M=q[5]end
if az==1 then
aV=aR(J(sub(aa,T),1000),aa)bn=aR(J(sub(M,T),1000),M)y[#y+1]={aa,aV,M,d[4],d[5],d[6],d[7]}y[#y+1]={M,aV,bn,d[4],d[5],d[6],d[7]}else
aV=aR(J(sub(T,aa),1000),aa)bn=aR(J(sub(T,M),1000),M)y[#y+1]={T,aV,bn,d[4],d[5],d[6],d[7]}end
end
end
end
end
cc=ar
for e,aF in aZ(P)do
for f,aT in aZ(P)do
if e~=f then
ak=cC(aF[7],aT[7])if ak then
cc=ax
aj(aF[7],ak[1])I=aW
aj(aT[7],h(ak[1],-1))Q=aW
if#I==1 then
Y=I[1]elseif#Q==1 then
Y=Q[1]elseif#I==2 and#Q==2 then
bq=l(I[2],I[1])c_=l(Q[2],Q[1])cb=m(c_,m(bq,c_))Y=ae(I[1],h(bq,i(l(Q[1],I[1]),cb)/i(bq,cb)))else
Y=I[1]end
cp=aF[2]cr=aT[2]bz=i(ak[1],cp)+i(ak[1],h(cr,-1))if bz>0 then
bM=h(ak[1],bz)bd(aF,Y,h(bM,-1))bd(aT,Y,bM)end
end
end
end
end
table.sort(y,function(_,a)return _[7]>a[7]end)bK=ar
end
aG=aG+1
end
function onDraw()ab=screen
local ci,cE,aM,N,cU=ab.drawTriangleF,ab.drawTriangle,ab.drawRectF,ab.setColor,ab.drawText
L=ab.getWidth()ct=ab.getHeight()o=L/2
C=ct/2
O=tan(cD/2)*o
N(n,n,n)if aN then
for e=1,#y do
d=y[e]q=d[1]r=d[2]s=d[3]N(d[4],d[5],d[6])ci(q[1]+o,q[2]+C,r[1]+o,r[2]+C,s[1]+o,s[2]+C)N(d[4]*R,d[5]*R,d[6]*R)cE(q[1]+o,q[2]+C-R,r[1]+o,r[2]+C-R,s[1]+o,s[2]+C-R)end
if cc then
N(n,n,0)for e=1,#I do
c=al(l(I[e],G),av)c=J(J(c,1/c[3]),O)aM(o+c[1]-2,C-c[2]-2,5,5)end
N(0,n,n)for e=1,#Q do
c=al(l(Q[e],G),av)c=J(J(c,1/c[3]),O)aM(o+c[1]-2,C-c[2]-2,5,5)end
if Y then
N(n,0,n)c=al(l(Y,G),av)c=J(J(c,1/c[3]),O)aM(o+c[1]-2,C-c[2]-2,5,5)end
end
N(n,n,n)N(unpack(bl))if bS then
aS=10/ap[3]aM(bU[1]+o-(aS//2),bU[2]+C-(aS//2),aS,aS)end
end
end
