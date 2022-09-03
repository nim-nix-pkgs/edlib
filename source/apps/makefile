F=--debugger:native

try: aligner.exe
	./aligner.exe
%.exe: %.nim
	nim cpp $F -o:$@ $<
