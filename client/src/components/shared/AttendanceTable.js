import React from "react";

export function AttendanceTable(props) {
  return (
    <table className='table table-hover table-bordered table-sm caption-top'>
      <caption> Attendance Record</caption>

      <thead>
        <tr>
          <th scope='col'>Name</th>
          <th scope='col'>Department Name</th>
          <th scope='col'>Module Name</th>
          <th scope='col'>Type</th>
          <th scope='col'>Marked Attendance</th>
          <th scope='col'>Attendance Date</th>
        </tr>
      </thead>

      {props?.attendance?.map((val, index) => (
        <React.Fragment key={val?.attendance_id}>
          <tbody>
            <tr>
              <td scope='row'>{val?.user_name}</td>
              <td>{val?.department_name}</td>
              <td>{val?.module_name}</td>
              <td>{val?.type}</td>
              <td>{val?.mark}</td>
              <td>{val?.event_date}</td>
            </tr>
          </tbody>
        </React.Fragment>
      ))}
    </table>
  );
}
