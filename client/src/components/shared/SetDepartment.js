import React from "react";
import { SelectField } from "../shared/_formcomponents/index";

export function SetDepartment(props) {
  const { departmentData } = props;

  return (
    <SelectField
      fieldtype='select'
      label='Department'
      name='departmentId'
      value={departmentData}
      placeholder={"select department"}
    />
  );
}
