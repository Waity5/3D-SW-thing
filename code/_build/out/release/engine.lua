
y=255
Q=.5
N=math
bz=N.max
bD=N.min
sqrt=math.sqrt
cR=N.floor
pi=N.pi
ae=input.getNumber
Z=input.getBool
cS=output.setBool
bh=true
aV=false
az=ipairs
abs=N.abs
cp=table.remove
bo=string
sin=N.sin
cos=N.cos
tan=N.tan
unpack=table.unpack
bV=math.huge
function aO(_,a)return{(_[1]+a[1]),(_[2]+a[2])}end
function aN(_,a)return{(_[1]-a[1]),(_[2]-a[2])}end
function aM(_,a)return{_[1]*a,_[2]*a}end
function u(_,a)return{_[1]+a[1],_[2]+a[2],_[3]+a[3]}end
function f(_,a)return{_[1]-a[1],_[2]-a[2],_[3]-a[3]}end
function e(_,a)return{_[1]*a,_[2]*a,_[3]*a}end
function bm(_,a,p)return i(f(a,_),f(p,_))end
function b_(_)return e(_,1/sqrt(_[1]^2+_[2]^2+_[3]^2))end
function bX(_,a)return sqrt((_[1]-a[1])^2+(_[2]-a[2])^2+(_[3]-a[3])^2)end
r={}bk=1
cQ=3
ac=1
aK=aV
ci=bh
aA=0
bt=0
K={0,0,-3}D={0,0,0}bG=62.5
bA=pi/180
bj=5/bG
cl=90*bA/bG
cB=90*bA
ar=1
bt=0
bn=1/62.5
function aG(b,aZ,ch)bK=f(aZ,b[1])return j(i(e(i(bK,ch),b[11]),bK),ch)+b[10]end
function ao(b,aZ,bI)cz=f(aZ,b[1])b[5]=u(b[5],e(i(cz,bI),b[11]))b[2]=u(b[2],e(bI,b[10]))end
function ai(cs,l)local X=-bV
for c,o in az(cs)do
ah=j(o[2],l)if abs(ah-X)<.0005 then
aQ[#aQ+1]=o[2]elseif ah>X then
bN=o[2]aQ={bN}X=ah
end
end
return bN
end
function cr(ca,bJ)l={1,0,0}w={}for cP=1,32 do
h=f(ai(ca,l),ai(bJ,e(l,-1)))if j(h,l)<=0 then
return
end
w={h,w[1],w[2],w[3]}_,a,p,aa=unpack(w)if aa then
F=f(a,_)ab=f(p,_)bR=f(aa,_)v=e(_,-1)O=i(F,ab)c_=i(ab,bR)bO=i(bR,F)if j(O,v)>0 then
w={_,a,p}l=O
elseif j(c_,v)>0 then
w={_,p,aa}l=c_
elseif j(bO,v)>0 then
w={_,aa,a}l=bO
else
ad={{_,a,p},{_,p,aa},{_,aa,a},{a,aa,p}}for c,o in ipairs(ad)do
o[4]=b_(bm(o[1],o[2],o[3]))end
for cT=1,32 do
X=bV
for c,o in ipairs(ad)do
ah=j(o[1],o[4])if ah<X then
X=ah
bZ=o
end
end
l=bZ[4]h=f(ai(ca,l),ai(bJ,e(l,-1)))if j(h,l)-.001<=X then
return{bZ[4],j(h,l)}end
au={}for c=#ad,1,-1 do
aI=ad[c]if j(aI[4],f(h,aI[1]))>0 then
for g=1,3 do
at={aI[g],aI[(g%3)+1]}for aX,bQ in ipairs(au)do
if bQ[1]==at[2]and bQ[2]==at[1]then
cp(au,aX)at=cV
break
end
end
if at then
au[#au+1]=at
end
end
cp(ad,c)end
end
for c,o in ipairs(au)do
as={o[1],o[2],h}as[4]=b_(bm(as[1],as[2],as[3]))ad[#ad+1]=as
end
end
return
end
elseif p then
F=f(a,_)ab=f(p,_)v=e(_,-1)O=i(F,ab)if j(i(O,ab),v)>0 then
w={_,p}l=i(i(ab,v),ab)elseif j(i(F,O),v)>0 then
w={_,a}l=i(i(F,v),F)else
if j(O,v)>0 then
l=O;
else
w={_,p,a}l=e(O,-1)end
end
elseif a then
F=f(a,_)v=e(_,-1)if j(F,v)>0 then
l=i(i(F,v),F)else
w={_}l=v
end
else
w={_}l=e(_,-1)end
end
end
function aP(L,B)B=B or{}bT={}g=1
for c=r[1][L][1],r[1][L][2]do
n=r[2][c]bT[g]={{n[1],n[2],n[3]},{}}g=g+1
end
bF={}g=1
for c=r[1][L][3],r[1][L][4]do
n=r[3][c]bF[g]=n
g=g+1
end
bE={}g=1
for c=r[1][L][5],r[1][L][6]do
n=r[2][c]bE[g]={{n[1],n[2],n[3]},{}}g=g+1
end
ct={B[1]or{0,0,0},B[2]or{0,0,0},B[3]or{0,0,0},B[4]or{1,0,0,0},B[5]or{0,0,0},B[6]or{0,0,0},bT,bF,bE,B[7]or 1,B[8]or 1,B[9]or{0,0,0},r[1][L][7]}Y[#Y+1]=ct
end
function cq(cA,bx,_,a,p)bP=f(a,_)ck=f(p,_)cc=i(bP,ck)cb=-j(bx,cc)bf=1.0/cb
bM=f(cA,_)ce=i(bM,bx)cf=j(ck,ce)*bf
o=-j(bP,ce)*bf
br=j(bM,cc)*bf
return(-cb>=1e-6 and br>=.0 and cf>=.0 and o>=.0 and(cf+o)<=1.0)end
function i(_,a)return{_[2]*a[3]-_[3]*a[2],_[3]*a[1]-_[1]*a[3],_[1]*a[2]-_[2]*a[1]}end
function j(_,a)return _[1]*a[1]+_[2]*a[2]+_[3]*a[3]end
function cu(G)if G[1]==0 and G[2]==0 and G[3]==0 then
return{1,0,0,0}else
return{0,G[1],G[2],G[3]}end
end
function cJ(aE,G)local bq=cN(aE,cu(G))for c=1,4 do
bq[c]=aE[c]+bq[c]*Q
end
return bq
end
function cN(cL,cG)local aU,aF,aR,aH=unpack(cL)local x,aS,aB,aT=unpack(cG)return{aU*x-aF*aS-aR*aB-aH*aT,aU*aS+aF*x+aR*aT-aH*aB,aU*aB-aF*aT+aR*x+aH*aS,aU*aT+aF*aB-aR*aS+aH*x}end
function bv(G,cD)local bW={}for g=1,3 do
n=0
for aX=1,3 do
n=n+G[aX]*cD[g][aX]end
bW[g]=n
end
return bW
end
function cm(_,aq)aq=1/sqrt(_[1]^2+_[2]^2+_[3]^2+_[4]^2)return{_[1]*aq,_[2]*aq,_[3]*aq,_[4]*aq}end
function cK(aE)local P,H,I,J=unpack(aE)return{{1-(2*I*I+2*J*J),2*H*I+2*J*P,2*H*J-2*I*P},{2*H*I-2*J*P,1-(2*H*H+2*J*J),2*I*J+2*H*P},{2*H*J+2*I*P,2*I*J-2*H*P,1-(2*H*H+2*I*I)}}end
function httpReply(_,a,p)cU=aA//2
aA=0
end
function onTick()for g=1,1 do
if Z(32)and not aK then
aY=property.getText(bk)c=1
E=""
n=bo.sub(aY,c,c)while n~=""do
bU=bo.byte(n)if bU>64 then
E=(E..bU-65)+0
if ac==1 then
bB=E
r[E]=r[E]or{}elseif ac==2 then
cx=E
av=0
elseif ac==3 then
bu=E
else
if av==0 then
av=cx
bu=bu-1
bp={}r[bB][#r[bB]+1]=bp
end
bp[#bp+1]=E
av=av-1
ac=bz(av,bu)>0 and ac-1 or 0
end
ac=ac+1
E=""
else
E=E..n
end
c=c+1
n=bo.sub(aY,c,c)end
bk=bk+1
aK=aY==""
end
end
if aK then
bt=bt+1
if ci then
Y={}for c=-1,1 do
for g=-1,1 do
aP(2,{[1]={c*2.5,0,g*2.5}})end
end
aP(5,{[1]={-6,0,0}})aP(6,{[1]={6,0,0}})aP(7,{[1]={0,-5,0},[7]=0,[8]=0})end
if Z(31)then
K[2]=K[2]+ae(2)*bj
else
K[1]=K[1]+(ae(1)*cos(D[1])-ae(2)*sin(D[1]))*bj
K[3]=K[3]+(ae(1)*sin(D[1])+ae(2)*cos(D[1]))*bj
end
D[1]=D[1]-ae(3)*cl
D[2]=D[2]+ae(4)*cl
V=0
if Z(31)then
bc=Q
else
bc=.1
end
an={y,y,y}if Z(1)then
V=-bc
an={0,0,y}end
if Z(3)then
V=bc
an={y,0,0}end
if not Z(31)then
for c=1,3 do
an[c]=bD(an[c]+50,y)end
end
_=D[1]a=D[2]p=D[3]al=cos(_)aj=sin(_)ak=cos(a)ag=sin(a)ap=cos(p)ax=sin(p)cj={{al*ap-aj*ag*ax,-ak*ax,al*ag*ax+ap*aj},{al*ax+ap*aj*ag,ak*ap,aj*ax-al*ap*ag},{-ak*aj,ag,al*ak}}bd={-aj*ak,ag,al*ak}bC=aV
A={}for L=1,#Y do
b=Y[L]b[4]=cm(cJ(b[4],e(b[5],-bn)))b[1]=u(b[1],e(b[2],bn))b[2]=u(b[2],e(b[3],bn))b[3]=e(b[12],1)b[2]=e(b[2],.9995)b[5]=e(b[5],.9995)cI=cK(cm(b[4]))for c=7,9,2 do
for g=1,#b[c]do
h=b[c][g]h[2]=bv(h[1],cI)h[2]=u(h[2],b[1])h[3]=f(h[2],K)h[4]=bv(h[3],cj)bg=h[3]h[7]=sqrt(bg[1]^2+bg[2]^2+bg[3]^2)h[5]={h[4][1]*ar/h[4][3],-h[4][2]*ar/h[4][3]}h[6]=h[4][3]>0 and 1 or-1
end
end
if b[11]>0 or not b[8][1][8]then
for c=1,#b[8]do
d=b[8][c]d[8]=bm(b[7][d[1]][2],b[7][d[2]][2],b[7][d[3]][2])end
end
for c=1,#b[8]do
d=b[8][c]t=b[7][d[1]]z=b[7][d[2]]C=b[7][d[3]]d[7]=bz(t[7],z[7],C[7])_=d[8]a=t[3]if j(_,a)>0 then
aw=t[6]+z[6]+C[6]if aw==3 then
A[#A+1]={t[5],z[5],C[5],d[4],d[5],d[6],d[7]}elseif aw>=-1 then
if t[6]==-aw then
S=t[5]U=z[5]M=C[5]elseif z[6]==-aw then
S=z[5]U=t[5]M=C[5]else
S=C[5]U=z[5]M=t[5]end
if aw==1 then
aC=aO(aM(aN(U,S),1000),U)be=aO(aM(aN(M,S),1000),M)A[#A+1]={U,aC,M,d[4],d[5],d[6],d[7]}A[#A+1]={M,aC,be,d[4],d[5],d[6],d[7]}else
aC=aO(aM(aN(S,U),1000),U)be=aO(aM(aN(S,M),1000),M)A[#A+1]={S,aC,be,d[4],d[5],d[6],d[7]}end
end
end
end
end
bS=aV
bb=2^16
for c,b in az(Y)do
for g=1,#b[8]do
d=b[8][g]cE=cq({0,0,0},bd,b[7][d[1]][3],b[7][d[2]][3],b[7][d[3]][3])if cE and br<bb then
bS=bh
bb=br
by=b
end
end
end
if bS then
bC=bh
bw=u(e(bd,bb),K)ao(by,bw,e(bd,V))if Z(2)then
by[12]={0,-9.81,0}end
ay=bv(f(bw,K),cj)bY={ay[1]*ar/ay[3],ay[2]*ar/ay[3]}end
ba=0
for c,k in az(Y)do
for g,m in az(Y)do
if c~=g and(k[10]>0 or m[10]>0 or k[11]>0 or m[11]>0)and bX(k[1],m[1])<=k[13]+m[13]then
ba=ba+1
s=cr(k[9],m[9])if s then
ai(k[9],s[1])R=aQ
ai(m[9],e(s[1],-1))af=aQ
if#R==1 then
q=R[1]elseif#af==1 then
q=af[1]elseif#R==2 and#af==2 then
bi=f(R[2],R[1])bH=f(af[2],af[1])cd=i(bH,i(bi,bH))q=u(R[1],e(bi,j(f(af[1],R[1]),cd)/j(bi,cd)))else
q=R[1]end
bs=u(i(k[5],f(q,k[1])),k[2])bl=u(i(m[5],f(q,m[1])),m[2])aJ=f(bs,bl)aL=j(s[1],aJ)if aL>0 then
cw=aG(k,q,s[1])+aG(m,q,s[1])cC=aL*1
V=cC/cw
ao(k,q,e(s[1],-V))ao(m,q,e(s[1],V))bs=u(i(k[5],f(q,k[1])),k[2])bl=u(i(m[5],f(q,m[1])),m[2])aJ=f(bs,bl)aL=j(s[1],aJ)bL=f(aJ,e(s[1],aL))co=bX(bL,{0,0,0})if co>.001 then
aD=b_(bL)cv=aG(k,q,aD)+aG(m,q,aD)cg=bD(co/cv,V)ao(k,q,e(aD,-cg))ao(m,q,e(aD,cg))end
cn=k[10]+m[10]k[1]=u(k[1],e(s[1],-s[2]*k[10]/cn))m[1]=u(m[1],e(s[1],s[2]*m[10]/cn))end
end
end
end
end
table.sort(A,function(_,a)return _[7]>a[7]end)ci=aV
end
aA=aA+1
end
function onDraw()W=screen
local cy,cF,cH,am,cM=W.drawTriangleF,W.drawTriangle,W.drawRectF,W.setColor,W.drawText
P=W.getWidth()cO=W.getHeight()x=P/2
T=cO/2
ar=tan(cB/2)*x
am(y,y,y)if aK then
for c=1,#A do
d=A[c]t=d[1]z=d[2]C=d[3]am(d[4],d[5],d[6])cy(t[1]+x,t[2]+T,z[1]+x,z[2]+T,C[1]+x,C[2]+T)am(d[4]*Q,d[5]*Q,d[6]*Q)cF(t[1]+x,t[2]+T-Q,z[1]+x,z[2]+T-Q,C[1]+x,C[2]+T-Q)end
am(y,y,y)cM(1,1,ba)am(unpack(an))if bC then
aW=30/ay[3]cH(bY[1]+x-(aW//2),bY[2]+T-(aW//2),aW,aW)end
end
end
