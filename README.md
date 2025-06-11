# ThinkTank_Innovation-Idea-Submission-App
ThinkTank is an innovation-driven platform that enables users to submit, manage, and discuss ideas collaboratively. It allows users to share new concepts, receive feedback, and track idea progress in an organized manner.
## Team Members
1. Eden Zewdu - ID NO: UGR/9956/15
2. Blen Nigussie - ID NO: UGR/3480/15
3. Derartu Nigatu - ID NO: UGR/5597/15
4. Eyob Fikre - ID NO: UGR/9963/15.
5. Hasset Dejene - ID NO: UGR/7979/15
## Features

- 📝 Idea Management (CRUD)  
  Users can submit new ideas, update existing ones, and delete them if necessary. Ideas are stored in an organized manner, allowing users to review their submissions and see others' ideas as well.

- 💬 Feedback and Commenting (CRUD)  
  Reviewers and users can leave comments, suggest improvements, or provide approval/disapproval. This feedback loop helps to refine ideas and encourages collaboration.

- 🔐 Authentication & Authorization  
  Role-based authentication ensures that different users have appropriate access to the platform:  
  - Admins: Can manage, edit, and delete ideas and feedback.  
  - Reviewers: Can leave feedback and comments on ideas.  
  - Users: Can submit ideas and view feedback on their submissions.

- ⚡️ REST API  
  The backend is built using NestJS/Express, providing a RESTful API to handle requests related to ideas, feedback, and user authentication. The API is fully functional locally, and all data is stored in a local database.

- 🛠 Unit and Integration Testing  
  The project includes unit tests to verify individual functionalities (such as idea submission) and integration tests to ensure that different components (e.g., ideas, feedback, user authentication) interact smoothly.
