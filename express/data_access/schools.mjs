import { Op } from "sequelize"; //https://sequelize.org/master/manual/model-querying-basics.html#operators   symbol operators that can be used for to create more complex

// The components that encapsulate the logic required to access data sources for all specific School and department operations in the database
export class Schools {
  constructor(db) {
    this.db = db;
  }
}

//get all schools
Schools.prototype.getAll = async function () {
  //https://sequelize.org/v6/manual/model-querying-basics.html
  const result = await this.db.schools.findAll({
    attributes: ["id", "name", "description"],
    order: [["id", "ASC"]],
    raw: true,
    nest: true,
  });
  return result;
};

//get all departments
Schools.prototype.getAllDepartments = async function () {
  //https://sequelize.org/v6/manual/model-querying-basics.html
  const result = await this.db.department.findAll({
    attributes: ["id", "name", "school_id"],
    order: [["id", "ASC"]],
  });
  return result;
};

//Get a department by a school id foreign key
Schools.prototype.getDepartmentBySchoolId = async function (id) {
  //https://sequelize.org/v6/manual/model-querying-basics.html
  const result = await this.db.department.findAll({
    attributes: ["id", "name", "school_id"],
    where: {
      school_id: id,
    },
    raw: true,
    nest: true,
  });

  return result;
};

//Get users by department
Schools.prototype.getDepartmentUsers = async function (id) {
  //https://sequelize.org/v6/manual/model-querying-basics.html
  const result = await this.db.department_users.findAll({
    attributes: ["id", "name", "school_id"],
    where: {
      department_id: id,
    },
    include: {
      model: this.db.users,

      where: {
        size: {
          [Op.ne]: "small",
        },
      },
    },
    raw: true,
    nest: true,
  });

  return result;
};

//Get a department by a school id foreign key
Schools.prototype.getModuleBySchoolId = async function (id) {
  //https://sequelize.org/v6/manual/model-querying-basics.html
  const result = await this.db.modules.findAll({
    attributes: ["id", "name", "school_id"],
    where: {
      school_id: id,
    },
    raw: true,
    nest: true,
  });

  return result;
};
