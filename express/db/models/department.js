//https://sequelize.org/master/manual/model-basics.html
const { Model } = require("sequelize");

//This module is used to define the school  model sequelize use to interact with the db
module.exports = (sequelize, DataTypes) => {
  class department extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
    }
  }
  department.init(
    {
      name: DataTypes.STRING,
      school_id: DataTypes.INTEGER,
    },
    {
      sequelize,
      modelName: "department",
      freezeTableName: true,
    }
  );

  return department;
};
