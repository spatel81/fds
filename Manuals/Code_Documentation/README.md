## Code Documentation using Doxygen

This directory contains a configuration file, `Doxyfile`, for use with the code documentation program [Doxygen](www.doxygen.nl). Assuming that Doxygen is installed on your system, type:
```
doxygen Doxyfile
```
and a new directory called `html` will be created containing an HTML version of documentation for the FDS code.

If you want to create your own configuration file, type
```
doxygen -g myDoxyfile
```