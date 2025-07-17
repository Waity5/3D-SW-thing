
G=255
Y=180
v=math
aQ=v.max
bR=v.min
sqrt=math.sqrt
bV=v.floor
pi=v.pi
U=input.getNumber
af=input.getBool
ci=output.setBool
ap=true
av=false
aY=ipairs
abs=v.abs
cl=table.remove
aU=string
sin=v.sin
cos=v.cos
tan=v.tan
unpack=table.unpack
function ao(_,a)return{(_[1]+a[1]),(_[2]+a[2])}end
function i(_,a)return _[1]*a[2]-_[2]*a[1]end
function sub(_,a)return{(_[1]-a[1]),(_[2]-a[2])}end
function ay(_,a)return{_[1]*a,_[2]*a}end
function cn(_)return((_+Y)%360)-Y end
function ck(_)return v.atan(_)*Y/pi end
function cm(_)return v.atan(_[2],_[1])*Y/pi end
function cq(_,a,h)return bR(aQ(a,_),h)end
function co(_)return bV(_+.5)end
function cj(_,a)return sqrt(((_[1]-a[1])^2)+((_[2]-a[2])^2)+((_[3]-a[3])^2))end
function bc(_,a)return{_[1]+a[1],_[2]+a[2],_[3]+a[3]}end
function o(_,a)return{_[1]-a[1],_[2]-a[2],_[3]-a[3]}end
function C(_,a)return{_[1]*a,_[2]*a,_[3]*a}end
function cf(_)return string.format("%.3f",_ or 0)end
z={}aP=1
ce=3
K=1
au=av
aZ=ap
ax=0
aL=0
L={0,0,-3}s={0,0,0}bh=62.5
bf=pi/Y
by=3/bh
bp=90*bf/bh
cd=90*bf
X=1
aL=0
function bX(bD,bC)B={1,0,0}u={}while ap do
bI=C(B,-1)aX=-(2^32)for d,E in aY(bD)do
ac=j(E[2],B)if ac>aX then
cb=E[2]aX=ac
end
end
bt=-(2^32)for d,E in aY(bC)do
ac=j(E[2],bI)if ac>bt then
bG=E[2]bt=ac
end
end
g=o(cb,bG)if j(g,B)<=0 then
return "NO"
end
u={g,u[1],u[2],u[3]}local _,a,h,ar=unpack(u)if ar then
local q=o(a,_)local O=o(h,_)local bz=o(ar,_)local k=C(_,-1)local N=i(q,O)local bY=i(O,bz)local bW=i(bz,q)if j(N,k)>0 then
am(_,a,h)elseif j(bY,k)>0 then
am(_,h,ar)elseif j(bW,k)>0 then
am(_,ar,a)else
return "YES"
end
elseif h then
am(_,a,h)elseif a then
bE(_,a)else
u={_}B=C(_,-1)end
end
end
function am(_,a,h)local q=o(a,_)local O=o(h,_)local k=C(_,-1)local N=i(q,O)if j(i(N,O),k)>0 then
u={_,h}B=i(i(O,k),O)elseif j(i(q,N),k)>0 then
u={_,a}B=i(i(q,k),q)else
if j(N,k)>0 then
u={_,a,h}B=N;
else
u={_,h,a}cr=C(N,-1)end
end
end
function bE(_,a)local q=o(a,_)local k=C(_,-1)if j(q,k)>0 then
B=i(i(q,k),q)else
u={_}B=k
end
end
function b_(an,F)bb={}F=F or{}c=1
for d=z[1][an][1],z[1][an][2]do
f=z[2][d]bb[c]={{f[1],f[2],f[3]},{}}c=c+1
end
bv={}c=1
for d=z[1][1][3],z[1][1][4]do
f=z[3][d]bv[c]=f
c=c+1
end
bP={F[1]or{0,0,0},F[2]or{0,0,0},F[3]or{0,0,0},F[4]or{1,0,0,0},F[5]or{0,0,0},F[6]or{0,0,0},bb,bv}I[#I+1]=bP
end
function c_(bS,be,_,a,h)br=o(a,_)bg=o(h,_)bi=i(br,bg)bw=-j(be,bi)aK=1.0/bw
bq=o(bS,_)bs=i(bq,be)bA=j(bg,bs)*aK
E=-j(br,bs)*aK
aG=j(bq,bi)*aK
return(-bw>=1e-6 and aG>=.0 and bA>=.0 and E>=.0 and(bA+E)<=1.0)end
function i(_,a)return{_[2]*a[3]-_[3]*a[2],_[3]*a[1]-_[1]*a[3],_[1]*a[2]-_[2]*a[1]}end
function j(_,a)return _[1]*a[1]+_[2]*a[2]+_[3]*a[3]end
function bO(m)if m[1]==0 and m[2]==0 and m[3]==0 then
return{1,0,0,0}else
return{0,m[1],m[2],m[3]}end
end
function bF(al,m)local R=bJ(al,bO(m))for d=1,4 do
R[d]=al[d]+R[d]*.5
end
return R
end
function bJ(aO,aV)local aw,ak,aB,aq=unpack(aO)local y,aA,az,as=unpack(aV)return{aw*y-ak*aA-aB*az-aq*as,aw*aA+ak*y+aB*as-aq*az,aw*az-ak*as+aB*y+aq*aA,aw*as+ak*az-aB*aA+aq*y}end
function cp(aO,aV)local R={}for d=1,4 do R[d]=aO+aV end
return R
end
function aN(m,aF)local ab={}for c=1,3 do
f=0
for ag=1,3 do
f=f+m[ag]*aF[c][ag]end
ab[c]=f
end
return ab
end
function ch(m,aF)local ab={}for c=1,3 do
f=0
for ag=1,3 do
f=f+m[ag]*aF[ag][c]end
ab[c]=f
end
return ab
end
function bo(_,W)W=1/sqrt(_[1]^2+_[2]^2+_[3]^2+_[4]^2)return{_[1]*W,_[2]*W,_[3]*W,_[4]*W}end
function bT(al)local D,x,w,A=unpack(al)return{{1-(2*w*w+2*A*A),2*x*w+2*A*D,2*x*A-2*w*D},{2*x*w-2*A*D,1-(2*x*x+2*A*A),2*w*A+2*x*D},{2*x*A+2*w*D,2*w*A-2*x*D,1-(2*x*x+2*w*w)}}end
function httpReply(_,a,h)cg=ax//2
ax=0
end
function onTick()for c=1,1 do
if af(32)and not au then
aC=property.getText(aP)d=1
r=""
f=aU.sub(aC,d,d)while f~=""do
bx=aU.byte(f)if bx>64 then
r=(r..bx-65)+0
if K==1 then
ba=r
z[r]=z[r]or{}elseif K==2 then
bU=r
ad=0
elseif K==3 then
aE=r
else
if ad==0 then
ad=bU
aE=aE-1
aD={}z[ba][#z[ba]+1]=aD
end
aD[#aD+1]=r
ad=ad-1
K=aQ(ad,aE)>0 and K-1 or 0
end
K=K+1
r=""
else
r=r..f
end
d=d+1
f=aU.sub(aC,d,d)end
aP=aP+1
au=aC==""
end
end
if au then
aL=aL+1
if aZ then
I={}b_(1)b_(1,{[1]={3,0,0}})end
L[1]=L[1]+(U(1)*cos(s[1])-U(2)*sin(s[1]))*by
L[3]=L[3]+(U(1)*sin(s[1])+U(2)*cos(s[1]))*by
s[1]=s[1]-U(3)*bp
s[2]=s[2]+U(4)*bp
aR=0
aH={G,G,G}if af(1)then
aR=.001
aH={0,0,G}end
if af(3)then
aR=-.001
aH={G,0,0}end
f=0
if af(4)then
f=-.025
end
if af(5)then
f=.025
end
I[2][1][1]=I[2][1][1]+f
_=s[1]a=s[2]h=s[3]S=cos(_)Q=sin(_)V=cos(a)P=sin(a)ae=cos(h)aa=sin(h)bn={{S*ae-Q*P*aa,-V*aa,S*P*aa+ae*Q},{S*aa+ae*Q*P,V*ae,Q*aa-S*ae*P},{-V*Q,P,S*V}}aM={-Q*V,P,S*V}bd=av
p={}for an=1,#I do
e=I[an]e[4]=bo(bF(e[4],e[5]))e[5]=C(e[5],.995)bL=bT(bo(e[4]))for d=1,#e[7]do
g=e[7][d]g[2]=aN(g[1],bL)for c=1,3 do
g[2][c]=g[2][c]+e[1][c]end
g[3]={}for c=1,3 do
g[3][c]=g[2][c]-L[c]end
g[4]=aN(g[3],bn)aJ=g[3]g[7]=sqrt(aJ[1]^2+aJ[2]^2+aJ[3]^2)g[5]={g[4][1]*X/g[4][3],-g[4][2]*X/g[4][3]}g[6]=g[4][3]>0 and 1 or-1
end
aW=av
aI=2^16
for d=1,#e[8]do
b=e[8][d]bK=c_({0,0,0},aM,e[7][b[1]][3],e[7][b[2]][3],e[7][b[3]][3])if bK and aG<aI then
aW=ap
aI=aG
end
end
if aW then
bd=ap
bB=bc(C(aM,aI),L)bQ=o(bB,e[1])e[5]=bc(e[5],C(i(bQ,aM),aR))ah=aN(o(bB,L),bn)bu={ah[1]*X/ah[3],ah[2]*X/ah[3]}end
if true then
for d=1,#e[8]do
b=e[8][d]l=e[7][b[1]]n=e[7][b[2]]t=e[7][b[3]]bk=l[2]cc=n[2]bM=t[2]bj,bl={},{}for c=1,3 do
bj[c]=cc[c]-bk[c]bl[c]=bM[c]-bk[c]end
b[8]=i(bj,bl)end
end
for d=1,#e[8]do
b=e[8][d]l=e[7][b[1]]n=e[7][b[2]]t=e[7][b[3]]b[7]=aQ(l[7],n[7],t[7])_=b[8]a=l[3]if j(_,a)>0 then
Z=l[6]+n[6]+t[6]if Z==3 then
p[#p+1]={l[5],n[5],t[5],b[4],b[5],b[6],b[7]}elseif Z>=-1 then
if l[6]==-Z then
J=l[5]M=n[5]H=t[5]elseif n[6]==-Z then
J=n[5]M=l[5]H=t[5]else
J=t[5]M=n[5]H=l[5]end
if Z==1 then
ai=ao(ay(sub(M,J),1000),M)aT=ao(ay(sub(H,J),1000),H)p[#p+1]={M,ai,H,b[4],b[5],b[6],b[7]}p[#p+1]={H,ai,aT,b[4],b[5],b[6],b[7]}else
ai=ao(ay(sub(J,M),1000),M)aT=ao(ay(sub(J,H),1000),H)p[#p+1]={J,ai,aT,b[4],b[5],b[6],b[7]}end
end
end
end
end
bm=bX(I[1][7],I[2][7])table.sort(p,function(_,a)return _[7]>a[7]end)aZ=av
end
ax=ax+1
end
function onDraw()T=screen
local bZ,bH,aS,ca=T.drawTriangleF,T.drawRectF,T.setColor,T.drawText
D=T.getWidth()bN=T.getHeight()y=D/2
aj=bN/2
X=tan(cd/2)*y
aS(G,G,G)if au then
if bm then
ca(1,1,bm)end
for d=1,#p do
b=p[d]l=b[1]n=b[2]t=b[3]aS(b[4],b[5],b[6])bZ(l[1]+y,l[2]+aj,n[1]+y,n[2]+aj,t[1]+y,t[2]+aj)end
aS(unpack(aH))if bd then
at=10/ah[3]bH(bu[1]+y-(at//2),bu[2]+aj-(at//2),at,at)end
end
end
