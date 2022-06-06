# SMARTDEV
This Project is about automation test for searching feature on mobile
Cause the apk goodreads have some issue that why I can not automate.
And I replay the app Grabhotel. you can check the apk at the lcoation: src/main/app/Grabhotel_2.7.0.apk

# Set up Env For testing
## 1. Install Python.
We are using Robot Framework for our automation tests.
Cause RF (Robot Framework) is built by python. So we have to install python in our computer.
Python has different of versions: python 2.x.x and python 3.x.x
We dont use python 2.x.x, So please install and use python 3.x.x only.

### Step 1. Check if your computer has 'Python 3.x.x' installed yet or not.
Open cmd and type the command: 'python3 --version'
if the output is : 'Python 3.x.x' then you already have python 3 installed (skip step 2)
![check if python3 is installed or not](/img/img1.png )

if you see the output like: python is not recognized.... It means you don't have python yet. You need to install.
![check if python3 is installed or not](/img/img2.png )

### Step 2: Download python 3.x.x
Go to this site : https://programwithus.com/learn/python/install-python3-mac
And follow the step mentioned in the site.
![download python](/img/img3.png )

### Step 3: Check python is installed or not
Open terminal and type the command: python3 --version
you should see the version output
![check python version](/img/img4.png )

# Note
If you are using MacOS , please use "python3" instead of "python2" when you type any command.

## 2. Install Java 1.8
Cause our testing include mobile automation and we use 'Appium' Framework so that we need to install 'Java' 

### step 1. Download Java 1.8
check Java is installed or not, open terminal and type the command: java --version
![check java install or not](/img/img5.png )

### step 2. Install Java and set path
If you already have Java installed then skip this step
Follow steps in this site to install Java and Set Path : https://www.geeksforgeeks.org/how-to-install-java-on-macos/

## 3. Install Android Sdk
Cause our testing is mobile app (android) so that we need to install Android Sdk

### Step 1: download and install android sdk
Follow steps in this site to install android sdk: https://www.androidcentral.com/installing-android-sdk-windows-mac-and-linux-tutorial

### Step 2: you have to set up path for Android sdk
Open terminal and follow these steps: https://stackoverflow.com/questions/28296237/set-android-home-environment-variable-in-mac
![set path enviroment variable for android sdk](/img/img6.png )

run below command to see if you set path for android sdk is correct or not
open cmd and run command: adb devices
and if you see the output like 'List of devices attached' it means you set path correct
![check if android is installed correct](/img/img7.png )

## 4. Set up your android device to run the test 
Please follow steps mentioned in this site: https://www.tektutorialshub.com/android-studio/run-android-app-on-real-device/

## 5. Install Node
RF use the library Appium to automate mobile, and appium is build base on Node so that we have to install Node

### step 1: install Node
follow steps mentioned in this site: https://treehouse.github.io/installation-guides/mac/node-mac.html

### step 2: check if node is installed or not
Open terminal and type comand: node --version
![set path for nodejs](/img/img8.png )

## 6. Install Appium And set path
We need to install Appium for running test on mobile app

### step 1: install appium 
Open cmd and run the command: npm install -g appium
check below pic:
![install appium](/img/img9.png )

To test if install appium is correct, run the command on cmd: appium
if you see output like : Appium version... then you are good to go
![check appium is installed correct](/img/img10.png )

### step 2: set path for variable APPIUM_PATH
first you need to check where is node_module path
Usually, node is installed at this folder on window : /usr/local/lib/node_modules/appium/

# How To Run Test
### step 1: Open cmd and go to the Root folder like this: cd {ROOT}/src
![go to root folder](/img/img11.png )

### step 2: run this command to install library: pip3 install -r requirement.txt
![install libraries ](/img/img12.png )

wait until int complete.

### step 4: run the test case
First our test case files will be located in this folder:
+ {ROOT}/src/test/api: contains test case files for api test
+ {ROOT}/src/test/fe: contains test case files for front end test


you can check the detail of test case 
ex: test case detail of feature Search : /src/test/fe/SearchTestSuite.robot
check below pic
![test case detail of api ](/img/img13.png )


It time to run the test case
Make sure you are stay in the folder ${ROOT}/src
open cmd and run the command: robot --outputdir Reports --variable env:staging src/test/fe
check below pic
![command to run test ](/img/img14.png )


# Check report
After you run the test case , you will see an output folder 'Reports'
In this folder , there are 3 files: output.xml, report.html, log.html
Open the file report.html on the browser to see detail of test case run status.
![report location ](/img/img15.png )

Open the file report.html by any browser and see the report
![check report ](/img/img16.png )


# Please let me know if you have any issue while running the test case.