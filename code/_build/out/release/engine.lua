
J=255
X=.5
N=math
bJ=N.max
cP=N.min
sqrt=math.sqrt
cN=N.floor
pi=N.pi
ag=input.getNumber
aC=input.getBool
cR=output.setBool
aP=true
aw=false
bk=ipairs
abs=N.abs
bz=table.remove
aU=string
sin=N.sin
cos=N.cos
tan=N.tan
unpack=table.unpack
bF=math.huge
function aI(_,a)return{(_[1]+a[1]),(_[2]+a[2])}end
function aN(_,a)return{(_[1]-a[1]),(_[2]-a[2])}end
function aR(_,a)return{_[1]*a,_[2]*a}end
function D(_,a)return{_[1]+a[1],_[2]+a[2],_[3]+a[3]}end
function i(_,a)return{_[1]-a[1],_[2]-a[2],_[3]-a[3]}end
function e(_,a)return{_[1]*a,_[2]*a,_[3]*a}end
function b_(_,a,k)return g(i(a,_),i(k,_))end
function bC(_)return e(_,1/sqrt(_[1]^2+_[2]^2+_[3]^2))end
s={}bh=1
cJ=3
Y=1
aG=aw
bG=aP
aO=0
bb=0
Q={0,0,-3}y={0,0,0}bH=62.5
bB=pi/180
bP=3/bH
br=90*bB/bH
ci=90*bB
an=1
bb=0
bf=1/62.5
function bl(b,cA,bN)cx=i(cA,b[1])b[5]=D(b[5],e(g(cx,bN),b[11]))b[2]=D(b[2],e(bN,b[10]))end
function af(cr,n)local T=-bF
for d,m in bk(cr)do
aj=h(m[2],n)if abs(aj-T)<.0001 then
ay[#ay+1]=m[2]elseif aj>T then
bK=m[2]ay={bK}T=aj
end
end
return bK
end
function cc(bT,bO)n={1,0,0}B={}while aP do
f=i(af(bT,n),af(bO,e(n,-1)))if h(f,n)<=0 then
return
end
B={f,B[1],B[2],B[3]}local _,a,k,S=unpack(B)if S then
A=i(a,_)P=i(k,_)bA=i(S,_)r=e(_,-1)R=g(A,P)cF=g(P,bA)ct=g(bA,A)if h(R,r)>0 then
aH(_,a,k)elseif h(cF,r)>0 then
aH(_,k,S)elseif h(ct,r)>0 then
aH(_,S,a)else
Z={{_,a,k},{_,k,S},{_,S,a},{a,S,k}}for d,m in ipairs(Z)do
m[4]=bC(b_(m[1],m[2],m[3]))end
for cO=1,32 do
T=bF
for d,m in ipairs(Z)do
aj=h(m[1],m[4])if aj<T then
T=aj
bR=m
end
end
n=bR[4]f=i(af(bT,n),af(bO,e(n,-1)))if h(f,n)-.0001<=T then
return{bR[4],h(f,n)}end
am={}for d=#Z,1,-1 do
aM=Z[d]if h(aM[4],i(f,aM[1]))>0 then
for j=1,3 do
ap={aM[j],aM[(j%3)+1]}for aD,ca in ipairs(am)do
if ca[1]==ap[2]and ca[2]==ap[1]then
bz(am,aD)ap=cM
break
end
end
if ap then
am[#am+1]=ap
end
end
bz(Z,d)end
end
for d,m in ipairs(am)do
ak={m[1],m[2],f}ak[4]=bC(b_(ak[1],ak[2],ak[3]))Z[#Z+1]=ak
end
end
return
end
elseif k then
aH(_,a,k)elseif a then
cv(_,a)else
B={_}n=e(_,-1)end
end
end
function aH(_,a,k)A=i(a,_)P=i(k,_)r=e(_,-1)R=g(A,P)if h(g(R,P),r)>0 then
B={_,k}n=g(g(P,r),P)elseif h(g(A,R),r)>0 then
B={_,a}n=g(g(A,r),A)else
if h(R,r)>0 then
B={_,a,k}n=R;
else
B={_,k,a}cL=e(R,-1)end
end
end
function cv(_,a)A=i(a,_)r=e(_,-1)if h(A,r)>0 then
n=g(g(A,r),A)else
B={_}n=r
end
end
function aJ(L,z)z=z or{}bL={}j=1
for d=s[1][L][1],s[1][L][2]do
l=s[2][d]bL[j]={{l[1],l[2],l[3]},{}}j=j+1
end
bQ={}j=1
for d=s[1][L][3],s[1][L][4]do
l=s[3][d]bQ[j]=l
j=j+1
end
cb={}j=1
for d=s[1][L][5],s[1][L][6]do
l=s[2][d]cb[j]={{l[1],l[2],l[3]},{}}j=j+1
end
cj={z[1]or{0,0,0},z[2]or{0,0,0},z[3]or{0,0,0},z[4]or{1,0,0,0},z[5]or{0,0,0},z[6]or{0,0,0},bL,bQ,cb,z[7]or 1,z[8]or 1,z[9]or{0,0,0}}ai[#ai+1]=cj
end
function cz(cw,bs,_,a,k)c_=i(a,_)bY=i(k,_)bX=g(c_,bY)bD=-h(bs,bX)bj=1.0/bD
bZ=i(cw,_)bt=g(bZ,bs)bS=h(bY,bt)*bj
m=-h(c_,bt)*bj
aW=h(bZ,bX)*bj
return(-bD>=1e-6 and aW>=.0 and bS>=.0 and m>=.0 and(bS+m)<=1.0)end
function g(_,a)return{_[2]*a[3]-_[3]*a[2],_[3]*a[1]-_[1]*a[3],_[1]*a[2]-_[2]*a[1]}end
function h(_,a)return _[1]*a[1]+_[2]*a[2]+_[3]*a[3]end
function cg(H)if H[1]==0 and H[2]==0 and H[3]==0 then
return{1,0,0,0}else
return{0,H[1],H[2],H[3]}end
end
function cC(av,H)local aX=co(av,cg(H))for d=1,4 do
aX[d]=av[d]+aX[d]*X
end
return aX
end
function co(cn,cs)local aE,aA,au,aL=unpack(cn)local p,aB,aK,aQ=unpack(cs)return{aE*p-aA*aB-au*aK-aL*aQ,aE*aB+aA*p+au*aQ-aL*aK,aE*aK-aA*aQ+au*p+aL*aB,aE*aQ+aA*aK-au*aB+aL*p}end
function bi(H,cE)local bp={}for j=1,3 do
l=0
for aD=1,3 do
l=l+H[aD]*cE[j][aD]end
bp[j]=l
end
return bp
end
function bv(_,al)al=1/sqrt(_[1]^2+_[2]^2+_[3]^2+_[4]^2)return{_[1]*al,_[2]*al,_[3]*al,_[4]*al}end
function ce(av)local O,E,F,G=unpack(av)return{{1-(2*F*F+2*G*G),2*E*F+2*G*O,2*E*G-2*F*O},{2*E*F-2*G*O,1-(2*E*E+2*G*G),2*F*G+2*E*O},{2*E*G+2*F*O,2*F*G-2*E*O,1-(2*E*E+2*F*F)}}end
function httpReply(_,a,k)cK=aO//2
aO=0
end
function onTick()for j=1,1 do
if aC(32)and not aG then
bd=property.getText(bh)d=1
w=""
l=aU.sub(bd,d,d)while l~=""do
bu=aU.byte(l)if bu>64 then
w=(w..bu-65)+0
if Y==1 then
bx=w
s[w]=s[w]or{}elseif Y==2 then
cf=w
as=0
elseif Y==3 then
aS=w
else
if as==0 then
as=cf
aS=aS-1
aZ={}s[bx][#s[bx]+1]=aZ
end
aZ[#aZ+1]=w
as=as-1
Y=bJ(as,aS)>0 and Y-1 or 0
end
Y=Y+1
w=""
else
w=w..l
end
d=d+1
l=aU.sub(bd,d,d)end
bh=bh+1
aG=bd==""
end
end
if aG then
bb=bb+1
if bG then
ai={}aJ(2)aJ(1,{[1]={3,0,0}})aJ(2,{[1]={-5,0,0}})aJ(4,{[1]={0,-5,0},[7]=0,[8]=0})end
Q[1]=Q[1]+(ag(1)*cos(y[1])-ag(2)*sin(y[1]))*bP
Q[3]=Q[3]+(ag(1)*sin(y[1])+ag(2)*cos(y[1]))*bP
y[1]=y[1]-ag(3)*br
y[2]=y[2]+ag(4)*br
aY=0
be={J,J,J}if aC(1)then
aY=-.1
be={0,0,J}end
if aC(3)then
aY=.1
be={J,0,0}end
_=y[1]a=y[2]k=y[3]ac=cos(_)ae=sin(_)ah=cos(a)ab=sin(a)at=cos(k)aq=sin(k)bU={{ac*at-ae*ab*aq,-ah*aq,ac*ab*aq+at*ae},{ac*aq+at*ae*ab,ah*at,ae*aq-ac*at*ab},{-ah*ae,ab,ac*ah}}ba={-ae*ah,ab,ac*ah}bE=aw
C={}for L=1,#ai do
b=ai[L]b[4]=bv(cC(b[4],e(b[5],-bf)))b[1]=D(b[1],e(b[2],bf))b[2]=D(b[2],e(b[3],bf))b[3]=e(b[12],1)b[2]=e(b[2],.995)b[5]=e(b[5],.995)cD=ce(bv(b[4]))for d=7,9,2 do
for j=1,#b[d]do
f=b[d][j]f[2]=bi(f[1],cD)f[2]=D(f[2],b[1])f[3]=i(f[2],Q)f[4]=bi(f[3],bU)aT=f[3]f[7]=sqrt(aT[1]^2+aT[2]^2+aT[3]^2)f[5]={f[4][1]*an/f[4][3],-f[4][2]*an/f[4][3]}f[6]=f[4][3]>0 and 1 or-1
end
end
by=aw
bc=2^16
for d=1,#b[8]do
c=b[8][d]ck=cz({0,0,0},ba,b[7][c[1]][3],b[7][c[2]][3],b[7][c[3]][3])if ck and aW<bc then
by=aP
bc=aW
end
end
if by then
bE=aP
bo=D(e(ba,bc),Q)bl(b,bo,e(ba,aY))if aC(2)then
b[12]={0,-9.81,0}end
ar=bi(i(bo,Q),bU)bw={ar[1]*an/ar[3],ar[2]*an/ar[3]}end
if b[11]>0 or not b[8][1][8]then
for d=1,#b[8]do
c=b[8][d]c[8]=b_(b[7][c[1]][2],b[7][c[2]][2],b[7][c[3]][2])end
end
for d=1,#b[8]do
c=b[8][d]q=b[7][c[1]]v=b[7][c[2]]x=b[7][c[3]]c[7]=bJ(q[7],v[7],x[7])_=c[8]a=q[3]if h(_,a)>0 then
ao=q[6]+v[6]+x[6]if ao==3 then
C[#C+1]={q[5],v[5],x[5],c[4],c[5],c[6],c[7]}elseif ao>=-1 then
if q[6]==-ao then
V=q[5]aa=v[5]K=x[5]elseif v[6]==-ao then
V=v[5]aa=q[5]K=x[5]else
V=x[5]aa=v[5]K=q[5]end
if ao==1 then
aF=aI(aR(aN(aa,V),1000),aa)bg=aI(aR(aN(K,V),1000),K)C[#C+1]={aa,aF,K,c[4],c[5],c[6],c[7]}C[#C+1]={K,aF,bg,c[4],c[5],c[6],c[7]}else
aF=aI(aR(aN(V,aa),1000),aa)bg=aI(aR(aN(V,K),1000),K)C[#C+1]={V,aF,bg,c[4],c[5],c[6],c[7]}end
end
end
end
end
for d,u in bk(ai)do
for j,t in bk(ai)do
if d~=j then
o=cc(u[9],t[9])if o then
af(u[9],o[1])M=ay
af(t[9],e(o[1],-1))ad=ay
if#M==1 then
I=M[1]elseif#ad==1 then
I=ad[1]elseif#M==2 and#ad==2 then
aV=i(M[2],M[1])bq=i(ad[2],ad[1])bW=g(bq,g(aV,bq))I=D(M[1],e(aV,h(i(ad[1],M[1]),bW)/h(aV,bW)))else
I=M[1]end
cm=D(g(u[5],i(I,u[1])),u[2])cq=D(g(t[5],i(I,t[1])),t[2])bI=h(o[1],cm)+h(o[1],e(cq,-1))if bI>0 then
bM=i(I,u[1])cp=h(g(e(g(bM,o[1]),u[11]),bM),o[1])cl=u[10]bm=i(I,t[1])cI=h(g(e(g(bm,o[1]),t[11]),bm),o[1])cy=t[10]cG=cp+cl+cI+cy
ch=bI*1.5
bn=ch/cG
bl(u,I,e(o[1],-bn))bl(t,I,e(o[1],bn))bV=u[10]+t[10]u[1]=D(u[1],e(o[1],-o[2]*u[10]/bV))t[1]=D(t[1],e(o[1],o[2]*t[10]/bV))end
end
end
end
end
table.sort(C,function(_,a)return _[7]>a[7]end)bG=aw
end
aO=aO+1
end
function onDraw()U=screen
local cH,cB,cu,az,cQ=U.drawTriangleF,U.drawTriangle,U.drawRectF,U.setColor,U.drawText
O=U.getWidth()cd=U.getHeight()p=O/2
W=cd/2
an=tan(ci/2)*p
az(J,J,J)if aG then
for d=1,#C do
c=C[d]q=c[1]v=c[2]x=c[3]az(c[4],c[5],c[6])cH(q[1]+p,q[2]+W,v[1]+p,v[2]+W,x[1]+p,x[2]+W)az(c[4]*X,c[5]*X,c[6]*X)cB(q[1]+p,q[2]+W-X,v[1]+p,v[2]+W-X,x[1]+p,x[2]+W-X)end
az(unpack(be))if bE then
ax=10/ar[3]cu(bw[1]+p-(ax//2),bw[2]+W-(ax//2),ax,ax)end
end
end
