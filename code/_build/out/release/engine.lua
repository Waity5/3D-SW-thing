-- Author: <Authorname> (Please change this in user settings, Ctrl+Comma)
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 1466 (1833 with comment) chars
ac=""

g=180
z=input
c=math
u=c.max
I=c.min
F=c.floor
pi=c.pi
M=z.getNumber
B=z.getBool
R=output.setBool
H=true
E=false
Z=ipairs
abs=c.abs
Q=table.remove
p=string
function W(_,a)return{(_[1]+a[1]),(_[2]+a[2])}end
function Y(_,a)return _[1]*a[2]-_[2]*a[1]end
function sub(_,a)return{(_[1]-a[1]),(_[2]-a[2])}end
function O(_,a)return{_[1]*a,_[2]*a}end
function L(_)return((_+g)%360)-g end
function sin(_)return c.sin(_/g*pi)end
function cos(_)return c.cos(_/g*pi)end
function tan(_)return c.tan(_/g*pi)end
function P(_)return c.atan(_)*g/pi end
function N(_)return c.atan(_[2],_[1])*g/pi end
function X(_,a,x)return I(u(a,_),x)end
function V(_)return F(_+.5)end
function U(_,a)return sqrt(((_[1]-a[1])^2)+((_[2]-a[2])^2))end
d={}n=1
T=3
f=1
l=E
J=H
k=0
aa=0
function httpReply(_,a,x)C=k//2
k=0
end
function onTick()for ab=1,3 do
if B(32)and(not l)or not d[21]then
q=property.getText(n)e=1
b=ac
m=p.sub(q,e,e)while m~=acdo
y=p.byte(m)if y>64then
b=(b..y-65)+0
if f==1then
t=b
d[b]=d[b]or{}elseif f==2then
K=b
i=0
elseif f==3then
r=b
else
if i==0then
i=K
r=r-1
o={}d[t][#d[t]+1]=o
end
o[#o+1]=b
i=i-1
f=u(i,r)>0 and f-1 or 0
end
f=f+1
b=ac
else
b=b..m
end
e=e+1
m=p.sub(q,e,e)end
n=n+1
l=q==ac
end
end
if l then
if J then
end
end
k=k+1
end
function onDraw()j=screen
local A,S,D,G=j.drawTriangleF,j.drawRectF,j.setColor,j.drawText
G(0,0,C)if l then
for e=1,#d[2]do
h=d[2][e]s=d[1][h[1]]w=d[1][h[2]]v=d[1][h[3]]D(h[4],h[5],h[6])A(s[1],s[2],w[1],w[2],v[1],v[2])end
end
end
