from math import dist, floor as flr, ceil, sqrt
from code_compressor import compress
import time, json
from copy import deepcopy as dcopy
import os
import numpy
from stl import mesh

if __name__ == '__main__':
    packets = []
    curmax = 8192

    # Using an existing stl file:
    path = ".\\stl\\"
    your_mesh = mesh.Mesh.from_file(path+'monkey.stl')

    # Or creating a new mesh (make sure not to overwrite the `mesh` import by
    # naming it `mesh`):

    # The mesh normals (calculated automatically)
    #print(your_mesh.normals)
    # The mesh vectors
    #your_mesh.v0
    your_mesh.v0, your_mesh.v1, your_mesh.v2
    # Accessing individual points (concatenation of v0, v1 and v2 in triplets)
    assert (your_mesh.points[0][0:3] == your_mesh.v0[0]).all()
    assert (your_mesh.points[0][3:6] == your_mesh.v1[0]).all()
    assert (your_mesh.points[0][6:9] == your_mesh.v2[0]).all()
    assert (your_mesh.points[1][0:3] == your_mesh.v0[1]).all()

    scale = 1

    print(len(your_mesh.v0), "triangles")
    points = list(your_mesh.v0)+list(your_mesh.v1)+list(your_mesh.v2)#your_mesh.points
    points = [tuple(i) for i in points]
    points = list(set(points))
    #print(points)
    #vectors = your_mesh.vectors*scale
    #print(vectors)
    #vectors = [[tuple([j[0],j[1],j[2]]) for j in i] for i in vectors]
    #print(vectors[0][0])
    #vectors_indexed = [[points.index(j)+1 for j in i] for i in vectors]
    #vectors_indexed = [[i[0:2],i[1:3],[i[2],i[0]]] for i in vectors_indexed]
    #for i in range(len(vectors_indexed)-1,-1,-1):
    #    vectors_indexed += vectors_indexed[i]
    #    vectors_indexed.pop(i)

    

    #[i.sort() for i in vectors_indexed]
    #vectors_indexed = [tuple(i) for i in vectors_indexed]

    #vectors_indexed = list(set(vectors_indexed))
    #print(vectors_indexed)

    #print(vectors)
    things = [your_mesh.v0,your_mesh.v1,your_mesh.v2]

    pnt = ""

    for i in points:
        packets.append((1,i))

    #pnt = ""
    #for i in vectors_indexed:
    #    pnt += (str(i[0])+"\t"+str(i[1])+"\n")
    #SetC(pnt)
    #input("hit enter to go to next thing (from vectors)")

    

    
    #print(your_mesh.v0[0])

    pnts = ["\\left[" for i in range(3)]
    colour = [0,255,0]
    length = len(things[0])
    colours = []


    for i in range(length):
        x1,x2,x3=your_mesh.v0[i][0],your_mesh.v2[i][0],your_mesh.v1[i][0]
        y1,y2,y3=your_mesh.v0[i][2],your_mesh.v2[i][2],your_mesh.v1[i][2]
        z1,z2,z3=your_mesh.v0[i][1],your_mesh.v2[i][1],your_mesh.v1[i][1]
        normalx = ((y2-y1)*(z3-z1))-((z2-z1)*(y3-y1))
        normaly = ((z2-z1)*(x3-x1))-((x2-x1)*(z3-z1))
        normalz = ((x2-x1)*(y3-y1))-((y2-y1)*(x3-x1))
        normalDist = sqrt((normalx**2)+(normaly**2)+(normalz**2))
        unitNormaly = normaly/normalDist
        shade = (unitNormaly+1)/2
        cur_colour = tuple([colour[i]*shade for i in range(3)])
        
        colours.append(cur_colour)

    for i in range(len(your_mesh.v0)):
        cur_colour = colours[i]
        packets.append((2,(points.index(tuple(your_mesh.v0[i]))+1,
                        points.index(tuple(your_mesh.v1[i]))+1,
                        points.index(tuple(your_mesh.v2[i]))+1,
                        cur_colour[0],
                        cur_colour[1],
                        cur_colour[2],
                        )))



    

    obj_name = "3D Thing"
    base_name = "base_vehicle"

    path_bits = [os.getenv('APPDATA')+"\\Stormworks\\data\\vehicles\\",".xml"]
    path_in = base_name+".xml"
    path_out = path_bits[0]+obj_name+path_bits[1]
    
    file = open(path_in)
    text = file.read()
    file.close()

    path_root = ".\\"+"code"+"\\_build\\out\\release\\"
    print()

    for i in range(3):
        name = ["render.lua","engine.lua","sound.lua"][i]
        file = open(path_root+name)
        code = file.read()
        file.close()
        #print(code)

        if False:
            m_var=code[code.find("={}")-1]
            
            for j in range(0,30):
                cur=m_var+"["+str(j)+"]"
                
                if cur in code:
                    print(cur,"found",code.count(cur),"times")
                
        print(name)
        code = compress(code,print_vars=i==-1,delete_newlines=True)
        print()
        
        find_start = ["""<c type="56"><object id="4" script='""",
                      """<c type="56"><object id="130" script='""",
                      """<c type="56"><object id="139" script='""",
                      ][i]
        find_end = ["""'>""",
                    """'>""",
                    """'>"""
                    ][i]

        start = text.find(find_start)
        end = text.find(find_end,start)
        if i==1:
            None
            print(code.split("\n")[85-1])
            

        assert start>0 and end>0, "Code insertion search terms not in base vehicle file"
        
        text = text[:start+len(find_start)]+code+text[end:]

    type_map = {20:"colours",21:"wall textures",22:"flat textures",23:"sprites",24:"sky textures",25:"orange"}
    parts = []
    cur=[]
    t=0
    tt=0
    for index in range(len(packets)):
        i = packets[index]
        #if i[0]==31:
        #    print(i)
        if len(cur)==0 or len(cur[0][1])!=len(i[1]) or cur[0][0]!=i[0] or index==len(packets)-1:
            if len(cur)>0:
                out_numbs = [cur[0][0],len(cur[0][1]),len(cur)]
                for j in cur:
                    for k in j[1]:
                        out_numbs.append(k)

                for j in out_numbs:
                    temp = str(j)
                    temp = temp[:-1]+chr(ord(temp[-1])+17)
                    temp_len = len(temp)
                    if len(parts)==0 or len(parts[-1])+temp_len>curmax:
                        if len(parts)>0:
                            parts[-1]=parts[-1]
                        parts.append(temp)
                    else:
                        parts[-1] = parts[-1]+temp
                    t+=temp_len
                    
                
                if i[0]!=cur[0][0]:
                    tt+=t
                    t=0
            cur=[i]
        else:
            cur.append(i)

    print()
    print(tt//1024,"KiB total")
    
    
    #[(print(i) if (len(i)==largest) else 0) for i in packets]
    
    

    text_block= ['''<c type="58"><object id="85" n="''',
                 '''" v="''',
                 '''"><pos x="-8.25" y="''',
                 '''"/></object></c>''']
    contents = ""
    
    
    for i in range(len(parts)):
        contents += (text_block[0]+str(i+1)+text_block[1]+parts[i]+text_block[2]+str((i+1)*0.5)+text_block[3])

    

    

    find_start1 = '''<c type="58"><object id="84" n="text block start"><pos x="-8.25"/></object></c>'''
    find_end1 = '''<c type="57">'''

    
    start1 = text.find(find_start1)
    end1 = text.find(find_end1)
    text = text[:start1+len(find_start1)]+contents+text[end1:]

    
    
    file = open(path_out,mode="w", newline='\n')
    file.write(text)
    file.close()

    print()
    print("actual file is",len(text)//1024,"KiB")
    
    
