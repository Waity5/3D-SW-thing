
n=255
R=.5
aw=180
K=math
bb=K.max
ci=K.min
sqrt=math.sqrt
cz=K.floor
pi=K.pi
am=input.getNumber
aA=input.getBool
cM=output.setBool
aR=true
aK=false
cc=ipairs
abs=K.abs
bJ=table.remove
aX=string
sin=K.sin
cos=K.cos
tan=K.tan
unpack=table.unpack
bS=math.huge
function aL(_,a)return{(_[1]+a[1]),(_[2]+a[2])}end
function l(_,a)return _[1]*a[2]-_[2]*a[1]end
function sub(_,a)return{(_[1]-a[1]),(_[2]-a[2])}end
function D(_,a)return{_[1]*a,_[2]*a}end
function cI(_)return((_+aw)%360)-aw end
function cF(_)return K.atan(_)*aw/pi end
function cK(_)return K.atan(_[2],_[1])*aw/pi end
function cG(_,a,h)return ci(bb(a,_),h)end
function cH(_)return cz(_+R)end
function cB(_,a)return sqrt(((_[1]-a[1])^2)+((_[2]-a[2])^2)+((_[3]-a[3])^2))end
function ao(_,a)return{_[1]+a[1],_[2]+a[2],_[3]+a[3]}end
function j(_,a)return{_[1]-a[1],_[2]-a[2],_[3]-a[3]}end
function m(_,a)return{_[1]*a,_[2]*a,_[3]*a}end
function bc(_)return string.format("%.3f",_ or 0)end
function bv(_,a,h)return l(j(a,_),j(h,_))end
function bM(_)return m(_,1/sqrt(_[1]^2+_[2]^2+_[3]^2))end
G={}aZ=1
cJ=3
ab=1
aU=aK
bx=aR
aJ=0
bi=0
E={0,0,-3}w={0,0,0}bq=62.5
bL=pi/aw
bW=3/bq
bG=90*bL/bq
ct=90*bL
M=1
bi=0
bp=1/62.5
function ak(ca,p)local aa=-bS
for c,g in cc(ca)do
ae=i(g[2],p)if abs(ae-aa)<.0001 then
aV[#aV+1]=g[2]elseif ae>aa then
bt=g[2]aV={bt}aa=ae
end
end
return bt
end
function cb(bu,bI)p={1,0,0}z={}while aR do
b=j(ak(bu,p),ak(bI,m(p,-1)))if i(b,p)<=0 then
return
end
z={b,z[1],z[2],z[3]}local _,a,h,Z=unpack(z)if Z then
local A=j(a,_)local X=j(h,_)local bZ=j(Z,_)local t=m(_,-1)local Y=l(A,X)local cs=l(X,bZ)local cl=l(bZ,A)if i(Y,t)>0 then
aE(_,a,h)elseif i(cs,t)>0 then
aE(_,h,Z)elseif i(cl,t)>0 then
aE(_,Z,a)else
U={{_,a,h},{_,h,Z},{_,Z,a},{a,Z,h}}for c,g in ipairs(U)do
g[4]=bM(bv(g[1],g[2],g[3]))if i(g[1],g[4])<0 then
g[1],g[2]=g[2],g[1]g[4]=m(g[4],-1)end
end
for cE=1,32 do
aa=bS
for c,g in ipairs(U)do
ae=i(g[1],g[4])if ae<aa then
aa=ae
bA=g
end
end
p=bA[4]b=j(ak(bu,p),ak(bI,m(p,-1)))if i(b,p)-.0001<=aa then
return{bA[4],i(b,p)}end
au={}for c=#U,1,-1 do
aH=U[c]if i(aH[4],j(b,aH[1]))>0 then
for f=1,3 do
av={aH[f],aH[(f%3)+1]}for W,by in ipairs(au)do
if by[1]==av[2]and by[2]==av[1]then
bJ(au,W)av=cv
break
end
end
if av then
au[#au+1]=av
end
end
bJ(U,c)end
end
for c,g in ipairs(au)do
u={g[1],g[2],b}u[4]=bM(bv(u[1],u[2],u[3]))if i(u[1],u[4])<0 then
u[1],u[2]=u[2],u[1]u[4]=m(u[4],-1)end
U[#U+1]=u
end
end
return
end
elseif h then
aE(_,a,h)elseif a then
cy(_,a)else
z={_}p=m(_,-1)end
end
end
function aE(_,a,h)local A=j(a,_)local X=j(h,_)local t=m(_,-1)local Y=l(A,X)if i(l(Y,X),t)>0 then
z={_,h}p=l(l(X,t),X)elseif i(l(A,Y),t)>0 then
z={_,a}p=l(l(A,t),A)else
if i(Y,t)>0 then
z={_,a,h}p=Y;
else
z={_,h,a}cC=m(Y,-1)end
end
end
function cy(_,a)local A=j(a,_)local t=m(_,-1)if i(A,t)>0 then
p=l(l(A,t),A)else
z={_}p=t
end
end
function aN(ah,x)bC={}x=x or{}f=1
for c=G[1][ah][1],G[1][ah][2]do
k=G[2][c]bC[f]={{k[1],k[2],k[3]},{}}f=f+1
end
bO={}f=1
for c=G[1][ah][3],G[1][ah][4]do
k=G[3][c]bO[f]=k
f=f+1
end
ch={x[1]or{0,0,0},x[2]or{0,0,0},x[3]or{0,0,0},x[4]or{1,0,0,0},x[5]or{0,0,0},x[6]or{0,0,0},bC,bO,{},x[7]or 1,x[8]or 1,x[9]or{0,0,0}}H[#H+1]=ch
end
function cj(cf,bz,_,a,h)c_=j(a,_)br=j(h,_)bs=l(c_,br)bP=-i(bz,bs)bk=1.0/bP
bY=j(cf,_)bB=l(bY,bz)bE=i(br,bB)*bk
g=-i(c_,bB)*bk
bl=i(bY,bs)*bk
return(-bP>=1e-6 and bl>=.0 and bE>=.0 and g>=.0 and(bE+g)<=1.0)end
function l(_,a)return{_[2]*a[3]-_[3]*a[2],_[3]*a[1]-_[1]*a[3],_[1]*a[2]-_[2]*a[1]}end
function i(_,a)return _[1]*a[1]+_[2]*a[2]+_[3]*a[3]end
function cw(v)if v[1]==0 and v[2]==0 and v[3]==0 then
return{1,0,0,0}else
return{0,v[1],v[2],v[3]}end
end
function cp(aC,v)local ag=cn(aC,cw(v))for c=1,4 do
ag[c]=aC[c]+ag[c]*R
end
return ag
end
function cn(bo,bh)local aD,aM,aP,aQ=unpack(bo)local o,aB,aG,aF=unpack(bh)return{aD*o-aM*aB-aP*aG-aQ*aF,aD*aB+aM*o+aP*aF-aQ*aG,aD*aG-aM*aF+aP*o+aQ*aB,aD*aF+aM*aG-aP*aB+aQ*o}end
function cA(bo,bh)local ag={}for c=1,4 do ag[c]=bo+bh end
return ag
end
function ai(v,be)local as={}for f=1,3 do
k=0
for W=1,3 do
k=k+v[W]*be[f][W]end
as[f]=k
end
return as
end
function cD(v,be)local as={}for f=1,3 do
k=0
for W=1,3 do
k=k+v[W]*be[W][f]end
as[f]=k
end
return as
end
function bD(_,ap)ap=1/sqrt(_[1]^2+_[2]^2+_[3]^2+_[4]^2)return{_[1]*ap,_[2]*ap,_[3]*ap,_[4]*ap}end
function cd(aC)local Q,C,J,I=unpack(aC)return{{1-(2*J*J+2*I*I),2*C*J+2*I*Q,2*C*I-2*J*Q},{2*C*J-2*I*Q,1-(2*C*C+2*I*I),2*J*I+2*C*Q},{2*C*I+2*J*Q,2*J*I-2*C*Q,1-(2*C*C+2*J*J)}}end
function httpReply(_,a,h)cL=aJ//2
aJ=0
end
function onTick()for f=1,1 do
if aA(32)and not aU then
bn=property.getText(aZ)c=1
B=""
k=aX.sub(bn,c,c)while k~=""do
bF=aX.byte(k)if bF>64 then
B=(B..bF-65)+0
if ab==1 then
bR=B
G[B]=G[B]or{}elseif ab==2 then
cg=B
ar=0
elseif ab==3 then
b_=B
else
if ar==0 then
ar=cg
b_=b_-1
bf={}G[bR][#G[bR]+1]=bf
end
bf[#bf+1]=B
ar=ar-1
ab=bb(ar,b_)>0 and ab-1 or 0
end
ab=ab+1
B=""
else
B=B..k
end
c=c+1
k=aX.sub(bn,c,c)end
aZ=aZ+1
aU=bn==""
end
end
if aU then
bi=bi+1
if bx then
H={}aN(2)aN(2,{[1]={3,0,0}})aN(2,{[1]={-5,0,0}})aN(3,{[1]={0,-5,0},[8]=0})end
E[1]=E[1]+(am(1)*cos(w[1])-am(2)*sin(w[1]))*bW
E[3]=E[3]+(am(1)*sin(w[1])+am(2)*cos(w[1]))*bW
w[1]=w[1]-am(3)*bG
w[2]=w[2]+am(4)*bG
ba=0
bg={n,n,n}if aA(1)then
ba=.1
bg={0,0,n}end
if aA(3)then
ba=-.1
bg={n,0,0}end
k=0
if aA(4)then
k=-.025
end
if aA(5)then
k=.025
end
H[2][1][1]=H[2][1][1]+k
_=w[1]a=w[2]h=w[3]al=cos(_)af=sin(_)aj=cos(a)an=sin(a)at=cos(h)ax=sin(h)ay={{al*at-af*an*ax,-aj*ax,al*an*ax+at*af},{al*ax+at*af*an,aj*at,af*ax-al*at*an},{-aj*af,an,al*aj}}bd={-af*aj,an,al*aj}bw=aK
y={}for ah=1,#H do
e=H[ah]e[4]=bD(cp(e[4],m(e[5],bp)))e[1]=ao(e[1],m(e[2],bp))e[2]=ao(e[2],m(e[3],bp))e[3]=m(e[12],1)e[2]=m(e[2],.995)e[5]=m(e[5],.995)cx=cd(bD(e[4]))for c=1,#e[7]do
b=e[7][c]b[2]=ai(b[1],cx)for f=1,3 do
b[2][f]=b[2][f]+e[1][f]end
b[3]={}for f=1,3 do
b[3][f]=b[2][f]-E[f]end
b[4]=ai(b[3],ay)bm=b[3]b[7]=sqrt(bm[1]^2+bm[2]^2+bm[3]^2)b[5]={b[4][1]*M/b[4][3],-b[4][2]*M/b[4][3]}b[6]=b[4][3]>0 and 1 or-1
end
bV=aK
aY=2^16
for c=1,#e[8]do
d=e[8][c]ce=cj({0,0,0},bd,e[7][d[1]][3],e[7][d[2]][3],e[7][d[3]][3])if ce and bl<aY then
bV=aR
aY=bl
end
end
if bV then
bw=aR
bK=ao(m(bd,aY),E)co=j(bK,e[1])e[5]=ao(e[5],m(l(co,bd),ba))az=ai(j(bK,E),ay)bH={az[1]*M/az[3],az[2]*M/az[3]}end
if e[11]>0 or not e[8][1][8]then
for c=1,#e[8]do
d=e[8][c]q=e[7][d[1]]r=e[7][d[2]]s=e[7][d[3]]bN=q[2]cr=r[2]cu=s[2]bT,bU={},{}for f=1,3 do
bT[f]=cr[f]-bN[f]bU[f]=cu[f]-bN[f]end
d[8]=l(bT,bU)end
end
for c=1,#e[8]do
d=e[8][c]q=e[7][d[1]]r=e[7][d[2]]s=e[7][d[3]]d[7]=bb(q[7],r[7],s[7])_=d[8]a=q[3]if i(_,a)>0 then
aq=q[6]+r[6]+s[6]if aq==3 then
y[#y+1]={q[5],r[5],s[5],d[4],d[5],d[6],d[7]}elseif aq>=-1 then
if q[6]==-aq then
ac=q[5]S=r[5]O=s[5]elseif r[6]==-aq then
ac=r[5]S=q[5]O=s[5]else
ac=s[5]S=r[5]O=q[5]end
if aq==1 then
aO=aL(D(sub(S,ac),1000),S)bj=aL(D(sub(O,ac),1000),O)y[#y+1]={S,aO,O,d[4],d[5],d[6],d[7]}y[#y+1]={O,aO,bj,d[4],d[5],d[6],d[7]}else
aO=aL(D(sub(ac,S),1000),S)bj=aL(D(sub(ac,O),1000),O)y[#y+1]={ac,aO,bj,d[4],d[5],d[6],d[7]}end
end
end
end
end
ad=cb(H[1][7],H[2][7])if ad then
ak(H[1][7],ad[1])L=aV
ak(H[2][7],m(ad[1],-1))N=aV
if#L==1 then
T=L[1]elseif#N==1 then
T=N[1]elseif#L==2 and#N==2 then
aW=j(L[2],L[1])bX=j(N[2],N[1])bQ=l(bX,l(aW,bX))T=ao(L[1],m(aW,i(j(N[1],L[1]),bQ)/i(aW,bQ)))else
T=cv
end
end
table.sort(y,function(_,a)return _[7]>a[7]end)bx=aK
end
aJ=aJ+1
end
function onDraw()V=screen
local cq,ck,aI,P,aS=V.drawTriangleF,V.drawTriangle,V.drawRectF,V.setColor,V.drawText
Q=V.getWidth()cm=V.getHeight()o=Q/2
F=cm/2
M=tan(ct/2)*o
P(n,n,n)if aU then
for c=1,#y do
d=y[c]q=d[1]r=d[2]s=d[3]P(d[4],d[5],d[6])cq(q[1]+o,q[2]+F,r[1]+o,r[2]+F,s[1]+o,s[2]+F)P(d[4]*R,d[5]*R,d[6]*R)ck(q[1]+o,q[2]+F-R,r[1]+o,r[2]+F-R,s[1]+o,s[2]+F-R)end
if ad then
P(n,n,0)for c=1,#L do
b=ai(j(L[c],E),ay)b=D(D(b,1/b[3]),M)aI(o+b[1]-2,F-b[2]-2,5,5)end
P(0,n,n)for c=1,#N do
b=ai(j(N[c],E),ay)b=D(D(b,1/b[3]),M)aI(o+b[1]-2,F-b[2]-2,5,5)end
if T then
P(n,0,n)b=ai(j(T,E),ay)b=D(D(b,1/b[3]),M)aI(o+b[1]-2,F-b[2]-2,5,5)end
end
P(n,n,n)if ad then
aS(1,1,"Collision:")for c=1,3 do
aS(1,c*6+1,bc(ad[1][c]))end
aS(1,4*6+1,bc(ad[2]))end
if T then
for c=1,3 do
aS(1,c*6+37,bc(T[c]))end
end
P(unpack(bg))if bw then
aT=10/az[3]aI(bH[1]+o-(aT//2),bH[2]+F-(aT//2),aT,aT)end
end
end
