import { Op } from "sequelize"; //https://sequelize.org/master/manual/model-querying-basics.html#operators   symbol operators that can be used for to create more complex

// The component that encapsulate the logic required to access data sources for all specific Sessions process in the database
export class Sessions {
  constructor(db) {
    this.db = db; //The object used to organise data element for a user  using sequelize
  }
}

//Get all event dates
Sessions.prototype.getAllEventDates = async function (params) {
  let condition = {};
  if (params instanceof Date) {
    condition["event_date"] = params;
  }
  const result = await this.db.sessions.findAll({
    attributes: ["event_date"],
    group: "event_date",
    where: condition,
  });
  return result;
  // We didn't need to destructure the result here - the results were returned directly
};
