import React from "react";
import { SelectField } from "../shared/_formcomponents/index";

export function SetSchool(props) {
  const { schoolData } = props;

  return (
    <SelectField
      fieldtype='select'
      label='School'
      name='schoolId'
      value={schoolData}
      placeholder={"select school"}
    />
  );
}
