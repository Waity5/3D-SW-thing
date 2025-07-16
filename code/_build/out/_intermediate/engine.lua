
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
unpack=table.unpack

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
function add3(a,b)return{a[1]+b[1],a[2]+b[2],a[3]+b[3]}end
function sub3(a,b)return{a[1]-b[1],a[2]-b[2],a[3]-b[3]}end
function mul3(a,b)return{a[1]*b,a[2]*b,a[3]*b}end
function stringRound3(a)return string.format("%.3f", a or 0)end

M={}
romCr=1
levelCr=3
stg=1
loaded=falseVar
init=trueVar
httpTk=0
tick=0
camPos={0,0,-3}
camRot={0,0,0}
tickRate=62.5
angleConvert=pi/180
moveSpeed=3/tickRate
rotateSpeed=90*angleConvert/tickRate
fov=90*angleConvert
screenScale=1
tick=0

function summonObject(index,conditions)
	newPoints={}
	conditions=conditions or{}
	j=1
	for i=M[1][index][1],M[1][index][2] do
		cr=M[2][i]
		newPoints[j]={{cr[1],cr[2],cr[3]},{}}
		j=j+1
	end
	newTris={}
	j=1
	for i=M[1][1][3],M[1][1][4] do
		cr=M[3][i]
		newTris[j]=cr
		j=j+1
	end
	
	newObject={-- position, velocity, acceleration, orientation, rotation velocity, rotation acceleration, points, tris
		conditions[1]or{0,0,0},
		conditions[2]or{0,0,0},
		conditions[3]or{0,0,0},
		conditions[4]or{1,0,0,0},
		conditions[5]or{0,0,0},
		conditions[6]or{0,0,0},
		newPoints,
		newTris,
	}
	objects[#objects+1]=newObject
end

function intersectTriangle(rayPos,rayDir,a,b,c) -- https://stackoverflow.com/questions/42740765/intersection-between-line-and-triangle-in-3d
	E1 = sub3(b, a)
	E2 = sub3(c, a)
	N = cross(E1,E2)
	det = -dot(rayDir, N)
	invdet = 1.0/det
	AO  = sub3(rayPos, a)
	DAO = cross(AO, rayDir)
	u =  dot(E2,DAO) * invdet
	v = -dot(E1,DAO) * invdet
	t =  dot(AO,N)  * invdet
	return (-det >= 1e-6 and t >= 0.0 and u >= 0.0 and v >= 0.0 and (u+v) <= 1.0)
end

function cross(a,b)
	return {a[2]*b[3] - a[3]*b[2], a[3]*b[1] - a[1]*b[3], a[1]*b[2] - a[2]*b[1]}
end

function dot(a,b)
	return a[1]*b[1]+a[2]*b[2]+a[3]*b[3]
end

function vectorToQuaternion(vec)
	if vec[1]==0 and vec[2]==0 and vec[3]==0 then
		return {1,0,0,0}
	else
		return {0,vec[1],vec[2],vec[3]}
	end
end

function updateQuaternionByVector(quat,vec)
	local newQuat=multQuaternionByQuaternion(quat,vectorToQuaternion(vec))
	for i=1,4 do
		newQuat[i]=quat[i] + newQuat[i]*0.5
	end
	return newQuat
end

function multQuaternionByQuaternion(quat1,quat2)
	local w1,x1,y1,z1=unpack(quat1)
	local w2,x2,y2,z2=unpack(quat2)
	return {
		w1*w2-x1*x2-y1*y2-z1*z2,
		w1*x2+x1*w2+y1*z2-z1*y2,
		w1*y2-x1*z2+y1*w2+z1*x2,
		w1*z2+x1*y2-y1*x2+z1*w2
	}
end

function addQuaternionByQuaternion(quat1,quat2)
	local newQuat={}
	for i =1,4 do newQuat[i]=quat1+quat2 end
	return newQuat
end

function multVectorByMatrix(vec,matrix)
	local newVec={}
	for j = 1,3 do
		cr=0
		for k = 1,3 do
			cr=cr + vec[k]*matrix[j][k]
		end
		newVec[j]=cr
	end
	return newVec
end

function divVectorByRotationMatrix(vec,matrix)
	local newVec={}
	for j = 1,3 do
		cr=0
		for k = 1,3 do
			cr=cr + vec[k]*matrix[k][j]
		end
		newVec[j]=cr
	end
	return newVec
end

function norm4(a,correction)
	correction=1/sqrt(a[1]^2 + a[2]^2 + a[3]^2 + a[4]^2)
	return {a[1]*correction, a[2]*correction, a[3]*correction, a[4]*correction}
end

function quaternionToMatrix(quat)
	local w,x,y,z=unpack(quat)
	return {
		{1-(2*y*y + 2*z*z), 2*x*y + 2*z*w,     2*x*z - 2*y*w},
		{2*x*y - 2*z*w,     1-(2*x*x + 2*z*z), 2*y*z + 2*x*w},
		{2*x*z + 2*y*w,     2*y*z - 2*x*w,     1-(2*x*x + 2*y*y)},
	}
end

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
		tick = tick+1
		if init then
			objects={}
			summonObject(1)
			summonObject(1,{[1]={3,0,0}})
		end
		camPos[1]=camPos[1]+(gN(1)*cos(camRot[1]) - gN(2)*sin(camRot[1]))*moveSpeed
		camPos[3]=camPos[3]+(gN(1)*sin(camRot[1]) + gN(2)*cos(camRot[1]))*moveSpeed
		--camRot[3]=camRot[3]+gN(1)*rotateSpeed
		camRot[1]=camRot[1]-gN(3)*rotateSpeed
		camRot[2]=camRot[2]+gN(4)*rotateSpeed
		--if gB(1) then
		--	camRot[3]=camRot[3]-rotateSpeed
		--end
		--if gB(3) then
		--	camRot[3]=camRot[3]+rotateSpeed
		--end
		pushForce=0
		pushColour={255,255,255}
		if gB(1) then
			pushForce=0.001
			pushColour={0,0,255}
		end
		if gB(3) then
			pushForce=-0.001
			pushColour={255,0,0}
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
		
		--keyboardRotationInput = {-0.01*gN(2),0.01*gN(1),0.01*gN(3)}
		overalRayHit = falseVar
		renderTris = {}
		for index = 1,#objects do
			object = objects[index]
			object[4] = norm4(updateQuaternionByVector(object[4],object[5]))
			object[5]=mul3(object[5],0.995)
		
			curRotationMatrix = quaternionToMatrix(norm4(object[4]))
		
		
			for i=1,#object[7] do
				crPoint=object[7][i]
				crPoint[2] = multVectorByMatrix(crPoint[1],curRotationMatrix)
				for j = 1,3 do
					crPoint[2][j]=crPoint[2][j]-camPos[j]+object[1][j]
				end
				distances=crPoint[2]
				crPoint[5]=sqrt(distances[1]^2 + distances[2]^2 + distances[3]^2)
				
				crPoint[3]=multVectorByMatrix(crPoint[2],cameraRotationMatrix)
				
				crPoint[4]={crPoint[3][1]*screenScale/crPoint[3][3],
				-crPoint[3][2]*screenScale/crPoint[3][3]}
				crPoint[6]=crPoint[3][3]>0 and 1 or -1
				
			end
			
			monkeyRayHit = falseVar
			bestT=2^16
			for i=1,#object[8] do
				curTri = object[8][i]
				curHit = intersectTriangle({0,0,0},cameraRotationVector,object[7][curTri[1]][2],object[7][curTri[2]][2],object[7][curTri[3]][2])
				if curHit and t<bestT then
					monkeyRayHit = trueVar
					bestT=t
				end
			end
			if monkeyRayHit then
				overalRayHit = trueVar
				collPoint=add3(mul3(cameraRotationVector,bestT),camPos)
				collPointObjectRelative=sub3(collPoint,object[1])
				--collDirObjectRelative=divVectorByRotationMatrix(cameraRotationVector,curRotationMatrix)
				object[5]=add3(object[5],mul3(cross(collPointObjectRelative,cameraRotationVector),pushForce))
				
				collPointCamRelative=multVectorByMatrix(sub3(collPoint,camPos),cameraRotationMatrix)
				collPointScreenPos={collPointCamRelative[1]*screenScale/collPointCamRelative[3],
				collPointCamRelative[2]*screenScale/collPointCamRelative[3]}
			end
			
			if true then
				for i=1,#object[8] do
					curTri = object[8][i]
					p1 = object[7][curTri[1]]
					p2 = object[7][curTri[2]]
					p3 = object[7][curTri[3]]
					p1p = p1[2]
					p2p = p2[2]
					p3p = p3[2]
					d1,d2={},{}
					for j=1,3 do
						d1[j]=p2p[j]-p1p[j]
						d2[j]=p3p[j]-p1p[j]
					end
					curTri[8]=cross(d1,d2)
				end
			end
			
			for i=1,#object[8] do
				curTri = object[8][i]
				p1 = object[7][curTri[1]]
				p2 = object[7][curTri[2]]
				p3 = object[7][curTri[3]]
				curTri[7]=mx(p1[5],p2[5],p3[5])
				a=curTri[8]
				b=p1[2]
				if dot(a,b)>0 then
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
		--text(1,1,"Orientation Quaternion:")
		--for i=1,4 do
		--	text(1,i*6+1,stringRound3(monkeyRotationQuaternion[i]))
		--end
		--text(1,37,"Rotational Velocity:")
		--for i=1,3 do
		--	text(1,i*6+37,stringRound3(monkeyRotationVelocity[i]))
		--end
		--text(1,73,"Ray col pos:")
		--for i=1,3 do
		--	text(1,i*6+73,stringRound3(collPointMonkeyRelative[i]))
		--end
		--text(1,109,"Ray dir:")
		--for i=1,3 do
		--	text(1,i*6+109,stringRound3(collDirMonkeyRelative[i]))
		--end
		
		--text(100,1,monkeyRayHit and "YES" or "NO")
		
		
		for i=1,#renderTris do
			curTri = renderTris[i]
			p1 = curTri[1]
			p2 = curTri[2]
			p3 = curTri[3]
			stCl(curTri[4],curTri[5],curTri[6])
			tri(p1[1]+w2,p1[2]+h2,p2[1]+w2,p2[2]+h2,p3[1]+w2,p3[2]+h2)
		end
		
		stCl(unpack(pushColour))
		
		if overalRayHit then
			recSize=10/collPointCamRelative[3]
			rec(collPointScreenPos[1]+w2-(recSize//2),collPointScreenPos[2]+h2-(recSize//2),recSize,recSize)
		end
	end
end