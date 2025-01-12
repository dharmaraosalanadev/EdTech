SET IDENTITY_INSERT [dbo].[Users] ON 
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PhoneNumber], [EmailConfirmed], [CreatedDate]) VALUES (1, N'Admin', N'admin@gmail.com', N'$2a$11$NulP7XYlUOjMELsrj/me0uO/1OIQiHnMl.DVUk7LgB5SqjyWSas5K', N'9876543210', 0, CAST(N'2021-12-21T11:03:11.457' AS DateTime))
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PhoneNumber], [EmailConfirmed], [CreatedDate]) VALUES (2, N'User', N'user@gmail.com', N'$2a$11$oNn03spA.XrRD8shVW9Z2.72X6ljCU/S6fjOZOTybNVFLtEr6Kb5y', N'9876543210', 0, CAST(N'2021-12-21T11:05:19.160' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
SET IDENTITY_INSERT [dbo].[Roles] ON 
GO
INSERT [dbo].[Roles] ([Id], [Name]) VALUES (1, N'Admin')
GO
INSERT [dbo].[Roles] ([Id], [Name]) VALUES (2, N'User')
GO
SET IDENTITY_INSERT [dbo].[Roles] OFF
GO
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (1, 1)
GO
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (2, 2)
GO

SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Name], [Description]) VALUES (1, N'Programming', N'Programming')
INSERT [dbo].[Categories] ([Id], [Name], [Description]) VALUES (2, N'Cloud', N'Cloud')
INSERT [dbo].[Categories] ([Id], [Name], [Description]) VALUES (3, N'Web Development', N'Web Development')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Mentors] ON 

INSERT [dbo].[Mentors] ([Id], [Name], [Email], [Title], [Biography], [Skills], [ImageUrl], [IsActive]) VALUES (1, N'Bhawna Gunwani', N'bhawna@gmail.com', N'Technical Consulatnt and Trainer', N'A focused and result-oriented professional with over 8 years of experience in technical and corporate training. She has delivered corporate training in India as well as abroad. She has vast corporate training experience in MNC''s like TCS, Infosys, Accenture, Wipro etc. She is passionate about learning new technologies and sharing her experience with professionals. She is an expert in Microsoft Technologies along with React, Angular and Node.', N'C#, JavaScript, Angular', N'/images/bhawna.png', 1)
INSERT [dbo].[Mentors] ([Id], [Name], [Email], [Title], [Biography], [Skills], [ImageUrl], [IsActive]) VALUES (2, N'Shailendra Chauhan', N'pro.shailendra@gmail.com', N'Microsoft MVP, Technical Consulatnt and Trainer', N'Shailendra Chauhan is the Founder and CEO of DotNetTricks which is a brand when it comes to e-Learning. DotNetTricks provides training and consultation over an array of technologies like Cloud, .NET, Angular, React, Node and Mobile Apps development. He has been awarded as Microsoft MVP Five times in a row (2016-2020). He has changed many lives from his writings and unique training programs. He has a number of most sought-after books to his name which has helped job aspirants in cracking tough interviews with ease.', N'C#, Azure, Angular', N'/images/shailendra.png', 1)
SET IDENTITY_INSERT [dbo].[Mentors] OFF
GO
SET IDENTITY_INSERT [dbo].[Courses] ON 

INSERT [dbo].[Courses] ([Id], [Name], [Summary], [Description], [Sequence], [MentorId], [ImageUrl], [Url], [UnitPrice], [CategoryId], [DifficultyType], [CreatedDate], [UpdatedDate], [IsActive], [DemoUrl]) VALUES (1, N'C# For Beginners', N'Learn C# from scratch by doing hands-on labs and building projects. ', N'<p class="text-justify">Learn C# from scratch as a new to programming or new to the .NET ecosystem. Learn programming fundamentals, object-oriented programming and advanced concepts of C# language. Learn to leverage the benefits of C# and .NET ecosystem to build enterprise-grade and cloud-based Desktop applications, Console applications, Cross-platform Mobile apps and Web applications.</p>
<h3>What will you learn</h3>
<ul>
  <li>Introduction to C# : Getting Started</li>
  <li>C# Conditional Statements and Loops</li>
  <li>C# Arrays and Strings</li>
  <li>Object-Oriented Programming in C#</li>
  <li>C# Concepts: Abstract Class, Interface and Partial Class</li>
  <li>C#: Property, Indexer, Attributes and Exception Handling</li>
  <li>C# Concepts: Anonymous Type, Delegates, Events and Lambda</li>
</ul>', CAST(1.00 AS Decimal(18, 2)), 2, N'/images/csharp.png', N'/courses/csharp', CAST(1000.00 AS Decimal(18, 2)), 1, 1, CAST(N'2021-12-12T00:00:00.0000000' AS DateTime2), CAST(N'2021-12-12T00:00:00.0000000' AS DateTime2), 1, N'https://www.youtube.com/embed/t9h5W4NNuDw')
INSERT [dbo].[Courses] ([Id], [Name], [Summary], [Description], [Sequence], [MentorId], [ImageUrl], [Url], [UnitPrice], [CategoryId], [DifficultyType], [CreatedDate], [UpdatedDate], [IsActive], [DemoUrl]) VALUES (2, N'JS For Beginners', N'Learn JavaScript from scratch by doing hands-on labs and building projects.', N'<p class="text-justify">Learn JavaScript from scratch as a new to programming or new to the Node.js ecosystem. Learn programming fundamentals, object-oriented programming and advanced concepts of JavaScript language. Learn to leverage the benefits of JavaScript and JavaScript ecosystem to build enterprise-grade and cloud-based Desktop applications, Console applications, Cross-platform Mobile apps and Web applications.</p>
<h3>What will you learn</h3>
<ul>
  <li>Introduction to JavaScript : Getting Started</li>
  <li>JavaScript Conditional Statements and Loops</li>
  <li>JavaScript Arrays and Strings</li>
  <li>Object-Oriented Programming in JavaScript</li>
  <li>JavaScript Concepts: Abstract Class, Interface and Partial Class</li>
  <li>JavaScript: Property, Indexer, Attributes and Exception Handling</li>
  <li>JavaScript Concepts: Anonymous Type, Delegates, Events and Lambda</li>
</ul>', CAST(2.00 AS Decimal(18, 2)), 1, N'/images/javascript.png', N'/courses/js', CAST(1000.00 AS Decimal(18, 2)), 1, 1, CAST(N'2021-12-12T00:00:00.0000000' AS DateTime2), CAST(N'2021-12-12T00:00:00.0000000' AS DateTime2), 1, N'https://www.youtube.com/embed/M-vFY5Yia-4')
INSERT [dbo].[Courses] ([Id], [Name], [Summary], [Description], [Sequence], [MentorId], [ImageUrl], [Url], [UnitPrice], [CategoryId], [DifficultyType], [CreatedDate], [UpdatedDate], [IsActive], [DemoUrl]) VALUES (3, N'Node.js For Beginners', N'Learn Node.js from scratch by doing hands-on labs and building projects.', N'<p class="text-justify">Node.js is a JavaScript runtime which allows developers to execute JavaScript on server-side and offers the same set of features as provided by .NET and Java to do server operations. Companies like Netflix, PayPal and Uber are using Node.js to deliver fast, scalable and reliable solutions.</p>
<h3>What will you learn</h3>
<ul>
  <li>Introduction to Node.js</li>
  <li>Node.js Fundamentals</li>
  <li>Express.js Fundamentals</li>
  <li>Node.js Advanced Concepts</li>
  <li>Node.js Unit Testing</li>
  <li>REST API Using Express, MongoDB & Design Patterns</li>
</ul>', CAST(3.00 AS Decimal(18, 2)), 2, N'/images/node.png', N'/courses/node', CAST(1000.00 AS Decimal(18, 2)), 1, 1, CAST(N'2021-12-12T00:00:00.0000000' AS DateTime2), CAST(N'2021-12-12T00:00:00.0000000' AS DateTime2), 1, N'https://www.youtube.com/embed/yDd7kZwsBxc')
INSERT [dbo].[Courses] ([Id], [Name], [Summary], [Description], [Sequence], [MentorId], [ImageUrl], [Url], [UnitPrice], [CategoryId], [DifficultyType], [CreatedDate], [UpdatedDate], [IsActive], [DemoUrl]) VALUES (4, N'Angular For Beginners', N'Learn Angular from scratch by doing hands-on labs and building projects.', N'<p class="text-justify">Learn how to build modern, light-weight and robust web application using the Angular 2 to 8. Learn to leverage the component-based architecture to create efficient, well-organized apps using reactive forms, services, pipes, observables and more. Discover how to use HTTP Client in Angular to communicate with REST APIs, debug your code and testing of your Angular application building blocks.</p>
<h3>What will you learn</h3>
<ul>
  <li>Introduction to Angular</li>
  <li>Angular Fundamentals</li>
  <li>Angular Components</li>
  <li>Angular Forms and Validation</li>
  <li>Angular Advanced Concepts</li>
  <li>Angular Unit Testing</li>
  <li>Angular NgRx: Getting Started</li>
</ul>', CAST(4.00 AS Decimal(18, 2)), 2, N'/images/angular.png', N'/courses/angular', CAST(1000.00 AS Decimal(18, 2)), 1, 1, CAST(N'2021-12-12T00:00:00.0000000' AS DateTime2), CAST(N'2021-12-12T00:00:00.0000000' AS DateTime2), 1, N'https://www.youtube.com/embed/1lhUlBvEGvs')
INSERT [dbo].[Courses] ([Id], [Name], [Summary], [Description], [Sequence], [MentorId], [ImageUrl], [Url], [UnitPrice], [CategoryId], [DifficultyType], [CreatedDate], [UpdatedDate], [IsActive], [DemoUrl]) VALUES (5, N'React For Beginners', N'Learn React from scratch by doing hands-on labs and building projects.', N'<p class="text-justify">React is a powerful JavaScript library to create modern, dynamic, data-driven and beautiful applications. Get a solid foundation in React and learn how to build real applications by combining React with its ecosystems. Learn to leverage the component-based architecture to create efficient applications and how to integrate it with other technologies like Web API and Node.js.</p>
<h3>What will you learn</h3>
<ul>
  <li>Introduction to React</li>
  <li>React Fundamentals</li>
  <li>React Routing</li>
  <li>React Advanced Concepts</li>
  <li>React Forms and Validations</li>
  <li>React Unit Testing</li>
  <li>React State Management Using Redux</li>
</ul>', CAST(5.00 AS Decimal(18, 2)), 1, N'/images/react.png', N'/courses/react', CAST(1000.00 AS Decimal(18, 2)), 1, 1, CAST(N'2021-12-12T00:00:00.0000000' AS DateTime2), CAST(N'2021-12-12T00:00:00.0000000' AS DateTime2), 1, N'https://www.youtube.com/embed/fmHYje9B4fE')
INSERT [dbo].[Courses] ([Id], [Name], [Summary], [Description], [Sequence], [MentorId], [ImageUrl], [Url], [UnitPrice], [CategoryId], [DifficultyType], [CreatedDate], [UpdatedDate], [IsActive], [DemoUrl]) VALUES (6, N'Azure For Beginners', N'Learn Azure from scratch by doing hands-on labs and building projects.', N'<p class="text-justify">Learn to be proficient in developing cloud-based applications by using Azure tools and services, including storage, security, compute, and database. Gain hands-on experience in building scalable solutions through Microsoft Azure offerings and become an Azure Developer.</p>
<h3>What will you learn</h3>
<ul>
  <li>Introduction to Microsoft Azure</li>
  <li>Creating and Managing Virtual Machines</li>
  <li>Implementing and Managing Azure Storage</li>
  <li>Understanding and Managing Azure SQL Database</li>
  <li>Creating and Managing Azure Web App</li>
  <li>Understanding and Managing Azure CosmosDB</li>
  <li>Serverless Computing with Azure Functions</li>
  <li>Understanding & Managing Azure Active Directory</li>
</ul>', CAST(6.00 AS Decimal(18, 2)), 2, N'/images/azure.png', N'/courses/azure', CAST(1000.00 AS Decimal(18, 2)), 1, 1, CAST(N'2021-12-12T00:00:00.0000000' AS DateTime2), CAST(N'2021-12-12T00:00:00.0000000' AS DateTime2), 1, N'https://www.youtube.com/embed/ClaFYFAWT4o')
SET IDENTITY_INSERT [dbo].[Courses] OFF
GO
SET IDENTITY_INSERT [dbo].[CourseTopics] ON 

INSERT [dbo].[CourseTopics] ([Id], [CourseId], [TopicName], [IsActive], [Sequence]) VALUES (1, 1, N'Getting Started', 1, CAST(1.00 AS Decimal(18, 2)))
INSERT [dbo].[CourseTopics] ([Id], [CourseId], [TopicName], [IsActive], [Sequence]) VALUES (2, 1, N'C# Basics', 1, CAST(2.00 AS Decimal(18, 2)))
INSERT [dbo].[CourseTopics] ([Id], [CourseId], [TopicName], [IsActive], [Sequence]) VALUES (3, 1, N'Conditional Statements', 1, CAST(3.00 AS Decimal(18, 2)))
INSERT [dbo].[CourseTopics] ([Id], [CourseId], [TopicName], [IsActive], [Sequence]) VALUES (4, 1, N'Loops', 1, CAST(4.00 AS Decimal(18, 2)))
INSERT [dbo].[CourseTopics] ([Id], [CourseId], [TopicName], [IsActive], [Sequence]) VALUES (5, 1, N'Strings and Arrays', 1, CAST(5.00 AS Decimal(18, 2)))
INSERT [dbo].[CourseTopics] ([Id], [CourseId], [TopicName], [IsActive], [Sequence]) VALUES (6, 4, N'Getting Started', 1, CAST(1.00 AS Decimal(18, 2)))
INSERT [dbo].[CourseTopics] ([Id], [CourseId], [TopicName], [IsActive], [Sequence]) VALUES (7, 4, N'Angular Basics', 1, CAST(2.00 AS Decimal(18, 2)))
INSERT [dbo].[CourseTopics] ([Id], [CourseId], [TopicName], [IsActive], [Sequence]) VALUES (8, 4, N'Angular Database', 1, CAST(3.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[CourseTopics] OFF
GO
SET IDENTITY_INSERT [dbo].[CourseLessons] ON 

INSERT [dbo].[CourseLessons] ([Id], [LessonName], [ContentPath], [IsPreview], [Duration], [Sequence], [IsActive], [CourseTopicId], [CreatedDate], [UpdatedDate], [VideoPath]) VALUES (1, N'Introduction to C#', NULL, 1, N'00:04:54', CAST(1.00 AS Decimal(18, 2)), 1, 1, CAST(N'2021-12-12T00:00:00.0000000' AS DateTime2), CAST(N'2021-12-12T00:00:00.0000000' AS DateTime2), N'https://www.youtube.com/embed/3D8aCsIPkQ')
INSERT [dbo].[CourseLessons] ([Id], [LessonName], [ContentPath], [IsPreview], [Duration], [Sequence], [IsActive], [CourseTopicId], [CreatedDate], [UpdatedDate], [VideoPath]) VALUES (2, N'C# Version History', NULL, 1, N'00:02:38', CAST(2.00 AS Decimal(18, 2)), 1, 1, CAST(N'2021-12-12T00:00:00.0000000' AS DateTime2), CAST(N'2021-12-12T00:00:00.0000000' AS DateTime2), N'https://www.youtube.com/embed/uTU_UU6lGWM')
INSERT [dbo].[CourseLessons] ([Id], [LessonName], [ContentPath], [IsPreview], [Duration], [Sequence], [IsActive], [CourseTopicId], [CreatedDate], [UpdatedDate], [VideoPath]) VALUES (3, N'C# Code Execution', NULL, 1, N'00:10:04', CAST(2.00 AS Decimal(18, 2)), 1, 2, CAST(N'2021-12-12T00:00:00.0000000' AS DateTime2), CAST(N'2021-12-12T00:00:00.0000000' AS DateTime2), N'https://www.youtube.com/embed/GezZkd4u51M')
INSERT [dbo].[CourseLessons] ([Id], [LessonName], [ContentPath], [IsPreview], [Duration], [Sequence], [IsActive], [CourseTopicId], [CreatedDate], [UpdatedDate], [VideoPath]) VALUES (4, N'Running A C# Program', NULL, 1, N'00:08:20', CAST(2.00 AS Decimal(18, 2)), 1, 2, CAST(N'2021-12-12T00:00:00.0000000' AS DateTime2), CAST(N'2021-12-12T00:00:00.0000000' AS DateTime2), N'https://www.youtube.com/embed/CgThl6Wn9sE')
INSERT [dbo].[CourseLessons] ([Id], [LessonName], [ContentPath], [IsPreview], [Duration], [Sequence], [IsActive], [CourseTopicId], [CreatedDate], [UpdatedDate], [VideoPath]) VALUES (5, N'If Statement', NULL, 1, N'00:03:14', CAST(2.00 AS Decimal(18, 2)), 1, 3, CAST(N'2021-12-12T00:00:00.0000000' AS DateTime2), CAST(N'2021-12-12T00:00:00.0000000' AS DateTime2), N'https://www.youtube.com/embed/uMMKiSP6NSA')
INSERT [dbo].[CourseLessons] ([Id], [LessonName], [ContentPath], [IsPreview], [Duration], [Sequence], [IsActive], [CourseTopicId], [CreatedDate], [UpdatedDate], [VideoPath]) VALUES (6, N'Switch Statement', NULL, 1, N'00:05:24', CAST(2.00 AS Decimal(18, 2)), 1, 3, CAST(N'2021-12-12T00:00:00.0000000' AS DateTime2), CAST(N'2021-12-12T00:00:00.0000000' AS DateTime2), N'https://www.youtube.com/embed/6Gir4UUTCpk')
INSERT [dbo].[CourseLessons] ([Id], [LessonName], [ContentPath], [IsPreview], [Duration], [Sequence], [IsActive], [CourseTopicId], [CreatedDate], [UpdatedDate], [VideoPath]) VALUES (7, N'While Loop', NULL, 1, N'00:05:19', CAST(2.00 AS Decimal(18, 2)), 1, 4, CAST(N'2021-12-12T00:00:00.0000000' AS DateTime2), CAST(N'2021-12-12T00:00:00.0000000' AS DateTime2), N'https://www.youtube.com/embed/jgDyCGjJWMw')
INSERT [dbo].[CourseLessons] ([Id], [LessonName], [ContentPath], [IsPreview], [Duration], [Sequence], [IsActive], [CourseTopicId], [CreatedDate], [UpdatedDate], [VideoPath]) VALUES (8, N'For Loop', NULL, 1, N'00:05:20', CAST(2.00 AS Decimal(18, 2)), 1, 4, CAST(N'2021-12-12T00:00:00.0000000' AS DateTime2), CAST(N'2021-12-12T00:00:00.0000000' AS DateTime2), N'https://www.youtube.com/embed/yxxekR-S8uw')
INSERT [dbo].[CourseLessons] ([Id], [LessonName], [ContentPath], [IsPreview], [Duration], [Sequence], [IsActive], [CourseTopicId], [CreatedDate], [UpdatedDate], [VideoPath]) VALUES (9, N'Arrays', NULL, 1, N'00:02:32', CAST(2.00 AS Decimal(18, 2)), 1, 5, CAST(N'2021-12-12T00:00:00.0000000' AS DateTime2), CAST(N'2021-12-12T00:00:00.0000000' AS DateTime2), N'https://www.youtube.com/embed/_b1YWKtdxoQ')
INSERT [dbo].[CourseLessons] ([Id], [LessonName], [ContentPath], [IsPreview], [Duration], [Sequence], [IsActive], [CourseTopicId], [CreatedDate], [UpdatedDate], [VideoPath]) VALUES (10, N'Strings', NULL, 1, N'00:05:07', CAST(2.00 AS Decimal(18, 2)), 1, 5, CAST(N'2021-12-12T00:00:00.0000000' AS DateTime2), CAST(N'2021-12-12T00:00:00.0000000' AS DateTime2), N'https://www.youtube.com/embed/6EVDy8h8ILs')
INSERT [dbo].[CourseLessons] ([Id], [LessonName], [ContentPath], [IsPreview], [Duration], [Sequence], [IsActive], [CourseTopicId], [CreatedDate], [UpdatedDate], [VideoPath]) VALUES (11, N'Angular Introduction', NULL, 1, N'00:01:50', CAST(1.00 AS Decimal(18, 2)), 1, 6, CAST(N'2021-12-12T00:00:00.0000000' AS DateTime2), CAST(N'2021-12-12T00:00:00.0000000' AS DateTime2), N'https://www.youtube.com/embed/JzYiIOap3mM')
INSERT [dbo].[CourseLessons] ([Id], [LessonName], [ContentPath], [IsPreview], [Duration], [Sequence], [IsActive], [CourseTopicId], [CreatedDate], [UpdatedDate], [VideoPath]) VALUES (12, N'Angular History', NULL, 1, N'00:01:09', CAST(2.00 AS Decimal(18, 2)), 1, 6, CAST(N'2021-12-12T00:00:00.0000000' AS DateTime2), CAST(N'2021-12-12T00:00:00.0000000' AS DateTime2), N'https://www.youtube.com/embed/WILr49loJDk')
INSERT [dbo].[CourseLessons] ([Id], [LessonName], [ContentPath], [IsPreview], [Duration], [Sequence], [IsActive], [CourseTopicId], [CreatedDate], [UpdatedDate], [VideoPath]) VALUES (13, N'Angular Modules', NULL, 1, N'00:12:21', CAST(1.00 AS Decimal(18, 2)), 1, 7, CAST(N'2021-12-12T00:00:00.0000000' AS DateTime2), CAST(N'2021-12-12T00:00:00.0000000' AS DateTime2), N'https://www.youtube.com/embed/uLDULpM3gt8')
INSERT [dbo].[CourseLessons] ([Id], [LessonName], [ContentPath], [IsPreview], [Duration], [Sequence], [IsActive], [CourseTopicId], [CreatedDate], [UpdatedDate], [VideoPath]) VALUES (14, N'Angular with VS and CLI', NULL, 1, N'00:09:43', CAST(2.00 AS Decimal(18, 2)), 1, 7, CAST(N'2021-12-12T00:00:00.0000000' AS DateTime2), CAST(N'2021-12-12T00:00:00.0000000' AS DateTime2), N'https://www.youtube.com/embed/vVi6DN77Hik')
INSERT [dbo].[CourseLessons] ([Id], [LessonName], [ContentPath], [IsPreview], [Duration], [Sequence], [IsActive], [CourseTopicId], [CreatedDate], [UpdatedDate], [VideoPath]) VALUES (15, N'Angular with MVC', NULL, 1, N'01:47:57', CAST(1.00 AS Decimal(18, 2)), 1, 8, CAST(N'2021-12-12T00:00:00.0000000' AS DateTime2), CAST(N'2021-12-12T00:00:00.0000000' AS DateTime2), N'https://www.youtube.com/embed/-2tpXcor6wU')
SET IDENTITY_INSERT [dbo].[CourseLessons] OFF
GO
