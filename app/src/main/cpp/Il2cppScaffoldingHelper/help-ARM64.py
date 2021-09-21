# Generated script file by Il2CppInspector - http://www.djkaty.com - https://github.com/djkaty
# Target Unity version: 2019.2.0 - 2019.2.21

import json
import os
import sys

# IDA-specific implementation
import idaapi

def SetName(addr, name):
	ret = idc.set_name(addr, name, SN_NOWARN | SN_NOCHECK)
	if ret == 0:
		new_name = name + '_' + str(addr)
		ret = idc.set_name(addr, new_name, SN_NOWARN | SN_NOCHECK)

def MakeFunction(start, name=None, addrMax=None):
	ida_funcs.add_func(start)
	#limit end function to maxAddr if any
	if addrMax is None:
		return
	addrEnd = idc.get_func_attr(start,FUNCATTR_END)
	if addrEnd == idaapi.BADADDR:
		return
	if addrEnd > addrMax:
		idc.set_func_end(start,addrMax)

def MakeArray(addr, numItems, cppType):
	SetType(addr, cppType)
	idc.make_array(addr, numItems)

def DefineCode(code):
	idc.parse_decls(code)

def SetFunctionType(addr, sig):
  SetType(addr, sig)

def SetType(addr, cppType):
  if not cppType.endswith(';'):
    cppType += ';'
  tinfo = idc.parse_decl(cppType,idaapi.PT_RAWARGS)
  ret = None
  if not(tinfo is None):
    ret = idc.apply_type(addr,tinfo)
  if ret is None:
    ret = idc.SetType(addr, cppType)
  if ret is None:
    print('SetType(0x%x, %r) failed!' % (addr, cppType))

def SetComment(addr, text):
  idc.set_cmt(addr, text, 1)

def SetHeaderComment(addr, text):
  SetComment(addr, text)

def CustomInitializer():
	print('Processing Types')

	original_macros = ida_typeinf.get_c_macros()
	ida_typeinf.set_c_macros(original_macros + ";_IDA_=1")
	idc.parse_decls(os.path.join(GetScriptDirectory(), "..\\Il2cpp-Scaffolding-ARM64\\appdata\\il2cpp-types.h"), idc.PT_FILE)
	ida_typeinf.set_c_macros(original_macros)

def GetScriptDirectory():
	return os.path.dirname(os.path.realpath(__file__))

# Shared interface
def AsUTF8(s):
	return s if sys.version_info[0] > 2 else s.encode('utf-8')

def ParseAddress(d):
	return int(d['virtualAddress'], 0)

def DefineILMethod(jsonDef):
	addr = ParseAddress(jsonDef)
	SetName(addr, AsUTF8(jsonDef['name']))
	SetFunctionType(addr, AsUTF8(jsonDef['signature']))
	SetHeaderComment(addr, AsUTF8(jsonDef['dotNetSignature']))

def DefineILMethodInfo(jsonDef):
	addr = ParseAddress(jsonDef)
	SetName(addr, AsUTF8(jsonDef['name']))
	SetType(addr, r'struct MethodInfo *')
	SetComment(addr, AsUTF8(jsonDef['dotNetSignature']))

def DefineCppFunction(jsonDef):
	addr = ParseAddress(jsonDef)
	SetName(addr, AsUTF8(jsonDef['name']))
	SetFunctionType(addr, AsUTF8(jsonDef['signature']))

def DefineString(jsonDef):
	addr = ParseAddress(jsonDef)
	SetName(addr, AsUTF8(jsonDef['name']))
	SetType(addr, r'struct String *')
	SetComment(addr, AsUTF8(jsonDef['string']))

def DefineFieldFromJson(jsonDef):
	DefineField(jsonDef['virtualAddress'], jsonDef['name'], jsonDef['type'], jsonDef['dotNetType'])

def DefineField(addr, name, type, ilType = None):
	addr = int(addr, 0)
	SetName(addr, AsUTF8(name))
	SetType(addr, AsUTF8(type))
	if (ilType is not None):
		SetComment(addr, AsUTF8(ilType))

def DefineArray(jsonDef):
	addr = ParseAddress(jsonDef)
	MakeArray(addr, int(jsonDef['count']), AsUTF8(jsonDef['type']))
	SetName(addr, AsUTF8(jsonDef['name']))

# Process JSON
def ProcessJSON(jsonData):

	# Method definitions
	print('Processing method definitions')
	for d in jsonData['methodDefinitions']:
		DefineILMethod(d)
	
	# Constructed generic methods
	print('Processing constructed generic methods')
	for d in jsonData['constructedGenericMethods']:
		DefineILMethod(d)

	# Custom attributes generators
	print('Processing custom attributes generators')
	for d in jsonData['customAttributesGenerators']:
		DefineCppFunction(d)
	
	# Method.Invoke thunks
	print('Processing Method.Invoke thunks')
	for d in jsonData['methodInvokers']:
		DefineCppFunction(d)

	# String literals for version >= 19
	print('Processing string literals')
	if 'virtualAddress' in jsonData['stringLiterals'][0]:
		for d in jsonData['stringLiterals']:
			DefineString(d)

	# String literals for version < 19
	else:
		litDecl = 'enum StringLiteralIndex {\n'
		for d in jsonData['stringLiterals']:
			litDecl += "  " + AsUTF8(d['name']) + ",\n"
		litDecl += '};\n'
		DefineCode(litDecl)
	
	# Il2CppClass (TypeInfo) pointers
	print('Processing Il2CppClass (TypeInfo) pointers')
	for d in jsonData['typeInfoPointers']:
		DefineFieldFromJson(d)
	
	# Il2CppType (TypeRef) pointers
	print('Processing Il2CppType (TypeRef) pointers')
	for d in jsonData['typeRefPointers']:
		DefineField(d['virtualAddress'], d['name'], r'struct Il2CppType *', d['dotNetType'])
	
	# MethodInfo pointers
	print('Processing MethodInfo pointers')
	for d in jsonData['methodInfoPointers']:
		DefineILMethodInfo(d)

	# Function boundaries
	print('Processing function boundaries')
	functionAddresses = jsonData['functionAddresses']
	functionAddresses.sort()
	count = len(functionAddresses)
	for i in range(count):
		addrStart = int(functionAddresses[i],0)
		if addrStart == 0:
			continue
		addrNext = None
		if i != count -1:
			addrNext = int(functionAddresses[i+1],0)
		MakeFunction(addrStart,None,addrNext)

	# IL2CPP type metadata
	print('Processing IL2CPP type metadata')
	for d in jsonData['typeMetadata']:
		DefineField(d['virtualAddress'], d['name'], d['type'])
	
	# IL2CPP function metadata
	print('Processing IL2CPP function metadata')
	for d in jsonData['functionMetadata']:
		DefineCppFunction(d)

	# IL2CPP array metadata
	print('Processing IL2CPP array metadata')
	for d in jsonData['arrayMetadata']:
		DefineArray(d)

	# IL2CPP API functions
	print('Processing IL2CPP API functions')
	for d in jsonData['apis']:
		DefineCppFunction(d)

# Entry point
print('Generated script file by Il2CppInspector - http://www.djkaty.com - https://github.com/djkaty')
CustomInitializer()

with open(os.path.join(GetScriptDirectory(), ".\\help-ARM64.json"), "r") as jsonFile:
	jsonData = json.load(jsonFile)['addressMap']
	ProcessJSON(jsonData)

print('Script execution complete.')
