-- Author: <Authorname> (Please change this in user settings, Ctrl+Comma)
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 3052 (3419 with comment) chars

E=180
n=math
V=n.max
at=n.min
sqrt=math.sqrt
ap=n.floor
pi=n.pi
z=input.getNumber
Y=input.getBool
az=output.setBool
aq=true
aj=false
aF=ipairs
abs=n.abs
aI=table.remove
S=string
sin=n.sin
cos=n.cos
tan=n.tan
function L(_,b)return{(_[1]+b[1]),(_[2]+b[2])}end
function aC(_,b)return _[1]*b[2]-_[2]*b[1]end
function sub(_,b)return{(_[1]-b[1]),(_[2]-b[2])}end
function J(_,b)return{_[1]*b,_[2]*b}end
function aw(_)return((_+E)%360)-E end
function aH(_)return n.atan(_)*E/pi end
function av(_)return n.atan(_[2],_[1])*E/pi end
function aD(_,b,B)return at(V(b,_),B)end
function aA(_)return ap(_+.5)end
function aG(_,b)return sqrt(((_[1]-b[1])^2)+((_[2]-b[2])^2)+((_[3]-b[3])^2))end
c={}Q=1
aL=3
p=1
N=aj
W=aq
K=0
aE=0
G={0,0,-10}e={0,0,0}ae=62.5
ab=pi/E
aa=3/ae
H=90*ab/ae
ar=90*ab
T=1
function httpReply(_,b,B)ay=K//2
K=0
end
function onTick()for f=1,1 do
if Y(32)and not N then
Z=property.getText(Q)d=1
k=""
i=S.sub(Z,d,d)while i~=""do
ah=S.byte(i)if ah>64 then
k=(k..ah-65)+0
if p==1 then
ac=k
c[k]=c[k]or{}elseif p==2 then
au=k
A=0
elseif p==3 then
P=k
else
if A==0 then
A=au
P=P-1
X={}c[ac][#c[ac]+1]=X
end
X[#X+1]=k
A=A-1
p=V(A,P)>0 and p-1 or 0
end
p=p+1
k=""
else
k=k..i
end
d=d+1
i=S.sub(Z,d,d)end
Q=Q+1
N=Z==""
end
end
if N then
if W then
for d=1,#c[1]do
c[1][d]={c[1][d],{},0}end
end
G[1]=G[1]+(z(1)*cos(e[1])-z(2)*sin(e[1]))*aa
G[3]=G[3]+(z(1)*sin(e[1])+z(2)*cos(e[1]))*aa
e[1]=e[1]-z(3)*H
e[2]=e[2]+z(4)*H
if Y(1)then
e[3]=e[3]-H
end
if Y(3)then
e[3]=e[3]+H
end
_=e[1]b=e[2]B=e[3]x=cos(_)w=sin(_)v=cos(b)y=sin(b)C=cos(B)D=sin(B)am={{x*C-w*y*D,-v*D,x*y*D+C*w},{x*D+C*w*y,v*C,w*D-x*C*y},{-v*w,y,x*v}}aB={-w*v,y,x*v}for d=1,#c[1]do
h=c[1][d]for f=1,3 do
h[2][f]=h[1][f]-G[f]end
O=h[2]h[5]=sqrt(O[1]^2+O[2]^2+O[3]^2)for aK=1,1 do
af={}for f=1,3 do
i=0
for ai=1,3 do
i=i+h[2][ai]*am[f][ai]end
af[f]=i
end
h[3]=af
end
h[4]={h[3][1]*T/h[3][3],-h[3][2]*T/h[3][3]}h[6]=h[3][3]>0 and 1 or-1
end
if W then
for d=1,#c[2]do
a=c[2][d]g=c[1][a[1]]j=c[1][a[2]]l=c[1][a[3]]ag=g[1]ao=j[1]al=l[1]r,s={},{}for f=1,3 do
r[f]=ao[f]-ag[f]s[f]=al[f]-ag[f]end
i={}a[8]=i
i[1]=r[2]*s[3]-r[3]*s[2]i[2]=r[3]*s[1]-r[1]*s[3]i[3]=r[1]*s[2]-r[2]*s[1]end
end
m={}for d=1,#c[2]do
a=c[2][d]g=c[1][a[1]]j=c[1][a[2]]l=c[1][a[3]]a[7]=V(g[5],j[5],l[5])_=a[8]b=g[2]if _[1]*b[1]+_[2]*b[2]+_[3]*b[3]>0 then
F=g[6]+j[6]+l[6]if F==3 then
m[#m+1]={g[4],j[4],l[4],a[4],a[5],a[6],a[7]}elseif F>=-1 then
if g[6]==-F then
t=g[4]q=j[4]o=l[4]elseif j[6]==-F then
t=j[4]q=g[4]o=l[4]else
t=l[4]q=j[4]o=g[4]end
if F==1 then
M=L(J(sub(q,t),1000),q)U=L(J(sub(o,t),1000),o)m[#m+1]={q,M,o,a[4],a[5],a[6],a[7]}m[#m+1]={o,M,U,a[4],a[5],a[6],a[7]}else
M=L(J(sub(t,q),1000),q)U=L(J(sub(t,o),1000),o)m[#m+1]={t,M,U,a[4],a[5],a[6],a[7]}end
end
end
end
table.sort(m,function(_,b)return _[7]>b[7]end)W=aj
end
K=K+1
end
function onDraw()u=screen
local ak,ax,ad,aJ=u.drawTriangleF,u.drawRectF,u.setColor,u.drawText
an=u.getWidth()as=u.getHeight()I=an/2
R=as/2
T=tan(ar/2)*I
ad(255,255,255)if N then
for d=1,#m do
a=m[d]g=a[1]j=a[2]l=a[3]ad(a[4],a[5],a[6])ak(g[1]+I,g[2]+R,j[1]+I,j[2]+R,l[1]+I,l[2]+R)end
end
end
