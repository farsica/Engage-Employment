﻿
CREATE VIEW dotnetnuke_dukes.[dnn_EngageEmployment_vwPositions]  
AS   
 SELECT pd.JobPositionId AS PositionId, pj.JobTitle, pj.Description AS JobDescription, pj.PortalId, pd.JobGroupId
 FROM (
	 SELECT DISTINCT p.JobPositionId, jjg.JobGroupId  
	 FROM [dnn_EngageEmployment_lkpJobPosition] p  
	  LEFT JOIN [dnn_EngageEmployment_Job] j ON (j.JobPositionId = p.JobPositionId)  
	  LEFT JOIN [dnn_EngageEmployment_JobJobGroup] jjg ON (j.JobId = jjg.JobId)
 ) pd
 JOIN [dnn_EngageEmployment_lkpJobPosition] pj ON (pd.JobPositionId = pj.JobPositionId)
