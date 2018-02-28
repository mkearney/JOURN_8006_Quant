FAQ
================

Frequently asked questions for [**JOURN 8006: Intro to Quant Research Methods in Journalism**](https://github.com/mkearney/JOURN_8006_Quant).

How do I get the script file to correctly read the data file(s)?
----------------------------------------------------------------

### Solution \#1:

It could be something as simple as typos in the file names (e.g., the data file name should be `1-basics-data.csv` not `1-data.csv`). Make sure the file name in the code **exactly matches** with the actual file name of the saved data file.

### Solution \#2:

Close all active sessions/open windows of Rstudio currently running on your computer. Once you've closed all active sessions of Rstudio, open your computer's file directory viewer (on a Mac this would be *Finder*; on a PC this would be *My Computer*) and navigate to where you saved the script and data files. Once you've found the files in the file viewer window, right click the script file (it should have a file extention of `.R` or `.Rmd`). That should open a popup menu with several options. Click `Open With` (or maybe on a PC it maybe says something like `Choose Program`) and select to open the file with **Rstudio**. When Rstudio opens, it should by default make sure your **working directory** is set to the correct location (the folder where the script and data file(s) are saved on your computer). Assuming everything worked up to this point, then the code in the `.R` or `.Rmd` file should execute as intended!

### Solution \#3:

In the Rstudio `file` pane (bottom right), navigate to where you saved the script (`.R` or `.Rmd`) file. When you get to the point where you can see the both script file and the associated `data` file (e.g., `1-basics-data.csv`) or folder (e.g., a folder `data` that contains `1-basics-data.csv` or whatever the name of the data file is) in the Rstudio file pane, click the **gear icon** toward the top of the pane (it says `More` right next to it) and select `Set as working directory`. This will cause Rstudio to set the `working directory` for your current session to the correct location on your computer (the place where you saved the script and data files). Assuming everything worked up to this point, then the code in the `.R` or `.Rmd` file should execute without any issues!
