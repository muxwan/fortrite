# Fortrite
Read the repo name again.

Anyways, this repository serves as a kind of "dropbox" where I drop Fortran programs and modules.
Feel free to use them as you wish.

## Quick guide to Fortran90

<br />

### Compiling a program directly

```python
gfortran NAMEOFPROGRAM.f90 -o NAMEOFOUTPUT
```
Example :
```sql
gfortran circle_test.f90 -o circle.out
```

<br />

### Compiling a program by linking
First, generate the object files

```python
gfortran -c NAMEOFPROGRAM.f90
```
Example :
```sql
gfortran -c main.f90
```
Repeat for all necessary files.

Lastly, mention all the required object files and create the executable.
```python
gfortran PROGRAM-01.o PROGRAM-02.o ... PROGRAM-N.o -o OUTPUTPROGRAM
```
Example :
```sql
gfortran rectangle.o square.o -o shapes.out
```

<br />

### Creating dynamic libraries
In Linux (.so files):
```python
gfortran -shared -fPIC -o NAMEOFLIBRARY.so NAMEOFPROGRAM-01.f90 NAMEOFPROGRAM-02.f90 ... NAMEOFPROGRAM-N.f90
```
Example :
```sql
gfortran -shared -fPIC -o libgeometry.so squares.f90 triangles.f90
```
In Windows (.dll files):
Example :
```sql
gfortran -shared -o libgeometry.dll squares.f90 triangles.f90
```
In MacOS (.dylib files):
Example :
```sql
gfortran -dynamiclib -o libgeometry.dylib squares.f90 triangles.f90
```
