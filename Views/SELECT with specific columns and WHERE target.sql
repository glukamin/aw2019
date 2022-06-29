/*SELECT with specific columns and Where*/

CREATE VIEW AgentView
AS SELECT  Agent_Code,Agent_Name,Working_Area
FROM Agents
WHERE Working_Area='Bangalore';