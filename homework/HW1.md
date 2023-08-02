**Homework Assignment: CI Pipeline for RPM Packaged Application with GitHub Actions**

**Overview**

In this assignment, you will create a Continuous Integration (CI) pipeline using GitHub Actions for a simple Python application. 

The application will then be packaged into an RPM package.

**Application Details**

For simplicity, let's have a basic Python script as our application. 

For example, a script that prints "Hello, World!" when executed:

```python
# file: hello_world.py
print("Hello, World!")
```

**CI Pipeline Stages**

You need to implement the following stages in your CI pipeline:

- Use linting and unit-testing for PR CI pipelines
- Use Building package and Pushing to registry for push on develop

_Stage 1: Linting_

- Use pylint for linting your Python code.

This stage will help maintain a standard coding style and catch any syntactical errors before proceeding to the next stage.


_Stage 2: Unit Testing_

Create a simple unit test for your Python script using unittest. 
For our basic script, you can capture the stdout of the script execution and assert that it equals "Hello, World!\n".

_Stage 3: Building RPM Package_

For this stage, create a spec file (hello_world.spec) for packaging your Python script into an RPM package. 
 - You can use rpmbuild to build the RPM package.
 - The GitHub Action should run the rpmbuild command to create the RPM package.

_Stage 4: Upload to GitHub Packages_

After successfully building the RPM package, the final stage of your CI pipeline will be to upload this RPM package to GitHub Packages. 
You can use the actions/upload-artifact action to upload the built RPM package.

**Deliverables**

_A GitHub repository containing_:

     - Your Python script (hello_world.py).
     - The unit test for the Python script.
     - The spec file (hello_world.spec) for the RPM package.
     - The GitHub Actions workflow file for the CI pipeline.
     - A README file that details:
        - An overview of your project.
        - How to run your application locally.
        - How the CI pipeline works.
        - The tools and technologies used.

**Evaluation Criteria**

_Functionality_: Your pipeline should run successfully, executing all stages as expected.

_Code Quality_: Your code should be clear, easy-to-read, and well-organized.

_Documentation_: Your README file should provide enough information for anyone to understand what your project is, how to use it, and how it works.


_Understanding_: You should understand each stage of the pipeline and be able to explain how it contributes to the Continuous Integration process.

Remember, the goal here is to demonstrate your understanding of how to set up a CI pipeline using GitHub Actions for a simple Python application, and package the application into an RPM package.