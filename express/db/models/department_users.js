//https://sequelize.org/master/manual/model-basics.html
"use strict";
const { Model } = require("sequelize");

//This module is used to define the school_users  model sequelize use to interact with the db
module.exports = (sequelize, DataTypes) => {
  class department_users extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
    }
  }
  department_users.init(
    {
      user_id: DataTypes.BIGINT,
      department_id: DataTypes.BIGINT,
    },
    {
      sequelize,
      modelName: "department_users",
    }
  );

  return department_users;
};
