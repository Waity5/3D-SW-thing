m=math
mx=m.max
mn=m.min
flr=m.floor
pi=m.pi
gN=input.getNumber
gB=input.getBool
sB=output.setBool
trueVar=true
falseVar=false
ipairsVar=ipairs
abs=m.abs
tableRemove=table.remove
str=string

function add(a,b)return{(a[1]+b[1]),(a[2]+b[2])}end
function cross(a,b)return a[1]*b[2]-a[2]*b[1]end
function sub(a,b)return{(a[1]-b[1]),(a[2]-b[2])}end
function mul(a,b)return{a[1]*b,a[2]*b}end
function wrap(a)return ((a+180)%360)-180 end
function sin(a)return m.sin(a/180*pi)end
function cos(a)return m.cos(a/180*pi)end
function tan(a)return m.tan(a/180*pi)end
function at(a)return m.atan(a)*180/pi end
function at2(a)return m.atan(a[2],a[1])*180/pi end
function clmp(a,b,c)return mn(mx(b,a),c)end
function rnd(a)return flr(a+0.5)end
function dist(a,b)return sqrt(((a[1]-b[1])^2)+((a[2]-b[2])^2))end

M={}
romCr=1
levelCr=3
stg=1
loaded=falseVar
init=trueVar
httpTk=0
tick=0

function httpReply(a,b,c)
	httpTkP=httpTk//2
	httpTk=0
end

function onTick()
	for j=1,3 do
		if gB(32)and (not loaded)or not M[21]then
			rom=property.getText(romCr)
			i=1
			nm=""
			cr=str.sub(rom,i,i)
			while cr~=""do
				pos=str.byte(cr)
				if pos>64then
					nm=(nm..pos-65)+0
					if stg==1then
						curIndex=nm
						M[nm]=M[nm]or{}
					elseif stg==2then
						intH=nm
						curLength=0
					elseif stg==3then
						count=nm
					else
						if curLength==0then
							curLength=intH
							count=count-1
							curM={}
							M[curIndex][#M[curIndex]+1]=curM
						end
						curM[#curM+1]=nm
						curLength=curLength-1
						stg=mx(curLength,count)>0 and stg-1 or 0
					end
					stg=stg+1
					nm=""
				else
					nm=nm..cr
				end
				i=i+1
				cr=str.sub(rom,i,i)
			end
			romCr=romCr+1
			loaded=rom==""
		end
	end

	if loaded then
		if init then
		end
	end

	httpTk=httpTk+1
	--async.httpGet(8,"")
end

function onDraw()
	screenVar=screen
	local tri,rec,stCl,text=screenVar.drawTriangleF,screenVar.drawRectF,screenVar.setColor,screenVar.drawText --locals are faster because lua
	
	text(0,0,httpTkP)
	
	if loaded then
		for i=1,#M[2] do
			curTri = M[2][i]
			p1 = M[1][curTri[1]]
			p2 = M[1][curTri[2]]
			p3 = M[1][curTri[3]]
			stCl(curTri[4],curTri[5],curTri[6])
			tri(p1[1],p1[2],p2[1],p2[2],p3[1],p3[2])
		end
	end
end