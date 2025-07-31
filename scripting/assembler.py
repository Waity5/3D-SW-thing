def assemble(text):
    code = []
    script_markers = {}
    
    text = text.replace(" ","").replace("\t","")

    text = text.split("\n")

    for i in range(len(text)-1,-1,-1):
        if text[i].find("--") != -1:
            text[i] = text[i][:text[i].find("--")]
        
        if text[i] == "":
            text.pop(i)

    tags = 0
    for i in text:
        if ":" in i:
            tags += 1

    
    for i in range(tags):
        code.append([])
    code.append([0])
    
    
    cur_tag = 0
    for i in range(len(text)):
        cur_text = text[i]
        if ":" in cur_text:
            cur_name = cur_text.replace(":","")
            code[cur_tag]=[1,cur_name,len(code)+1]
            script_markers[cur_name] = len(code)+1
            
            cur_tag += 1
        else:
            if "{}" in cur_text:
                index1 = cur_text.find("=")
                code.append([4,cur_text[:index1]])
                
            elif "-" in cur_text:
                index1 = cur_text.find("=")
                index2 = cur_text.find("-")
                if index2 == index1+1: # acidentally grabs a "a = -1" type command as a subtract
                    code.append([1,cur_text[:index1],cur_text[index1+1:]])
                else:
                    code.append([5,cur_text[:index1],cur_text[index1+1:index2],cur_text[index2+1:]])
                
            elif "/" in cur_text:
                index1 = cur_text.find("=")
                index2 = cur_text.find("/")
                code.append([6,cur_text[:index1],cur_text[index1+1:index2],cur_text[index2+1:]])
                
            elif "(" in cur_text:
                index1 = cur_text.find("=")
                index2 = cur_text.find("(")
                index3 = cur_text.find(")")
                code.append([7,cur_text[:index1],cur_text[index1+1:index2],cur_text[index2+1:index3]])

            elif "#" in cur_text:
                index1 = cur_text.find("=")
                index2 = cur_text.find("#")
                code.append([8,cur_text[:index1],cur_text[index2+1:]])

            elif "~" in cur_text:
                index1 = cur_text.find("~")
                code.append([9,cur_text[:index1],cur_text[index1+1:]])
                
            elif ">" in cur_text:
                index1 = cur_text.find("=")
                index2 = cur_text.find(">")
                code.append([10,cur_text[:index1],cur_text[index1+1:index2],cur_text[index2+1:]])
                
            elif "[" in cur_text:
                index1 = cur_text.find("=")
                index2 = cur_text.find("[")
                index3 = cur_text.find("]")
                if index1<index2:
                    code.append([3,cur_text[:index1],cur_text[index1+1:index2],cur_text[index2+1:index3]])
                else:
                    code.append([2,cur_text[:index2],cur_text[index2+1:index3],cur_text[index1+1:]])

            elif "=" in cur_text:
                index1 = cur_text.find("=")
                try:
                    value = int(cur_text[index1+1:])
                except:
                    value = cur_text[index1+1:]
                code.append([1,cur_text[:index1],value])
                
            elif "exit" in cur_text:
                code.append([0])
            else:
                code.append("OK")
                
    
    return code, script_markers

if __name__ == '__main__':
    file = open("assembly.txt")
    text = file.read()
    file.close()

    code, script_markers = assemble(text)
    
    [print(i) for i in code]
