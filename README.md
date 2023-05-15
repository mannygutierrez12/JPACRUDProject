# TVShow App

## Overview

### Problem:

It is often challenging to remember the TV shows recommended by friends and family. Despite receiving great suggestions, it is common to forget about them, making it difficult to recall or recommend shows to others.

### Solution:

To address this issue, an easy-to-use application has been developed that allows users to share their favorite TV shows with friends and family. Users can view a list of favorite shows, receive recommendations, and contribute to the database by adding shows they enjoy. The application incorporates a database to store information about the shows, including their names, categories, streaming platforms, show lengths, and number of seasons.

## Technologies

- Java
- Spring Boot
- CSS
- HTML5
- Git
- Zoom
- CodePen
- Stack Overflow
- JUNIT Testing

## How to Improve this Project

There are several ways to improve this project:

1. **User Experience (UX):** Enhance the user interface to create a more visually appealing and user-friendly experience. Consider using frameworks like Bootstrap to design responsive and mobile-friendly layouts. 

2. **User Authentication and Authorization:** Implementing a secure user authentication system is crucial to ensure that only authorized users can access the application. For example, not all users should have the ability to delete or update TV shows. To address this, I attempted to create a do-while loop that compares the username and password, and then redirects the user to the delete or update JSPs. Although it might not be the most secure approach, I believed it would be a good idea. Unfortunately, I encountered difficulties in making the redirects work within the JSPs. Due to time constraints, I decided not to take the risk and create a method within the controllers.

3. **Notifications and Reminders:** Add features to send notifications or reminders to users.

4. **Sessions:** By implementing sessions, certain fields can be automatically generated. For example, the "Recommended By" field could be auto-completed by retrieving the username from the active session. This would provide a seamless user experience and eliminate the need for users to manually input their own usernames.

5. **Search and Filtering:** Implement search and filtering functionalities to help users find specific shows. I tried to incorporate the find by keyword method developed 2 weeks ago, but it would be innneficient due to the lack of descriptions. 

6. **Cross-platform** Another way to improve this project is by making it mobile-friendly. Since most of my friends are smartphone users, it would be more effective if they could log into the app directly from their mobile devices instead of typing a URL in a browser. I am aware that iPhones offer the option to save a URL as an app icon, but I'm not sure if other mobile devices provide the same feature.
