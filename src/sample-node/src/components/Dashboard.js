
import React from 'react';
import { Link } from 'react-router-dom';

const Dashboard = () => {
  return (
    <div>
      <h1>DevOps Tools Dashboard</h1>
      <p>This is an interactive dashboard for DevOps tools.</p>
      <Link to="/info">Learn more about DevOps Tools</Link>
    </div>
  );
};

export default Dashboard;
