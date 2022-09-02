import { Visualization } from "./visualization.mjs";
import { Sessions } from "./sessions.mjs";
import { Schools } from "./schools.mjs";
import { db, sequelize, queryTypes } from "../db/models/index";

export const visualizationRepository = new Visualization(
  db,
  sequelize,
  queryTypes
);

export const sessionsRepository = new Sessions(db);

export const schoolsRepository = new Schools(db);
