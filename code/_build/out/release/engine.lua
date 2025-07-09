-- Author: <Authorname> (Please change this in user settings, Ctrl+Comma)
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 2487 (2854 with comment) chars

l=180
j=math
K=j.max
Z=j.min
sqrt=math.sqrt
ag=j.floor
pi=j.pi
m=input.getNumber
O=input.getBool
ao=output.setBool
ae=true
W=false
aC=ipairs
abs=j.abs
av=table.remove
J=string
function am(_,a)return{(_[1]+a[1]),(_[2]+a[2])}end
function aA(_,a)return _[1]*a[2]-_[2]*a[1]end
function sub(_,a)return{(_[1]-a[1]),(_[2]-a[2])}end
function au(_,a)return{_[1]*a,_[2]*a}end
function ay(_)return((_+l)%360)-l end
function sin(_)return j.sin(_/l*pi)end
function cos(_)return j.cos(_/l*pi)end
function tan(_)return j.tan(_/l*pi)end
function ap(_)return j.atan(_)*l/pi end
function an(_)return j.atan(_[2],_[1])*l/pi end
function al(_,a,q)return Z(K(a,_),q)end
function ax(_)return ag(_+.5)end
function aB(_,a)return sqrt(((_[1]-a[1])^2)+((_[2]-a[2])^2)+((_[3]-a[3])^2))end
b={}F=1
at=3
k=1
C=W
T=ae
B=0
as=0
p={0,0,-10}c={0,0,0}U=62.5
P=3/U
A=90/U
ak=90
function httpReply(_,a,q)ar=B//2
B=0
end
function onTick()for e=1,1 do
if not C then
G=property.getText(F)d=1
g=""
h=J.sub(G,d,d)while h~=""do
Y=J.byte(h)if Y>64 then
g=(g..Y-65)+0
if k==1 then
V=g
b[g]=b[g]or{}elseif k==2 then
ad=g
o=0
elseif k==3 then
E=g
else
if o==0 then
o=ad
E=E-1
H={}b[V][#b[V]+1]=H
end
H[#H+1]=g
o=o-1
k=K(o,E)>0 and k-1 or 0
end
k=k+1
g=""
else
g=g..h
end
d=d+1
h=J.sub(G,d,d)end
F=F+1
C=G==""
end
end
if C then
if T then
for d=1,#b[1]do
b[1][d]={b[1][d],{},0}end
T=W
end
p[1]=p[1]+(m(1)*cos(c[1])-m(2)*sin(c[1]))*P
p[3]=p[3]+(m(1)*sin(c[1])+m(2)*cos(c[1]))*P
c[1]=c[1]-m(3)*A
c[2]=c[2]+m(4)*A
if O(1)then
c[3]=c[3]-A
end
if O(3)then
c[3]=c[3]+A
end
_=c[1]a=c[2]q=c[3]s=cos(_)x=sin(_)z=cos(a)r=sin(a)y=cos(q)w=sin(q)ah={{s*y-x*r*w,-z*w,s*r*w+y*x},{s*w+y*x*r,z*y,x*w-s*y*r},{-z*x,r,s*z}}for d=1,#b[1]do
i=b[1][d]for e=1,3 do
i[2][e]=i[1][e]-p[e]end
I=i[2]i[4]=sqrt(I[1]^2+I[2]^2+I[3]^2)for az=1,1 do
Q={}for e=1,3 do
h=0
for R=1,3 do
h=h+i[2][R]*ah[e][R]end
Q[e]=h
end
i[2]=Q
end
i[3]={i[2][1]*S/i[2][3],-i[2][2]*S/i[2][3]}end
for d=1,#b[2]do
f=b[2][d]v=b[1][f[1]]t=b[1][f[2]]u=b[1][f[3]]X=v[2]ac=t[2]ab=u[2]N,M={},{}for e=1,3 do
N[e]=ac[e]-X[e]M[e]=ab[e]-X[e]end
h={}f[7]=h
h[3]=N[1]*M[2]-N[2]*M[1]f[8]=K(v[4],t[4],u[4])end
table.sort(b[2],function(_,a)return _[8]>a[8]end)end
B=B+1
end
function onDraw()n=screen
local aa,aw,ai,aq=n.drawTriangleF,n.drawRectF,n.setColor,n.drawText
aj=n.getWidth()af=n.getHeight()D=aj/2
L=af/2
S=tan(ak/2)*D
if C then
for d=1,#b[2]do
f=b[2][d]if f[7][3]>0 then
v=b[1][f[1]][3]t=b[1][f[2]][3]u=b[1][f[3]][3]ai(f[4],f[5],f[6])aa(v[1]+D,v[2]+L,t[1]+D,t[2]+L,u[1]+D,u[2]+L)end
end
end
end
