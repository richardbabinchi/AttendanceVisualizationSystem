import React, { useState, useEffect } from "react"; //https://reactjs.org/docs/hooks-intro.html
import { Chart } from "primereact/chart"; //PrimeReact is a rich set of open source native components for React https://www.primefaces.org/primereact/setup/

import HoC from "../shared/HoC";

export function ModuleBySchool(props) {
  let { apiData, setApidata, colorOptimization } = HoC();
  const { moduleAttendance } = props;

  const [chartData, setChartData] = useState({
    labels: ["present", "absent"],
    datasets: [
      {
        data: "" || "",
        backgroundColor: "" || "",
      },
    ],
  });

  // on component mount / onload update states
  useEffect(() => {
    setApidata(moduleAttendance);
  }, [setApidata, moduleAttendance]);

  useEffect(() => {
    let visualizationCount = [];
    apiData.forEach((val) => {
      visualizationCount.push(parseInt(val?.present));
      visualizationCount.push(parseInt(val?.absent));
    });

    setChartData((prevData) => ({
      ...prevData,

      datasets: [
        {
          ...prevData.datasets,
          data: visualizationCount,
          backgroundColor: ["#42A5F5", "#FFA726"],
        },
      ],
    }));
  }, [apiData, colorOptimization]);

  const [lightOptions] = useState({
    plugins: {
      legend: {
        labels: {
          color: "#495057",
        },
      },
    },
  });

  return (
    <div className='card flex justify-content-center'>
      <Chart
        type='pie'
        data={chartData}
        options={lightOptions}
        style={{ position: "relative", width: "30%" }}
      />
    </div>
  );
}
