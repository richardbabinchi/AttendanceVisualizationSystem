import React, { useState, useEffect } from "react"; //https://reactjs.org/docs/hooks-intro.html
import { Chart } from "primereact/chart"; //PrimeReact is a rich set of open source native components for React https://www.primefaces.org/primereact/setup/
import HoC from "../shared/HoC";

export function PopulationByDepartment(props) {
  let { setApidata, apiData, colorOptimization } = HoC();
  let { department } = props;

  const [chartData, setChartData] = useState({
    labels: "" || "",
    datasets: [
      {
        data: "" || "",
        backgroundColor: "" || "",
      },
    ],
  });

  const [lightOptions] = useState({
    plugins: {
      legend: {
        labels: {
          color: "#495057",
        },
      },
    },
  });

  // on component mount / onload update states
  useEffect(() => {
    setApidata(department);
  }, [setApidata, department]);

  // on component mount / onload update states
  useEffect(() => {
    let label = [];
    let visualizationCount = [];
    apiData.forEach((val) => {
      label.push(val?.name);

      visualizationCount.push(parseInt(val?.student_count));
    });

    setChartData((prevData) => ({
      ...prevData,
      labels: label,
      datasets: [
        {
          ...prevData.datasets,
          data: visualizationCount,
          backgroundColor: colorOptimization,
        },
      ],
    }));
  }, [apiData, colorOptimization]);

  return (
    <div className='card flex justify-content-center'>
      <Chart
        type='pie'
        data={chartData}
        options={lightOptions}
        style={{ position: "relative", width: "50%" }}
      />
    </div>
  );
}
