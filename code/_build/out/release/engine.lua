
J=180
p=math
ap=p.max
aI=p.min
sqrt=math.sqrt
aV=p.floor
pi=p.pi
al=input.getNumber
ao=input.getBool
bi=output.setBool
aL=true
ax=false
aX=ipairs
abs=p.abs
bk=table.remove
aq=string
sin=p.sin
cos=p.cos
tan=p.tan
unpack=table.unpack
function S(_,c)return{(_[1]+c[1]),(_[2]+c[2])}end
function bg(_,c)return _[1]*c[2]-_[2]*c[1]end
function sub(_,c)return{(_[1]-c[1]),(_[2]-c[2])}end
function X(_,c)return{_[1]*c,_[2]*c}end
function bd(_)return((_+J)%360)-J end
function bb(_)return p.atan(_)*J/pi end
function aY(_)return p.atan(_[2],_[1])*J/pi end
function bh(_,c,K)return aI(ap(c,_),K)end
function b_(_)return aV(_+.5)end
function aW(_,c)return sqrt(((_[1]-c[1])^2)+((_[2]-c[2])^2)+((_[3]-c[3])^2))end
d={}ag=1
ba=3
v=1
U=ax
aC=aL
Q=0
ac=0
aO={0,0,-3}x={0,0,0}aE=62.5
at=pi/J
bc=3/aE
aw=90*at/aE
aJ=90*at
af=1
ac=0
function aP(q)if q[1]==0 and q[2]==0 and q[3]==0 then
return{1,0,0,0}else
return{0,q[1],q[2],q[3]}end
end
function aG(Z,q)local A=aS(Z,aP(q))for b=1,4 do
A[b]=Z[b]+A[b]*.5
end
return A
end
function aS(an,ad)local T,R,V,N=unpack(an)local r,aa,P,ab=unpack(ad)return{T*r-R*aa-V*P-N*ab,T*aa+R*r-V*ab-N*P,T*P-R*ab+V*r-N*aa,T*ab+R*P-V*aa+N*r}end
function bf(an,ad)local A={}for b=1,4 do A[b]=an+ad end
return A
end
function au(q,aK)local ar={}for f=1,3 do
h=0
for aD=1,3 do
h=h+q[aD]*aK[f][aD]end
ar[f]=h
end
return ar
end
function aB(_,G)G=1/sqrt(_[1]^2+_[2]^2+_[3]^2+_[4]^2)return{_[1]*G,_[2]*G,_[3]*G,_[4]*G}end
function aF(Z,s,l,m,j)s,l,m,j=unpack(Z)return{{1-(2*m*m+2*j*j),2*l*m+2*j*s,2*l*j-2*m*s},{2*l*m-2*j*s,1-(2*l*l+2*j*j),2*m*j+2*l*s},{2*l*j+2*m*s,2*m*j-2*l*s,1-(2*l*l+2*m*m)}}end
function httpReply(_,c,K)be=Q//2
Q=0
end
function onTick()for f=1,1 do
if ao(32)and not U then
ai=property.getText(ag)b=1
k=""
h=aq.sub(ai,b,b)while h~=""do
az=aq.byte(h)if az>64 then
k=(k..az-65)+0
if v==1 then
aA=k
d[k]=d[k]or{}elseif v==2 then
aU=k
I=0
elseif v==3 then
aj=k
else
if I==0 then
I=aU
aj=aj-1
ae={}d[aA][#d[aA]+1]=ae
end
ae[#ae+1]=k
I=I-1
v=ap(I,aj)>0 and v-1 or 0
end
v=v+1
k=""
else
k=k..h
end
b=b+1
h=aq.sub(ai,b,b)end
ag=ag+1
U=ai==""
end
end
if U then
ac=ac+1
if aC then
Y={1,0,0,0}for b=1,#d[1]do
d[1][b]={d[1][b],{},0}end
end
if ao(1)then
x[3]=x[3]-aw
end
if ao(3)then
x[3]=x[3]+aw
end
_=x[1]c=x[2]K=x[3]F=cos(_)C=sin(_)D=cos(c)E=sin(c)H=cos(K)M=sin(K)aQ={{F*H-C*E*M,-D*M,F*E*M+H*C},{F*M+H*C*E,D*H,C*M-F*H*E},{-D*C,E,F*D}}aZ={-C*D,E,F*D}as={-.01*al(2),.01*al(1),.01*al(3)}Y=aB(aG(Y,as))aN=aF(aB(Y))for b=1,#d[1]do
e=d[1][b]e[2]=au(e[1],aN)for f=1,3 do
e[2][f]=e[2][f]-aO[f]end
ak=e[2]e[5]=sqrt(ak[1]^2+ak[2]^2+ak[3]^2)e[3]=au(e[2],aQ)e[4]={e[3][1]*af/e[3][3],-e[3][2]*af/e[3][3]}e[6]=e[3][3]>0 and 1 or-1
end
if true then
for b=1,#d[2]do
a=d[2][b]g=d[1][a[1]]i=d[1][a[2]]o=d[1][a[3]]ay=g[2]aR=i[2]aT=o[2]u,y={},{}for f=1,3 do
u[f]=aR[f]-ay[f]y[f]=aT[f]-ay[f]end
h={}a[8]=h
h[1]=u[2]*y[3]-u[3]*y[2]h[2]=u[3]*y[1]-u[1]*y[3]h[3]=u[1]*y[2]-u[2]*y[1]end
end
n={}for b=1,#d[2]do
a=d[2][b]g=d[1][a[1]]i=d[1][a[2]]o=d[1][a[3]]a[7]=ap(g[5],i[5],o[5])_=a[8]c=g[2]if _[1]*c[1]+_[2]*c[2]+_[3]*c[3]>0 then
L=g[6]+i[6]+o[6]if L==3 then
n[#n+1]={g[4],i[4],o[4],a[4],a[5],a[6],a[7]}elseif L>=-1 then
if g[6]==-L then
z=g[4]w=i[4]t=o[4]elseif i[6]==-L then
z=i[4]w=g[4]t=o[4]else
z=o[4]w=i[4]t=g[4]end
if L==1 then
W=S(X(sub(w,z),1000),w)am=S(X(sub(t,z),1000),t)n[#n+1]={w,W,t,a[4],a[5],a[6],a[7]}n[#n+1]={t,W,am,a[4],a[5],a[6],a[7]}else
W=S(X(sub(z,w),1000),w)am=S(X(sub(z,t),1000),t)n[#n+1]={z,W,am,a[4],a[5],a[6],a[7]}end
end
end
end
table.sort(n,function(_,c)return _[7]>c[7]end)aC=ax
end
Q=Q+1
end
function onDraw()B=screen
local aH,bj,av,O=B.drawTriangleF,B.drawRectF,B.setColor,B.drawText
s=B.getWidth()aM=B.getHeight()r=s/2
ah=aM/2
af=tan(aJ/2)*r
av(255,255,255)if U then
O(1,1,"Quaternion:")for b=1,4 do
O(1,b*6+1,Y[b])end
O(1,37,"Keyboard input:")for b=1,3 do
O(1,b*6+37,as[b])end
for b=1,#n do
a=n[b]g=a[1]i=a[2]o=a[3]av(a[4],a[5],a[6])aH(g[1]+r,g[2]+ah,i[1]+r,i[2]+ah,o[1]+r,o[2]+ah)end
end
end
