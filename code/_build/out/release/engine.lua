-- Author: <Authorname> (Please change this in user settings, Ctrl+Comma)
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>


G=180
q=math
ah=q.max
aF=q.min
sqrt=math.sqrt
aD=q.floor
pi=q.pi
D=input.getNumber
aj=input.getBool
b_=output.setBool
aR=true
az=false
aY=ipairs
abs=q.abs
bh=table.remove
an=string
sin=q.sin
cos=q.cos
tan=q.tan
unpack=table.unpack
function X(_,b)return{(_[1]+b[1]),(_[2]+b[2])}end
function bd(_,b)return _[1]*b[2]-_[2]*b[1]end
function sub(_,b)return{(_[1]-b[1]),(_[2]-b[2])}end
function W(_,b)return{_[1]*b,_[2]*b}end
function bf(_)return((_+G)%360)-G end
function aW(_)return q.atan(_)*G/pi end
function bg(_)return q.atan(_[2],_[1])*G/pi end
function aX(_,b,F)return aF(ah(b,_),F)end
function aU(_)return aD(_+.5)end
function be(_,b)return sqrt(((_[1]-b[1])^2)+((_[2]-b[2])^2)+((_[3]-b[3])^2))end
c={}af=1
aZ=3
x=1
Q=az
ax=aR
T=0
ag=0
M={0,0,-3}e={0,0,0}aB=62.5
aC=pi/G
aA=3/aB
Z=90*aC/aB
aO=90*aC
ak=1
ag=0
function aQ(ao,aa)local V,S,R,Y=unpack(ao)local s,U,N,O=unpack(aa)return{V*s-S*U-R*N-Y*O,V*U+S*s-R*O-Y*N,V*N-S*O+R*s-Y*U,V*O+S*N-R*U+Y*s}end
function bi(ao,aa)au={}for d=1,4 do au[d]=ao+aa end
return au
end
function at(aM,aK)aw={}for g=1,3 do
h=0
for ar=1,3 do
h=h+aM[ar]*aK[g][ar]end
aw[g]=h
end
return aw
end
function av(_,K)K=1/sqrt(_[1]^2+_[2]^2+_[3]^2+_[4]^2)return{_[1]*K,_[2]*K,_[3]*K,_[4]*K}end
function aN(aL,r,k,m,n)r,k,m,n=unpack(aL)return{{1-(2*m*m+2*n*n),2*k*m+2*n*r,2*k*n-2*m*r},{2*k*m-2*n*r,1-(2*k*k+2*n*n),2*m*n+2*k*r},{2*k*n+2*m*r,2*m*n-2*k*r,1-(2*k*k+2*m*m)}}end
function httpReply(_,b,F)bc=T//2
T=0
end
function onTick()for g=1,1 do
if aj(32)and not Q then
am=property.getText(af)d=1
p=""
h=an.sub(am,d,d)while h~=""do
ap=an.byte(h)if ap>64 then
p=(p..ap-65)+0
if x==1 then
as=p
c[p]=c[p]or{}elseif x==2 then
aH=p
H=0
elseif x==3 then
ac=p
else
if H==0 then
H=aH
ac=ac-1
ab={}c[as][#c[as]+1]=ab
end
ab[#ab+1]=p
H=H-1
x=ah(H,ac)>0 and x-1 or 0
end
x=x+1
p=""
else
p=p..h
end
d=d+1
h=an.sub(am,d,d)end
af=af+1
Q=am==""
end
end
if Q then
ag=ag+1
if ax then
al={1,0,0,0}for d=1,#c[1]do
c[1][d]={c[1][d],{},0}end
end
M[1]=M[1]+(D(1)*cos(e[1])-D(2)*sin(e[1]))*aA
M[3]=M[3]+(D(1)*sin(e[1])+D(2)*cos(e[1]))*aA
e[1]=e[1]-D(3)*Z
e[2]=e[2]+D(4)*Z
if aj(1)then
e[3]=e[3]-Z
end
if aj(3)then
e[3]=e[3]+Z
end
_=e[1]b=e[2]F=e[3]E=cos(_)z=sin(_)A=cos(b)B=sin(b)L=cos(F)I=sin(F)aG={{E*L-z*B*I,-A*I,E*B*I+L*z},{E*I+L*z*B,A*L,z*I-E*L*B},{-A*z,B,E*A}}aV={-z*A,B,E*A}aJ=av({1,0,.01,0})al=aQ(al,aJ)aP=aN(av(al))for d=1,#c[1]do
f=c[1][d]f[2]=at(f[1],aP)for g=1,3 do
f[2][g]=f[2][g]-M[g]end
ae=f[2]f[5]=sqrt(ae[1]^2+ae[2]^2+ae[3]^2)f[3]=at(f[2],aG)f[4]={f[3][1]*ak/f[3][3],-f[3][2]*ak/f[3][3]}f[6]=f[3][3]>0 and 1 or-1
end
if true then
for d=1,#c[2]do
a=c[2][d]i=c[1][a[1]]j=c[1][a[2]]o=c[1][a[3]]aq=i[2]aS=j[2]aE=o[2]u,w={},{}for g=1,3 do
u[g]=aS[g]-aq[g]w[g]=aE[g]-aq[g]end
h={}a[8]=h
h[1]=u[2]*w[3]-u[3]*w[2]h[2]=u[3]*w[1]-u[1]*w[3]h[3]=u[1]*w[2]-u[2]*w[1]end
end
l={}for d=1,#c[2]do
a=c[2][d]i=c[1][a[1]]j=c[1][a[2]]o=c[1][a[3]]a[7]=ah(i[5],j[5],o[5])_=a[8]b=i[2]if _[1]*b[1]+_[2]*b[2]+_[3]*b[3]>0 then
J=i[6]+j[6]+o[6]if J==3 then
l[#l+1]={i[4],j[4],o[4],a[4],a[5],a[6],a[7]}elseif J>=-1 then
if i[6]==-J then
y=i[4]v=j[4]t=o[4]elseif j[6]==-J then
y=j[4]v=i[4]t=o[4]else
y=o[4]v=j[4]t=i[4]end
if J==1 then
P=X(W(sub(v,y),1000),v)ai=X(W(sub(t,y),1000),t)l[#l+1]={v,P,t,a[4],a[5],a[6],a[7]}l[#l+1]={t,P,ai,a[4],a[5],a[6],a[7]}else
P=X(W(sub(y,v),1000),v)ai=X(W(sub(y,t),1000),t)l[#l+1]={y,P,ai,a[4],a[5],a[6],a[7]}end
end
end
end
table.sort(l,function(_,b)return _[7]>b[7]end)ax=az
end
T=T+1
end
function onDraw()C=screen
local aT,bb,ay,ba=C.drawTriangleF,C.drawRectF,C.setColor,C.drawText
r=C.getWidth()aI=C.getHeight()s=r/2
ad=aI/2
ak=tan(aO/2)*s
ay(255,255,255)if Q then
for d=1,#l do
a=l[d]i=a[1]j=a[2]o=a[3]ay(a[4],a[5],a[6])aT(i[1]+s,i[2]+ad,j[1]+s,j[2]+ad,o[1]+s,o[2]+ad)end
end
end
