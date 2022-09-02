import React from "react";
import { SelectField } from "../shared/_formcomponents/index";

export function SetModule(props) {
  const { modules } = props;

  return (
    <SelectField
      fieldtype='select'
      label='Module'
      name='moduleId'
      value={modules}
      placeholder={"select module"}
    />
  );
}
