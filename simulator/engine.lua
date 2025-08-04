P=math
bX=P.max
cO=P.min
aM=math.sqrt
dk=P.floor
cK=P.pi
dj=input.getNumber
b_=input.getBool
c_=output.setBool
bb=true
bp=false
aV=ipairs
cY=P.abs
bK=table.remove
be=string
bf=P.sin
bx=P.cos
cC=P.tan
U=table.unpack
cl=math.huge

function aZ(a,c)return{(a[1]+c[1]),(a[2]+c[2])}end
function aL(a,c)return{(a[1]-c[1]),(a[2]-c[2])}end
function aS(a,c)return{a[1]*c,a[2]*c}end



function A(a,c)return{a[1]+c[1],a[2]+c[2],a[3]+c[3]}end
function g(a,c)return{a[1]-c[1],a[2]-c[2],a[3]-c[3]}end
function f(a,c)return{a[1]*c,a[2]*c,a[3]*c}end

function bv(a,c,o)return i(g(c,a),g(o,a))end
function bk(a)return f(a,1/aM(a[1]^2+a[2]^2+a[3]^2))end
function cb(a,c)return aM((a[1]-c[1])^2+(a[2]-c[2])^2+(a[3]-c[3])^2)end

s={}bh=1
df=3
V=1

bZ=bb
aW=0
bc=0
bC={0,0,-3}bB={0,0,0}bJ=62.5
cp=cK/180
de=5/bJ
da=90*cp/bJ
cU=90*cp
ap=1
bc=0
bt=1/62.5

function bq(aT,z)B=_ENV
while z~=0 do
z,M,cn,cX=U(s[5][aT])S,am=B[cn],B[cX]

if z==1 then
B[M]=cn
elseif z==2 then
B[M][S]=am
elseif z==3 then
B[M]=S[am]elseif z==4 then
B[M]={}elseif z==5 then
B[M]=S-am
elseif z==6 then
B[M]=S/am
elseif z==7 then
B[M]=S(U(am))elseif z==8 then
B[M]=#S
elseif z==9 then
if B[M]then
aT=S-1
end
elseif z==10 then
B[M]=S>am
end

aT=aT+1
end
end

function aX(b,ar,cd)bG=g(ar,b[1])return k(i(f(i(bG,cd),b[11]),bG),cd)+b[10]end

function co(b,ar,au)by=g(ar,b[1])b[4]=bE(b[4],f(i(by,au),-b[11]))b[1]=A(b[1],f(au,b[10]))end

function aA(b,ar,au)by=g(ar,b[1])
b[5]=A(b[5],f(i(by,au),b[11]))b[2]=A(b[2],f(au,b[10]))end

function ai(cI,l)local ab=-cl
for e,p in aV(cI)do
aj=k(p[2],l)if cY(aj-ab)<.0005 then
aR[#aR+1]=e
elseif aj>ab then
cJ=p[2]aR={e}ab=aj
end
end
return cJ
end

function cT(bP,bO)l={1,0,0}w={}for dh=1,32 do
j=g(ai(bP,l),ai(bO,f(l,-1)))
if k(j,l)<=0 then
return
end

w={j,w[1],w[2],w[3]}
a,c,o,aa=U(w)
if aa then
G=g(c,a)ae=g(o,a)cr=g(aa,a)x=f(a,-1)
T=i(G,ae)cs=i(ae,cr)cq=i(cr,G)
if k(T,x)>0 then
w={a,c,o}l=T
elseif k(cs,x)>0 then
w={a,o,aa}l=cs
elseif k(cq,x)>0 then
w={a,aa,c}l=cq
else


_={{a,c,o},{a,o,aa},{a,aa,c},{c,aa,o}}for e,p in ipairs(_)do
p[4]=bk(bv(p[1],p[2],p[3]))end

for dg=1,32 do
ab=cl
for e,p in ipairs(_)do
aj=k(p[1],p[4])if aj<ab then
ab=aj
cj=p
end
end
l=cj[4]
j=g(ai(bP,l),ai(bO,f(l,-1)))
if k(j,l)-.001<=ab then
return{cj[4],k(j,l)}end

at={}for e=#_,1,-1 do
aY=_[e]if k(aY[4],g(j,aY[1]))>0 then
for h=1,3 do
aw={aY[h],aY[(h%3)+1]}for aU,cg in ipairs(at)do
if cg[1]==aw[2]and cg[2]==aw[1]then
bK(at,aU)aw=dc
break
end
end

if aw then
at[#at+1]=aw
end
end



bK(_,e)end
end



for e,p in ipairs(at)do
as={p[1],p[2],j}as[4]=bk(bv(as[1],as[2],as[3]))




_[#_+1]=as
end
end
return
end
elseif o then
G=g(c,a)ae=g(o,a)x=f(a,-1)
T=i(G,ae)
if k(i(T,ae),x)>0 then
w={a,o}l=i(i(ae,x),ae)elseif k(i(G,T),x)>0 then
w={a,c}l=i(i(G,x),G)else
if k(T,x)>0 then

l=T;
else
w={a,o,c}l=f(T,-1)end
end
elseif c then
G=g(c,a)x=f(a,-1)
if k(G,x)>0 then
l=i(i(G,x),G)else
w={a}l=x
end
else
w={a}l=f(a,-1)end
end

end

function cZ(L,F)F=F or{}bV={}h=1
for e=s[1][L][1],s[1][L][2]do
n=s[2][e]bV[h]={{n[1],n[2],n[3]},{}}h=h+1
end
bU={}h=1
for e=s[1][L][3],s[1][L][4]do
n=s[3][e]bU[h]=n
h=h+1
end
bW={}h=1
for e=s[1][L][5],s[1][L][6]do
n=s[2][e]bW[h]={{n[1],n[2],n[3]},{}}h=h+1
end

cL={F[1]or{0,0,0},F[2]or{0,0,0},F[3]or{0,0,0},F[4]or{1,0,0,0},F[5]or{0,0,0},F[6]or{0,0,0},bV,bU,bW,F[7]or 1,F[8]or 1,F[9]or{0,0,0},s[1][L][7],L,{},{},}ah[#ah+1]=cL
end

function cQ(cE,bL,a,c,o)cv=g(c,a)cu=g(o,a)ct=i(cv,cu)ce=-k(bL,ct)bo=1.0/ce
cx=g(cE,a)cw=i(cx,bL)bF=k(cu,cw)*bo
p=-k(cv,cw)*bo
bd=k(cx,ct)*bo
return(-ce>=1e-6 and bd>=.0 and bF>=.0 and p>=.0 and(bF+p)<=1.0)end

function i(a,c)return{a[2]*c[3]-a[3]*c[2],a[3]*c[1]-a[1]*c[3],a[1]*c[2]-a[2]*c[1]}end

function k(a,c)return a[1]*c[1]+a[2]*c[2]+a[3]*c[3]end

function cy(K)if K[1]==0 and K[2]==0 and K[3]==0 then
return{1,0,0,0}else
return{0,K[1],K[2],K[3]}end
end

function bE(aP,K)local bl=cM(aP,cy(K))for e=1,4 do
bl[e]=aP[e]+bl[e]*.5
end
return bS(bl)end

function cM(cH,cG)local aH,aG,aE,aC=U(cH)local t,aF,aD,aB=U(cG)return{aH*t-aG*aF-aE*aD-aC*aB,aH*aF+aG*t+aE*aB-aC*aD,aH*aD-aG*aB+aE*t+aC*aF,aH*aB+aG*aD-aE*aF+aC*t}end

function bm(K,cP)local bT={}for h=1,3 do
n=0
for aU=1,3 do
n=n+K[aU]*cP[h][aU]end
bT[h]=n
end
return bT
end













function bS(a,ax)ax=1/aM(a[1]^2+a[2]^2+a[3]^2+a[4]^2)return{a[1]*ax,a[2]*ax,a[3]*ax,a[4]*ax}end

function cF(aP)local N,J,I,H=U(aP)return{{1-(2*I*I+2*H*H),2*J*I+2*H*N,2*J*H-2*I*N},{2*J*I-2*H*N,1-(2*J*J+2*H*H),2*I*H+2*J*N},{2*J*H+2*I*N,2*I*H-2*J*N,1-(2*J*J+2*I*I)},}end

function httpReply(a,c,o)di=aW//2
aW=0
end

function onTick()for h=1,1 do
if b_(32)and not bn then
bi=property.getText(bh)e=1
E=""
n=be.sub(bi,e,e)while n~=""do
bj=be.byte(n)if bj<45 then
if bj>33 then
E=(E..bj-35)+0
end

if V==1 then
cf=E
s[E]=s[E]or{}elseif V==2 then
cR=E
av=0
elseif V==3 then
bw=E
else
if av==0 then
av=cR
bw=bw-1
bu={}s[cf][#s[cf]+1]=bu
end
bu[#bu+1]=E
av=av-1
V=bX(av,bw)>0 and V-1 or 0
end
V=V+1
E=""
else
E=E..n
end
e=e+1
n=be.sub(bi,e,e)end
bh=bh+1
bn=bi==""
end
end

if bn then
bc=bc+1
if bZ then
bq(1)bq(11)
















end

bq(62)












































a=bB[1]c=bB[2]o=bB[3]al=bx(a)ag=bf(a)ak=bx(c)af=bf(c)az=bx(o)aq=bf(o)


















ck={{al*az-ag*af*aq,-ak*aq,al*af*aq+az*ag},{al*aq+az*ag*af,ak*az,ag*aq-al*az*af},{-ak*ag,af,al*ak}}
bA={-ag*ak,af,al*ak}

bQ=bp
C={}
for L=1,#ah do
b=ah[L]b[4]=bE(b[4],f(b[5],-bt))b[1]=A(b[1],f(b[2],bt))b[2]=A(b[2],f(b[3],bt))b[3]=f(b[12],1)b[2]=f(b[2],.9995)b[5]=f(b[5],.9995)
b[16]=cF(bS(b[4]))

for e=7,9,2 do
for h=1,#b[e]do
j=b[e][h]j[2]=bm(j[1],b[16])j[2]=A(j[2],b[1])j[3]=g(j[2],bC)
j[4]=bm(j[3],ck)br=j[3]j[7]=aM(br[1]^2+br[2]^2+br[3]^2)
j[5]={j[4][1]*ap/j[4][3],-j[4][2]*ap/j[4][3]}j[6]=j[4][3]>0 and 1 or-1

end
end

if b[11]>0 or not b[8][1][8]then
for e=1,#b[8]do
d=b[8][e]d[8]=bv(b[7][d[1]][2],b[7][d[2]][2],b[7][d[3]][2])end
end

for e=1,#b[8]do
d=b[8][e]u=b[7][d[1]]y=b[7][d[2]]D=b[7][d[3]]d[7]=bX(u[7],y[7],D[7])a=d[8]c=u[3]if k(a,c)>0 then
ao=u[6]+y[6]+D[6]if ao==3 then
C[#C+1]={u[5],y[5],D[5],d[4],d[5],d[6],d[7]}elseif ao>=-1 then
if u[6]==-ao then
Y=u[5]X=y[5]O=D[5]elseif y[6]==-ao then
Y=y[5]X=u[5]O=D[5]else
Y=D[5]X=y[5]O=u[5]end
if ao==1 then
aN=aZ(aS(aL(X,Y),1000),X)bg=aZ(aS(aL(O,Y),1000),O)

C[#C+1]={X,aN,O,d[4],d[5],d[6],d[7]}C[#C+1]={O,aN,bg,d[4],d[5],d[6],d[7]}else
aN=aZ(aS(aL(Y,X),1000),X)bg=aZ(aS(aL(Y,O),1000),O)
C[#C+1]={Y,aN,bg,d[4],d[5],d[6],d[7]}end
end
end
end
end

bM=bp
bD=2^16
for e,b in aV(ah)do
for h=1,#b[8]do
d=b[8][h]cW=cQ({0,0,0},bA,b[7][d[1]][3],b[7][d[2]][3],b[7][d[3]][3])if cW and bd<bD then
bM=bb
bD=bd
cm=b
end
end
end

if bM then
bQ=bb
ci=A(f(bA,bD),bC)aA(cm,ci,f(bA,aQ))if b_(2)then
cm[12]={0,-9.81,0}end

ay=bm(g(ci,bC),ck)ch={ay[1]*ap/ay[3],ay[2]*ap/ay[3]}end


bz=0
for e,m in aV(ah)do
for h,r in aV(ah)do
if e~=h and(m[10]>0 or r[10]>0 or m[11]>0 or r[11]>0)and cb(m[1],r[1])<=m[13]+r[13]then
bz=bz+1
R=m[9]ad=r[9]
v=cT(R,ad)
if v then
dd=m[15][h]or{}

ai(R,v[1])Q=aR
ai(ad,f(v[1],-1))ac=aR






if#Q==1 then
q=R[Q[1]][2]elseif#ac==1 then
q=ad[ac[1]][2]elseif#Q==2 and#ac==2 then
bs=g(R[Q[2]][2],R[Q[1]][2])cc=g(ad[ac[2]][2],ad[ac[1]][2])bR=i(cc,i(bs,cc))q=A(R[Q[1]][2],f(bs,k(g(ad[ac[1]][2],R[Q[1]][2]),bR)/k(bs,bR)))else
q=m[13]>r[13]and ad[ac[1]][2]or R[Q[1]][2]end


ba=A(i(m[5],g(q,m[1])),m[2])a_=A(i(r[5],g(q,r[1])),r[2])aK=g(ba,a_)
aJ=k(v[1],aK)if aJ>0 then











bY=aX(m,q,v[1])+aX(r,q,v[1])

cV=aJ*1
aQ=cV/bY

aA(m,q,f(v[1],-aQ))aA(r,q,f(v[1],aQ))



ba=A(i(m[5],g(q,m[1])),m[2])a_=A(i(r[5],g(q,r[1])),r[2])aK=g(ba,a_)
aJ=k(v[1],aK)
bH=g(aK,f(v[1],aJ))
bI=cb(bH,{0,0,0})if bI>.001 then
aI=bk(bH)cN=aX(m,q,aI)+aX(r,q,aI)ca=cO(bI/cN,aQ)
aA(m,q,f(aI,-ca))aA(r,q,f(aI,ca))end





bN=v[2]/bY

co(m,q,f(v[1],-bN))co(r,q,f(v[1],bN))end





end
end
end
end


table.sort(C,function(a,c)return a[7]>c[7]end)
bZ=bp
end

aW=aW+1

end

function onDraw()W=screen
local cz,cA,cD,an,cB=W.drawTriangleF,W.drawTriangle,W.drawRectF,W.setColor,W.drawText
N=W.getWidth()cS=W.getHeight()t=N/2
Z=cS/2
ap=cC(cU/2)*t


an(255,255,255)









if bn then
for e=1,#C do
d=C[e]u=d[1]y=d[2]D=d[3]an(d[4],d[5],d[6])cz(u[1]+t,u[2]+Z,y[1]+t,y[2]+Z,D[1]+t,D[2]+Z)an(d[4]*.5,d[5]*.5,d[6]*.5)cA(u[1]+t,u[2]+Z-.5,y[1]+t,y[2]+Z-.5,D[1]+t,D[2]+Z-.5)end






















an(255,255,255)
cB(1,1,bz)
































an(U(db))
if bQ then
aO=30/ay[3]cD(ch[1]+t-(aO//2),ch[2]+Z-(aO//2),aO,aO)end
end
end