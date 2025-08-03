def assemble(text):
    code = []
    script_markers = {}
    instruction_dividers = '#()[]-/=>{}~'
    instruction_tokens = "#=[]-/>{}()~"
    
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
        if ":" in cur_text: # lable
            cur_name = cur_text.replace(":","")
            code[cur_tag]=[1,cur_name,len(code)+1]
            script_markers[cur_name] = len(code)+1
            
            cur_tag += 1
        else:
            if "~" in cur_text: # conditional jump
                index1 = cur_text.find("~")
                code.append([9,cur_text[:index1],cur_text[index1+1:]])
            elif "exit" in cur_text: # exit
                code.append([0])
            else: # all else
                multi_command = []
                cur = ""
                last = ""
                for i in cur_text:
                    if i in instruction_dividers or (cur in instruction_dividers and not (cur == "-" and multi_command[-1] == "=")):
                        if cur != "":
                            multi_command.append(cur)
                        cur = ""
                    cur += i
                multi_command.append(cur)

                for i in range(len(multi_command)):
                    cur_token = multi_command[i]
                    if '"' in cur_token:
                        token_type = "S"
                    elif cur_token in instruction_dividers:
                        token_type = cur_token
                    else:                        
                        try:
                            int(cur_token)
                            token_type = "N"
                        except:
                            try:
                                float(cur_token)
                                token_type = "F"
                            except:
                                token_type = "v"
                    
                    multi_command[i] = [token_type,cur_token]

                processing = True
                temp_var_num = 0
                while processing:
                    token_string = ""
                    for i in multi_command:
                        token_string += i[0]

                    #print(token_string)#,"\t",[i[1] for i in multi_command]

                    if token_string == "v=N":
                        processing = False
                        code.append([1,multi_command[0][1],int(multi_command[2][1])])

                    elif token_string == "v=F":
                        processing = False
                        code.append([1,multi_command[0][1],float(multi_command[2][1])])

                    elif token_string == "v=S":
                        processing = False
                        code.append([1,multi_command[0][1],multi_command[2][1].replace('"',"")])

                    elif token_string == "v[v]=v":
                        processing = False
                        code.append([2,multi_command[0][1],multi_command[2][1],multi_command[5][1]])

                    elif token_string == "v=v[v]":
                        processing = False
                        code.append([3,multi_command[0][1],multi_command[2][1],multi_command[4][1]])

                    elif token_string == "v={}":
                        processing = False
                        code.append([4,multi_command[0][1]])

                    elif token_string == "v=v-v":
                        processing = False
                        code.append([5,multi_command[0][1],multi_command[2][1],multi_command[4][1]])

                    elif token_string == "v=v/v":
                        processing = False
                        code.append([6,multi_command[0][1],multi_command[2][1],multi_command[4][1]])
                    
                    elif token_string == "v=v(v)":
                        processing = False
                        code.append([7,multi_command[0][1],multi_command[2][1],multi_command[4][1]])

                    elif token_string == "v=#v":
                        processing = False
                        code.append([8,multi_command[0][1],multi_command[3][1]])

                    elif token_string == "v=v>v":
                        processing = False
                        code.append([10,multi_command[0][1],multi_command[2][1],multi_command[4][1]])

                    else:
                        left_side = token_string[:token_string.find("=")]
                        right_side_offset = token_string.find("=")+1
                        right_side = token_string[right_side_offset:]

                        temp_var_name = "temp"+str(temp_var_num)
                    
                        if len(right_side) > 1 or right_side[0] != "v":
                            cur_side = right_side
                            cur_offset = right_side_offset
                        else:
                            cur_side = left_side
                            cur_offset = 0


                        if "v(v)" in cur_side:
                            index = cur_side.find("v(v)")+cur_offset

                            code.append([7,temp_var_name,multi_command[index][1],multi_command[index+2][1]])
                            
                            multi_command.pop(index+3)
                            multi_command.pop(index+2)
                            multi_command.pop(index+1)
                            multi_command[index][1] = temp_var_name

                            temp_var_num += 1
                        
                        elif "(v)" in cur_side:
                            index = cur_side.find("(v)")+cur_offset
                            multi_command.pop(index+2)
                            multi_command.pop(index)

                        elif "N" in cur_side:
                            index = cur_side.find("N")+cur_offset

                            code.append([1,temp_var_name,int(multi_command[index][1])])

                            multi_command[index][0] = "v"
                            multi_command[index][1] = temp_var_name

                            temp_var_num += 1

                        elif "F" in cur_side:
                            index = cur_side.find("F")+cur_offset

                            code.append([1,temp_var_name,float(multi_command[index][1])])

                            multi_command[index][0] = "v"
                            multi_command[index][1] = temp_var_name

                            temp_var_num += 1

                        elif "S" in cur_side:
                            index = cur_side.find("S")+cur_offset

                            code.append([1,temp_var_name,multi_command[index][1].replace('"',"")])

                            multi_command[index][0] = "v"
                            multi_command[index][1] = temp_var_name

                            temp_var_num += 1

                        elif "{v}" in cur_side:
                            index = cur_side.find("{v}")+cur_offset

                            code.append([4,temp_var_name])
                            code.append([2,temp_var_name,"one",multi_command[index+1][1]])

                            multi_command[index+1][1] = temp_var_name
                            multi_command.pop(index+2)
                            multi_command.pop(index)

                            temp_var_num += 1
                            
                        
                        elif "v[v]" in cur_side:
                            index = cur_side.find("v[v]")+cur_offset

                            code.append([3,temp_var_name,multi_command[index][1],multi_command[index+2][1]])
                            
                            multi_command.pop(index+3)
                            multi_command.pop(index+2)
                            multi_command.pop(index+1)
                            multi_command[index][1] = temp_var_name

                            temp_var_num += 1

                        elif "v/v" in cur_side:
                            index = cur_side.find("v/v")+cur_offset

                            code.append([6,temp_var_name,multi_command[index][1],multi_command[index+2][1]])
                            
                            multi_command.pop(index+2)
                            multi_command.pop(index+1)
                            multi_command[index][1] = temp_var_name

                            temp_var_num += 1

                        elif "v-v" in cur_side:
                            index = cur_side.find("v-v")+cur_offset

                            code.append([5,temp_var_name,multi_command[index][1],multi_command[index+2][1]])
                            
                            multi_command.pop(index+2)
                            multi_command.pop(index+1)
                            multi_command[index][1] = temp_var_name

                            temp_var_num += 1
                        else:
                            assert multi_command==None, "Invalid command "+cur_text

                            
                                
                                
                            
                            
                        
                    
                    
                    
                
                
    
    return code, script_markers

if __name__ == '__main__':
    file = open("assembly.txt")
    text = file.read()
    file.close()

    code, script_markers = assemble(text)
    
    [print(i) for i in code]
