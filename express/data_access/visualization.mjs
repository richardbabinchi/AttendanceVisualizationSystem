// The component that encapsulate the logic required to access data sources for all specific visualization process in the database
export class Visualization {
  constructor(db, sequelize, queryTypes) {
    this.db = db; //The object used to organise data element for a user  using sequelizet
    this.sequelize = sequelize;
    this.queryTypes = queryTypes;
  }
}

//query to select any data from the data source based on the raw sql quesries from files
Visualization.prototype.visualizeQuery = async function (fileToString) {
  const result = await this.sequelize.query(fileToString, {
    type: this.queryTypes.SELECT,
  });
  return result;
};

//query to select any data from the data source by a parameter id based on the raw sql queries from file
Visualization.prototype.visualizeQueryWithParams = async function (
  fileToString,
  params
) {
  // read raw sql queries using  sequelize https://sequelize.org/docs/v6/core-concepts/raw-queries
  const result = await this.sequelize.query(fileToString, {
    type: this.queryTypes.SELECT,
    replacements: [parseInt(params?.id)],
  });

  return result;
};

//query to select any data from the data source by a date parameter based on the raw sql queries from file
Visualization.prototype.visualizeQueryWithDateParams = async function (
  fileToString,
  params
) {
  // read raw sql queries using  sequelize https://sequelize.org/docs/v6/core-concepts/raw-queries
  const result = await this.sequelize.query(fileToString, {
    type: this.queryTypes.SELECT,
    replacements: [params?.event_date],
  });

  return result;
};

Visualization.prototype.visualizeQueryWithUserParams = async function (
  fileToString,
  params
) {
  // read raw sql queries using  sequelize https://sequelize.org/docs/v6/core-concepts/raw-queries
  const result = await this.sequelize.query(fileToString, {
    type: this.queryTypes.SELECT,
    replacements: { userType: params.userType, id: params.departmentId },
  });

  return result;
};

//query to select  student attendance data from the data source by a  user id , and type of courses
Visualization.prototype.computeStudentAttendance = async function (
  fileToString,
  student_id,
  courseCount
) {
  // read raw sql queries using  sequelize https://sequelize.org/docs/v6/core-concepts/raw-queries
  const result = await this.sequelize.query(fileToString, {
    type: this.queryTypes.SELECT,
    replacements: {
      student_id: student_id,
      corequisite: courseCount?.corequisite,
      elective: courseCount?.elective,
    },
  });
  // corequisite: courseCount?.corequisite,
  // elective: courseCount?.elective,
  return result;
};

Visualization.prototype.visualizeQueryWithDeptUserParams = async function (
  fileToString,
  params
) {
  // read raw sql queries using  sequelize https://sequelize.org/docs/v6/core-concepts/raw-queries
  const result = await this.sequelize.query(fileToString, {
    type: this.queryTypes.SELECT,
    replacements: { userType: "student", id: params.school_id },
  });

  return result;
};

Visualization.prototype.visualizeModuleAttendanceWithDate = async function (
  fileToString,
  params
) {
  // read raw sql queries using  sequelize https://sequelize.org/docs/v6/core-concepts/raw-queries
  const result = await this.sequelize.query(fileToString, {
    type: this.queryTypes.SELECT,
    replacements: { event_date: params?.event_date, id: params.school_id },
  });

  return result;
};

//query to select the attendance for a module by deparment id and module id based on the raw sql queries from file
Visualization.prototype.visualizeModuleDeparmentAttendance = async function (
  fileToString,
  params
) {
  // read raw sql queries using  sequelize https://sequelize.org/docs/v6/core-concepts/raw-queries
  const result = await this.sequelize.query(fileToString, {
    type: this.queryTypes.SELECT,
    replacements: {
      module_id: params?.module_id,
      department_id: params.department_id,
    },
  });

  return result;
};
