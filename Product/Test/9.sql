--We want to rate the value of each PC. The score is computed as the
--sum of three terms: the score of the speed; the score of the ram; and
--the score of the hd. Each of these is computed as the ratio between the
--attribute (i.e., speed, ram, or hd) and the price. List the PCs and their
--score in decreasing order of the score.
SELECT pc_model, (pc_speed / pc_price+ pc_ram/pc_price + pc_hd/pc_price) AS score
FROM PC
ORDER BY score DESC