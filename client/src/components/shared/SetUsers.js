import React from "react";
import { SelectField } from "../shared/_formcomponents/index";

export function SetUsers(props) {
  const { users } = props;

  return (
    <SelectField
      fieldtype='select'
      label='Users'
      name='userId'
      value={users}
      placeholder={"select school"}
    />
  );
}
