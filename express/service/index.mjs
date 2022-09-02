import { VisualizationService } from "./visualization.mjs";
import { SessionsService } from "./sessions.mjs";
import { SchoolsService } from "./schools.mjs";
import {
  visualizationRepository,
  sessionsRepository,
  schoolsRepository,
} from "../data_access/index.mjs";
import { FieldValidator } from "../_helper/index.mjs";

//The Tokenization , FieldValidator  are dependecies injected into the service class
const visualizationService = new VisualizationService(
  FieldValidator,
  visualizationRepository
);

const sessionsService = new SessionsService(FieldValidator, sessionsRepository);
const schoolsService = new SchoolsService(FieldValidator, schoolsRepository);

export { visualizationService, sessionsService, schoolsService };
