// eslint-disable-next-line no-unused-vars
import React, { useState } from "react";

function HoC() {
  const [apiData, setApidata] = useState([]);
  const [data, setdata] = useState([]);
  const [schoolData, setSchoolData] = useState([]);
  const [departmentData, setDepartmentData] = useState([]);
  const [selectedDept, setSelectedDept] = useState([]);
  const [selectedModule, setSelectedModule] = useState([]);
  let [userId, setUserId] = useState("");

  let [colorOptimization] = useState([
    "#160A0B ",
    "#BD3848 ",
    "#203E77",
    "#479595",
    "#FCCE56",
  ]);

  return {
    data,
    setdata,
    apiData,
    setApidata,
    colorOptimization,
    schoolData,
    setSchoolData,
    departmentData,
    selectedDept,
    setDepartmentData,
    setSelectedDept,
    selectedModule,
    setSelectedModule,

    userId,
    setUserId,
  };
}

export default HoC;
