
G=180
p=math
ao=p.max
aO=p.min
sqrt=math.sqrt
aM=p.floor
pi=p.pi
aq=input.getNumber
ak=input.getBool
bi=output.setBool
aU=true
ar=false
aW=ipairs
abs=p.abs
bb=table.remove
ap=string
sin=p.sin
cos=p.cos
tan=p.tan
unpack=table.unpack
function ab(_,c)return{(_[1]+c[1]),(_[2]+c[2])}end
function b_(_,c)return _[1]*c[2]-_[2]*c[1]end
function sub(_,c)return{(_[1]-c[1]),(_[2]-c[2])}end
function W(_,c)return{_[1]*c,_[2]*c}end
function ba(_)return((_+G)%360)-G end
function bd(_)return p.atan(_)*G/pi end
function bc(_)return p.atan(_[2],_[1])*G/pi end
function bg(_,c,K)return aO(ao(c,_),K)end
function bk(_)return aM(_+.5)end
function aX(_,c)return sqrt(((_[1]-c[1])^2)+((_[2]-c[2])^2)+((_[3]-c[3])^2))end
d={}af=1
be=3
u=1
aa=ar
aE=aU
Z=0
aj=0
aG={0,0,-3}z={0,0,0}aD=62.5
ax=pi/G
bf=3/aD
av=90*ax/aD
aS=90*ax
ac=1
aj=0
function aF(q)if q[1]==0 and q[2]==0 and q[3]==0 then
return{1,0,0,0}else
return{0,q[1],q[2],q[3]}end
end
function aR(P,q)local D=aQ(P,aF(q))for b=1,4 do
D[b]=P[b]+D[b]*.5
end
return D
end
function aQ(al,am)local N,T,X,Q=unpack(al)local r,R,S,U=unpack(am)return{N*r-T*R-X*S-Q*U,N*R+T*r+X*U-Q*S,N*S-T*U+X*r+Q*R,N*U+T*S-X*R+Q*r}end
function aZ(al,am)local D={}for b=1,4 do D[b]=al+am end
return D
end
function aC(q,aK)local ay={}for f=1,3 do
h=0
for az=1,3 do
h=h+q[az]*aK[f][az]end
ay[f]=h
end
return ay
end
function au(_,M)M=1/sqrt(_[1]^2+_[2]^2+_[3]^2+_[4]^2)return{_[1]*M,_[2]*M,_[3]*M,_[4]*M}end
function aJ(P,s,o,l,n)s,o,l,n=unpack(P)return{{1-(2*l*l+2*n*n),2*o*l+2*n*s,2*o*n-2*l*s},{2*o*l-2*n*s,1-(2*o*o+2*n*n),2*l*n+2*o*s},{2*o*n+2*l*s,2*l*n-2*o*s,1-(2*o*o+2*l*l)}}end
function httpReply(_,c,K)aY=Z//2
Z=0
end
function onTick()for f=1,1 do
if ak(32)and not aa then
ad=property.getText(af)b=1
k=""
h=ap.sub(ad,b,b)while h~=""do
aw=ap.byte(h)if aw>64 then
k=(k..aw-65)+0
if u==1 then
aA=k
d[k]=d[k]or{}elseif u==2 then
aH=k
L=0
elseif u==3 then
ae=k
else
if L==0 then
L=aH
ae=ae-1
an={}d[aA][#d[aA]+1]=an
end
an[#an+1]=k
L=L-1
u=ao(L,ae)>0 and u-1 or 0
end
u=u+1
k=""
else
k=k..h
end
b=b+1
h=ap.sub(ad,b,b)end
af=af+1
aa=ad==""
end
end
if aa then
aj=aj+1
if aE then
V={1,0,0,0}for b=1,#d[1]do
d[1][b]={d[1][b],{},0}end
end
if ak(1)then
z[3]=z[3]-av
end
if ak(3)then
z[3]=z[3]+av
end
_=z[1]c=z[2]K=z[3]B=cos(_)F=sin(_)E=cos(c)A=sin(c)I=cos(K)H=sin(K)aP={{B*I-F*A*H,-E*H,B*A*H+I*F},{B*H+I*F*A,E*I,F*H-B*I*A},{-E*F,A,B*E}}bh={-F*E,A,B*E}as={-.01*aq(2),.01*aq(1),.01*aq(3)}V=au(aR(V,as))aT=aJ(au(V))for b=1,#d[1]do
e=d[1][b]e[2]=aC(e[1],aT)for f=1,3 do
e[2][f]=e[2][f]-aG[f]end
ah=e[2]e[5]=sqrt(ah[1]^2+ah[2]^2+ah[3]^2)e[3]=aC(e[2],aP)e[4]={e[3][1]*ac/e[3][3],-e[3][2]*ac/e[3][3]}e[6]=e[3][3]>0 and 1 or-1
end
if true then
for b=1,#d[2]do
a=d[2][b]g=d[1][a[1]]i=d[1][a[2]]m=d[1][a[3]]at=g[2]aN=i[2]aV=m[2]v,w={},{}for f=1,3 do
v[f]=aN[f]-at[f]w[f]=aV[f]-at[f]end
h={}a[8]=h
h[1]=v[2]*w[3]-v[3]*w[2]h[2]=v[3]*w[1]-v[1]*w[3]h[3]=v[1]*w[2]-v[2]*w[1]end
end
j={}for b=1,#d[2]do
a=d[2][b]g=d[1][a[1]]i=d[1][a[2]]m=d[1][a[3]]a[7]=ao(g[5],i[5],m[5])_=a[8]c=g[2]if _[1]*c[1]+_[2]*c[2]+_[3]*c[3]>0 then
J=g[6]+i[6]+m[6]if J==3 then
j[#j+1]={g[4],i[4],m[4],a[4],a[5],a[6],a[7]}elseif J>=-1 then
if g[6]==-J then
y=g[4]x=i[4]t=m[4]elseif i[6]==-J then
y=i[4]x=g[4]t=m[4]else
y=m[4]x=i[4]t=g[4]end
if J==1 then
O=ab(W(sub(x,y),1000),x)ai=ab(W(sub(t,y),1000),t)j[#j+1]={x,O,t,a[4],a[5],a[6],a[7]}j[#j+1]={t,O,ai,a[4],a[5],a[6],a[7]}else
O=ab(W(sub(y,x),1000),x)ai=ab(W(sub(y,t),1000),t)j[#j+1]={y,O,ai,a[4],a[5],a[6],a[7]}end
end
end
end
table.sort(j,function(_,c)return _[7]>c[7]end)aE=ar
end
Z=Z+1
end
function onDraw()C=screen
local aI,bj,aB,Y=C.drawTriangleF,C.drawRectF,C.setColor,C.drawText
s=C.getWidth()aL=C.getHeight()r=s/2
ag=aL/2
ac=tan(aS/2)*r
aB(255,255,255)if aa then
Y(1,1,"Quaternion:")for b=1,4 do
Y(1,b*6+1,V[b])end
Y(1,37,"Keyboard input:")for b=1,3 do
Y(1,b*6+37,as[b])end
for b=1,#j do
a=j[b]g=a[1]i=a[2]m=a[3]aB(a[4],a[5],a[6])aI(g[1]+r,g[2]+ag,i[1]+r,i[2]+ag,m[1]+r,m[2]+ag)end
end
end
