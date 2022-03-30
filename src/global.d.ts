/**
 * 優先度
 */
type Priority =
  | 'high' // 高
  | 'middle' // 中
  | 'low'; //低

/**
 * マイルストーン種類
 */
type MilestoneType =
  | 'projectEndDate' // 施策実施完了の期限
  | 'decisionDueDate' // 施策決定の期限
  | 'others'; // その他の重要なマイルストーン

/**
 * スケジュール種類
 */
type ScheduleType =
  | 'planning' // 企画立案
  | 'problemAnalysis' // 課題分析
  | 'measures' // 対策検討
  | 'policyPlanning' // 施策立案
  | 'policyDecision'; // 施策決定
