<a name="readme-top"></a>

<div align="center">
<img  src='./app/assets/images/9296454.gif' width="40%">
  <h1><b>Safari</b></h1>

</div>

# Backend

<!-- TABLE OF CONTENTS -->

## 📗 Table of Contents

- [Backend](#backend)
  - [📗 Table of Contents](#-table-of-contents)
- [📖 Safari Booking ](#-safari-booking-)
  - [🛠 Built With ](#-built-with-)
    - [Tech Stack ](#tech-stack-)
    - [Key Features ](#key-features-)
  - [🚀 Live Demo](#-live-demo)
  - [🔗 Link for the Frontend ](#-link-for-the-frontend-)
  - [🔗 Link for the API Documentations ](#-link-for-the-api-documentations-)
  - [🔗 Kanban Board ](#-kanban-board-)
    - [Team Members](#team-members)
  - [💻 Getting Started ](#-getting-started-)
    - [Prerequisites](#prerequisites)
    - [Setup](#setup)
    - [Install](#install)
    - [Usage](#usage)
    - [If you want to add and remove a car you should log in as an admin user.](#if-you-want-to-add-and-remove-a-car-you-should-log-in-as-an-admin-user)
    - [Openining server](#openining-server)
    - [Test](#test)
  - [👥 Author ](#-author-)
  - [🔭 Future Features ](#-future-features-)
  - [🤝 Contributing ](#-contributing-)
  - [⭐️ Show your support ](#️-show-your-support-)
  - [🙏 Acknowledgments ](#-acknowledgments-)
  - [📝 License ](#-license-)

<!-- PROJECT DESCRIPTION -->

# 📖 Safari Booking <a name="about-project"></a>

**Wheels-4-Rent** An application programming interface (API) tailored for car rental services streamlines the integration of rental functionalities into various applications or systems. It empowers users to execute essential tasks associated with vehicle rental, including reservation and inventory management.
## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

<details>
  <summary>Server</summary>
    <li><a href="https://www.ruby-lang.org/en/">Ruby</a></li>
    <li><a href="https://rubyonrails.org/">Rails</a></li>
</details>
<details>
<summary>Test</summary>
    <li><a href="https://rspec.info/">Rspec</a></li>
</details>
<details>
  <summary>Database</summary>
    <li><a href="https://www.postgresql.org/">Postgres</a></li>
</details>

<!-- FEATURES -->

### Key Features <a name="key-features"></a>

- **User Registraton**
- **Safari**
- **Create safari**
- **Show all Safari**
- **Show detail Info of a Safari**
- **Make Reservations**
- **Delete Reservation**
- **Show all Reservation**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🚀 Live Demo

- [Safari-Booking](#)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FRONTEND -->
## 🔗 Link for the Frontend <a name="frontend"></a>

- [Safari-Booking](#)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- API DOC -->

## 🔗 Link for the API Documentations <a name="APIDoc"></a>

- [Safari API](https:/127.0.0.1:3000/api-docs/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- KANBAN -->

## 🔗 Kanban Board <a name="kanban"></a>
- [Kanban Board](https://github.com/users/henokkhm/projects/9)


### Team Members
1 [Bleu Yves Sopoude](https://github.com/Bleu-Yves-Sopoude)

2 [Foga Kater Amos](https://github.com/katfogy)

2 [Henok Kirubel](https://github.com/henokkhm)

2 [William Nji](https://github.com/Wils-FOURR-speed)

2 [Khuraijam Henary Singh ](https://github.com/HenaryKhuraijam)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->

## 💻 Getting Started <a name="getting-started"></a>

To get a local copy up and running, follow these steps.

### Prerequisites

In order to run this project you need:

```
    ruby >= 3.2.0
    rails >= 7.0
    postgres >- 15.3
```

### Setup

Clone this repository to your desired folder:

```bash
  git clone https://github.com/henokkhm/microverse-module-6-safari-booking-backend
```

You need to setup database for these project

```
  development = safari-booking_dev
  test        = safari-booking_test
  production  = safari-booking_prod
```

or you can use your own database and change the ```config/database.yml```

```yml
  default: &default
    adapter: postgresql
    encoding: unicode
    pool: 5
    username: [your_username]
    password: [your_password]
    host: localhost

  development:
    <<: *default
    database: [your_database_for_development]

  test:
    <<: *default
    database: [your_database_for_test]

  production:
    <<: *default
    database: [your_database_for_production]
```

### Install

Install this project with:

```bash
  cd safari-booking
  bundle install
```


it will install the required gemfile for running the project

### Usage

If you want to use this in your local machine
create the database, run migration, and seed files:

```bash
   rails db:create
   rails db:migrate
   rails db:seed
```
### If you want to add and remove a car you should log in as an admin user.

```bash
ADMIN Credentials

username: 
password: 
```

### Openining server
Before opening the server go to file /config/puma.rb  and comment line 33

```
    rails s
```

### Test

to run the test

```
    rspec .\spec\
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>


## 👥 Author <a name="author"></a>

👤 **Bleu Yves Sopoude**

 - GitHub: [@Bleu-Yves-Sopoude](https://github.com/Bleu-Yves-Sopoude)
 - Linkedin: [@in/bleu-yves](https://www.linkedin.com/in/bleu-yves/)
 - GitHub: [@bleuYves](https://twitter.com/bleuYves)

👤 **Foga Kater Amos**
 - GitHub: [@katfogy](https://github.com/katfogy)
 - Twitter: [@Katfogy](https://twitter.com/Katfogy)
 - LinkedIn: [LinkedIn](https://www.linkedin.com/in/foga-amos-2b5371103/)
  
👤 **Henok Kirubel Hailemariam**

- GitHub: [@henokkhm](https://github.com/henokkhm)
- Twitter: [@henokkhm](https://twitter.com/henokkhm)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/henokkhm/)

👤 **WILSAN**
- GitHub: [@githubhandle](https://github.com/Wils-FOURR-speed)
- Twitter: [@twitterhandle](https://twitter.com/WFourrspeed)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/nji-wilsan-ndenge-47b7a826a/)

👤 **Khuraijam Henary Singh**

- GitHub: [@HenaryKhuraijam](https://github.com/HenaryKhuraijam)
- Twitter: [@HenaryKhuraijam](https://twitter.com/HenaryKhuraijam)
- LinkedIn: [Henary Khuraijam](https://www.linkedin.com/in/henary-khuraijam-50487317a)



<br />


<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FUTURE FEATURES -->

## 🔭 Future Features <a name="future-features"></a>

- **Add additional Models for more functionality**
- **Deploy the app so it can be accessible to anyone.**


<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/henokkhm/microverse-module-6-safari-booking-backend/issues).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->

## ⭐️ Show your support <a name="support"></a>

Please consider sharing it with your acquaintances or network. Your support in sharing this project would be greatly appreciated.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGEMENTS -->

## 🙏 Acknowledgments <a name="acknowledgements"></a>

This project's design is inspired by the work of [Murat Korkmaz](https://www.behance.net/muratk) on [Behance](https://www.behance.net/).Therefore, we express our gratitude to [Murat Korkmaz](https://www.behance.net/muratk) for the inspiring design that contributes to the visual appeal of Wheels-4-Rent.

We also would like to thank Micorverse Support team, Reviwers and Community for this learning oppprtunity.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>