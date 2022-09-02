import React, { useState, useEffect } from "react"; //https://reactjs.org/docs/hooks-intro.html
import { Chart } from "primereact/chart"; //PrimeReact is a rich set of open source native components for React https://www.primefaces.org/primereact/setup/
import HoC from "../shared/HoC";

export function AttendanceTimeSeries(props) {
  let { apiData, setApidata } = HoC();
  const { trend } = props;
  const [chartData, setChartData] = useState({
    labels: "" || "",
    datasets: [
      {
        label: "" || "",
        data: "" || "",
        fill: false,
        borderColor: "#42A5F5",
        tension: 0.4,
      },

      {
        label: "" || "",
        data: "" || "",
        fill: false,
        borderColor: "#FFA726",
        tension: 0.4,
      },
    ],
  });

  // on component mount / onload update states
  useEffect(() => {
    setApidata(trend);
  }, [setApidata, trend]);

  useEffect(() => {
    let label = [];
    let corequisiteCount = [];
    let electiveCount = [];
    apiData?.map((val) => {
      return label.push(
        `${val?.module_name}\n ${val?.module_type} \n ${val?.event_date}`
      );
    });

    apiData?.forEach((val) => {
      corequisiteCount.push(parseInt(val?.corequisite_modules));
      electiveCount.push(parseInt(val?.elective_modules));
    });

    setChartData((prevData) => ({
      ...prevData,
      labels: label,
      datasets: [
        {
          label: "corequisite modules",
          data: corequisiteCount,
          borderColor: "#42A5F5",
        },

        {
          label: "elective modules",
          data: electiveCount,
          borderColor: "#FFA726",
        },
      ],
    }));
  }, [apiData, trend]);

  let basicOptions = {
    maintainAspectRatio: false,
    aspectRatio: 0.6,
    plugins: {
      legend: {
        labels: {
          color: "#495057",
        },
      },
    },
    scales: {
      x: {
        ticks: {
          color: "#495057",
        },
        grid: {
          color: "#ebedef",
        },
      },
      y: {
        ticks: {
          color: "#495057",
        },
        grid: {
          color: "#ebedef",
        },
      },
    },
  };
  return (
    <div className='card flex justify-content-center'>
      <Chart
        type='line'
        data={chartData}
        options={basicOptions}
        style={{ position: "relative", width: "100%", height: "300px" }}
      />
    </div>
  );
}
