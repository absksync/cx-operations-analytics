-- ============================================
-- DATA QUALITY CHECKS
-- ============================================


-- ============================================
-- Null Customer IDs
-- ============================================

SELECT *
FROM support_tickets
WHERE customer_id IS NULL;


-- ============================================
-- Null Agent IDs
-- ============================================

SELECT *
FROM support_tickets
WHERE agent_id IS NULL;


-- ============================================
-- Invalid Resolution Times
-- resolved_at before created_at
-- ============================================

SELECT *
FROM support_tickets
WHERE resolved_at IS NOT NULL
AND resolved_at < created_at;


-- ============================================
-- Invalid First Response Times
-- ============================================

SELECT *
FROM support_tickets
WHERE first_response_at IS NOT NULL
AND first_response_at < created_at;


-- ============================================
-- Orphan Customer Records
-- ============================================

SELECT st.*
FROM support_tickets st
LEFT JOIN customers c
ON st.customer_id = c.customer_id
WHERE c.customer_id IS NULL;


-- ============================================
-- Orphan Agent Records
-- ============================================

SELECT st.*
FROM support_tickets st
LEFT JOIN agents a
ON st.agent_id = a.agent_id
WHERE st.agent_id IS NOT NULL
AND a.agent_id IS NULL;


-- ============================================
-- Invalid CSAT Scores
-- ============================================

SELECT *
FROM customer_feedback
WHERE csat_score < 1
OR csat_score > 5;


-- ============================================
-- Tickets Missing Status
-- ============================================

SELECT *
FROM support_tickets
WHERE status IS NULL;


-- ============================================
-- Tickets Missing Priority
-- ============================================

SELECT *
FROM support_tickets
WHERE priority IS NULL;


-- ============================================
-- Tickets Missing Category
-- ============================================

SELECT *
FROM support_tickets
WHERE ticket_category IS NULL;