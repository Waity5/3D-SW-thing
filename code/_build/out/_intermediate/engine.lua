
m=math
mx=m.max
mn=m.min
sqrt=math.sqrt
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
sin=m.sin
cos=m.cos
tan=m.tan

function add(a,b)return{(a[1]+b[1]),(a[2]+b[2])}end
function cross(a,b)return a[1]*b[2]-a[2]*b[1]end
function sub(a,b)return{(a[1]-b[1]),(a[2]-b[2])}end
function mul(a,b)return{a[1]*b,a[2]*b}end
function wrap(a)return ((a+180)%360)-180 end
function at(a)return m.atan(a)*180/pi end
function at2(a)return m.atan(a[2],a[1])*180/pi end
function clmp(a,b,c)return mn(mx(b,a),c)end
function rnd(a)return flr(a+0.5)end
function dist(a,b)return sqrt(((a[1]-b[1])^2)+((a[2]-b[2])^2)+((a[3]-b[3])^2))end

M={}
romCr=1
levelCr=3
stg=1
loaded=falseVar
init=trueVar
httpTk=0
tick=0
camPos={0,0,-10}
camRot={0,0,0}
tickRate=62.5
angleConvert=pi/180
moveSpeed=3/tickRate
rotateSpeed=90*angleConvert/tickRate
fov=90*angleConvert
screenScale=1


function httpReply(a,b,c)
	httpTkP=httpTk//2
	httpTk=0
end

function onTick()
	for j=1,1 do
		if gB(32) and not loaded then
			rom=property.getText(romCr)
			i=1
			nm=""
			cr=str.sub(rom,i,i)
			while cr~=""do
				pos=str.byte(cr)
				if pos>64 then
					nm=(nm..pos-65)+0
					if stg==1 then
						curIndex=nm
						M[nm]=M[nm]or{}
					elseif stg==2 then
						intH=nm
						curLength=0
					elseif stg==3 then
						count=nm
					else
						if curLength==0 then
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
			for i=1,#M[1] do
				M[1][i]={M[1][i],{},0}
			end
		end
		camPos[1]=camPos[1]+(gN(1)*cos(camRot[1]) - gN(2)*sin(camRot[1]))*moveSpeed
		camPos[3]=camPos[3]+(gN(1)*sin(camRot[1]) + gN(2)*cos(camRot[1]))*moveSpeed
		--camRot[3]=camRot[3]+gN(1)*rotateSpeed
		camRot[1]=camRot[1]-gN(3)*rotateSpeed
		camRot[2]=camRot[2]+gN(4)*rotateSpeed
		if gB(1) then
			camRot[3]=camRot[3]-rotateSpeed
		end
		if gB(3) then
			camRot[3]=camRot[3]+rotateSpeed
		end
		
		a=camRot[1]
		b=camRot[2]
		c=camRot[3]
		c_a = cos(a)
		s_a = sin(a)
		c_b = cos(b)
		s_b = sin(b)
		c_c = cos(c)
		s_c = sin(c)

		--cameraRotationMatrix = {
     	--	{cb*cc, sa*sb*cc-ca*sc, ca*sb*cc+sa*sc},
		--	{cb*sc, sa*sb*sc+ca*cc, ca*sb*sc-sa*cc},
		--	{-sb, sa*cb, ca*cb}
		--}
		
		--cameraRotationMatrix = {
		--	{ cc*ca + sc*sb*sa,   -sc*cb,            cc*sa + sc*sb*ca },
		--	{ sc*ca - cc*sb*sa,    cc*cb,            sc*sa - cc*sb*ca },
		--	{ -cb*sa,              sb,               cb*ca }
		--}
		
		--cameraRotationMatrix = {
		--	{c_a*c_c - s_a*s_b*s_c , c_a*s_c + c_c*s_a*s_b , -c_b*s_a },
		--	{-c_b*s_c , c_b*c_c , s_b},
		--	{c_a*s_b*s_c + c_c*s_a , s_a*s_c - c_a*c_c*s_b , c_a*c_b},
		--}
		
		cameraRotationMatrix = {
			{c_a*c_c - s_a*s_b*s_c , -c_b*s_c , c_a*s_b*s_c + c_c*s_a},
			{c_a*s_c + c_c*s_a*s_b , c_b*c_c , s_a*s_c - c_a*c_c*s_b},
			{-c_b*s_a , s_b , c_a*c_b}
		}
		
		cameraRotationVector = {-s_a*c_b,s_b,c_a*c_b}
		
		
		for i=1,#M[1] do
			crPoint=M[1][i]
			for j = 1,3 do
				crPoint[2][j]=crPoint[1][j]-camPos[j]
			end
			distances=crPoint[2]
			crPoint[5]=sqrt(distances[1]^2 + distances[2]^2 + distances[3]^2)
			
			
			for curMat = 1,1 do
			
				newPoint={}
				for j = 1,3 do
					cr=0
					for k = 1,3 do
						cr=cr + crPoint[2][k]*cameraRotationMatrix[j][k]
					end
					newPoint[j]=cr
				end
				crPoint[3]=newPoint
			end
			
			crPoint[4]={crPoint[3][1]*screenScale/crPoint[3][3],
			-crPoint[3][2]*screenScale/crPoint[3][3]}
			crPoint[6]=crPoint[3][3]>0 and 1 or -1
			
		end
		
		if init then
			for i=1,#M[2] do
				curTri = M[2][i]
				p1 = M[1][curTri[1]]
				p2 = M[1][curTri[2]]
				p3 = M[1][curTri[3]]
				p1p = p1[1]
				p2p = p2[1]
				p3p = p3[1]
				d1,d2={},{}
				for j=1,3 do
					d1[j]=p2p[j]-p1p[j]
					d2[j]=p3p[j]-p1p[j]
				end
				cr={}
				curTri[8]=cr
				
				cr[1]=d1[2]*d2[3] - d1[3]*d2[2]
				cr[2]=d1[3]*d2[1] - d1[1]*d2[3]
				cr[3]=d1[1]*d2[2] - d1[2]*d2[1]
			end
		end
		
		renderTris = {}
		for i=1,#M[2] do
			curTri = M[2][i]
			p1 = M[1][curTri[1]]
			p2 = M[1][curTri[2]]
			p3 = M[1][curTri[3]]
			curTri[7]=mx(p1[5],p2[5],p3[5])
			a=curTri[8]
			b=p1[2]
			if a[1]*b[1]+a[2]*b[2]+a[3]*b[3]>0 then
				sideVal=p1[6]+p2[6]+p3[6]
				if sideVal == 3 then
					renderTris[#renderTris+1] = {p1[4],p2[4],p3[4],curTri[4],curTri[5],curTri[6],curTri[7]}
				elseif sideVal >= -1 then
					if p1[6]==-sideVal then
						screenPoint1=p1[4]
						screenPoint2=p2[4]
						screenPoint3=p3[4]
					elseif p2[6]==-sideVal then
						screenPoint1=p2[4]
						screenPoint2=p1[4]
						screenPoint3=p3[4]
					else
						screenPoint1=p3[4]
						screenPoint2=p2[4]
						screenPoint3=p1[4]
					end
					if sideVal == 1 then
						screenPoint4=add(mul(sub(screenPoint2,screenPoint1),1000),screenPoint2)
						screenPoint5=add(mul(sub(screenPoint3,screenPoint1),1000),screenPoint3)
						--renderTris[#renderTris+1] = {screenPoint2,screenPoint4,screenPoint3,255,0,0,curTri[7]}
						--renderTris[#renderTris+1] = {screenPoint3,screenPoint4,screenPoint5,0,0,255,curTri[7]}
						renderTris[#renderTris+1] = {screenPoint2,screenPoint4,screenPoint3,curTri[4],curTri[5],curTri[6],curTri[7]}
						renderTris[#renderTris+1] = {screenPoint3,screenPoint4,screenPoint5,curTri[4],curTri[5],curTri[6],curTri[7]}
					else
						screenPoint4=add(mul(sub(screenPoint1,screenPoint2),1000),screenPoint2)
						screenPoint5=add(mul(sub(screenPoint1,screenPoint3),1000),screenPoint3)
						--renderTris[#renderTris+1] = {screenPoint1,screenPoint4,screenPoint5,255,0,255,curTri[7]}
						renderTris[#renderTris+1] = {screenPoint1,screenPoint4,screenPoint5,curTri[4],curTri[5],curTri[6],curTri[7]}
					end					
				end
			end
		end
		
		table.sort(renderTris,function(a,b)return a[7]>b[7]end)
		
		init=falseVar
	end

	httpTk=httpTk+1
	--async.httpGet(8,"")
end

function onDraw()
	screenVar=screen
	local tri,rec,stCl,text=screenVar.drawTriangleF,screenVar.drawRectF,screenVar.setColor,screenVar.drawText --locals are faster because lua
	w = screenVar.getWidth()
	h = screenVar.getHeight()
	w2=w/2
	h2=h/2
	screenScale = tan(fov/2)*w2
	
	
	stCl(255,255,255)
	--text(1,1,"TPS: ")
	--text(26,1,httpTkP)
	
	
	--for i=1,#allM do
	--	stCl(255,255,255)
	--	text(0,i*6-5,allM[i])
	--	text(20,i*6-5,M[allM[i]])
	--end
	
	if loaded then
		
		for i=1,#renderTris do
			curTri = renderTris[i]
			p1 = curTri[1]
			p2 = curTri[2]
			p3 = curTri[3]
			stCl(curTri[4],curTri[5],curTri[6])
			tri(p1[1]+w2,p1[2]+h2,p2[1]+w2,p2[2]+h2,p3[1]+w2,p3[2]+h2)
		end
	end
end