# Robot Framework training template repository

# Workspace usage
This is a workspace template for coding examples during Robot Framework trainings.   
It can be used locally in [VS Code](https://code.visualstudio.com/) and in [Gitpod](https://www.gitpod.io).

#### The workspace contains some VS Code configuration
- List of recommended extensions
- Some common RF and Python and settings
- Launch config for [RF Language Server extension for VS Code](https://marketplace.visualstudio.com/items?itemName=robocorp.robotframework-lsp)
  - It works after clicking on one of the code lense buttons _Run_ or _Debug_ above the test case name in _.robot_ files
  - It enables saving all RF output files in the _logs_ folder
  - It also sets the [RF log level](http://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html#setting-log-level) to _DEBUG_ (with _INFO_ as visible by default) 

## Local usage
Please open the folder in [VS Code](https://code.visualstudio.com/) and install the recommended extensions, listed in _.vscode/extensions.json_

## Usage in Gitpod
### What is Gitpod?
[Gitpod](https://www.gitpod.io) is an IDE in the cloud.
- It opens VS Code in the browser without any local installation.
- You'll need only a GitHub account (free) which you can use to login to Gitpod.  
- Gitpod is free for individual usage up to 50h per month - see [pricing](https://www.gitpod.io/pricing).

### How to start
For this repository, you can use the prepared link:  
[**Open the workspace in Gitpod**](http://www.gitpod.io/#https://github.com/amochin/rf-training)  

Or you can create a Gitpod workspace from any GitHub repository just pasting it's link in the [New Workspace window](https://gitpod.io/new).

### Installing Robot Framework and libraries
Initially, the workspace has some common prerequisites installed, including **Python**, **Node.js**, **Java** and **Docker**. See the full list in the [Gitpod docs](https://www.gitpod.io/docs/configure/workspaces/workspace-image).

However, the workspace contains neither Robot Framework nor any libraries or Python modules installed. You can install them as usual, e.g. for Robot Framework:  
`pip install robotframework`  

The Browser library was tested - it gets installed and initialized without troubles and works fine.

### Check your workspace is set up successfully
Use the test suites in the _0_check_installation_ folder - depending on installed libraries.

### Gitpod workspace configuration
The _.gitpod.yml_ file contains some configuration which is used by Gitpod when creating a workspace from the repository.
- VS Code extensions to install
- Image selection and port configuration for [desktop interaction](#desktop-interaction)
- Starting a web server and port configuration for [Opening Robot Framework logs](#opening-robot-framework-logs)

### Desktop interaction
In case of GUI test automation (e.g. a web app with the Browser Library), it might be helpful to access the GUI / Desktop. In Gitpod workspace, you should use **VNC** for this.  
The preconfigured image contains a VNC service running in the background on the port `6080`.  

#### The VNC client runs in the browser
- When the workspace was started, you'll see a _Simple Browser_ tab in VS Code with the VNC connection open.
- You can also open the VNC connection in an external browser window
> - It's **your** browser, the same one where you have the Gitpod workspace VS Code running.

### Opening Robot Framework logs
Robot Framework log and report output are HTML files, so they require a browser to be opened.  
For whatever reason, the included browser of Gitpod workspace throws an error.  

As a workaround, the workspace launches a simple web server running on the port `8080`, serving the entire workspace directory.  
So when you see a notification from VS Code, telling the port is open, click **Open Browser** - it opens a new browser window with all the files listed.  

Simply navigate to the required folder (e.g. _logs_) and open the RF output files as usual.
> - It's **your** browser, the same one where you have the Gitpod workspace VS Code running.
> - You can also use a _Simple Browser_ in VS Code for viewing RF logs, but you can't have two tabs of it - so either VNC or logs. 

# Training summary
1. Warm up - automating a web app with Browser Library
    - [Sausedemo](https://www.saucedemo.com) as SUT
    - Basic structure and a simple test
2. Variables
    - Type
      - scalar
        > examlpe: check text is shown on page, text is saved as a simple variable
      - list
        > example 1: iterate through a list of text labels and check each is shown

        > example 2: list as variable number of arguments in a keyword, which again iterates through them and checks if text elements are shown on the page
      - dictionary
        > example 1: user credentials as dictionary

        > example 2: pass them as dict to a _login_ keyword

        > example 3: variable number of named arguments in a keyword, like check prices of items, displayed in the shopping cart. Key is name and value is price, as many as you like
    - Scope: local/keyword, test, suite
    - Setting variables
        - In *Settings*
        - In Keywords / test cases
        - In files (.py, .yaml) - import using *Variables*
        - Shortly mention: In CLI - single vars and also files
    - Built-In variables

3. Setup and Teardown
    - **Test** Setup and Teardown in *Settings*
      > example: start web app and login
    - **Suite** Setup and Teardown in *Settings*
      > example: start web app (move login to test setup)
    - Override Test Setup

999. Bigger excercise - automate a test case
      - Login
      - Put an item to the cart
      - Go to the cart
      - Check added item is shown

4. Loops
    - FOR - iterate through list (we tried it already)
    - WHILE

5. Data Driven Testing
    - Test Template
    - Shortly mention: data driver

999. Bigger excercise - automate "invalid login" tests in data driven style

6. Tags
    - Set tags in each test case
    - Set tags in *Settings*
    - Show __init__.robot files
    - Use tags when running tests using *robot* command
      - include
      - exclude
7. CLI (Command Line Interface)
    - Go to User Guide and show most interesting options

8. Externe Tools aus Robot Framework Ökosystem
    - Pabot
    - Rebot
    - Robocop
    - Robotidy
    - Libdoc
    - Libtoc
    - Data Driver

9. Erweiterung von Robot Framework – Keywords / Libraries in Python

10. Extra - Return (simple and lists) and Args (simple, free, kw)