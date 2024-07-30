SELECT
    BranchId,
    SUM(CAST(Costs AS FLOAT64)) AS SumRunningCostsRent,
    EXTRACT(YEAR FROM DATE) AS Year
FROM
    `my-project-scenario2-vlba2.branches.MwwCcrBranchRunningCosts_2`
WHERE
    ProcessType = "Office rent"
GROUP BY
    BranchId, Year;