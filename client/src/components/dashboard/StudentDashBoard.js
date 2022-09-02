import React, { useState } from "react";
import { Button } from "primereact/button";
import { PopulationBySchool, PopulationByDepartment } from "../chart_analysis";
import { GetSchoolDepartment } from "../shared/index";

export function StudentDashBoard() {
  const [department, setDepartment] = useState([]);

  return (
    <div className='row'>
      <div className='col-sm-6'>
        <div className='card'>
          <div className='card-body'>
            <h5 className='card-title'>Population By Schools</h5>
            <PopulationBySchool />
          </div>
          <div className='card-footer text-muted'>
            {" "}
            <Button className='discord p-0' aria-label='Discord'>
              <span className='px-3'>View Source</span>
            </Button>
          </div>
        </div>
      </div>
      <div className='col-sm-6'>
        <div className='card'>
          <div className='card-header'>
            {<GetSchoolDepartment setDepartment={setDepartment} />}
          </div>
          <div className='card-body'>
            <h5 className='card-title'>Population By Departments</h5>
            <PopulationByDepartment department={department} />
          </div>
          <div className='card-footer text-muted'>
            {" "}
            <Button className='discord p-0' aria-label='Discord'>
              <span className='px-3'>View Source</span>
            </Button>
          </div>
        </div>
      </div>

      {/* <div className='col-sm-12'>
        <div className='card'>
          <div className='card-body'>
            <h5 className='card-title'>Sessions By Events</h5>
            <EventsBySession />
          </div>
          <div className='card-footer text-muted'>
            {" "}
            <Button className='discord p-0' aria-label='Discord'>
              <span className='px-3'>View Source</span>
            </Button>
          </div>
        </div>
      </div> */}
    </div>
  );
}
