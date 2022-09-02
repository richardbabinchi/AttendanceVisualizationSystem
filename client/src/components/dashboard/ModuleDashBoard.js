import React, { useState } from "react";
import { Button } from "primereact/button";

import { ModuleAnalysis, ModuleBySchool } from "../chart_analysis";
import { GetEventForModule, EventDate } from "../shared/index";

export function ModuleDashBoard() {
  const [attendance, setAttendance] = useState([]);
  const [moduleAttendance, setModuleAttendance] = useState([]);

  return (
    <div className='row'>
      <div className='col-6 mb-4'>
        <div className='card'>
          <div className='card-header'>
            <EventDate setAttendance={setAttendance} />
          </div>
          <div className='card-body'>
            <h5 className='card-title'>All School Modules</h5>
            <ModuleAnalysis attendance={attendance} />
          </div>
          <div className='card-footer text-muted'>
            {" "}
            {/* <Button className='discord p-0' aria-label='Discord'>
              <span className='px-3'>View Source</span>
            </Button> */}
          </div>
        </div>
      </div>
      <div className='col-6'>
        <div className='card'>
          <div className='card-header'>
            <GetEventForModule setModuleAttendance={setModuleAttendance} />
          </div>
          <div className='card-body'>
            <h5 className='card-title'>Module By School</h5>

            <ModuleBySchool moduleAttendance={moduleAttendance} />
          </div>
          <div className='card-footer text-muted'>
            {" "}
            {/* <Button className='discord p-0' aria-label='Discord'>
              <span className='px-3'>View Source</span>
            </Button> */}
          </div>
        </div>
      </div>
    </div>
  );
}
