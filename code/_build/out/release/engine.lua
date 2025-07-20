
B=255
K=.5
aq=180
J=math
bg=J.max
cp=J.min
sqrt=math.sqrt
cq=J.floor
pi=J.pi
ah=input.getNumber
ay=input.getBool
cO=output.setBool
aD=true
aJ=false
bf=ipairs
abs=J.abs
br=table.remove
bi=string
sin=J.sin
cos=J.cos
tan=J.tan
unpack=table.unpack
bu=math.huge
function aA(_,a)return{(_[1]+a[1]),(_[2]+a[2])}end
function i(_,a)return _[1]*a[2]-_[2]*a[1]end
function sub(_,a)return{(_[1]-a[1]),(_[2]-a[2])}end
function aR(_,a)return{_[1]*a,_[2]*a}end
function cN(_)return((_+aq)%360)-aq end
function cS(_)return J.atan(_)*aq/pi end
function cI(_)return J.atan(_[2],_[1])*aq/pi end
function cT(_,a,h)return cp(bg(a,_),h)end
function cH(_)return cq(_+K)end
function cM(_,a)return sqrt(((_[1]-a[1])^2)+((_[2]-a[2])^2)+((_[3]-a[3])^2))end
function E(_,a)return{_[1]+a[1],_[2]+a[2],_[3]+a[3]}end
function l(_,a)return{_[1]-a[1],_[2]-a[2],_[3]-a[3]}end
function g(_,a)return{_[1]*a,_[2]*a,_[3]*a}end
function cU(_)return string.format("%.3f",_ or 0)end
function ce(_,a,h)return i(l(a,_),l(h,_))end
function bz(_)return g(_,1/sqrt(_[1]^2+_[2]^2+_[3]^2))end
F={}bl=1
cL=3
X=1
aT=aJ
bM=aD
aM=0
bc=0
R={0,0,-3}y={0,0,0}bC=62.5
bO=pi/aq
bX=3/bC
c_=90*bO/bC
cr=90*bO
ap=1
bc=0
bb=1/62.5
function bd(b,ct,bS)cv=l(ct,b[1])b[5]=E(b[5],g(i(cv,bS),b[11]))b[2]=E(b[2],g(bS,b[10]))end
function aj(cu,n)local Z=-bu
for d,m in bf(cu)do
ae=k(m[2],n)if abs(ae-Z)<.0001 then
aK[#aK+1]=m[2]elseif ae>Z then
cb=m[2]aK={cb}Z=ae
end
end
return cb
end
function cG(bQ,ca)n={1,0,0}z={}while aD do
f=l(aj(bQ,n),aj(ca,g(n,-1)))if k(f,n)<=0 then
return
end
z={f,z[1],z[2],z[3]}local _,a,h,T=unpack(z)if T then
w=l(a,_)U=l(h,_)bJ=l(T,_)q=g(_,-1)Q=i(w,U)cg=i(U,bJ)cs=i(bJ,w)if k(Q,q)>0 then
aC(_,a,h)elseif k(cg,q)>0 then
aC(_,h,T)elseif k(cs,q)>0 then
aC(_,T,a)else
Y={{_,a,h},{_,h,T},{_,T,a},{a,T,h}}for d,m in ipairs(Y)do
m[4]=bz(ce(m[1],m[2],m[3]))end
for cK=1,32 do
Z=bu
for d,m in ipairs(Y)do
ae=k(m[1],m[4])if ae<Z then
Z=ae
bH=m
end
end
n=bH[4]f=l(aj(bQ,n),aj(ca,g(n,-1)))if k(f,n)-.0001<=Z then
return{bH[4],k(f,n)}end
ao={}for d=#Y,1,-1 do
aQ=Y[d]if k(aQ[4],l(f,aQ[1]))>0 then
for e=1,3 do
am={aQ[e],aQ[(e%3)+1]}for ab,bV in ipairs(ao)do
if bV[1]==am[2]and bV[2]==am[1]then
br(ao,ab)am=cP
break
end
end
if am then
ao[#ao+1]=am
end
end
br(Y,d)end
end
for d,m in ipairs(ao)do
au={m[1],m[2],f}au[4]=bz(ce(au[1],au[2],au[3]))Y[#Y+1]=au
end
end
return
end
elseif h then
aC(_,a,h)elseif a then
cn(_,a)else
z={_}n=g(_,-1)end
end
end
function aC(_,a,h)w=l(a,_)U=l(h,_)q=g(_,-1)Q=i(w,U)if k(i(Q,U),q)>0 then
z={_,h}n=i(i(U,q),U)elseif k(i(w,Q),q)>0 then
z={_,a}n=i(i(w,q),w)else
if k(Q,q)>0 then
z={_,a,h}n=Q;
else
z={_,h,a}cJ=g(Q,-1)end
end
end
function cn(_,a)w=l(a,_)q=g(_,-1)if k(w,q)>0 then
n=i(i(w,q),w)else
z={_}n=q
end
end
function aB(ag,C)bF={}C=C or{}e=1
for d=F[1][ag][1],F[1][ag][2]do
j=F[2][d]bF[e]={{j[1],j[2],j[3]},{}}e=e+1
end
bs={}e=1
for d=F[1][ag][3],F[1][ag][4]do
j=F[3][d]bs[e]=j
e=e+1
end
cl={C[1]or{0,0,0},C[2]or{0,0,0},C[3]or{0,0,0},C[4]or{1,0,0,0},C[5]or{0,0,0},C[6]or{0,0,0},bF,bs,{},C[7]or 1,C[8]or 1,C[9]or{0,0,0}}O[#O+1]=cl
end
function co(ci,bx,_,a,h)bL=l(a,_)cc=l(h,_)bP=i(bL,cc)bY=-k(bx,bP)be=1.0/bY
bZ=l(ci,_)bv=i(bZ,bx)bE=k(cc,bv)*be
m=-k(bL,bv)*be
aW=k(bZ,bP)*be
return(-bY>=1e-6 and aW>=.0 and bE>=.0 and m>=.0 and(bE+m)<=1.0)end
function i(_,a)return{_[2]*a[3]-_[3]*a[2],_[3]*a[1]-_[1]*a[3],_[1]*a[2]-_[2]*a[1]}end
function k(_,a)return _[1]*a[1]+_[2]*a[2]+_[3]*a[3]end
function cw(t)if t[1]==0 and t[2]==0 and t[3]==0 then
return{1,0,0,0}else
return{0,t[1],t[2],t[3]}end
end
function ck(aO,t)local ac=cE(aO,cw(t))for d=1,4 do
ac[d]=aO[d]+ac[d]*K
end
return ac
end
function cE(aY,bp)local aS,aN,aF,aI=unpack(aY)local s,aL,aG,aP=unpack(bp)return{aS*s-aN*aL-aF*aG-aI*aP,aS*aL+aN*s+aF*aP-aI*aG,aS*aG-aN*aP+aF*s+aI*aL,aS*aP+aN*aG-aF*aL+aI*s}end
function cR(aY,bp)local ac={}for d=1,4 do ac[d]=aY+bp end
return ac
end
function aZ(t,b_)local at={}for e=1,3 do
j=0
for ab=1,3 do
j=j+t[ab]*b_[e][ab]end
at[e]=j
end
return at
end
function cV(t,b_)local at={}for e=1,3 do
j=0
for ab=1,3 do
j=j+t[ab]*b_[ab][e]end
at[e]=j
end
return at
end
function bD(_,ax)ax=1/sqrt(_[1]^2+_[2]^2+_[3]^2+_[4]^2)return{_[1]*ax,_[2]*ax,_[3]*ax,_[4]*ax}end
function cD(aO)local N,G,D,I=unpack(aO)return{{1-(2*D*D+2*I*I),2*G*D+2*I*N,2*G*I-2*D*N},{2*G*D-2*I*N,1-(2*G*G+2*I*I),2*D*I+2*G*N},{2*G*I+2*D*N,2*D*I-2*G*N,1-(2*G*G+2*D*D)}}end
function httpReply(_,a,h)cW=aM//2
aM=0
end
function onTick()for e=1,1 do
if ay(32)and not aT then
bk=property.getText(bl)d=1
x=""
j=bi.sub(bk,d,d)while j~=""do
bw=bi.byte(j)if bw>64 then
x=(x..bw-65)+0
if X==1 then
bA=x
F[x]=F[x]or{}elseif X==2 then
cy=x
aw=0
elseif X==3 then
bq=x
else
if aw==0 then
aw=cy
bq=bq-1
aU={}F[bA][#F[bA]+1]=aU
end
aU[#aU+1]=x
aw=aw-1
X=bg(aw,bq)>0 and X-1 or 0
end
X=X+1
x=""
else
x=x..j
end
d=d+1
j=bi.sub(bk,d,d)end
bl=bl+1
aT=bk==""
end
end
if aT then
bc=bc+1
if bM then
O={}aB(2,{[9]={0,-9.8,0}})aB(2,{[1]={3,0,0}})aB(2,{[1]={-5,0,0}})aB(3,{[1]={0,-5,0},[7]=0,[8]=0})end
R[1]=R[1]+(ah(1)*cos(y[1])-ah(2)*sin(y[1]))*bX
R[3]=R[3]+(ah(1)*sin(y[1])+ah(2)*cos(y[1]))*bX
y[1]=y[1]-ah(3)*c_
y[2]=y[2]+ah(4)*c_
aV=0
bn={B,B,B}if ay(1)then
aV=-.1
bn={0,0,B}end
if ay(3)then
aV=.1
bn={B,0,0}end
j=0
if ay(4)then
j=-.025
end
if ay(5)then
j=.025
end
O[2][1][1]=O[2][1][1]+j
_=y[1]a=y[2]h=y[3]ai=cos(_)ad=sin(_)af=cos(a)al=sin(a)as=cos(h)az=sin(h)bI={{ai*as-ad*al*az,-af*az,ai*al*az+as*ad},{ai*az+as*ad*al,af*as,ad*az-ai*as*al},{-af*ad,al,ai*af}}bh={-ad*af,al,ai*af}cd=aJ
A={}for ag=1,#O do
b=O[ag]b[4]=bD(ck(b[4],g(b[5],-bb)))b[1]=E(b[1],g(b[2],bb))b[2]=E(b[2],g(b[3],bb))b[3]=g(b[12],1)b[2]=g(b[2],.995)b[5]=g(b[5],.995)cF=cD(bD(b[4]))for d=1,#b[7]do
f=b[7][d]f[2]=aZ(f[1],cF)for e=1,3 do
f[2][e]=f[2][e]+b[1][e]end
f[3]={}for e=1,3 do
f[3][e]=f[2][e]-R[e]end
f[4]=aZ(f[3],bI)bj=f[3]f[7]=sqrt(bj[1]^2+bj[2]^2+bj[3]^2)f[5]={f[4][1]*ap/f[4][3],-f[4][2]*ap/f[4][3]}f[6]=f[4][3]>0 and 1 or-1
end
by=aJ
ba=2^16
for d=1,#b[8]do
c=b[8][d]cz=co({0,0,0},bh,b[7][c[1]][3],b[7][c[2]][3],b[7][c[3]][3])if cz and aW<ba then
by=aD
ba=aW
end
end
if by then
cd=aD
bK=E(g(bh,ba),R)bd(b,bK,g(bh,aV))av=aZ(l(bK,R),bI)bT={av[1]*ap/av[3],av[2]*ap/av[3]}end
if b[11]>0 or not b[8][1][8]then
for d=1,#b[8]do
c=b[8][d]o=b[7][c[1]]p=b[7][c[2]]r=b[7][c[3]]bG=o[2]cx=p[2]cA=r[2]bB,bN={},{}for e=1,3 do
bB[e]=cx[e]-bG[e]bN[e]=cA[e]-bG[e]end
c[8]=i(bB,bN)end
end
for d=1,#b[8]do
c=b[8][d]o=b[7][c[1]]p=b[7][c[2]]r=b[7][c[3]]c[7]=bg(o[7],p[7],r[7])_=c[8]a=o[3]if k(_,a)>0 then
an=o[6]+p[6]+r[6]if an==3 then
A[#A+1]={o[5],p[5],r[5],c[4],c[5],c[6],c[7]}elseif an>=-1 then
if o[6]==-an then
aa=o[5]W=p[5]M=r[5]elseif p[6]==-an then
aa=p[5]W=o[5]M=r[5]else
aa=r[5]W=p[5]M=o[5]end
if an==1 then
aH=aA(aR(sub(W,aa),1000),W)bo=aA(aR(sub(M,aa),1000),M)A[#A+1]={W,aH,M,c[4],c[5],c[6],c[7]}A[#A+1]={M,aH,bo,c[4],c[5],c[6],c[7]}else
aH=aA(aR(sub(aa,W),1000),W)bo=aA(aR(sub(aa,M),1000),M)A[#A+1]={aa,aH,bo,c[4],c[5],c[6],c[7]}end
end
end
end
end
for d,v in bf(O)do
for e,u in bf(O)do
if d~=e then
H=cG(v[7],u[7])if H then
aj(v[7],H[1])L=aK
aj(u[7],g(H[1],-1))ak=aK
if#L==1 then
S=L[1]elseif#ak==1 then
S=ak[1]elseif#L==2 and#ak==2 then
aX=l(L[2],L[1])bU=l(ak[2],ak[1])bR=i(bU,i(aX,bU))S=E(L[1],g(aX,k(l(ak[1],L[1]),bR)/k(aX,bR)))else
S=L[1]end
cC=E(i(v[5],l(S,v[1])),v[2])cj=E(i(u[5],l(S,u[1])),u[2])bt=k(H[1],cC)+k(H[1],g(cj,-1))if bt>0 then
bm=v[10]+u[10]bW=g(H[1],bt*(K-.25*(abs(v[10]-u[10])/bm)))bd(v,S,g(bW,-1))bd(u,S,bW)v[1]=E(v[1],g(H[1],-H[2]*v[10]/bm))u[1]=E(u[1],g(H[1],H[2]*u[10]/bm))end
end
end
end
end
table.sort(A,function(_,a)return _[7]>a[7]end)bM=aJ
end
aM=aM+1
end
function onDraw()P=screen
local ch,cf,cm,ar,cQ=P.drawTriangleF,P.drawTriangle,P.drawRectF,P.setColor,P.drawText
N=P.getWidth()cB=P.getHeight()s=N/2
V=cB/2
ap=tan(cr/2)*s
ar(B,B,B)if aT then
for d=1,#A do
c=A[d]o=c[1]p=c[2]r=c[3]ar(c[4],c[5],c[6])ch(o[1]+s,o[2]+V,p[1]+s,p[2]+V,r[1]+s,r[2]+V)ar(c[4]*K,c[5]*K,c[6]*K)cf(o[1]+s,o[2]+V-K,p[1]+s,p[2]+V-K,r[1]+s,r[2]+V-K)end
ar(B,B,B)ar(unpack(bn))if cd then
aE=10/av[3]cm(bT[1]+s-(aE//2),bT[2]+V-(aE//2),aE,aE)end
end
end
