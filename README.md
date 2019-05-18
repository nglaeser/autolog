# Weekly Auto-Logger

The senior Capstone Computing class requires a weekly log of individual activities which is factored into each student's grade. As far as I can tell, this is done with a simple script/bot that only checks if the log has been updated in the past week.  

Because I kept forgetting to fill this out before midnight, I decided to make a script which would create the headers for me each week (thus fulfilling the weekly editing requirement) and which I could populate with content later.  

## Setup/Usage

After downloading the `log.sh` file, add a cronjob that will run it every week (I had it set to run every Sunday at 10 P.M.). For example:
```
0 22 * * 0 /Users/noemi/Documents/USC/4-senior/Capstone/log.sh
```
You can edit your cronjobs on Mac with `crontab -e`. For more information on cronjobs on Mac, see [this article](https://ole.michelsen.dk/blog/schedule-jobs-with-crontab-on-mac-osx.html).

*Note*: The path to my own weekly log file is currently hard-coded into the script. This needs to be changed to whatever your path is.

*Note 2*: This seems to only work if you have your repo (with the weekly log file to be updated) set up with SSH.

## Possible Improvements

This script is clearly still pretty rudimentary, but here are a couple of suggestions for improvements:  

* **Add date calculations**: Right now, I just increment the week number and create a new header with that number. It would be good to check the current top header, and, if it corresponds with the current week, not update at all. This way, if you actually remember to update within the week, you won't get extra headers. Also, unlike all the headers I wrote myself (format: `Week N (MMM DD - MMM DD)`), this script only writes the week number. It should be fairly straightforward to add the dates in parentheses with something like `date -v`.
* **Actually fill out some content**: Currently, the script just creates a new empty section. It should be pretty easy to populate the new section with preliminary bullet points, e.g. the last commit message from each day of the week.

## Log Example

Here is a snippet from my log to give you an idea of the formatting and style:  

>## Week 30 (Apr 22 - Apr 28)
>* Cleaned miscellaneous UI issues (order users alphabetically in some lists we missed, missing lab text, add style, fix teacher/admin assignment to classes, sort lab and lectures)
>* Helped make video for website (determined the script)
>* Wrote many unit tests
>* Put together the final presentation, practiced, and presented
>
>## Week 29 (Apr 15 - Apr 21)
>* Refactored code
>* Closed various issues (#62, #63, #69, ...)
>* Talked about changes to be made and how best to resolve the issues raised
>* Raised issues on Ovals project GitHub

## Test
