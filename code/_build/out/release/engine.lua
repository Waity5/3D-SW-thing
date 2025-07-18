
K=255
I=.5
aj=180
D=math
aM=D.max
cp=D.min
sqrt=math.sqrt
ca=D.floor
pi=D.pi
Z=input.getNumber
al=input.getBool
cF=output.setBool
aL=true
aJ=false
bN=ipairs
abs=D.abs
bp=table.remove
aQ=string
sin=D.sin
cos=D.cos
tan=D.tan
unpack=table.unpack
bf=math.huge
function as(_,a)return{(_[1]+a[1]),(_[2]+a[2])}end
function k(_,a)return _[1]*a[2]-_[2]*a[1]end
function sub(_,a)return{(_[1]-a[1]),(_[2]-a[2])}end
function ay(_,a)return{_[1]*a,_[2]*a}end
function cs(_)return((_+aj)%360)-aj end
function cy(_)return D.atan(_)*aj/pi end
function cw(_)return D.atan(_[2],_[1])*aj/pi end
function cD(_,a,h)return cp(aM(a,_),h)end
function ct(_)return ca(_+I)end
function cB(_,a)return sqrt(((_[1]-a[1])^2)+((_[2]-a[2])^2)+((_[3]-a[3])^2))end
function bD(_,a)return{_[1]+a[1],_[2]+a[2],_[3]+a[3]}end
function l(_,a)return{_[1]-a[1],_[2]-a[2],_[3]-a[3]}end
function t(_,a)return{_[1]*a,_[2]*a,_[3]*a}end
function cr(_)return string.format("%.3f",_ or 0)end
function bL(_,a,h)return k(l(a,_),l(h,_))end
function bB(_)return t(_,1/sqrt(_[1]^2+_[2]^2+_[3]^2))end
A={}bc=1
cC=3
S=1
aH=aJ
bx=aL
ax=0
b_=0
W={0,0,-3}z={0,0,0}bE=62.5
bt=pi/aj
bA=3/bE
bK=90*bt/bE
bW=90*bt
ah=1
b_=0
function bo(az,aB)bX=t(s,-1)local F=-bf
for c,e in bN(az)do
L=j(e[2],s)if L>F then
cn=e[2]F=L
end
end
F=-bf
for c,e in bN(aB)do
L=j(e[2],bX)if L>F then
bS=e[2]F=L
end
end
g=l(cn,bS)end
function ci(az,aB)s={1,0,0}v={}while aL do
bo(az,aB)if j(g,s)<=0 then
return
end
v={g,v[1],v[2],v[3]}local _,a,h,U=unpack(v)if U then
local x=l(a,_)local N=l(h,_)local bm=l(U,_)local p=t(_,-1)local V=k(x,N)local bQ=k(N,bm)local bV=k(bm,x)if j(V,p)>0 then
aK(_,a,h)elseif j(bQ,p)>0 then
aK(_,h,U)elseif j(bV,p)>0 then
aK(_,U,a)else
R={{_,a,h},{_,h,U},{_,U,a},{a,U,h}}for c,e in ipairs(R)do
e[4]=bB(bL(e[1],e[2],e[3]))if j(e[1],e[4])<0 then
e[1],e[2]=e[2],e[1]e[4]=t(e[4],-1)end
end
for cv=1,32 do
F=bf
for c,e in ipairs(R)do
L=j(e[1],e[4])if L<F then
F=L
bs=e
end
end
s=bs[4]bo(az,aB)if j(g,s)-.0001<=F then
return bs[4],j(g,s)end
ai={}for c=#R,1,-1 do
aF=R[c]if j(aF[4],l(g,aF[1]))>0 then
for d=1,3 do
an={aF[d],aF[(d%3)+1]}for Q,bu in ipairs(ai)do
if bu[1]==an[2]and bu[2]==an[1]then
bp(ai,Q)an=cx
break
end
end
if an then
ai[#ai+1]=an
end
end
bp(R,c)end
end
for c,e in ipairs(ai)do
q={e[1],e[2],g}q[4]=bB(bL(q[1],q[2],q[3]))if j(q[1],q[4])<0 then
q[1],q[2]=q[2],q[1]q[4]=t(q[4],-1)end
R[#R+1]=q
end
end
return
end
elseif h then
aK(_,a,h)elseif a then
bY(_,a)else
v={_}s=t(_,-1)end
end
end
function aK(_,a,h)local x=l(a,_)local N=l(h,_)local p=t(_,-1)local V=k(x,N)if j(k(V,N),p)>0 then
v={_,h}s=k(k(N,p),N)elseif j(k(x,V),p)>0 then
v={_,a}s=k(k(x,p),x)else
if j(V,p)>0 then
v={_,a,h}s=V;
else
v={_,h,a}cu=t(V,-1)end
end
end
function bY(_,a)local x=l(a,_)local p=t(_,-1)if j(x,p)>0 then
s=k(k(x,p),x)else
v={_}s=p
end
end
function be(ab,H)by={}H=H or{}d=1
for c=A[1][ab][1],A[1][ab][2]do
i=A[2][c]by[d]={{i[1],i[2],i[3]},{}}d=d+1
end
br={}d=1
for c=A[1][ab][3],A[1][ab][4]do
i=A[3][c]br[d]=i
d=d+1
end
cl={H[1]or{0,0,0},H[2]or{0,0,0},H[3]or{0,0,0},H[4]or{1,0,0,0},H[5]or{0,0,0},H[6]or{0,0,0},by,br}G[#G+1]=cl
end
function bU(cb,bh,_,a,h)bC=l(a,_)bH=l(h,_)bP=k(bC,bH)bO=-j(bh,bP)aN=1.0/bO
bi=l(cb,_)bg=k(bi,bh)bj=j(bH,bg)*aN
e=-j(bC,bg)*aN
aS=j(bi,bP)*aN
return(-bO>=1e-6 and aS>=.0 and bj>=.0 and e>=.0 and(bj+e)<=1.0)end
function k(_,a)return{_[2]*a[3]-_[3]*a[2],_[3]*a[1]-_[1]*a[3],_[1]*a[2]-_[2]*a[1]}end
function j(_,a)return _[1]*a[1]+_[2]*a[2]+_[3]*a[3]end
function cg(u)if u[1]==0 and u[2]==0 and u[3]==0 then
return{1,0,0,0}else
return{0,u[1],u[2],u[3]}end
end
function cq(aD,u)local ae=ch(aD,cg(u))for c=1,4 do
ae[c]=aD[c]+ae[c]*I
end
return ae
end
function ch(aU,ba)local aI,aE,aG,ar=unpack(aU)local r,aw,at,au=unpack(ba)return{aI*r-aE*aw-aG*at-ar*au,aI*aw+aE*r+aG*au-ar*at,aI*at-aE*au+aG*r+ar*aw,aI*au+aE*at-aG*aw+ar*r}end
function cA(aU,ba)local ae={}for c=1,4 do ae[c]=aU+ba end
return ae
end
function aV(u,aY)local am={}for d=1,3 do
i=0
for Q=1,3 do
i=i+u[Q]*aY[d][Q]end
am[d]=i
end
return am
end
function cz(u,aY)local am={}for d=1,3 do
i=0
for Q=1,3 do
i=i+u[Q]*aY[Q][d]end
am[d]=i
end
return am
end
function bl(_,ag)ag=1/sqrt(_[1]^2+_[2]^2+_[3]^2+_[4]^2)return{_[1]*ag,_[2]*ag,_[3]*ag,_[4]*ag}end
function co(aD)local J,B,E,C=unpack(aD)return{{1-(2*E*E+2*C*C),2*B*E+2*C*J,2*B*C-2*E*J},{2*B*E-2*C*J,1-(2*B*B+2*C*C),2*E*C+2*B*J},{2*B*C+2*E*J,2*E*C-2*B*J,1-(2*B*B+2*E*E)}}end
function httpReply(_,a,h)cE=ax//2
ax=0
end
function onTick()for d=1,1 do
if al(32)and not aH then
aP=property.getText(bc)c=1
w=""
i=aQ.sub(aP,c,c)while i~=""do
bM=aQ.byte(i)if bM>64 then
w=(w..bM-65)+0
if S==1 then
bk=w
A[w]=A[w]or{}elseif S==2 then
c_=w
af=0
elseif S==3 then
aW=w
else
if af==0 then
af=c_
aW=aW-1
aT={}A[bk][#A[bk]+1]=aT
end
aT[#aT+1]=w
af=af-1
S=aM(af,aW)>0 and S-1 or 0
end
S=S+1
w=""
else
w=w..i
end
c=c+1
i=aQ.sub(aP,c,c)end
bc=bc+1
aH=aP==""
end
end
if aH then
b_=b_+1
if bx then
G={}be(1)be(1,{[1]={3,0,0}})be(2,{[1]={-5,0,0}})end
W[1]=W[1]+(Z(1)*cos(z[1])-Z(2)*sin(z[1]))*bA
W[3]=W[3]+(Z(1)*sin(z[1])+Z(2)*cos(z[1]))*bA
z[1]=z[1]-Z(3)*bK
z[2]=z[2]+Z(4)*bK
aX=0
aR={K,K,K}if al(1)then
aX=.001
aR={0,0,K}end
if al(3)then
aX=-.001
aR={K,0,0}end
i=0
if al(4)then
i=-.025
end
if al(5)then
i=.025
end
G[2][1][1]=G[2][1][1]+i
_=z[1]a=z[2]h=z[3]ad=cos(_)Y=sin(_)ac=cos(a)aa=sin(a)ap=cos(h)aq=sin(h)bw={{ad*ap-Y*aa*aq,-ac*aq,ad*aa*aq+ap*Y},{ad*aq+ap*Y*aa,ac*ap,Y*aq-ad*ap*aa},{-ac*Y,aa,ad*ac}}bd={-Y*ac,aa,ad*ac}bI=aJ
y={}for ab=1,#G do
f=G[ab]f[4]=bl(cq(f[4],f[5]))f[5]=t(f[5],.995)cf=co(bl(f[4]))for c=1,#f[7]do
g=f[7][c]g[2]=aV(g[1],cf)for d=1,3 do
g[2][d]=g[2][d]+f[1][d]end
g[3]={}for d=1,3 do
g[3][d]=g[2][d]-W[d]end
g[4]=aV(g[3],bw)aO=g[3]g[7]=sqrt(aO[1]^2+aO[2]^2+aO[3]^2)g[5]={g[4][1]*ah/g[4][3],-g[4][2]*ah/g[4][3]}g[6]=g[4][3]>0 and 1 or-1
end
bz=aJ
bb=2^16
for c=1,#f[8]do
b=f[8][c],1
bT=bU({0,0,0},bd,f[7][b[1]][3],f[7][b[2]][3],f[7][b[3]][3]),1
if bT and aS<bb then
bz=aL
bb=aS
end
end
if bz then
bI=aL
bF=bD(t(bd,bb),W)bZ=l(bF,f[1])f[5]=bD(f[5],t(k(bZ,bd),aX))ak=aV(l(bF,W),bw)bG={ak[1]*ah/ak[3],ak[2]*ah/ak[3]}end
if true then
for c=1,#f[8]do
b=f[8][c]m=f[7][b[1]]n=f[7][b[2]]o=f[7][b[3]]bn=m[2]cm=n[2]cj=o[2]bv,bq={},{}for d=1,3 do
bv[d]=cm[d]-bn[d]bq[d]=cj[d]-bn[d]end
b[8]=k(bv,bq)end
end
for c=1,#f[8]do
b=f[8][c]m=f[7][b[1]]n=f[7][b[2]]o=f[7][b[3]]b[7]=aM(m[7],n[7],o[7])_=b[8]a=m[3]if j(_,a)>0 then
ao=m[6]+n[6]+o[6]if ao==3 then
y[#y+1]={m[5],n[5],o[5],b[4],b[5],b[6],b[7]}elseif ao>=-1 then
if m[6]==-ao then
X=m[5]T=n[5]M=o[5]elseif n[6]==-ao then
X=n[5]T=m[5]M=o[5]else
X=o[5]T=n[5]M=m[5]end
if ao==1 then
aA=as(ay(sub(T,X),1000),T)aZ=as(ay(sub(M,X),1000),M)y[#y+1]={T,aA,M,b[4],b[5],b[6],b[7]}y[#y+1]={M,aA,aZ,b[4],b[5],b[6],b[7]}else
aA=as(ay(sub(X,T),1000),T)aZ=as(ay(sub(X,M),1000),M)y[#y+1]={X,aA,aZ,b[4],b[5],b[6],b[7]}end
end
end
end
end
bJ=ci(G[1][7],G[2][7])table.sort(y,function(_,a)return _[7]>a[7]end)bx=aJ
end
ax=ax+1
end
function onDraw()P=screen
local cc,cd,bR,aC,ce=P.drawTriangleF,P.drawTriangle,P.drawRectF,P.setColor,P.drawText
J=P.getWidth()ck=P.getHeight()r=J/2
O=ck/2
ah=tan(bW/2)*r
aC(K,K,K)if aH then
if bJ then
ce(1,1,bJ)end
for c=1,#y do
b=y[c]m=b[1]n=b[2]o=b[3]aC(b[4],b[5],b[6])cc(m[1]+r,m[2]+O,n[1]+r,n[2]+O,o[1]+r,o[2]+O)aC(b[4]*I,b[5]*I,b[6]*I)cd(m[1]+r,m[2]+O-I,n[1]+r,n[2]+O-I,o[1]+r,o[2]+O-I)end
aC(unpack(aR))if bI then
av=10/ak[3]bR(bG[1]+r-(av//2),bG[2]+O-(av//2),av,av)end
end
end
