**Homework Assignment: Ansible Web Server Setup**

**Objective**: To use Ansible to automate the setup of a basic web server environment, 
which includes installing and configuring a web server, creating a user, and ensuring proper security settings.

**Task Description**:

    1) _Setup your Inventory_:
        Create an inventory file named _web-servers.ini_.
        Add at least two server entries: _web-server1_ and _web-server2_.
        Define their IP addresses and SSH access details.

    2) _Using Ansible Modules_:
        Use the **ping** module to check the connectivity of your servers.
        Use the **user** module to create a user named webadmin on both servers.
        Use the **apt** or yum module (depending on the OS) to install nginx on both servers.
        Use the **service** module to ensure that nginx is running and enabled at boot.

    3) _Create a Role for Web Server Configuration_:
        Create a role named nginx_setup.
        Inside the role, you should have tasks that:
            * Configure the nginx to serve a static webpage.
            * Ensure the necessary directories are present for the webpage.
            * Copy a sample index.html to the appropriate directory on the server.

    4) _Using Variables_:
        Create a _vars/main.yml_ file inside the _nginx_setup_ role.
        Define a variable named _web_page_content_ and assign some HTML content to it.
        Update your role tasks to use the template module to generate the index.html page from a template, replacing some content with the web_page_content variable.

    5) **Putting it All Together**:
        * Write a playbook named _setup-web.yml_ that:
            * Uses the _web-servers.ini_ inventory.
            * Applies the _nginx_setup_ role to both servers.
            * Ensures that after execution, visiting the IP address of the servers on a browser shows the web page content defined in your variable.

    6) **Challenge Task (Optional)**:
        * Use the _firewalld_ or _ufw_ module to ensure that only ports 22 (SSH) and 80 (HTTP) are open on the servers.
        * Make role cross-platform for Debian/Centos distros

**Submission**:

    The _web-servers.ini inventory file.
    The Ansible playbook_ setup-web.yml_.
    The _nginx_setup_ role directory.
   ** Screenshots or logs showing successful execution and the resulting web page on the servers**.

**Tips**:
    Remember to organize your directory structure for roles.
    Test your playbook incrementally to ensure each part is working before moving to the next.
    Consider the idempotent nature of Ansible. Running your playbook multiple times shouldn’t result in changes if there was no change in state.
