-- Author: <Authorname> (Please change this in user settings, Ctrl+Comma)
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 2703 (3070 with comment) chars

C=180
j=math
M=j.max
ae=j.min
sqrt=math.sqrt
ah=j.floor
pi=j.pi
r=input.getNumber
L=input.getBool
as=output.setBool
af=true
Z=false
ax=ipairs
abs=j.abs
au=table.remove
K=string
sin=j.sin
cos=j.cos
tan=j.tan
function aG(_,a)return{(_[1]+a[1]),(_[2]+a[2])}end
function aC(_,a)return _[1]*a[2]-_[2]*a[1]end
function sub(_,a)return{(_[1]-a[1]),(_[2]-a[2])}end
function aq(_,a)return{_[1]*a,_[2]*a}end
function aF(_)return((_+C)%360)-C end
function aE(_)return j.atan(_)*C/pi end
function ar(_)return j.atan(_[2],_[1])*C/pi end
function aw(_,a,A)return ae(M(a,_),A)end
function av(_)return ah(_+.5)end
function ap(_,a)return sqrt(((_[1]-a[1])^2)+((_[2]-a[2])^2)+((_[3]-a[3])^2))end
b={}Q=1
az=3
o=1
G=Z
H=af
E=0
aD=0
y={0,0,-10}e={0,0,0}aa=62.5
ad=pi/C
X=3/aa
D=90*ad/aa
ab=90
P=1
function httpReply(_,a,A)aA=E//2
E=0
end
function onTick()for f=1,1 do
if L(32)and not G then
N=property.getText(Q)d=1
i=""
h=K.sub(N,d,d)while h~=""do
U=K.byte(h)if U>64 then
i=(i..U-65)+0
if o==1 then
Y=i
b[i]=b[i]or{}elseif o==2 then
ac=i
z=0
elseif o==3 then
I=i
else
if z==0 then
z=ac
I=I-1
R={}b[Y][#b[Y]+1]=R
end
R[#R+1]=i
z=z-1
o=M(z,I)>0 and o-1 or 0
end
o=o+1
i=""
else
i=i..h
end
d=d+1
h=K.sub(N,d,d)end
Q=Q+1
G=N==""
end
end
if G then
if H then
for d=1,#b[1]do
b[1][d]={b[1][d],{},0}end
end
y[1]=y[1]+(r(1)*cos(e[1])-r(2)*sin(e[1]))*X
y[3]=y[3]+(r(1)*sin(e[1])+r(2)*cos(e[1]))*X
e[1]=e[1]-r(3)*D
e[2]=e[2]+r(4)*D
if L(1)then
e[3]=e[3]-D
end
if L(3)then
e[3]=e[3]+D
end
_=e[1]a=e[2]A=e[3]q=cos(_)t=sin(_)v=cos(a)s=sin(a)w=cos(A)x=sin(A)ai={{q*w-t*s*x,-v*x,q*s*x+w*t},{q*x+w*t*s,v*w,t*x-q*w*s},{-v*t,s,q*v}}ay={-t*v,s,q*v}for d=1,#b[1]do
g=b[1][d]for f=1,3 do
g[2][f]=g[1][f]-y[f]end
J=g[2]g[5]=sqrt(J[1]^2+J[2]^2+J[3]^2)for ao=1,1 do
V={}for f=1,3 do
h=0
for W=1,3 do
h=h+g[2][W]*ai[f][W]end
V[f]=h
end
g[3]=V
end
g[4]={g[3][1]*P/g[3][3],-g[3][2]*P/g[3][3]}g[6]=g[3][3]>0 and 1 or-1
end
if H then
for d=1,#b[2]do
c=b[2][d]k=b[1][c[1]]m=b[1][c[2]]l=b[1][c[3]]S=k[1]am=m[1]an=l[1]n,p={},{}for f=1,3 do
n[f]=am[f]-S[f]p[f]=an[f]-S[f]end
h={}c[7]=h
h[1]=n[2]*p[3]-n[3]*p[2]h[2]=n[3]*p[1]-n[1]*p[3]h[3]=n[1]*p[2]-n[2]*p[1]end
end
B={}for d=1,#b[2]do
c=b[2][d]k=b[1][c[1]]m=b[1][c[2]]l=b[1][c[3]]c[8]=M(k[5],m[5],l[5])_=c[7]a=k[2]if _[1]*a[1]+_[2]*a[2]+_[3]*a[3]>0 then
aj=k[6]+m[6]+l[6]if aj==3 then
B[#B+1]=c
end
end
end
table.sort(B,function(_,a)return _[8]>a[8]end)H=Z
end
E=E+1
async.httpGet(8,"")end
function onDraw()u=screen
local ag,at,T,aB=u.drawTriangleF,u.drawRectF,u.setColor,u.drawText
ak=u.getWidth()al=u.getHeight()F=ak/2
O=al/2
P=tan(ab/2)*F
T(255,255,255)if G then
for d=1,#B do
c=B[d]k=b[1][c[1]][4]m=b[1][c[2]][4]l=b[1][c[3]][4]T(c[4],c[5],c[6])ag(k[1]+F,k[2]+O,m[1]+F,m[2]+O,l[1]+F,l[2]+O)end
end
end
