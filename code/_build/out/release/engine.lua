
C=255
T=.5
N=math
bn=N.max
cT=N.min
sqrt=math.sqrt
cR=N.floor
pi=N.pi
U=input.getNumber
av=input.getBool
cS=output.setBool
aL=true
aC=false
aY=ipairs
abs=N.abs
cc=table.remove
bj=string
sin=N.sin
cos=N.cos
tan=N.tan
unpack=table.unpack
bX=math.huge
function aP(_,a)return{(_[1]+a[1]),(_[2]+a[2])}end
function aQ(_,a)return{(_[1]-a[1]),(_[2]-a[2])}end
function aF(_,a)return{_[1]*a,_[2]*a}end
function z(_,a)return{_[1]+a[1],_[2]+a[2],_[3]+a[3]}end
function h(_,a)return{_[1]-a[1],_[2]-a[2],_[3]-a[3]}end
function e(_,a)return{_[1]*a,_[2]*a,_[3]*a}end
function b_(_,a,k)return i(h(a,_),h(k,_))end
function bM(_)return e(_,1/sqrt(_[1]^2+_[2]^2+_[3]^2))end
function cp(_,a)return sqrt((_[1]-a[1])^2+(_[2]-a[2])^2+(_[3]-a[3])^2)end
r={}be=1
cM=3
Q=1
aD=aC
bQ=aL
aI=0
bf=0
J={0,0,-3}A={0,0,0}bU=62.5
bt=pi/180
bh=3/bU
bL=90*bt/bU
cf=90*bt
ao=1
bf=0
bc=1/62.5
function aU(b,cD,bJ)cs=h(cD,b[1])b[5]=z(b[5],e(i(cs,bJ),b[11]))b[2]=z(b[2],e(bJ,b[10]))end
function ag(cg,n)local V=-bX
for d,m in aY(cg)do
af=j(m[2],n)if abs(af-V)<.0001 then
ay[#ay+1]=m[2]elseif af>V then
bz=m[2]ay={bz}V=af
end
end
return bz
end
function cE(bI,bN)n={1,0,0}x={}while aL do
f=h(ag(bI,n),ag(bN,e(n,-1)))if j(f,n)<=0 then
return
end
x={f,x[1],x[2],x[3]}local _,a,k,Y=unpack(x)if Y then
D=h(a,_)S=h(k,_)bF=h(Y,_)s=e(_,-1)W=i(D,S)ck=i(S,bF)cz=i(bF,D)if j(W,s)>0 then
aG(_,a,k)elseif j(ck,s)>0 then
aG(_,k,Y)elseif j(cz,s)>0 then
aG(_,Y,a)else
R={{_,a,k},{_,k,Y},{_,Y,a},{a,Y,k}}for d,m in ipairs(R)do
m[4]=bM(b_(m[1],m[2],m[3]))end
for cN=1,32 do
V=bX
for d,m in ipairs(R)do
af=j(m[1],m[4])if af<V then
V=af
by=m
end
end
n=by[4]f=h(ag(bI,n),ag(bN,e(n,-1)))if j(f,n)-.0001<=V then
return{by[4],j(f,n)}end
au={}for d=#R,1,-1 do
aw=R[d]if j(aw[4],h(f,aw[1]))>0 then
for g=1,3 do
ap={aw[g],aw[(g%3)+1]}for aM,c_ in ipairs(au)do
if c_[1]==ap[2]and c_[2]==ap[1]then
cc(au,aM)ap=cP
break
end
end
if ap then
au[#au+1]=ap
end
end
cc(R,d)end
end
for d,m in ipairs(au)do
at={m[1],m[2],f}at[4]=bM(b_(at[1],at[2],at[3]))R[#R+1]=at
end
end
return
end
elseif k then
aG(_,a,k)elseif a then
cH(_,a)else
x={_}n=e(_,-1)end
end
end
function aG(_,a,k)D=h(a,_)S=h(k,_)s=e(_,-1)W=i(D,S)if j(i(W,S),s)>0 then
x={_,k}n=i(i(S,s),S)elseif j(i(D,W),s)>0 then
x={_,a}n=i(i(D,s),D)else
if j(W,s)>0 then
x={_,a,k}n=W;
else
x={_,k,a}cQ=e(W,-1)end
end
end
function cH(_,a)D=h(a,_)s=e(_,-1)if j(D,s)>0 then
n=i(i(D,s),D)else
x={_}n=s
end
end
function bP(K,y)y=y or{}bD={}g=1
for d=r[1][K][1],r[1][K][2]do
l=r[2][d]bD[g]={{l[1],l[2],l[3]},{}}g=g+1
end
bO={}g=1
for d=r[1][K][3],r[1][K][4]do
l=r[3][d]bO[g]=l
g=g+1
end
bK={}g=1
for d=r[1][K][5],r[1][K][6]do
l=r[2][d]bK[g]={{l[1],l[2],l[3]},{}}g=g+1
end
cd={y[1]or{0,0,0},y[2]or{0,0,0},y[3]or{0,0,0},y[4]or{1,0,0,0},y[5]or{0,0,0},y[6]or{0,0,0},bD,bO,bK,y[7]or 1,y[8]or 1,y[9]or{0,0,0},r[1][K][7]}ae[#ae+1]=cd
end
function cy(cm,bH,_,a,k)bW=h(a,_)bR=h(k,_)bv=i(bW,bR)br=-j(bH,bv)bl=1.0/br
bE=h(cm,_)bA=i(bE,bH)bG=j(bR,bA)*bl
m=-j(bW,bA)*bl
bm=j(bE,bv)*bl
return(-br>=1e-6 and bm>=.0 and bG>=.0 and m>=.0 and(bG+m)<=1.0)end
function i(_,a)return{_[2]*a[3]-_[3]*a[2],_[3]*a[1]-_[1]*a[3],_[1]*a[2]-_[2]*a[1]}end
function j(_,a)return _[1]*a[1]+_[2]*a[2]+_[3]*a[3]end
function cL(H)if H[1]==0 and H[2]==0 and H[3]==0 then
return{1,0,0,0}else
return{0,H[1],H[2],H[3]}end
end
function cq(aK,H)local aS=co(aK,cL(H))for d=1,4 do
aS[d]=aK[d]+aS[d]*T
end
return aS
end
function co(ci,cr)local aA,ax,aE,aJ=unpack(ci)local t,az,aO,aH=unpack(cr)return{aA*t-ax*az-aE*aO-aJ*aH,aA*az+ax*t+aE*aH-aJ*aO,aA*aO-ax*aH+aE*t+aJ*az,aA*aH+ax*aO-aE*az+aJ*t}end
function bg(H,cF)local bV={}for g=1,3 do
l=0
for aM=1,3 do
l=l+H[aM]*cF[g][aM]end
bV[g]=l
end
return bV
end
function bY(_,an)an=1/sqrt(_[1]^2+_[2]^2+_[3]^2+_[4]^2)return{_[1]*an,_[2]*an,_[3]*an,_[4]*an}end
function cG(aK)local O,G,I,F=unpack(aK)return{{1-(2*I*I+2*F*F),2*G*I+2*F*O,2*G*F-2*I*O},{2*G*I-2*F*O,1-(2*G*G+2*F*F),2*I*F+2*G*O},{2*G*F+2*I*O,2*I*F-2*G*O,1-(2*G*G+2*I*I)}}end
function httpReply(_,a,k)cO=aI//2
aI=0
end
function onTick()for g=1,1 do
if av(32)and not aD then
aZ=property.getText(be)d=1
w=""
l=bj.sub(aZ,d,d)while l~=""do
bo=bj.byte(l)if bo>64 then
w=(w..bo-65)+0
if Q==1 then
bu=w
r[w]=r[w]or{}elseif Q==2 then
cK=w
ar=0
elseif Q==3 then
bd=w
else
if ar==0 then
ar=cK
bd=bd-1
aT={}r[bu][#r[bu]+1]=aT
end
aT[#aT+1]=w
ar=ar-1
Q=bn(ar,bd)>0 and Q-1 or 0
end
Q=Q+1
w=""
else
w=w..l
end
d=d+1
l=bj.sub(aZ,d,d)end
be=be+1
aD=aZ==""
end
end
if aD then
bf=bf+1
if bQ then
ae={}for d=-2,2 do
for g=-2,2 do
bP(2,{[1]={2*d,0,2*g}})end
end
bP(4,{[1]={0,-5,0},[7]=0,[8]=0})end
if av(31)then
J[2]=J[2]+U(2)*bh
else
J[1]=J[1]+(U(1)*cos(A[1])-U(2)*sin(A[1]))*bh
J[3]=J[3]+(U(1)*sin(A[1])+U(2)*cos(A[1]))*bh
end
A[1]=A[1]-U(3)*bL
A[2]=A[2]+U(4)*bL
ba=0
aV={C,C,C}if av(1)then
ba=-.1
aV={0,0,C}end
if av(3)then
ba=.1
aV={C,0,0}end
_=A[1]a=A[2]k=A[3]ai=cos(_)ah=sin(_)ac=cos(a)aj=sin(a)ak=cos(k)am=sin(k)bC={{ai*ak-ah*aj*am,-ac*am,ai*aj*am+ak*ah},{ai*am+ak*ah*aj,ac*ak,ah*am-ai*ak*aj},{-ac*ah,aj,ai*ac}}aX={-ah*ac,aj,ai*ac}bS=aC
E={}for K=1,#ae do
b=ae[K]b[4]=bY(cq(b[4],e(b[5],-bc)))b[1]=z(b[1],e(b[2],bc))b[2]=z(b[2],e(b[3],bc))b[3]=e(b[12],1)b[2]=e(b[2],.995)b[5]=e(b[5],.995)ce=cG(bY(b[4]))for d=7,9,2 do
for g=1,#b[d]do
f=b[d][g]f[2]=bg(f[1],ce)f[2]=z(f[2],b[1])f[3]=h(f[2],J)f[4]=bg(f[3],bC)bb=f[3]f[7]=sqrt(bb[1]^2+bb[2]^2+bb[3]^2)f[5]={f[4][1]*ao/f[4][3],-f[4][2]*ao/f[4][3]}f[6]=f[4][3]>0 and 1 or-1
end
end
bx=aC
aR=2^16
for d=1,#b[8]do
c=b[8][d]cA=cy({0,0,0},aX,b[7][c[1]][3],b[7][c[2]][3],b[7][c[3]][3])if cA and bm<aR then
bx=aL
aR=bm
end
end
if bx then
bS=aL
bB=z(e(aX,aR),J)aU(b,bB,e(aX,ba))if av(2)then
b[12]={0,-9.81,0}end
al=bg(h(bB,J),bC)bs={al[1]*ao/al[3],al[2]*ao/al[3]}end
if b[11]>0 or not b[8][1][8]then
for d=1,#b[8]do
c=b[8][d]c[8]=b_(b[7][c[1]][2],b[7][c[2]][2],b[7][c[3]][2])end
end
for d=1,#b[8]do
c=b[8][d]u=b[7][c[1]]v=b[7][c[2]]B=b[7][c[3]]c[7]=bn(u[7],v[7],B[7])_=c[8]a=u[3]if j(_,a)>0 then
as=u[6]+v[6]+B[6]if as==3 then
E[#E+1]={u[5],v[5],B[5],c[4],c[5],c[6],c[7]}elseif as>=-1 then
if u[6]==-as then
ab=u[5]Z=v[5]P=B[5]elseif v[6]==-as then
ab=v[5]Z=u[5]P=B[5]else
ab=B[5]Z=v[5]P=u[5]end
if as==1 then
aB=aP(aF(aQ(Z,ab),1000),Z)bk=aP(aF(aQ(P,ab),1000),P)E[#E+1]={Z,aB,P,c[4],c[5],c[6],c[7]}E[#E+1]={P,aB,bk,c[4],c[5],c[6],c[7]}else
aB=aP(aF(aQ(ab,Z),1000),Z)bk=aP(aF(aQ(ab,P),1000),P)E[#E+1]={ab,aB,bk,c[4],c[5],c[6],c[7]}end
end
end
end
end
aW=0
for d,o in aY(ae)do
for g,q in aY(ae)do
if d~=g and cp(o[1],q[1])<=o[13]+q[13]then
aW=aW+1
p=cE(o[9],q[9])if p then
ag(o[9],p[1])M=ay
ag(q[9],e(p[1],-1))ad=ay
if#M==1 then
L=M[1]elseif#ad==1 then
L=ad[1]elseif#M==2 and#ad==2 then
bi=h(M[2],M[1])bq=h(ad[2],ad[1])bZ=i(bq,i(bi,bq))L=z(M[1],e(bi,j(h(ad[1],M[1]),bZ)/j(bi,bZ)))else
L=M[1]end
cv=z(i(o[5],h(L,o[1])),o[2])cC=z(i(q[5],h(L,q[1])),q[2])bp=j(p[1],cv)+j(p[1],e(cC,-1))if bp>0 then
ca=h(L,o[1])cI=j(i(e(i(ca,p[1]),o[11]),ca),p[1])ch=o[10]cb=h(L,q[1])cx=j(i(e(i(cb,p[1]),q[11]),cb),p[1])cn=q[10]cl=cI+ch+cx+cn
cB=bp*1.5
bw=cB/cl
aU(o,L,e(p[1],-bw))aU(q,L,e(p[1],bw))bT=o[10]+q[10]o[1]=z(o[1],e(p[1],-p[2]*o[10]/bT))q[1]=z(q[1],e(p[1],p[2]*q[10]/bT))end
end
end
end
end
table.sort(E,function(_,a)return _[7]>a[7]end)bQ=aC
end
aI=aI+1
end
function onDraw()X=screen
local ct,cJ,cw,aq,cu=X.drawTriangleF,X.drawTriangle,X.drawRectF,X.setColor,X.drawText
O=X.getWidth()cj=X.getHeight()t=O/2
aa=cj/2
ao=tan(cf/2)*t
aq(C,C,C)if aD then
for d=1,#E do
c=E[d]u=c[1]v=c[2]B=c[3]aq(c[4],c[5],c[6])ct(u[1]+t,u[2]+aa,v[1]+t,v[2]+aa,B[1]+t,B[2]+aa)aq(c[4]*T,c[5]*T,c[6]*T)cJ(u[1]+t,u[2]+aa-T,v[1]+t,v[2]+aa-T,B[1]+t,B[2]+aa-T)end
aq(C,C,C)cu(1,1,aW)aq(unpack(aV))if bS then
aN=10/al[3]cw(bs[1]+t-(aN//2),bs[2]+aa-(aN//2),aN,aN)end
end
end
