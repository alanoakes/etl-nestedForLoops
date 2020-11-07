:: nesting for loops in batch scripting
@echo off
SetLocal
set A=a1 b2 c3
set B=one two

FOR %%a in (%A%) do ( :: a in A  
  FOR %%b in (%B% %%a) DO ( :: b in B and a
    IF %%a NEQ %%b ( :: a not equal b --> if stmt to not repeat b
    	echo outputCMD,%%a,%%b >> output.csv
    )
  )
)
