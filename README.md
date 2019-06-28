# README
This project was bootstrapped with [Create React App](https://github.com/facebook/create-react-app).

## Available Scripts

In order for this to function properly, you need to first clone and download the Rails backend for this app.
The Rails backend can be found here:
https://github.com/jstrombe19/jobtrack-backend

Once you have the backend downloaded, you need to run

### `rails db:create` and
### `rails db:migrate`

to generate the supporting database architecture. From there, run

### `rails s`

to launch the backend. In a separate tab in your CLI of choice, clone and download the frontend from
https://github.com/jstrombe19/jobtrack-frontend

Once you have the frontend downloaded, run

### `npm start`

and then confirm (y) you want it to run on a different port.
Once the server boots, navigate to [http://localhost:3001/login](http://localhost:3001/login) to begin using the app.

If you already have an account, enter your credentials to login. Otherwise, create an account and then
verify your credentials in the login page.

Once you have logged in, you can create a new job opportunity to track by clicking on the plus sign next to 'Job Opportunities' in the navbar on the left side of the page. Fill in all of the fields appropriately, making sure to enter the image address when prompted for the company logo. Submit the form and you will see the opportunity populate in the job list and job details sections.

The job list section (first column) provides a quick summary of each job post, including the company logo, job posting title, company name, and company url. This is intended to expedite your search for a specific job opportunity by abbreviating the information pertaining to each job opportunity you track and by visually disturbing the color scheme by introducing company logos. You can narrow down the display to a single job opportunity by clicking on the desired job opportunity in the job list section, then clicking on the arrow next to 'Applied To' in the navbar. To return to the full list of job opportunities, click on 'Job Opportunities' in the navbar. You can also delete any job opportunity and its associated details by clicking on the 'X' in the top right corner of each job in the job list section.

The job details section displays all of the information contained in each job opportunity. Both the job details and the job list sections will scroll as the list of job opportunities you are tracking continues to expand. They will downsize until they reach the minimum allowable size for each type of component, then actively scroll according to your mouse/trackpad.

Future developments will include a built-in email service, appointment reminders, tasks to complete, a contacts index, and full search/filter functionality.

When you are finished using JobTrack, you may logout by clicking on the opening door to the right of your name at the top right corner of the page. If you are thoroughly dissatisfied with your experience using JobTrack, you may delete your account by clicking on the minus sign to the right of 'Delete My Account' at the bottom of the navbar.

**NOTE: YOU CANNOT RECOVER YOUR ACCOUNT UPON DELETING IT!**
