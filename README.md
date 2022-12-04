<div align="center">

  <img src="https://github.com/Louis3797/awesome-readme-template/blob/main/assets/logo.png" alt="logo" width="200" height="auto" />
  <h1>Secure🐲Code</h1>
  
  <p>
    SecureCode project CI/CD. 
  </p>
   
</div>

<br />

<!-- Table of Contents -->
# :notebook_with_decorative_cover: Table of Contents

- [About the Project](#star2-about-the-project)
  * [Screenshots](#camera-screenshots)
  * [Features](#dart-features)
  * [Environment Variables](#key-environment-variables)
- [Getting Started](#toolbox-getting-started)
  * [Prerequisites](#bangbang-prerequisites)
  * [Installation](#gear-installation)
  * [Running Tests](#test_tube-running-tests)
  * [Run Locally](#running-run-locally)
  * [Deployment](#triangular_flag_on_post-deployment)
- [Usage](#eyes-usage)
- [Roadmap](#compass-roadmap)
- [Contributing](#wave-contributing)
  * [Code of Conduct](#scroll-code-of-conduct)
- [FAQ](#grey_question-faq)
- [License](#warning-license)
- [Contact](#handshake-contact)
- [Acknowledgements](#gem-acknowledgements)

  

<!-- About the Project -->
## :star2: About the Project
The project is related to security once development pushes code to GitHub, the pipeline will check if there’s a vulnerability and give a score if it's high seems good, otherwise will damage the code.
In other words I want to keep the code clean and hard to hack.

And once it's pass the **Quality Gate Status Check** there's anothe step **Dockerize The Application** and push it to DockerHub as image.
The last step is run the image into **K8S Cluster**.

<!-- Screenshots -->
### :camera: Screenshots
![image](https://user-images.githubusercontent.com/43513994/205515072-e8d7a97f-7fb2-44aa-9610-ace4a0a3b743.png)

<details>
<summary>DevOps</summary>
  <ul>
    <li><a href="https://www.docker.com/">Docker</a></li>
    <li><a href="https://www.jenkins.io/">Jenkins</a></li>
    <li><a href="https://circleci.com/">CircleCLI</a></li>
  </ul>
</details>

<!-- Features -->
### :dart: Features

- Used **Ansible Playbook**
- Used **Docker**
- Used **Kubernetes**

<!-- Env Variables -->
### :key: Environment Variables

To run this project, you will need to add the following environment variables to your environment.

`Terraform`
`AWS`
`Access Key`

<!-- Getting Started -->
## 	:toolbox: What I Use

### ⚖️ Infrastructure:

Terraform describe our complete infrastructure in the form of code.

🎨**Resources:**

`aws_instance`
`aws_vpc`
`aws_security_group`
`aws_internet_gateway`
`aws_subnet`
`aws_route_table`
`Access Key`
`aws_route_table_association`
`aws_lb`
`tls_private_key`
`local_file`
`aws_key_pair`
`EFS - Volume`

**All you need to create these infrastructure:**
```
terraform init
terraform plan
terraform apply
```

### 🔱**This project uses JSP Page:**

Is a text document that contains two types of text: static data, which can be expressed in any text-based format (such as HTML, SVG, WML, and XML), and JSP elements, which construct dynamic content.

Created a simple page that contain some information about DevOps tools.
This ****WebApp** run inside image that I've **Dockerize** it and push it to **DockerHub**.
After that I pull it inside the K8S in this case I used Minikube.

```
Start your browser if it is not already running. In the address area of the browser,
type http://localhost:8080/DateJSP.jsp and submit that address to the browser.
```

<!-- Installation -->
### :gear: Configuration

☘️**Prepared a script that install all the plugins that needs **Instance Jenkins Server**
You can find inside:**
```
git clone https://github.com/shadibdair/securcodes/blob/main/poc/jenkins-script.sh
```

🌿**Prepared a script that install all the plugins that needs **Instance SonarQube Server**
You can find inside:**
```
git clone https://github.com/shadibdair/securcodes/blob/main/poc/sonarqube-script.sh
```

⭐️**NOTE**

```
I've stored all the configuration inside EFS AWS ... That saved your time in the next terraform apply.
all the configuration will be saved.

- One for jenkins server EC2*
- One for sonarqube server EC2
```

<!-- Running Tests -->
### :test_tube: Running Tests

To run tests, run the following command

```bash
  yarn test test
```

<!-- Run Locally -->
### :running: Run Locally

Clone the project

```bash
  git clone https://github.com/Louis3797/awesome-readme-template.git
```

Go to the project directory

```bash
  cd my-project
```

Install dependencies

```bash
  yarn install
```

Start the server

```bash
  yarn start
```


<!-- Deployment -->
### :triangular_flag_on_post: Deployment

To deploy this project run

```bash
  yarn deploy
```


<!-- Usage -->
## :eyes: Usage

Use this space to tell a little more about your project and how it can be used. Show additional screenshots, code samples, demos or link to other resources.



<!-- Roadmap -->
## :compass: Roadmap


<!-- Contributing -->
## :wave: Contributing

<a href="https://github.com/Louis3797/awesome-readme-template/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=Louis3797/awesome-readme-template" />
</a>


Contributions are always welcome!

See `contributing.md` for ways to get started.


<!-- Code of Conduct -->
### :scroll: Code of Conduct

<!-- FAQ -->
## :grey_question: FAQ

- Question 1

  + Answer 1

- Question 2

  + Answer 2


<!-- License -->
## :warning: License


<!-- Contact -->
## :handshake: Contact

Your Name - [@twitter_handle](https://twitter.com/twitter_handle) - email@email_client.com

Project Link: [https://github.com/Louis3797/awesome-readme-template](https://github.com/Louis3797/awesome-readme-template)


<!-- Acknowledgments -->
## :gem: Acknowledgements

