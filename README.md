Requirments:

* Ant for Java Project Building  :`brew install ant`
* UnitTest files inside eval_testFiles folder
* Zipped project files

For simplicity all mentioned files and folders must be in the same directory

Adding Unit-Tests files:

1. Add the unittest files to the eval_testFiles folder
2. Update the build.xml config specifing the new file name as follows:
	          `<test name="tests.M2PrivateTests" todir="${junit.output.dir}"/>`


Steps to Run:

1. Give the script file excution permission : chmod +x script.sh
2. Run the script by typing : ./script.sh

check the html summary at each of the unzipped project folder named : package-summary.html
