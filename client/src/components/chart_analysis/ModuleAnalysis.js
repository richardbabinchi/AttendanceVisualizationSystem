import React, { useState, useEffect } from "react"; //https://reactjs.org/docs/hooks-intro.html
import { Chart } from "primereact/chart"; //PrimeReact is a rich set of open source native components for React https://www.primefaces.org/primereact/setup/
import HoC from "../shared/HoC";

export function ModuleAnalysis(props) {
  let { data, setdata } = HoC();
  const { attendance } = props;

  const [chartData, setChartData] = useState({
    labels: "" || "",
    datasets: [
      {
        label: "" || "",
        data: "" || "",
        backgroundColor: "#42A5F5",
      },

      {
        label: "" || "",
        data: "" || "",
        backgroundColor: "#FFA726",
      },
    ],
  });

  // on component mount / onload update states
  useEffect(() => {
    setdata(attendance);
  }, [setdata, attendance]);

  useEffect(() => {
    let label = [];
    let presentCount = [];
    let absentCount = [];
    data.map((val) => {
      return label.push(val?.module_name);
    });

    data.forEach((val) => {
      presentCount.push(parseInt(val?.present));
      absentCount.push(parseInt(val?.absent));
    });

    setChartData((prevData) => ({
      ...prevData,
      labels: label,
      datasets: [
        {
          label: "present",
          data: presentCount,
          backgroundColor: "#42A5F5",
        },

        {
          label: "absent",
          data: absentCount,
          backgroundColor: "#FFA726",
        },
      ],
    }));
  }, [data, attendance]);

  let horizontalOptions = {
    indexAxis: "y",
    maintainAspectRatio: false,
    aspectRatio: 0.8,
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
        type='bar'
        data={chartData}
        options={horizontalOptions}
        style={{ position: "relative", width: "100%", height: "300px" }}
      />
    </div>
  );
}
