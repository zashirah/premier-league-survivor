# premier-league-survivor

# premier-league-survivor README <!-- omit in toc -->

- [Overview](#overview)
- [MVP](#mvp)
  - [Goals](#goals)
  - [Libraries and Dependencies](#libraries-and-dependencies)
  - [Client (Front End)](#client-front-end)
    - [Wireframes](#wireframes)
    - [Component Tree](#component-tree)
    - [Component Hierarchy](#component-hierarchy)
    - [Component Breakdown](#component-breakdown)
    - [Time Estimates](#time-estimates)
  - [Server (Back End)](#server-back-end)
    - [ERD Model](#erd-model)
- [Post-MVP](#post-mvp)
- [Code Showcase](#code-showcase)
- [Code Issues & Resolutions](#code-issues--resolutions)

<br>

## Overview

_**Premier League Survivor** is a game centered around the English Premier League. The user can create an account. After creating an account, the user can create and join leagues. Each league will have a seperate leaderboard and is designed to be like a fantasy football laegue. The rules of the game are the following:_
1. _Select only 1 game each matchweek per league (there are 38)._
2. _You can only select one team 2 times throughout a single Premier League season._
3. _You can only select games that have not started._
4. _If a game that you have selected a winner from starts, you cannot change your pick._
5. _If you select a winner, you get 3 points. A tie is worth 1 point, and a loss is worth 0 points._



<br>

## MVP

_The **Premier League Survivor** MVP will allow users to create, join, and edit leagues. Within a league, users will compete with each other by selecting a winner each matchweek._

<br>

### Goals

- _Make gameplay possible_
- _Give a leaderboard for each league_
- _Make the game logic work with the schedule picker and the backend_
- _Allow users to close and open leagues that they created_

<br>

### Libraries and Dependencies

|     Library      | Description                                |
| :--------------: | :----------------------------------------- |
|      React       | __ |
|   React Router   | __ |
| React SemanticUI | __ |
|     Express      | __ |
|  Express Router  | __ |

<br>

### Client (Front End)

#### Wireframes

- Desktop - login, signup, and home screens
![login, signup, and home screens](wireframe-desktop-1.png)

- Desktop - all leagues, league detail, create league, and edit league screens

![all leagues, league detail, create league, and edit league screens](wireframe-desktop-3.png)

- Desktop - picks and schedules screens

![picks and schedule screens](wireframe-desktop-4.png)


#### Component Tree

Component Tree: https://whimsical.com/47YhdNh9RAvumqwcFegzaN

#### Component Hierarchy

``` structure

src
|__ shared/
      |__ style.css
|__ components/
      |__ Header.jsx
|__ services/

```

#### Component Breakdown

> Use this section to go into further depth regarding your components, including breaking down the components as stateless or stateful, and considering the passing of data between those components.

|  Component   |    Type    | state | props | Description                                                      |
| :----------: | :--------: | :---: | :---: | :--------------------------------------------------------------- |
|    Header    | functional |   n   |   n   | _The header will contain the navigation and logo._               |
|  Navigation  | functional |   n   |   n   | _The navigation will provide a link to each of the pages._       |
|   Gallery    |   class    |   y   |   n   | _The gallery will render the posts using cards in flexbox._      |
| Gallery Card | functional |   n   |   y   | _The cards will render the post info via props._                 |
|    Footer    | functional |   n   |   n   | _The footer will show info about me and a link to my portfolio._ |

#### Time Estimates

> Use this section to estimate the time necessary to build out each of the components you've described above.

| Task                | Priority | Estimated Time | Time Invested | Actual Time |
| ------------------- | :------: | :------------: | :-----------: | :---------: |
| Add Contact Form    |    L     |     3 hrs      |     2 hrs     |    3 hrs    |
| Create CRUD Actions |    H     |     3 hrs      |     1 hrs     |     TBD     |
| TOTAL               |          |     6 hrs      |     3 hrs     |     TBD     |

> _Why is this necessary? Time frames are key to the development cycle. You have limited time to code your app, and your estimates can then be used to evaluate possibilities of your MVP and post-MVP based on time needed. It's best you assume an additional hour for each component, as well as a few hours added to the total time, to play it safe._

<br>

### Server (Back End)

#### ERD Model

> Use this section to display an image of a computer generated ERD model. You can use draw.io, Lucidchart or another ERD tool.

<br>

***

## Post-MVP

> Use this section to document ideas you've had that would be fun (or necessary) for your Post-MVP. This will be helpful when you return to your project after graduation!

***

## Code Showcase

> Use this section to include a brief code snippet of functionality that you are proud of and a brief description.

## Code Issues & Resolutions

> Use this section to list of all major issues encountered and their resolution.
