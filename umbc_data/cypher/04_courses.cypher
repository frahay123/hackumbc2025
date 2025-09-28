
CREATE (c:Course {
    id: "CSRR 100",
    name: "Principles of Theory of Computation",
    department: "Computer Science",
    credits: 3,
    level: 100,
    avgDifficulty: 4,
    avgTimeCommitment: 6,
    termAvailability: ["Fall", "Spring", "Summer"],
    instructionModes: ["In-person"],
    tags: ["Computer Science", "Level-1", "Theory"], visualLearnerSuccess: 0.63, auditoryLearnerSuccess: 0.95, kinestheticLearnerSuccess: 0.83, readingLearnerSuccess: 0.79
});

CREATE (c:Course {
    id: "CSLL 100",
    name: "Principles of Data Science",
    department: "Computer Science",
    credits: 2,
    level: 100,
    avgDifficulty: 3,
    avgTimeCommitment: 6,
    termAvailability: ["Fall", "Spring", "Summer"],
    instructionModes: ["In-person", "Online"],
    tags: ["Computer Science", "Level-1", "Data", "Data Science"], visualLearnerSuccess: 0.9, auditoryLearnerSuccess: 0.67, kinestheticLearnerSuccess: 0.86, readingLearnerSuccess: 0.63
});

CREATE (c:Course {
    id: "CSTT 100",
    name: "Fundamentals of DevOps",
    department: "Computer Science",
    credits: 3,
    level: 100,
    avgDifficulty: 1,
    avgTimeCommitment: 4,
    termAvailability: ["Fall", "Spring"],
    instructionModes: ["In-person", "Online", "Hybrid"],
    tags: ["Computer Science", "Level-1"], visualLearnerSuccess: 0.78, auditoryLearnerSuccess: 0.71, kinestheticLearnerSuccess: 0.81, readingLearnerSuccess: 0.99
});

CREATE (c:Course {
    id: "CSQQ 100",
    name: "Introduction to Artificial Intelligence",
    department: "Computer Science",
    credits: 3,
    level: 100,
    avgDifficulty: 2,
    avgTimeCommitment: 5,
    termAvailability: ["Fall", "Spring"],
    instructionModes: ["In-person", "Online", "Hybrid"],
    tags: ["Computer Science", "Level-1", "Intro"], visualLearnerSuccess: 0.78, auditoryLearnerSuccess: 0.98, kinestheticLearnerSuccess: 0.63, readingLearnerSuccess: 0.79
});

CREATE (c:Course {
    id: "CSOO 300",
    name: "Theory of Computation Analysis",
    department: "Computer Science",
    credits: 2,
    level: 300,
    avgDifficulty: 2,
    avgTimeCommitment: 7,
    termAvailability: ["Fall", "Spring"],
    instructionModes: ["In-person", "Online", "Hybrid"],
    tags: ["Computer Science", "Level-3", "Theory", "Analysis"], visualLearnerSuccess: 0.8, auditoryLearnerSuccess: 0.8600000000000001, kinestheticLearnerSuccess: 0.81, readingLearnerSuccess: 0.66
});

CREATE (c:Course {
    id: "CSBB 100",
    name: "Principles of Algorithms",
    department: "Computer Science",
    credits: 3,
    level: 100,
    avgDifficulty: 3,
    avgTimeCommitment: 5,
    termAvailability: ["Fall", "Spring"],
    instructionModes: ["In-person", "Online"],
    tags: ["Computer Science", "Level-1"], visualLearnerSuccess: 0.92, auditoryLearnerSuccess: 0.69, kinestheticLearnerSuccess: 0.86, readingLearnerSuccess: 0.74
});

CREATE (c:Course {
    id: "CSYY 300",
    name: "Cloud Computing Theory",
    department: "Computer Science",
    credits: 3,
    level: 300,
    avgDifficulty: 3,
    avgTimeCommitment: 7,
    termAvailability: ["Fall", "Spring", "Summer"],
    instructionModes: ["In-person", "Online", "Hybrid"],
    tags: ["Computer Science", "Level-3", "Theory", "Cloud"], visualLearnerSuccess: 0.72, auditoryLearnerSuccess: 1.0, kinestheticLearnerSuccess: 0.88, readingLearnerSuccess: 0.8
});

CREATE (c:Course {
    id: "CSAA 100",
    name: "Fundamentals of Computer Architecture",
    department: "Computer Science",
    credits: 2,
    level: 100,
    avgDifficulty: 1,
    avgTimeCommitment: 3,
    termAvailability: ["Fall", "Spring"],
    instructionModes: ["In-person", "Online", "Hybrid"],
    tags: ["Computer Science", "Level-1"], visualLearnerSuccess: 0.8, auditoryLearnerSuccess: 0.68, kinestheticLearnerSuccess: 0.89, readingLearnerSuccess: 0.66
});

CREATE (c:Course {
    id: "CSVV 400",
    name: "Topics in Computer Graphics",
    department: "Computer Science",
    credits: 1,
    level: 400,
    avgDifficulty: 3,
    avgTimeCommitment: 9,
    termAvailability: ["Fall", "Spring"],
    instructionModes: ["In-person", "Online"],
    tags: ["Computer Science", "Level-4"], visualLearnerSuccess: 1.0, auditoryLearnerSuccess: 0.93, kinestheticLearnerSuccess: 0.69, readingLearnerSuccess: 0.72
});

CREATE (c:Course {
    id: "CSFF 300",
    name: "Introduction to Programming I",
    department: "Computer Science",
    credits: 3,
    level: 300,
    avgDifficulty: 3,
    avgTimeCommitment: 7,
    termAvailability: ["Fall", "Spring", "Summer"],
    instructionModes: ["In-person", "Hybrid"],
    tags: ["Computer Science", "Level-3", "Intro", "Programming"], visualLearnerSuccess: 0.68, auditoryLearnerSuccess: 0.98, kinestheticLearnerSuccess: 0.74, readingLearnerSuccess: 0.78
});

CREATE (c:Course {
    id: "CSCC 200",
    name: "Quantum Computing",
    department: "Computer Science",
    credits: 3,
    level: 200,
    avgDifficulty: 5,
    avgTimeCommitment: 8,
    termAvailability: ["Fall", "Spring", "Summer"],
    instructionModes: ["In-person", "Online", "Hybrid"],
    tags: ["Computer Science", "Level-2"], visualLearnerSuccess: 0.64, auditoryLearnerSuccess: 0.67, kinestheticLearnerSuccess: 0.62, readingLearnerSuccess: 0.92
});

CREATE (c:Course {
    id: "CSPP 100",
    name: "Introduction to Computer Graphics",
    department: "Computer Science",
    credits: 3,
    level: 100,
    avgDifficulty: 3,
    avgTimeCommitment: 7,
    termAvailability: ["Fall", "Spring"],
    instructionModes: ["In-person", "Online"],
    tags: ["Computer Science", "Level-1", "Intro"], visualLearnerSuccess: 0.8500000000000001, auditoryLearnerSuccess: 0.64, kinestheticLearnerSuccess: 0.79, readingLearnerSuccess: 0.93
});

CREATE (c:Course {
    id: "CSRR 300",
    name: "Edge Computing Applications",
    department: "Computer Science",
    credits: 3,
    level: 300,
    avgDifficulty: 2,
    avgTimeCommitment: 7,
    termAvailability: ["Fall", "Spring"],
    instructionModes: ["In-person"],
    tags: ["Computer Science", "Level-3", "Applications"], visualLearnerSuccess: 0.89, auditoryLearnerSuccess: 0.7, kinestheticLearnerSuccess: 0.83, readingLearnerSuccess: 0.62
});

CREATE (c:Course {
    id: "CSFF 300-7",
    name: "IoT Development Theory",
    department: "Computer Science",
    credits: 3,
    level: 300,
    avgDifficulty: 4,
    avgTimeCommitment: 10,
    termAvailability: ["Fall", "Spring"],
    instructionModes: ["In-person"],
    tags: ["Computer Science", "Level-3", "Theory", "IoT"], visualLearnerSuccess: 0.88, auditoryLearnerSuccess: 1.0, kinestheticLearnerSuccess: 0.74, readingLearnerSuccess: 0.68
});

CREATE (c:Course {
    id: "CSQQ 300",
    name: "Game Development Analysis",
    department: "Computer Science",
    credits: 3,
    level: 300,
    avgDifficulty: 2,
    avgTimeCommitment: 7,
    termAvailability: ["Fall", "Spring"],
    instructionModes: ["In-person", "Online", "Hybrid"],
    tags: ["Computer Science", "Level-3", "Analysis", "Game"], visualLearnerSuccess: 0.69, auditoryLearnerSuccess: 0.84, kinestheticLearnerSuccess: 0.65, readingLearnerSuccess: 0.97
});

CREATE (c:Course {
    id: "CSOO 200",
    name: "Computer Vision",
    department: "Computer Science",
    credits: 3,
    level: 200,
    avgDifficulty: 2,
    avgTimeCommitment: 6,
    termAvailability: ["Fall", "Spring"],
    instructionModes: ["In-person"],
    tags: ["Computer Science", "Level-2", "Vision"], visualLearnerSuccess: 0.85, auditoryLearnerSuccess: 0.92, kinestheticLearnerSuccess: 0.91, readingLearnerSuccess: 0.69
});

CREATE (c:Course {
    id: "CSNN 100",
    name: "Fundamentals of Algorithms",
    department: "Computer Science",
    credits: 3,
    level: 100,
    avgDifficulty: 1,
    avgTimeCommitment: 4,
    termAvailability: ["Fall", "Spring"],
    instructionModes: ["In-person", "Hybrid"],
    tags: ["Computer Science", "Level-1"], visualLearnerSuccess: 0.69, auditoryLearnerSuccess: 0.76, kinestheticLearnerSuccess: 0.72, readingLearnerSuccess: 0.88
});

CREATE (c:Course {
    id: "CSGG 200",
    name: "Algorithms",
    department: "Computer Science",
    credits: 3,
    level: 200,
    avgDifficulty: 2,
    avgTimeCommitment: 6,
    termAvailability: ["Fall", "Spring"],
    instructionModes: ["In-person"],
    tags: ["Computer Science", "Level-2"], visualLearnerSuccess: 0.69, auditoryLearnerSuccess: 0.7, kinestheticLearnerSuccess: 0.63, readingLearnerSuccess: 0.84
});

CREATE (c:Course {
    id: "CSHH 100",
    name: "Principles of Theory of Computation",
    department: "Computer Science",
    credits: 3,
    level: 100,
    avgDifficulty: 4,
    avgTimeCommitment: 8,
    termAvailability: ["Fall", "Spring", "Summer"],
    instructionModes: ["In-person", "Online", "Hybrid"],
    tags: ["Computer Science", "Level-1", "Theory"], visualLearnerSuccess: 0.83, auditoryLearnerSuccess: 1.0, kinestheticLearnerSuccess: 0.89, readingLearnerSuccess: 0.96
});

CREATE (c:Course {
    id: "CSVV 100",
    name: "Principles of IoT Development",
    department: "Computer Science",
    credits: 4,
    level: 100,
    avgDifficulty: 3,
    avgTimeCommitment: 6,
    termAvailability: ["Fall", "Spring"],
    instructionModes: ["In-person", "Hybrid"],
    tags: ["Computer Science", "Level-1", "IoT"], visualLearnerSuccess: 0.83, auditoryLearnerSuccess: 1.0, kinestheticLearnerSuccess: 0.8, readingLearnerSuccess: 0.83
});

CREATE (c:Course {
    id: "CSKK 400",
    name: "Special Topics in Computer Architecture",
    department: "Computer Science",
    credits: 2,
    level: 400,
    avgDifficulty: 2,
    avgTimeCommitment: 7,
    termAvailability: ["Fall", "Spring", "Summer"],
    instructionModes: ["In-person"],
    tags: ["Computer Science", "Level-4"], visualLearnerSuccess: 0.72, auditoryLearnerSuccess: 0.97, kinestheticLearnerSuccess: 0.65, readingLearnerSuccess: 0.64
});

CREATE (c:Course {
    id: "CSWW 200",
    name: "Data Structures",
    department: "Computer Science",
    credits: 3,
    level: 200,
    avgDifficulty: 3,
    avgTimeCommitment: 6,
    termAvailability: ["Fall", "Spring", "Summer"],
    instructionModes: ["In-person", "Online"],
    tags: ["Computer Science", "Level-2", "Data"], visualLearnerSuccess: 0.93, auditoryLearnerSuccess: 0.62, kinestheticLearnerSuccess: 0.84, readingLearnerSuccess: 0.92
});

CREATE (c:Course {
    id: "CSDD 100",
    name: "Introduction to Cybersecurity",
    department: "Computer Science",
    credits: 3,
    level: 100,
    avgDifficulty: 4,
    avgTimeCommitment: 8,
    termAvailability: ["Fall", "Spring"],
    instructionModes: ["In-person", "Online"],
    tags: ["Computer Science", "Level-1", "Intro", "Security"], visualLearnerSuccess: 0.77, auditoryLearnerSuccess: 0.74, kinestheticLearnerSuccess: 0.92, readingLearnerSuccess: 0.99
});

CREATE (c:Course {
    id: "CSDD 100-1",
    name: "Principles of Introduction to Programming",
    department: "Computer Science",
    credits: 3,
    level: 100,
    avgDifficulty: 4,
    avgTimeCommitment: 7,
    termAvailability: ["Fall", "Spring", "Summer"],
    instructionModes: ["In-person"],
    tags: ["Computer Science", "Level-1", "Intro", "Programming"], visualLearnerSuccess: 0.63, auditoryLearnerSuccess: 0.87, kinestheticLearnerSuccess: 0.75, readingLearnerSuccess: 0.85
});

CREATE (c:Course {
    id: "CSBB 100-9",
    name: "Fundamentals of Database Systems",
    department: "Computer Science",
    credits: 3,
    level: 100,
    avgDifficulty: 2,
    avgTimeCommitment: 4,
    termAvailability: ["Fall", "Spring"],
    instructionModes: ["In-person"],
    tags: ["Computer Science", "Level-1", "Data", "Systems"], visualLearnerSuccess: 0.83, auditoryLearnerSuccess: 0.66, kinestheticLearnerSuccess: 0.75, readingLearnerSuccess: 0.97
});

CREATE (c:Course {
    id: "CSSS 200",
    name: "Operating Systems",
    department: "Computer Science",
    credits: 3,
    level: 200,
    avgDifficulty: 4,
    avgTimeCommitment: 9,
    termAvailability: ["Fall", "Spring", "Summer"],
    instructionModes: ["In-person", "Hybrid"],
    tags: ["Computer Science", "Level-2", "Systems"], visualLearnerSuccess: 0.95, auditoryLearnerSuccess: 0.71, kinestheticLearnerSuccess: 0.8, readingLearnerSuccess: 0.76
});

CREATE (c:Course {
    id: "CSWW 300",
    name: "Theory of Computation I",
    department: "Computer Science",
    credits: 3,
    level: 300,
    avgDifficulty: 3,
    avgTimeCommitment: 8,
    termAvailability: ["Fall", "Spring", "Summer"],
    instructionModes: ["In-person", "Online", "Hybrid"],
    tags: ["Computer Science", "Level-3", "Theory"], visualLearnerSuccess: 0.96, auditoryLearnerSuccess: 1.0, kinestheticLearnerSuccess: 0.82, readingLearnerSuccess: 0.69
});

CREATE (c:Course {
    id: "CSYY 200",
    name: "Cybersecurity",
    department: "Computer Science",
    credits: 2,
    level: 200,
    avgDifficulty: 1,
    avgTimeCommitment: 6,
    termAvailability: ["Fall", "Spring"],
    instructionModes: ["In-person"],
    tags: ["Computer Science", "Level-2", "Security"], visualLearnerSuccess: 0.77, auditoryLearnerSuccess: 0.89, kinestheticLearnerSuccess: 0.69, readingLearnerSuccess: 0.92
});

CREATE (c:Course {
    id: "CSQQ 200",
    name: "Compiler Design",
    department: "Computer Science",
    credits: 3,
    level: 200,
    avgDifficulty: 1,
    avgTimeCommitment: 5,
    termAvailability: ["Fall", "Spring"],
    instructionModes: ["In-person", "Online", "Hybrid"],
    tags: ["Computer Science", "Level-2", "Design", "Compiler"], visualLearnerSuccess: 1.0, auditoryLearnerSuccess: 0.64, kinestheticLearnerSuccess: 0.84, readingLearnerSuccess: 0.98
});

CREATE (c:Course {
    id: "CSXX 400",
    name: "Topics in Theory of Computation",
    department: "Computer Science",
    credits: 3,
    level: 400,
    avgDifficulty: 2,
    avgTimeCommitment: 8,
    termAvailability: ["Fall", "Spring", "Summer"],
    instructionModes: ["In-person"],
    tags: ["Computer Science", "Level-4", "Theory"], visualLearnerSuccess: 0.85, auditoryLearnerSuccess: 1.0, kinestheticLearnerSuccess: 0.77, readingLearnerSuccess: 0.98
});

CREATE (c:Course {
    id: "CSZZ 200",
    name: "Software Engineering",
    department: "Computer Science",
    credits: 3,
    level: 200,
    avgDifficulty: 3,
    avgTimeCommitment: 6,
    termAvailability: ["Fall", "Spring", "Summer"],
    instructionModes: ["In-person"],
    tags: ["Computer Science", "Level-2"], visualLearnerSuccess: 0.61, auditoryLearnerSuccess: 0.99, kinestheticLearnerSuccess: 0.81, readingLearnerSuccess: 0.63
});

CREATE (c:Course {
    id: "CSAA 200",
    name: "Software Testing",
    department: "Computer Science",
    credits: 3,
    level: 200,
    avgDifficulty: 1,
    avgTimeCommitment: 4,
    termAvailability: ["Fall", "Spring"],
    instructionModes: ["In-person", "Online"],
    tags: ["Computer Science", "Level-2"], visualLearnerSuccess: 0.8, auditoryLearnerSuccess: 0.97, kinestheticLearnerSuccess: 0.76, readingLearnerSuccess: 0.82
});

CREATE (c:Course {
    id: "CSXX 300",
    name: "Natural Language Processing Analysis",
    department: "Computer Science",
    credits: 1,
    level: 300,
    avgDifficulty: 3,
    avgTimeCommitment: 9,
    termAvailability: ["Fall", "Spring"],
    instructionModes: ["In-person", "Online"],
    tags: ["Computer Science", "Level-3", "Analysis"], visualLearnerSuccess: 0.72, auditoryLearnerSuccess: 0.65, kinestheticLearnerSuccess: 0.81, readingLearnerSuccess: 0.66
});

CREATE (c:Course {
    id: "CSRR 200",
    name: "DevOps",
    department: "Computer Science",
    credits: 2,
    level: 200,
    avgDifficulty: 3,
    avgTimeCommitment: 6,
    termAvailability: ["Fall", "Spring"],
    instructionModes: ["In-person", "Online", "Hybrid"],
    tags: ["Computer Science", "Level-2"], visualLearnerSuccess: 0.91, auditoryLearnerSuccess: 0.68, kinestheticLearnerSuccess: 0.86, readingLearnerSuccess: 0.69
});

CREATE (c:Course {
    id: "CSFF 300-3",
    name: "Theory of Computation Methods",
    department: "Computer Science",
    credits: 3,
    level: 300,
    avgDifficulty: 2,
    avgTimeCommitment: 6,
    termAvailability: ["Fall", "Spring", "Summer"],
    instructionModes: ["In-person", "Online", "Hybrid"],
    tags: ["Computer Science", "Level-3", "Theory", "Methods"], visualLearnerSuccess: 0.9, auditoryLearnerSuccess: 0.8600000000000001, kinestheticLearnerSuccess: 0.95, readingLearnerSuccess: 0.77
});

CREATE (c:Course {
    id: "CSNN 200",
    name: "Cybersecurity",
    department: "Computer Science",
    credits: 2,
    level: 200,
    avgDifficulty: 2,
    avgTimeCommitment: 6,
    termAvailability: ["Fall", "Spring", "Summer"],
    instructionModes: ["In-person"],
    tags: ["Computer Science", "Level-2", "Security"], visualLearnerSuccess: 0.68, auditoryLearnerSuccess: 0.99, kinestheticLearnerSuccess: 0.6, readingLearnerSuccess: 0.99
});

CREATE (c:Course {
    id: "CSQQ 300-1",
    name: "Natural Language Processing Applications",
    department: "Computer Science",
    credits: 1,
    level: 300,
    avgDifficulty: 3,
    avgTimeCommitment: 9,
    termAvailability: ["Fall", "Spring"],
    instructionModes: ["In-person", "Online"],
    tags: ["Computer Science", "Level-3", "Applications"], visualLearnerSuccess: 0.94, auditoryLearnerSuccess: 0.85, kinestheticLearnerSuccess: 0.94, readingLearnerSuccess: 0.76
});

CREATE (c:Course {
    id: "CSZZ 100",
    name: "Introduction to Game Development",
    department: "Computer Science",
    credits: 3,
    level: 100,
    avgDifficulty: 4,
    avgTimeCommitment: 6,
    termAvailability: ["Fall", "Spring"],
    instructionModes: ["In-person"],
    tags: ["Computer Science", "Level-1", "Intro", "Game"], visualLearnerSuccess: 0.81, auditoryLearnerSuccess: 0.77, kinestheticLearnerSuccess: 0.69, readingLearnerSuccess: 0.63
});

CREATE (c:Course {
    id: "CSFF 200",
    name: "Web Development",
    department: "Computer Science",
    credits: 3,
    level: 200,
    avgDifficulty: 3,
    avgTimeCommitment: 7,
    termAvailability: ["Fall", "Spring"],
    instructionModes: ["In-person"],
    tags: ["Computer Science", "Level-2", "Web"], visualLearnerSuccess: 0.74, auditoryLearnerSuccess: 0.97, kinestheticLearnerSuccess: 0.71, readingLearnerSuccess: 0.71
});

CREATE (c:Course {
    id: "CSFF 200-6",
    name: "Database Systems",
    department: "Computer Science",
    credits: 3,
    level: 200,
    avgDifficulty: 3,
    avgTimeCommitment: 7,
    termAvailability: ["Fall", "Spring", "Summer"],
    instructionModes: ["In-person", "Online"],
    tags: ["Computer Science", "Level-2", "Data", "Systems"], visualLearnerSuccess: 0.9, auditoryLearnerSuccess: 0.78, kinestheticLearnerSuccess: 0.95, readingLearnerSuccess: 0.83
});

CREATE (c:Course {
    id: "CSII 200",
    name: "Computer Networks",
    department: "Computer Science",
    credits: 3,
    level: 200,
    avgDifficulty: 4,
    avgTimeCommitment: 9,
    termAvailability: ["Fall", "Spring"],
    instructionModes: ["In-person", "Online"],
    tags: ["Computer Science", "Level-2"], visualLearnerSuccess: 0.92, auditoryLearnerSuccess: 0.97, kinestheticLearnerSuccess: 0.77, readingLearnerSuccess: 0.7
});

CREATE (c:Course {
    id: "CSRR 200-5",
    name: "Distributed Systems",
    department: "Computer Science",
    credits: 3,
    level: 200,
    avgDifficulty: 3,
    avgTimeCommitment: 8,
    termAvailability: ["Fall", "Spring", "Summer"],
    instructionModes: ["In-person", "Online"],
    tags: ["Computer Science", "Level-2", "Systems", "Distributed"], visualLearnerSuccess: 0.87, auditoryLearnerSuccess: 0.63, kinestheticLearnerSuccess: 0.67, readingLearnerSuccess: 0.86
});

CREATE (c:Course {
    id: "CSWW 400",
    name: "Special Topics in Data Structures",
    department: "Computer Science",
    credits: 3,
    level: 400,
    avgDifficulty: 3,
    avgTimeCommitment: 9,
    termAvailability: ["Fall", "Spring"],
    instructionModes: ["In-person", "Hybrid"],
    tags: ["Computer Science", "Level-4", "Data"], visualLearnerSuccess: 0.82, auditoryLearnerSuccess: 0.98, kinestheticLearnerSuccess: 0.73, readingLearnerSuccess: 0.63
});

CREATE (c:Course {
    id: "CSGG 200-9",
    name: "Computer Architecture",
    department: "Computer Science",
    credits: 3,
    level: 200,
    avgDifficulty: 2,
    avgTimeCommitment: 5,
    termAvailability: ["Fall", "Spring", "Summer"],
    instructionModes: ["In-person"],
    tags: ["Computer Science", "Level-2"], visualLearnerSuccess: 0.92, auditoryLearnerSuccess: 0.72, kinestheticLearnerSuccess: 0.94, readingLearnerSuccess: 0.77
});

CREATE (c:Course {
    id: "CSDD 400",
    name: "Advanced Cybersecurity",
    department: "Computer Science",
    credits: 3,
    level: 400,
    avgDifficulty: 2,
    avgTimeCommitment: 7,
    termAvailability: ["Fall", "Spring", "Summer"],
    instructionModes: ["In-person"],
    tags: ["Computer Science", "Level-4", "Advanced", "Security"], visualLearnerSuccess: 0.88, auditoryLearnerSuccess: 0.93, kinestheticLearnerSuccess: 0.89, readingLearnerSuccess: 0.79
});

CREATE (c:Course {
    id: "CSOO 200-6",
    name: "Game Development",
    department: "Computer Science",
    credits: 3,
    level: 200,
    avgDifficulty: 3,
    avgTimeCommitment: 7,
    termAvailability: ["Fall", "Spring", "Summer"],
    instructionModes: ["In-person", "Online", "Hybrid"],
    tags: ["Computer Science", "Level-2", "Game"], visualLearnerSuccess: 0.93, auditoryLearnerSuccess: 0.9, kinestheticLearnerSuccess: 0.71, readingLearnerSuccess: 0.77
});

CREATE (c:Course {
    id: "CSQQ 200-5",
    name: "Operating Systems",
    department: "Computer Science",
    credits: 3,
    level: 200,
    avgDifficulty: 3,
    avgTimeCommitment: 8,
    termAvailability: ["Fall", "Spring"],
    instructionModes: ["In-person", "Hybrid"],
    tags: ["Computer Science", "Level-2", "Systems"], visualLearnerSuccess: 0.66, auditoryLearnerSuccess: 0.86, kinestheticLearnerSuccess: 0.83, readingLearnerSuccess: 0.87
});

CREATE (c:Course {
    id: "CSXX 200",
    name: "Computer Vision",
    department: "Computer Science",
    credits: 3,
    level: 200,
    avgDifficulty: 3,
    avgTimeCommitment: 8,
    termAvailability: ["Fall", "Spring", "Summer"],
    instructionModes: ["In-person", "Hybrid"],
    tags: ["Computer Science", "Level-2", "Vision"], visualLearnerSuccess: 0.83, auditoryLearnerSuccess: 0.95, kinestheticLearnerSuccess: 0.61, readingLearnerSuccess: 0.78
});

CREATE (c:Course {
    id: "CSJJ 400",
    name: "Topics in Mobile Computing",
    department: "Computer Science",
    credits: 3,
    level: 400,
    avgDifficulty: 2,
    avgTimeCommitment: 9,
    termAvailability: ["Fall", "Spring"],
    instructionModes: ["In-person", "Hybrid"],
    tags: ["Computer Science", "Level-4", "Mobile"], visualLearnerSuccess: 0.66, auditoryLearnerSuccess: 0.64, kinestheticLearnerSuccess: 0.84, readingLearnerSuccess: 1.0
});

CREATE (c:Course {
    id: "CSRR 200-3",
    name: "Big Data Analytics",
    department: "Computer Science",
    credits: 3,
    level: 200,
    avgDifficulty: 3,
    avgTimeCommitment: 7,
    termAvailability: ["Fall", "Spring", "Summer"],
    instructionModes: ["In-person", "Online"],
    tags: ["Computer Science", "Level-2", "Data"], visualLearnerSuccess: 0.64, auditoryLearnerSuccess: 0.65, kinestheticLearnerSuccess: 0.85, readingLearnerSuccess: 0.97
});

CREATE (c:Course {
    id: "BOOO 100",
    name: "Basic General Biology",
    department: "Biology",
    credits: 3,
    level: 100,
    avgDifficulty: 2,
    avgTimeCommitment: 5,
    termAvailability: ["Fall", "Spring", "Summer"],
    instructionModes: ["In-person", "Online"],
    tags: ["Biology", "Level-1"], visualLearnerSuccess: 0.79, auditoryLearnerSuccess: 0.97, kinestheticLearnerSuccess: 0.92, readingLearnerSuccess: 0.98
});

CREATE (c:Course {
    id: "BOOO 400",
    name: "Topics in Systems Biology",
    department: "Biology",
    credits: 3,
    level: 400,
    avgDifficulty: 4,
    avgTimeCommitment: 11,
    termAvailability: ["Fall", "Spring", "Summer"],
    instructionModes: ["In-person", "Online"],
    tags: ["Biology", "Level-4", "Systems"], visualLearnerSuccess: 0.64, auditoryLearnerSuccess: 0.93, kinestheticLearnerSuccess: 0.72, readingLearnerSuccess: 0.92
});

CREATE (c:Course {
    id: "BGGG 200",
    name: "Tropical Biology",
    department: "Biology",
    credits: 3,
    level: 200,
    avgDifficulty: 3,
    avgTimeCommitment: 8,
    termAvailability: ["Fall", "Spring"],
    instructionModes: ["In-person", "Online"],
    tags: ["Biology", "Level-2", "Tropical"], visualLearnerSuccess: 0.75, auditoryLearnerSuccess: 0.94, kinestheticLearnerSuccess: 1.0, readingLearnerSuccess: 0.65
});

CREATE (c:Course {
    id: "BRRR 100",
    name: "Principles of Molecular Biology",
    department: "Biology",
    credits: 3,
    level: 100,
    avgDifficulty: 5,
    avgTimeCommitment: 8,
    termAvailability: ["Fall", "Spring"],
    instructionModes: ["In-person"],
    tags: ["Biology", "Level-1", "Molecular"], visualLearnerSuccess: 0.76, auditoryLearnerSuccess: 0.74, kinestheticLearnerSuccess: 0.86, readingLearnerSuccess: 0.85
});

CREATE (c:Course {
    id: "BJJJ 300",
    name: "Virology Theory",
    department: "Biology",
    credits: 2,
    level: 300,
    avgDifficulty: 2,
    avgTimeCommitment: 6,
    termAvailability: ["Fall", "Spring"],
    instructionModes: ["In-person", "Hybrid"],
    tags: ["Biology", "Level-3", "Virology"], visualLearnerSuccess: 0.77, auditoryLearnerSuccess: 0.8200000000000001, kinestheticLearnerSuccess: 0.68, readingLearnerSuccess: 0.66
});

CREATE (c:Course {
    id: "BBBB 100",
    name: "Fundamentals of Plant Biology",
    department: "Biology",
    credits: 3,
    level: 100,
    avgDifficulty: 2,
    avgTimeCommitment: 6,
    termAvailability: ["Fall", "Spring", "Summer"],
    instructionModes: ["In-person", "Online", "Hybrid"],
    tags: ["Biology", "Level-1", "Plant"], visualLearnerSuccess: 0.65, auditoryLearnerSuccess: 0.81, kinestheticLearnerSuccess: 0.9, readingLearnerSuccess: 0.74
});

CREATE (c:Course {
    id: "BQQQ 200",
    name: "Metabolomics",
    department: "Biology",
    credits: 3,
    level: 200,
    avgDifficulty: 3,
    avgTimeCommitment: 7,
    termAvailability: ["Fall", "Spring"],
    instructionModes: ["In-person", "Online"],
    tags: ["Biology", "Level-2"], visualLearnerSuccess: 0.72, auditoryLearnerSuccess: 0.61, kinestheticLearnerSuccess: 0.74, readingLearnerSuccess: 0.84
});

CREATE (c:Course {
    id: "BXXX 400",
    name: "Special Topics in Behavioral Ecology",
    department: "Biology",
    credits: 2,
    level: 400,
    avgDifficulty: 4,
    avgTimeCommitment: 10,
    termAvailability: ["Fall", "Spring", "Summer"],
    instructionModes: ["In-person", "Online"],
    tags: ["Biology", "Level-4", "Ecology", "Behavioral"], visualLearnerSuccess: 0.89, auditoryLearnerSuccess: 0.8, kinestheticLearnerSuccess: 0.91, readingLearnerSuccess: 0.85
});

CREATE (c:Course {
    id: "BEEE 100",
    name: "Basic General Biology",
    department: "Biology",
    credits: 3,
    level: 100,
    avgDifficulty: 3,
    avgTimeCommitment: 7,
    termAvailability: ["Fall", "Spring", "Summer"],
    instructionModes: ["In-person", "Online", "Hybrid"],
    tags: ["Biology", "Level-1"], visualLearnerSuccess: 0.86, auditoryLearnerSuccess: 0.76, kinestheticLearnerSuccess: 0.6, readingLearnerSuccess: 0.93
});

CREATE (c:Course {
    id: "BGGG 200-8",
    name: "Bioinformatics",
    department: "Biology",
    credits: 3,
    level: 200,
    avgDifficulty: 3,
    avgTimeCommitment: 6,
    termAvailability: ["Fall", "Spring", "Summer"],
    instructionModes: ["In-person", "Online"],
    tags: ["Biology", "Level-2", "Bioinformatics"], visualLearnerSuccess: 0.83, auditoryLearnerSuccess: 0.99, kinestheticLearnerSuccess: 0.69, readingLearnerSuccess: 0.97
});

CREATE (c:Course {
    id: "BOOO 300",
    name: "Cell Biology Theory",
    department: "Biology",
    credits: 2,
    level: 300,
    avgDifficulty: 4,
    avgTimeCommitment: 10,
    termAvailability: ["Fall", "Spring"],
    instructionModes: ["In-person", "Online"],
    tags: ["Biology", "Level-3", "Cell"], visualLearnerSuccess: 0.63, auditoryLearnerSuccess: 0.8899999999999999, kinestheticLearnerSuccess: 0.71, readingLearnerSuccess: 0.66
});

CREATE (c:Course {
    id: "BMMM 300",
    name: "Animal Behavior Theory",
    department: "Biology",
    credits: 3,
    level: 300,
    avgDifficulty: 2,
    avgTimeCommitment: 8,
    termAvailability: ["Fall", "Spring", "Summer"],
    instructionModes: ["In-person"],
    tags: ["Biology", "Level-3", "Animal"], visualLearnerSuccess: 0.76, auditoryLearnerSuccess: 0.98, kinestheticLearnerSuccess: 0.83, readingLearnerSuccess: 0.73
});

CREATE (c:Course {
    id: "BHHH 100",
    name: "Fundamentals of Evolution",
    department: "Biology",
    credits: 2,
    level: 100,
    avgDifficulty: 3,
    avgTimeCommitment: 6,
    termAvailability: ["Fall", "Spring", "Summer"],
    instructionModes: ["In-person"],
    tags: ["Biology", "Level-1", "Evolution"], visualLearnerSuccess: 0.61, auditoryLearnerSuccess: 0.89, kinestheticLearnerSuccess: 0.65, readingLearnerSuccess: 0.98
});

CREATE (c:Course {
    id: "BGGG 100",
    name: "Basic Neurobiology",
    department: "Biology",
    credits: 3,
    level: 100,
    avgDifficulty: 3,
    avgTimeCommitment: 5,
    termAvailability: ["Fall", "Spring"],
    instructionModes: ["In-person", "Online"],
    tags: ["Biology", "Level-1", "Neuro"], visualLearnerSuccess: 0.95, auditoryLearnerSuccess: 0.9, kinestheticLearnerSuccess: 0.9, readingLearnerSuccess: 0.95
});

CREATE (c:Course {
    id: "BTTT 400",
    name: "Topics in Systems Biology",
    department: "Biology",
    credits: 3,
    level: 400,
    avgDifficulty: 4,
    avgTimeCommitment: 9,
    termAvailability: ["Fall", "Spring"],
    instructionModes: ["In-person", "Online"],
    tags: ["Biology", "Level-4", "Systems"], visualLearnerSuccess: 0.91, auditoryLearnerSuccess: 0.83, kinestheticLearnerSuccess: 0.78, readingLearnerSuccess: 0.76
});

CREATE (c:Course {
    id: "BFFF 100",
    name: "Introduction to Ecology",
    department: "Biology",
    credits: 3,
    level: 100,
    avgDifficulty: 4,
    avgTimeCommitment: 8,
    termAvailability: ["Fall", "Spring"],
    instructionModes: ["In-person", "Online"],
    tags: ["Biology", "Level-1", "Intro", "Ecology"], visualLearnerSuccess: 0.9, auditoryLearnerSuccess: 0.71, kinestheticLearnerSuccess: 0.65, readingLearnerSuccess: 0.74
});

CREATE (c:Course {
    id: "BLLL 300",
    name: "Genetics Analysis",
    department: "Biology",
    credits: 3,
    level: 300,
    avgDifficulty: 4,
    avgTimeCommitment: 10,
    termAvailability: ["Fall", "Spring"],
    instructionModes: ["In-person", "Online"],
    tags: ["Biology", "Level-3", "Genetics"], visualLearnerSuccess: 0.62, auditoryLearnerSuccess: 0.67, kinestheticLearnerSuccess: 0.76, readingLearnerSuccess: 0.73
});

CREATE (c:Course {
    id: "BUUU 200",
    name: "Bioinformatics",
    department: "Biology",
    credits: 3,
    level: 200,
    avgDifficulty: 4,
    avgTimeCommitment: 7,
    termAvailability: ["Fall", "Spring", "Summer"],
    instructionModes: ["In-person"],
    tags: ["Biology", "Level-2", "Bioinformatics"], visualLearnerSuccess: 0.75, auditoryLearnerSuccess: 0.89, kinestheticLearnerSuccess: 0.83, readingLearnerSuccess: 0.83
});

CREATE (c:Course {
    id: "BXXX 100",
    name: "Fundamentals of Systems Biology",
    department: "Biology",
    credits: 3,
    level: 100,
    avgDifficulty: 4,
    avgTimeCommitment: 8,
    termAvailability: ["Fall", "Spring", "Summer"],
    instructionModes: ["In-person", "Online"],
    tags: ["Biology", "Level-1", "Systems"], visualLearnerSuccess: 0.8, auditoryLearnerSuccess: 0.69, kinestheticLearnerSuccess: 0.67, readingLearnerSuccess: 0.92
});

CREATE (c:Course {
    id: "BJJJ 400",
    name: "Topics in Molecular Biology",
    department: "Biology",
    credits: 3,
    level: 400,
    avgDifficulty: 2,
    avgTimeCommitment: 9,
    termAvailability: ["Fall", "Spring"],
    instructionModes: ["In-person", "Online"],
    tags: ["Biology", "Level-4", "Molecular"], visualLearnerSuccess: 0.6, auditoryLearnerSuccess: 0.79, kinestheticLearnerSuccess: 0.66, readingLearnerSuccess: 0.79
});

CREATE (c:Course {
    id: "BUUU 200-6",
    name: "Systems Biology",
    department: "Biology",
    credits: 1,
    level: 200,
    avgDifficulty: 2,
    avgTimeCommitment: 6,
    termAvailability: ["Fall", "Spring"],
    instructionModes: ["In-person", "Online", "Hybrid"],
    tags: ["Biology", "Level-2", "Systems"], visualLearnerSuccess: 0.93, auditoryLearnerSuccess: 0.91, kinestheticLearnerSuccess: 0.74, readingLearnerSuccess: 0.94
});

CREATE (c:Course {
    id: "BDDD 300",
    name: "Behavioral Ecology Theory",
    department: "Biology",
    credits: 2,
    level: 300,
    avgDifficulty: 2,
    avgTimeCommitment: 7,
    termAvailability: ["Fall", "Spring"],
    instructionModes: ["In-person", "Online", "Hybrid"],
    tags: ["Biology", "Level-3", "Ecology", "Behavioral"], visualLearnerSuccess: 0.94, auditoryLearnerSuccess: 0.8800000000000001, kinestheticLearnerSuccess: 0.76, readingLearnerSuccess: 0.76
});

CREATE (c:Course {
    id: "BGGG 400",
    name: "Advanced Molecular Genetics",
    department: "Biology",
    credits: 2,
    level: 400,
    avgDifficulty: 2,
    avgTimeCommitment: 7,
    termAvailability: ["Fall", "Spring"],
    instructionModes: ["In-person", "Online"],
    tags: ["Biology", "Level-4", "Advanced", "Molecular", "Genetics"], visualLearnerSuccess: 0.86, auditoryLearnerSuccess: 0.77, kinestheticLearnerSuccess: 0.77, readingLearnerSuccess: 0.99
});

CREATE (c:Course {
    id: "BBBB 100-9",
    name: "Basic Microbiology",
    department: "Biology",
    credits: 3,
    level: 100,
    avgDifficulty: 4,
    avgTimeCommitment: 7,
    termAvailability: ["Fall", "Spring", "Summer"],
    instructionModes: ["In-person"],
    tags: ["Biology", "Level-1", "Micro"], visualLearnerSuccess: 0.95, auditoryLearnerSuccess: 0.82, kinestheticLearnerSuccess: 0.63, readingLearnerSuccess: 0.83
});

CREATE (c:Course {
    id: "BHHH 100-1",
    name: "Principles of Molecular Biology",
    department: "Biology",
    credits: 3,
    level: 100,
    avgDifficulty: 3,
    avgTimeCommitment: 7,
    termAvailability: ["Fall", "Spring", "Summer"],
    instructionModes: ["In-person", "Online", "Hybrid"],
    tags: ["Biology", "Level-1", "Molecular"], visualLearnerSuccess: 0.96, auditoryLearnerSuccess: 0.78, kinestheticLearnerSuccess: 0.68, readingLearnerSuccess: 0.62
});

CREATE (c:Course {
    id: "BEEE 100-2",
    name: "Introduction to Cell Biology",
    department: "Biology",
    credits: 2,
    level: 100,
    avgDifficulty: 4,
    avgTimeCommitment: 7,
    termAvailability: ["Fall", "Spring"],
    instructionModes: ["In-person", "Hybrid"],
    tags: ["Biology", "Level-1", "Intro", "Cell"], visualLearnerSuccess: 0.71, auditoryLearnerSuccess: 0.94, kinestheticLearnerSuccess: 0.76, readingLearnerSuccess: 0.69
});

CREATE (c:Course {
    id: "BXXX 300",
    name: "Cancer Biology Analysis",
    department: "Biology",
    credits: 3,
    level: 300,
    avgDifficulty: 2,
    avgTimeCommitment: 7,
    termAvailability: ["Fall", "Spring"],
    instructionModes: ["In-person", "Hybrid"],
    tags: ["Biology", "Level-3", "Cancer"], visualLearnerSuccess: 0.91, auditoryLearnerSuccess: 0.86, kinestheticLearnerSuccess: 0.71, readingLearnerSuccess: 0.92
});

CREATE (c:Course {
    id: "BBBB 300",
    name: "Anatomy and Physiology Theory",
    department: "Biology",
    credits: 3,
    level: 300,
    avgDifficulty: 2,
    avgTimeCommitment: 7,
    termAvailability: ["Fall", "Spring"],
    instructionModes: ["In-person", "Online", "Hybrid"],
    tags: ["Biology", "Level-3", "Anatomy", "Physiology"], visualLearnerSuccess: 0.86, auditoryLearnerSuccess: 0.94, kinestheticLearnerSuccess: 0.94, readingLearnerSuccess: 0.99
});

CREATE (c:Course {
    id: "BTTT 300",
    name: "Ecology Analysis",
    department: "Biology",
    credits: 3,
    level: 300,
    avgDifficulty: 4,
    avgTimeCommitment: 8,
    termAvailability: ["Fall", "Spring", "Summer"],
    instructionModes: ["In-person"],
    tags: ["Biology", "Level-3", "Ecology"], visualLearnerSuccess: 0.9, auditoryLearnerSuccess: 0.95, kinestheticLearnerSuccess: 0.64, readingLearnerSuccess: 0.89
});

CREATE (c:Course {
    id: "BVVV 200",
    name: "Cancer Biology",
    department: "Biology",
    credits: 2,
    level: 200,
    avgDifficulty: 3,
    avgTimeCommitment: 8,
    termAvailability: ["Fall", "Spring"],
    instructionModes: ["In-person", "Hybrid"],
    tags: ["Biology", "Level-2", "Cancer"], visualLearnerSuccess: 0.8, auditoryLearnerSuccess: 0.98, kinestheticLearnerSuccess: 0.78, readingLearnerSuccess: 0.63
});

CREATE (c:Course {
    id: "BOOO 300-8",
    name: "Anatomy and Physiology I",
    department: "Biology",
    credits: 3,
    level: 300,
    avgDifficulty: 5,
    avgTimeCommitment: 9,
    termAvailability: ["Fall", "Spring", "Summer"],
    instructionModes: ["In-person"],
    tags: ["Biology", "Level-3", "Anatomy", "Physiology"], visualLearnerSuccess: 0.61, auditoryLearnerSuccess: 0.78, kinestheticLearnerSuccess: 0.82, readingLearnerSuccess: 0.87
});

CREATE (c:Course {
    id: "BMMM 300-1",
    name: "General Biology Analysis",
    department: "Biology",
    credits: 4,
    level: 300,
    avgDifficulty: 4,
    avgTimeCommitment: 9,
    termAvailability: ["Fall", "Spring"],
    instructionModes: ["In-person"],
    tags: ["Biology", "Level-3"], visualLearnerSuccess: 0.69, auditoryLearnerSuccess: 0.94, kinestheticLearnerSuccess: 0.7, readingLearnerSuccess: 0.91
});

CREATE (c:Course {
    id: "BVVV 400",
    name: "Special Topics in Metabolomics",
    department: "Biology",
    credits: 3,
    level: 400,
    avgDifficulty: 3,
    avgTimeCommitment: 10,
    termAvailability: ["Fall", "Spring"],
    instructionModes: ["In-person", "Online", "Hybrid"],
    tags: ["Biology", "Level-4"], visualLearnerSuccess: 0.78, auditoryLearnerSuccess: 0.86, kinestheticLearnerSuccess: 0.63, readingLearnerSuccess: 0.72
});

CREATE (c:Course {
    id: "BZZZ 200",
    name: "Stem Cell Biology",
    department: "Biology",
    credits: 3,
    level: 200,
    avgDifficulty: 2,
    avgTimeCommitment: 5,
    termAvailability: ["Fall", "Spring"],
    instructionModes: ["In-person", "Online"],
    tags: ["Biology", "Level-2", "Cell", "Stem Cell"], visualLearnerSuccess: 0.63, auditoryLearnerSuccess: 0.81, kinestheticLearnerSuccess: 0.86, readingLearnerSuccess: 0.91
});

CREATE (c:Course {
    id: "BHHH 200",
    name: "Stem Cell Biology",
    department: "Biology",
    credits: 3,
    level: 200,
    avgDifficulty: 4,
    avgTimeCommitment: 8,
    termAvailability: ["Fall", "Spring", "Summer"],
    instructionModes: ["In-person", "Online"],
    tags: ["Biology", "Level-2", "Cell", "Stem Cell"], visualLearnerSuccess: 0.9, auditoryLearnerSuccess: 0.89, kinestheticLearnerSuccess: 0.91, readingLearnerSuccess: 0.7
});

CREATE (c:Course {
    id: "BHHH 200-8",
    name: "Conservation Biology",
    department: "Biology",
    credits: 3,
    level: 200,
    avgDifficulty: 5,
    avgTimeCommitment: 8,
    termAvailability: ["Fall", "Spring", "Summer"],
    instructionModes: ["In-person", "Online"],
    tags: ["Biology", "Level-2", "Conservation"], visualLearnerSuccess: 0.81, auditoryLearnerSuccess: 0.86, kinestheticLearnerSuccess: 0.63, readingLearnerSuccess: 0.72
});

CREATE (c:Course {
    id: "BRRR 300",
    name: "Cancer Biology Applications",
    department: "Biology",
    credits: 2,
    level: 300,
    avgDifficulty: 4,
    avgTimeCommitment: 8,
    termAvailability: ["Fall", "Spring", "Summer"],
    instructionModes: ["In-person", "Online"],
    tags: ["Biology", "Level-3", "Cancer"], visualLearnerSuccess: 0.97, auditoryLearnerSuccess: 0.81, kinestheticLearnerSuccess: 0.72, readingLearnerSuccess: 0.79
});

CREATE (c:Course {
    id: "BGGG 200-8-5",
    name: "Marine Biology",
    department: "Biology",
    credits: 3,
    level: 200,
    avgDifficulty: 3,
    avgTimeCommitment: 7,
    termAvailability: ["Fall", "Spring"],
    instructionModes: ["In-person", "Online", "Hybrid"],
    tags: ["Biology", "Level-2", "Marine"], visualLearnerSuccess: 0.88, auditoryLearnerSuccess: 0.63, kinestheticLearnerSuccess: 0.65, readingLearnerSuccess: 0.98
});

CREATE (c:Course {
    id: "BLLL 100",
    name: "Introduction to General Biology",
    department: "Biology",
    credits: 3,
    level: 100,
    avgDifficulty: 4,
    avgTimeCommitment: 6,
    termAvailability: ["Fall", "Spring"],
    instructionModes: ["In-person", "Online", "Hybrid"],
    tags: ["Biology", "Level-1", "Intro"], visualLearnerSuccess: 0.84, auditoryLearnerSuccess: 0.76, kinestheticLearnerSuccess: 0.98, readingLearnerSuccess: 0.94
});

CREATE (c:Course {
    id: "BLLL 200",
    name: "Environmental Biology",
    department: "Biology",
    credits: 2,
    level: 200,
    avgDifficulty: 3,
    avgTimeCommitment: 8,
    termAvailability: ["Fall", "Spring"],
    instructionModes: ["In-person", "Online"],
    tags: ["Biology", "Level-2", "Environmental"], visualLearnerSuccess: 0.77, auditoryLearnerSuccess: 0.74, kinestheticLearnerSuccess: 1.0, readingLearnerSuccess: 0.98
});

CREATE (c:Course {
    id: "BPPP 300",
    name: "Plant Biology Applications",
    department: "Biology",
    credits: 3,
    level: 300,
    avgDifficulty: 3,
    avgTimeCommitment: 8,
    termAvailability: ["Fall", "Spring"],
    instructionModes: ["In-person"],
    tags: ["Biology", "Level-3", "Plant"], visualLearnerSuccess: 0.99, auditoryLearnerSuccess: 0.61, kinestheticLearnerSuccess: 0.65, readingLearnerSuccess: 0.83
});

CREATE (c:Course {
    id: "BZZZ 300",
    name: "Systems Biology Theory",
    department: "Biology",
    credits: 3,
    level: 300,
    avgDifficulty: 3,
    avgTimeCommitment: 9,
    termAvailability: ["Fall", "Spring"],
    instructionModes: ["In-person", "Online"],
    tags: ["Biology", "Level-3", "Systems"], visualLearnerSuccess: 0.83, auditoryLearnerSuccess: 0.8500000000000001, kinestheticLearnerSuccess: 0.68, readingLearnerSuccess: 0.87
});

CREATE (c:Course {
    id: "BZZZ 200-6",
    name: "Parasitology",
    department: "Biology",
    credits: 3,
    level: 200,
    avgDifficulty: 2,
    avgTimeCommitment: 6,
    termAvailability: ["Fall", "Spring"],
    instructionModes: ["In-person", "Online"],
    tags: ["Biology", "Level-2", "Parasitology"], visualLearnerSuccess: 0.96, auditoryLearnerSuccess: 0.92, kinestheticLearnerSuccess: 0.92, readingLearnerSuccess: 0.72
});

CREATE (c:Course {
    id: "BNNN 200",
    name: "Marine Biology",
    department: "Biology",
    credits: 2,
    level: 200,
    avgDifficulty: 2,
    avgTimeCommitment: 7,
    termAvailability: ["Fall", "Spring"],
    instructionModes: ["In-person", "Online", "Hybrid"],
    tags: ["Biology", "Level-2", "Marine"], visualLearnerSuccess: 0.7, auditoryLearnerSuccess: 0.66, kinestheticLearnerSuccess: 0.78, readingLearnerSuccess: 0.97
});

CREATE (c:Course {
    id: "BAAA 300",
    name: "Ecology Analysis",
    department: "Biology",
    credits: 2,
    level: 300,
    avgDifficulty: 3,
    avgTimeCommitment: 8,
    termAvailability: ["Fall", "Spring"],
    instructionModes: ["In-person", "Online", "Hybrid"],
    tags: ["Biology", "Level-3", "Ecology"], visualLearnerSuccess: 0.81, auditoryLearnerSuccess: 0.63, kinestheticLearnerSuccess: 0.8, readingLearnerSuccess: 0.84
});

CREATE (c:Course {
    id: "BWWW 400",
    name: "Advanced Biochemistry",
    department: "Biology",
    credits: 1,
    level: 400,
    avgDifficulty: 4,
    avgTimeCommitment: 10,
    termAvailability: ["Fall", "Spring"],
    instructionModes: ["In-person", "Online"],
    tags: ["Biology", "Level-4", "Advanced", "Biochemistry"], visualLearnerSuccess: 1.0, auditoryLearnerSuccess: 0.99, kinestheticLearnerSuccess: 0.98, readingLearnerSuccess: 0.81
});

CREATE (c:Course {
    id: "BFFF 300",
    name: "Behavioral Ecology I",
    department: "Biology",
    credits: 3,
    level: 300,
    avgDifficulty: 3,
    avgTimeCommitment: 9,
    termAvailability: ["Fall", "Spring", "Summer"],
    instructionModes: ["In-person", "Online"],
    tags: ["Biology", "Level-3", "Ecology", "Behavioral"], visualLearnerSuccess: 0.99, auditoryLearnerSuccess: 0.66, kinestheticLearnerSuccess: 0.98, readingLearnerSuccess: 0.89
});

CREATE (c:Course {
    id: "BDDD 200",
    name: "Parasitology",
    department: "Biology",
    credits: 3,
    level: 200,
    avgDifficulty: 2,
    avgTimeCommitment: 6,
    termAvailability: ["Fall", "Spring", "Summer"],
    instructionModes: ["In-person"],
    tags: ["Biology", "Level-2", "Parasitology"], visualLearnerSuccess: 0.65, auditoryLearnerSuccess: 0.85, kinestheticLearnerSuccess: 0.7, readingLearnerSuccess: 0.6
});

CREATE (c:Course {
    id: "BPPP 100",
    name: "Introduction to Metabolomics",
    department: "Biology",
    credits: 2,
    level: 100,
    avgDifficulty: 3,
    avgTimeCommitment: 6,
    termAvailability: ["Fall", "Spring"],
    instructionModes: ["In-person"],
    tags: ["Biology", "Level-1", "Intro"], visualLearnerSuccess: 1.0, auditoryLearnerSuccess: 0.88, kinestheticLearnerSuccess: 0.7, readingLearnerSuccess: 0.86
});

CREATE (c:Course {
    id: "BAAA 300-9",
    name: "Cell Biology Methods",
    department: "Biology",
    credits: 3,
    level: 300,
    avgDifficulty: 2,
    avgTimeCommitment: 6,
    termAvailability: ["Fall", "Spring"],
    instructionModes: ["In-person"],
    tags: ["Biology", "Level-3", "Cell"], visualLearnerSuccess: 0.9, auditoryLearnerSuccess: 0.7, kinestheticLearnerSuccess: 0.98, readingLearnerSuccess: 0.9
});
