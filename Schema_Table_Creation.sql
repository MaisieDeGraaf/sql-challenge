CREATE TABLE "DEPARTMENTS" (
    "dept_no" varchar(5)   NOT NULL,
    "dept_name" text  NOT NULL,
    CONSTRAINT "pk_DEPARTMENTS" PRIMARY KEY (
        "dept_no"
     )
);

SELECT * from "DEPARTMENTS";
CREATE TABLE "TITLES" (
    "title_id" varchar(5)   NOT NULL,
    "title" text  NOT NULL,
    CONSTRAINT "pk_TITLES" PRIMARY KEY (
        "title_id"
     )
);

SELECT * from "TITLES";

CREATE TABLE "EMPLOYEES" (
    "emp_no" int   NOT NULL,
    "emp_title" varchar(5)   NOT NULL,
    "birth_date" text   NOT NULL,
    "first_name" text   NOT NULL,
    "last_name" text   NOT NULL,
    "sex" varchar(1)   NOT NULL,
    "hire_date" text   NOT NULL,
    CONSTRAINT "pk_EMPLOYEES" PRIMARY KEY (
        "emp_no"
     ),
    FOREIGN KEY ("emp_title") REFERENCES "TITLES" ("title_id")
);

SELECT * from "EMPLOYEES";

CREATE TABLE "DEPT_EMP" (
    "emp_no" int   NOT NULL,
    "dept_no" text   NOT NULL,
    CONSTRAINT "pk_DEPT_EMP" PRIMARY KEY (
        "emp_no",
        "dept_no"
     ),
    FOREIGN KEY ("emp_no") REFERENCES "EMPLOYEES" ("emp_no"),
    FOREIGN KEY ("dept_no") REFERENCES "DEPARTMENTS" ("dept_no")
);



CREATE TABLE "DEPT_MANAGER" (
    "dept_no" text   NOT NULL,
    "emp_no" int   NOT NULL,
    CONSTRAINT "pk_DEPT_MANAGER" PRIMARY KEY (
        "dept_no",
        "emp_no"
     ),
    FOREIGN KEY ("dept_no") REFERENCES "DEPARTMENTS" ("dept_no"),
    FOREIGN KEY ("emp_no") REFERENCES "EMPLOYEES" ("emp_no")
);


CREATE TABLE "SALARIES" (
    "emp_no" int   NOT NULL,
    "salary" int   NOT NULL,
    CONSTRAINT "pk_SALARIES" PRIMARY KEY (
        "emp_no"
     ),
    FOREIGN KEY ("emp_no") REFERENCES "EMPLOYEES" ("emp_no")
);


ALTER TABLE "DEPT_EMP" ADD CONSTRAINT "fk_DEPT_EMP_emp_no" FOREIGN KEY("emp_no")
REFERENCES "EMPLOYEES" ("emp_no");

ALTER TABLE "DEPT_EMP" ADD CONSTRAINT "fk_DEPT_EMP_dept_no" FOREIGN KEY("dept_no")
REFERENCES "DEPARTMENTS" ("dept_no");

ALTER TABLE "DEPT_MANAGER" ADD CONSTRAINT "fk_DEPT_MANAGER_dept_no" FOREIGN KEY("dept_no")
REFERENCES "DEPARTMENTS" ("dept_no");

ALTER TABLE "DEPT_MANAGER" ADD CONSTRAINT "fk_DEPT_MANAGER_emp_no" FOREIGN KEY("emp_no")
REFERENCES "EMPLOYEES" ("emp_no");

ALTER TABLE "EMPLOYEES" ADD CONSTRAINT "fk_EMPLOYEES_emp_title" FOREIGN KEY("emp_title")
REFERENCES "TITLES" ("title_id");

ALTER TABLE "SALARIES" ADD CONSTRAINT "fk_SALARIES_emp_no" FOREIGN KEY("emp_no")
REFERENCES "EMPLOYEES" ("emp_no");

