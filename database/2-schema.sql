
--
-- Name: demo; Type: SCHEMA; Schema: -; Owner: XXXuser
--

CREATE SCHEMA demo;


ALTER SCHEMA demo OWNER TO XXXuser;

--
-- Name: access_control_identity_type_enum; Type: TYPE; Schema: demo; Owner: XXXuser
--

CREATE TYPE demo.access_control_identity_type_enum AS ENUM (
    'Position',
    'UserDepartment'
);


ALTER TYPE demo.access_control_identity_type_enum OWNER TO XXXuser;

--
-- Name: access_control_plan_access_type_enum; Type: TYPE; Schema: demo; Owner: XXXuser
--

CREATE TYPE demo.access_control_plan_access_type_enum AS ENUM (
    'edit',
    'view',
    'deny'
);


ALTER TYPE demo.access_control_plan_access_type_enum OWNER TO XXXuser;

--
-- Name: access_control_plan_approval_access_type_enum; Type: TYPE; Schema: demo; Owner: XXXuser
--

CREATE TYPE demo.access_control_plan_approval_access_type_enum AS ENUM (
    'edit',
    'view',
    'deny'
);


ALTER TYPE demo.access_control_plan_approval_access_type_enum OWNER TO XXXuser;

--
-- Name: access_control_plan_measure_access_type_enum; Type: TYPE; Schema: demo; Owner: XXXuser
--

CREATE TYPE demo.access_control_plan_measure_access_type_enum AS ENUM (
    'edit',
    'view',
    'deny'
);


ALTER TYPE demo.access_control_plan_measure_access_type_enum OWNER TO XXXuser;

--
-- Name: access_control_target_department_category_enum; Type: TYPE; Schema: demo; Owner: XXXuser
--

CREATE TYPE demo.access_control_target_department_category_enum AS ENUM (
    'hub',
    'businessUnit',
    'department',
    'division',
    'unit'
);


ALTER TYPE demo.access_control_target_department_category_enum OWNER TO XXXuser;

--
-- Name: account_display_title_type_enum; Type: TYPE; Schema: demo; Owner: XXXuser
--

CREATE TYPE demo.account_display_title_type_enum AS ENUM (
    'cost',
    'sellingExpense',
    'generalAdministrativeExpense'
);


ALTER TYPE demo.account_display_title_type_enum OWNER TO XXXuser;

--
-- Name: account_title_type_enum; Type: TYPE; Schema: demo; Owner: XXXuser
--

CREATE TYPE demo.account_title_type_enum AS ENUM (
    'laborCost'
);


ALTER TYPE demo.account_title_type_enum OWNER TO XXXuser;

--
-- Name: annual_plan_status_enum; Type: TYPE; Schema: demo; Owner: XXXuser
--

CREATE TYPE demo.annual_plan_status_enum AS ENUM (
    'inProgress',
    'approved'
);


ALTER TYPE demo.annual_plan_status_enum OWNER TO XXXuser;

--
-- Name: approval_category_slug_enum; Type: TYPE; Schema: demo; Owner: XXXuser
--

CREATE TYPE demo.approval_category_slug_enum AS ENUM (
    'plan',
    'plan_project',
    'plan_modification',
    'project',
    'task',
    'measure',
    'proposal_evaluation'
);


ALTER TYPE demo.approval_category_slug_enum OWNER TO XXXuser;

--
-- Name: approval_history_type_enum; Type: TYPE; Schema: demo; Owner: XXXuser
--

CREATE TYPE demo.approval_history_type_enum AS ENUM (
    'processing',
    'approved',
    'rejected',
    'canceled'
);


ALTER TYPE demo.approval_history_type_enum OWNER TO XXXuser;

--
-- Name: approval_request_status_enum; Type: TYPE; Schema: demo; Owner: XXXuser
--

CREATE TYPE demo.approval_request_status_enum AS ENUM (
    'waitingForApprove',
    'canceled'
);


ALTER TYPE demo.approval_request_status_enum OWNER TO XXXuser;

--
-- Name: approval_step_approver_type_enum; Type: TYPE; Schema: demo; Owner: XXXuser
--

CREATE TYPE demo.approval_step_approver_type_enum AS ENUM (
    'departments',
    'departmentsAndAnySuperior',
    'departmentsAndRecentSuperior'
);


ALTER TYPE demo.approval_step_approver_type_enum OWNER TO XXXuser;

--
-- Name: approval_step_assignee_approval_status_enum; Type: TYPE; Schema: demo; Owner: XXXuser
--

CREATE TYPE demo.approval_step_assignee_approval_status_enum AS ENUM (
    'processing',
    'approved',
    'rejected',
    'canceled'
);


ALTER TYPE demo.approval_step_assignee_approval_status_enum OWNER TO XXXuser;

--
-- Name: approval_step_type_enum; Type: TYPE; Schema: demo; Owner: XXXuser
--

CREATE TYPE demo.approval_step_type_enum AS ENUM (
    'everyone',
    'atLeastOne'
);


ALTER TYPE demo.approval_step_type_enum OWNER TO XXXuser;

--
-- Name: department_category_enum; Type: TYPE; Schema: demo; Owner: XXXuser
--

CREATE TYPE demo.department_category_enum AS ENUM (
    'hub',
    'businessUnit',
    'department',
    'division',
    'unit'
);


ALTER TYPE demo.department_category_enum OWNER TO XXXuser;

--
-- Name: issue_occur_frequency_enum; Type: TYPE; Schema: demo; Owner: XXXuser
--

CREATE TYPE demo.issue_occur_frequency_enum AS ENUM (
    'once',
    'multiple'
);


ALTER TYPE demo.issue_occur_frequency_enum OWNER TO XXXuser;

--
-- Name: issue_occur_status_enum; Type: TYPE; Schema: demo; Owner: XXXuser
--

CREATE TYPE demo.issue_occur_status_enum AS ENUM (
    'occurred',
    'mayOccur'
);


ALTER TYPE demo.issue_occur_status_enum OWNER TO XXXuser;

--
-- Name: notification_template_type_enum; Type: TYPE; Schema: demo; Owner: XXXuser
--

CREATE TYPE demo.notification_template_type_enum AS ENUM (
    'planMeasureRegistrationCompleted',
    'planMeasureRegistrationRequest',
    'planFormulationCompleted',
    'planFormulationRequest',
    'approvalRequest',
    'reviewRequest',
    'surveyRequest',
    'alert',
    'assignedTaskOwner',
    'assignedMeasureOwner',
    'system',
    'other'
);


ALTER TYPE demo.notification_template_type_enum OWNER TO XXXuser;

--
-- Name: plan_measure_classification_enum; Type: TYPE; Schema: demo; Owner: XXXuser
--

CREATE TYPE demo.plan_measure_classification_enum AS ENUM (
    'New',
    'Existing',
    'RiskAvoidance',
    'LegalComplianceOrEtc'
);


ALTER TYPE demo.plan_measure_classification_enum OWNER TO XXXuser;

--
-- Name: plan_measure_cost_effect_inc_dec_enum; Type: TYPE; Schema: demo; Owner: XXXuser
--

CREATE TYPE demo.plan_measure_cost_effect_inc_dec_enum AS ENUM (
    'Increase',
    'Decrease',
    'MaintainStatusQuo'
);


ALTER TYPE demo.plan_measure_cost_effect_inc_dec_enum OWNER TO XXXuser;

--
-- Name: plan_measure_cost_effect_increase_decrease_enum; Type: TYPE; Schema: demo; Owner: XXXuser
--

CREATE TYPE demo.plan_measure_cost_effect_increase_decrease_enum AS ENUM (
    'Increase',
    'Decrease',
    'MaintainStatusQuo'
);


ALTER TYPE demo.plan_measure_cost_effect_increase_decrease_enum OWNER TO XXXuser;

--
-- Name: plan_measure_cost_item_enum; Type: TYPE; Schema: demo; Owner: XXXuser
--

CREATE TYPE demo.plan_measure_cost_item_enum AS ENUM (
    'Cost',
    'DeemedCost',
    'Other'
);


ALTER TYPE demo.plan_measure_cost_item_enum OWNER TO XXXuser;

--
-- Name: plan_measure_effect_sale_effect_inc_dec_enum; Type: TYPE; Schema: demo; Owner: XXXuser
--

CREATE TYPE demo.plan_measure_effect_sale_effect_inc_dec_enum AS ENUM (
    'Increase',
    'Decrease',
    'MaintainStatusQuo'
);


ALTER TYPE demo.plan_measure_effect_sale_effect_inc_dec_enum OWNER TO XXXuser;

--
-- Name: plan_measure_effect_sale_project_enum; Type: TYPE; Schema: demo; Owner: XXXuser
--

CREATE TYPE demo.plan_measure_effect_sale_project_enum AS ENUM (
    'Sales',
    'DeemedSales'
);


ALTER TYPE demo.plan_measure_effect_sale_project_enum OWNER TO XXXuser;

--
-- Name: plan_measure_implementation_target_enum; Type: TYPE; Schema: demo; Owner: XXXuser
--

CREATE TYPE demo.plan_measure_implementation_target_enum AS ENUM (
    'Target',
    'NonTarget'
);


ALTER TYPE demo.plan_measure_implementation_target_enum OWNER TO XXXuser;

--
-- Name: plan_measure_risk_target_type_enum; Type: TYPE; Schema: demo; Owner: XXXuser
--

CREATE TYPE demo.plan_measure_risk_target_type_enum AS ENUM (
    'RiskSales',
    'RiskCosts'
);


ALTER TYPE demo.plan_measure_risk_target_type_enum OWNER TO XXXuser;

--
-- Name: plan_measure_task_cost_recording_destination_enum; Type: TYPE; Schema: demo; Owner: XXXuser
--

CREATE TYPE demo.plan_measure_task_cost_recording_destination_enum AS ENUM (
    'OwnDepartment',
    'Common'
);


ALTER TYPE demo.plan_measure_task_cost_recording_destination_enum OWNER TO XXXuser;

--
-- Name: plan_measure_task_kpi_period_enum; Type: TYPE; Schema: demo; Owner: XXXuser
--

CREATE TYPE demo.plan_measure_task_kpi_period_enum AS ENUM (
    'Monthly',
    'Quarter',
    'HalfPeriod',
    'Yearly'
);


ALTER TYPE demo.plan_measure_task_kpi_period_enum OWNER TO XXXuser;

--
-- Name: plan_measure_task_kpi_type_enum; Type: TYPE; Schema: demo; Owner: XXXuser
--

CREATE TYPE demo.plan_measure_task_kpi_type_enum AS ENUM (
    'Effect',
    'Schedule',
    'Others'
);


ALTER TYPE demo.plan_measure_task_kpi_type_enum OWNER TO XXXuser;

--
-- Name: plan_status_enum; Type: TYPE; Schema: demo; Owner: XXXuser
--

CREATE TYPE demo.plan_status_enum AS ENUM (
    'inProgress',
    'confirmed'
);


ALTER TYPE demo.plan_status_enum OWNER TO XXXuser;

--
-- Name: project_milestone_type_enum; Type: TYPE; Schema: demo; Owner: XXXuser
--

CREATE TYPE demo.project_milestone_type_enum AS ENUM (
    'projectEndDate',
    'decisionDueDate',
    'others'
);


ALTER TYPE demo.project_milestone_type_enum OWNER TO XXXuser;

--
-- Name: project_priority_enum; Type: TYPE; Schema: demo; Owner: XXXuser
--

CREATE TYPE demo.project_priority_enum AS ENUM (
    'high',
    'middle',
    'low'
);


ALTER TYPE demo.project_priority_enum OWNER TO XXXuser;

--
-- Name: project_progress_report_project_status_enum; Type: TYPE; Schema: demo; Owner: XXXuser
--

CREATE TYPE demo.project_progress_report_project_status_enum AS ENUM (
    'planning',
    'doing',
    'done',
    'canceled'
);


ALTER TYPE demo.project_progress_report_project_status_enum OWNER TO XXXuser;

--
-- Name: project_progress_report_status_enum; Type: TYPE; Schema: demo; Owner: XXXuser
--

CREATE TYPE demo.project_progress_report_status_enum AS ENUM (
    'advanced',
    'onTime',
    'delayed'
);


ALTER TYPE demo.project_progress_report_status_enum OWNER TO XXXuser;

--
-- Name: project_progress_report_unit_enum; Type: TYPE; Schema: demo; Owner: XXXuser
--

CREATE TYPE demo.project_progress_report_unit_enum AS ENUM (
    'day',
    'manHour'
);


ALTER TYPE demo.project_progress_report_unit_enum OWNER TO XXXuser;

--
-- Name: project_schedule_type_enum; Type: TYPE; Schema: demo; Owner: XXXuser
--

CREATE TYPE demo.project_schedule_type_enum AS ENUM (
    'planning',
    'problemAnalysis',
    'measures',
    'policyPlanning',
    'policyDecision'
);


ALTER TYPE demo.project_schedule_type_enum OWNER TO XXXuser;

--
-- Name: project_status_enum; Type: TYPE; Schema: demo; Owner: XXXuser
--

CREATE TYPE demo.project_status_enum AS ENUM (
    'planning',
    'doing',
    'done',
    'canceled'
);


ALTER TYPE demo.project_status_enum OWNER TO XXXuser;

--
-- Name: task_task_status_enum; Type: TYPE; Schema: demo; Owner: XXXuser
--

CREATE TYPE demo.task_task_status_enum AS ENUM (
    'registered',
    'planningCounter',
    'planningMeasure',
    'evaluatingMeasure',
    'fixedMeasure',
    'canceled'
);


ALTER TYPE demo.task_task_status_enum OWNER TO XXXuser;

--
-- Name: task_task_type_enum; Type: TYPE; Schema: demo; Owner: XXXuser
--

CREATE TYPE demo.task_task_type_enum AS ENUM (
    '0',
    '1',
    '2',
    '3',
    '4',
    '5',
    '6'
);


ALTER TYPE demo.task_task_type_enum OWNER TO XXXuser;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: access_control; Type: TABLE; Schema: demo; Owner: XXXuser
--

CREATE TABLE demo.access_control (
    id integer NOT NULL,
    identity_type demo.access_control_identity_type_enum NOT NULL,
    plan_access_type demo.access_control_plan_access_type_enum NOT NULL,
    plan_measure_access_type demo.access_control_plan_measure_access_type_enum NOT NULL,
    plan_formulation_request_flag boolean DEFAULT false,
    plan_measure_registration_request_flag boolean DEFAULT false,
    plan_measure_confirm_flag boolean DEFAULT false,
    version integer DEFAULT 1 NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    created_user_id integer,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    deleted_at timestamp without time zone,
    deleted_user_id integer,
    position_id integer,
    user_department_id integer,
    client_id integer NOT NULL,
    plan_approval_access_type demo.access_control_plan_approval_access_type_enum,
    -- P2FW-719
    -- target_department_level demo.access_control_target_department_category_enum,
    target_department_level_id integer,
    updated_user_id integer
);


ALTER TABLE demo.access_control OWNER TO XXXuser;

--
-- Name: COLUMN access_control.id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.access_control.id IS '利用機能制限テーブルID';


--
-- Name: COLUMN access_control.identity_type; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.access_control.identity_type IS '利用制限対象者タイプ';


--
-- Name: COLUMN access_control.plan_access_type; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.access_control.plan_access_type IS '事業計画利用タイプ';


--
-- Name: COLUMN access_control.plan_measure_access_type; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.access_control.plan_measure_access_type IS '施策機能利用タイプ';


--
-- Name: COLUMN access_control.plan_formulation_request_flag; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.access_control.plan_formulation_request_flag IS '計画策定依頼フラグ';


--
-- Name: COLUMN access_control.plan_measure_registration_request_flag; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.access_control.plan_measure_registration_request_flag IS 'フラグ施策登録依頼';


--
-- Name: COLUMN access_control.plan_measure_confirm_flag; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.access_control.plan_measure_confirm_flag IS '施策決定フラグ';


--
-- Name: COLUMN access_control.version; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.access_control.version IS 'バージョン';


--
-- Name: COLUMN access_control.created_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.access_control.created_at IS '作成日時';


--
-- Name: COLUMN access_control.created_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.access_control.created_user_id IS '作成利用者ID';


--
-- Name: COLUMN access_control.updated_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.access_control.updated_at IS '更新日時';


--
-- Name: COLUMN access_control.deleted_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.access_control.deleted_at IS '削除日時';


--
-- Name: COLUMN access_control.deleted_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.access_control.deleted_user_id IS '削除利用者ID';


--
-- Name: COLUMN access_control.position_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.access_control.position_id IS '役職ID';


--
-- Name: COLUMN access_control.user_department_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.access_control.user_department_id IS '利用者部署ID';


--
-- Name: COLUMN access_control.client_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.access_control.client_id IS '導入企業ID';


--
-- Name: COLUMN access_control.plan_approval_access_type; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.access_control.plan_approval_access_type IS '事業計画承認利用タイプ';


--
-- Name: COLUMN access_control.target_department_level_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.access_control.target_department_level_id IS '対象組織区分';


--
-- Name: COLUMN access_control.updated_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.access_control.updated_user_id IS '更新利用者ID';


--
-- Name: access_control_id_seq; Type: SEQUENCE; Schema: demo; Owner: XXXuser
--

CREATE SEQUENCE demo.access_control_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE demo.access_control_id_seq OWNER TO XXXuser;

--
-- Name: access_control_id_seq; Type: SEQUENCE OWNED BY; Schema: demo; Owner: XXXuser
--

ALTER SEQUENCE demo.access_control_id_seq OWNED BY demo.access_control.id;


--
-- Name: account_display_title; Type: TABLE; Schema: demo; Owner: XXXuser
--

CREATE TABLE demo.account_display_title (
    id integer NOT NULL,
    version integer DEFAULT 1 NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    created_user_id integer,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    deleted_at timestamp without time zone,
    deleted_user_id integer,
    client_id integer NOT NULL,
    name character varying(255) NOT NULL,
    type demo.account_display_title_type_enum,
    updated_user_id integer
);


ALTER TABLE demo.account_display_title OWNER TO XXXuser;

--
-- Name: COLUMN account_display_title.id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.account_display_title.id IS '科目ID';


--
-- Name: COLUMN account_display_title.version; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.account_display_title.version IS 'バージョン';


--
-- Name: COLUMN account_display_title.created_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.account_display_title.created_at IS '作成日時';


--
-- Name: COLUMN account_display_title.created_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.account_display_title.created_user_id IS '作成利用者ID';


--
-- Name: COLUMN account_display_title.updated_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.account_display_title.updated_at IS '更新日時';


--
-- Name: COLUMN account_display_title.deleted_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.account_display_title.deleted_at IS '削除日時';


--
-- Name: COLUMN account_display_title.deleted_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.account_display_title.deleted_user_id IS '削除利用者ID';


--
-- Name: COLUMN account_display_title.client_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.account_display_title.client_id IS '導入企業ID';


--
-- Name: COLUMN account_display_title.name; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.account_display_title.name IS '科目名';


--
-- Name: COLUMN account_display_title.type; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.account_display_title.type IS '科目区分';


--
-- Name: COLUMN account_display_title.updated_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.account_display_title.updated_user_id IS '更新利用者ID';


--
-- Name: account_display_title_id_seq; Type: SEQUENCE; Schema: demo; Owner: XXXuser
--

CREATE SEQUENCE demo.account_display_title_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE demo.account_display_title_id_seq OWNER TO XXXuser;

--
-- Name: account_display_title_id_seq; Type: SEQUENCE OWNED BY; Schema: demo; Owner: XXXuser
--

ALTER SEQUENCE demo.account_display_title_id_seq OWNED BY demo.account_display_title.id;


--
-- Name: account_title; Type: TABLE; Schema: demo; Owner: XXXuser
--

CREATE TABLE demo.account_title (
    id integer NOT NULL,
    version integer DEFAULT 1 NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    created_user_id integer,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    deleted_at timestamp without time zone,
    deleted_user_id integer,
    client_id integer NOT NULL,
    name character varying(255) NOT NULL,
    type demo.account_title_type_enum,
    updated_user_id integer,
    account_display_title_id integer NOT NULL
);


ALTER TABLE demo.account_title OWNER TO XXXuser;

--
-- Name: COLUMN account_title.id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.account_title.id IS '科目ID';


--
-- Name: COLUMN account_title.version; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.account_title.version IS 'バージョン';


--
-- Name: COLUMN account_title.created_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.account_title.created_at IS '作成日時';


--
-- Name: COLUMN account_title.created_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.account_title.created_user_id IS '作成利用者ID';


--
-- Name: COLUMN account_title.updated_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.account_title.updated_at IS '更新日時';


--
-- Name: COLUMN account_title.deleted_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.account_title.deleted_at IS '削除日時';


--
-- Name: COLUMN account_title.deleted_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.account_title.deleted_user_id IS '削除利用者ID';


--
-- Name: COLUMN account_title.client_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.account_title.client_id IS '導入企業ID';


--
-- Name: COLUMN account_title.name; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.account_title.name IS '勘定科目名';


--
-- Name: COLUMN account_title.type; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.account_title.type IS '勘定科目区分';


--
-- Name: COLUMN account_title.updated_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.account_title.updated_user_id IS '更新利用者ID';


--
-- Name: COLUMN account_title.account_display_title_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.account_title.account_display_title_id IS '科目ID';


--
-- Name: account_title_id_seq; Type: SEQUENCE; Schema: demo; Owner: XXXuser
--

CREATE SEQUENCE demo.account_title_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE demo.account_title_id_seq OWNER TO XXXuser;

--
-- Name: account_title_id_seq; Type: SEQUENCE OWNED BY; Schema: demo; Owner: XXXuser
--

ALTER SEQUENCE demo.account_title_id_seq OWNED BY demo.account_title.id;


--
-- Name: annual_plan; Type: TABLE; Schema: demo; Owner: XXXuser
--

CREATE TABLE demo.annual_plan (
    id integer NOT NULL,
    status demo.annual_plan_status_enum DEFAULT 'inProgress'::demo.annual_plan_status_enum NOT NULL,
    version integer DEFAULT 1 NOT NULL,
    created_user_id integer,
    updated_user_id integer,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    deleted_at timestamp without time zone,
    deleted_user_id integer,
    client_id integer NOT NULL,
    business_year_id integer NOT NULL,
    department_id integer
);


ALTER TABLE demo.annual_plan OWNER TO XXXuser;

--
-- Name: COLUMN annual_plan.id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.annual_plan.id IS '事業計画ID';


--
-- Name: COLUMN annual_plan.status; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.annual_plan.status IS 'ステータス';


--
-- Name: COLUMN annual_plan.version; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.annual_plan.version IS 'バージョン';


--
-- Name: COLUMN annual_plan.created_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.annual_plan.created_user_id IS '作成利用者ID';


--
-- Name: COLUMN annual_plan.updated_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.annual_plan.updated_user_id IS '更新利用者ID';


--
-- Name: COLUMN annual_plan.created_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.annual_plan.created_at IS '作成日時';


--
-- Name: COLUMN annual_plan.updated_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.annual_plan.updated_at IS '更新日時';


--
-- Name: COLUMN annual_plan.deleted_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.annual_plan.deleted_at IS '削除日時';


--
-- Name: COLUMN annual_plan.deleted_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.annual_plan.deleted_user_id IS '削除利用者ID';


--
-- Name: COLUMN annual_plan.client_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.annual_plan.client_id IS '導入企業ID';


--
-- Name: COLUMN annual_plan.business_year_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.annual_plan.business_year_id IS '年度ID';


--
-- Name: COLUMN annual_plan.department_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.annual_plan.department_id IS '部署ID';


--
-- Name: annual_plan_id_seq; Type: SEQUENCE; Schema: demo; Owner: XXXuser
--

CREATE SEQUENCE demo.annual_plan_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE demo.annual_plan_id_seq OWNER TO XXXuser;

--
-- Name: annual_plan_id_seq; Type: SEQUENCE OWNED BY; Schema: demo; Owner: XXXuser
--

ALTER SEQUENCE demo.annual_plan_id_seq OWNED BY demo.annual_plan.id;


--
-- Name: approval_category; Type: TABLE; Schema: demo; Owner: XXXuser
--

CREATE TABLE demo.approval_category (
    id integer NOT NULL,
    slug demo.approval_category_slug_enum NOT NULL,
    name character varying(2048) NOT NULL,
    version integer DEFAULT 1 NOT NULL,
    created_user_id integer,
    updated_user_id integer,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    deleted_at timestamp without time zone,
    deleted_user_id integer,
    approval_email_template_id integer,
    approval_request_message_template_id integer,
    client_id integer NOT NULL
);


ALTER TABLE demo.approval_category OWNER TO XXXuser;

--
-- Name: COLUMN approval_category.id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_category.id IS '承認対象ID';


--
-- Name: COLUMN approval_category.slug; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_category.slug IS '承認対象スラッグ (承認区分スラッグ)';


--
-- Name: COLUMN approval_category.name; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_category.name IS '承認対象名 (承認区分名)';


--
-- Name: COLUMN approval_category.version; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_category.version IS 'バージョン';


--
-- Name: COLUMN approval_category.created_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_category.created_user_id IS '作成利用者ID';


--
-- Name: COLUMN approval_category.updated_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_category.updated_user_id IS '更新利用者ID';


--
-- Name: COLUMN approval_category.created_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_category.created_at IS '作成日時';


--
-- Name: COLUMN approval_category.updated_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_category.updated_at IS '更新日時';


--
-- Name: COLUMN approval_category.deleted_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_category.deleted_at IS '削除日時';


--
-- Name: COLUMN approval_category.deleted_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_category.deleted_user_id IS '削除利用者ID';


--
-- Name: COLUMN approval_category.approval_email_template_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_category.approval_email_template_id IS '承認対象ID';


--
-- Name: COLUMN approval_category.approval_request_message_template_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_category.approval_request_message_template_id IS '承認依頼メッセージテンプレートID';


--
-- Name: COLUMN approval_category.client_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_category.client_id IS '導入企業ID';


--
-- Name: approval_category_id_seq; Type: SEQUENCE; Schema: demo; Owner: XXXuser
--

CREATE SEQUENCE demo.approval_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE demo.approval_category_id_seq OWNER TO XXXuser;

--
-- Name: approval_category_id_seq; Type: SEQUENCE OWNED BY; Schema: demo; Owner: XXXuser
--

ALTER SEQUENCE demo.approval_category_id_seq OWNED BY demo.approval_category.id;


--
-- Name: approval_email_template; Type: TABLE; Schema: demo; Owner: XXXuser
--

CREATE TABLE demo.approval_email_template (
    id integer NOT NULL,
    request_message character varying NOT NULL,
    approval_next_message character varying NOT NULL,
    approval_requester_message character varying NOT NULL,
    reject_message character varying NOT NULL,
    cancel_message character varying NOT NULL,
    version integer DEFAULT 1 NOT NULL,
    created_user_id integer,
    updated_user_id integer,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    deleted_at timestamp without time zone,
    deleted_user_id integer,
    client_id integer NOT NULL,
    request_message_subject character varying,
    approval_next_message_subject character varying,
    approval_requester_message_subject character varying,
    reject_message_subject character varying,
    cancel_message_subject character varying
);


ALTER TABLE demo.approval_email_template OWNER TO XXXuser;

--
-- Name: COLUMN approval_email_template.id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_email_template.id IS '承認対象ID';


--
-- Name: COLUMN approval_email_template.request_message; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_email_template.request_message IS '文面 (依頼)';


--
-- Name: COLUMN approval_email_template.approval_next_message; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_email_template.approval_next_message IS '文面 (承認 - 次の人)';


--
-- Name: COLUMN approval_email_template.approval_requester_message; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_email_template.approval_requester_message IS '文面 (承認 - 依頼元)';


--
-- Name: COLUMN approval_email_template.reject_message; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_email_template.reject_message IS '文面 (却下)';


--
-- Name: COLUMN approval_email_template.cancel_message; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_email_template.cancel_message IS '文面 (依頼取り消し)';


--
-- Name: COLUMN approval_email_template.version; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_email_template.version IS 'バージョン';


--
-- Name: COLUMN approval_email_template.created_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_email_template.created_user_id IS '作成利用者ID';


--
-- Name: COLUMN approval_email_template.updated_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_email_template.updated_user_id IS '更新利用者ID';


--
-- Name: COLUMN approval_email_template.created_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_email_template.created_at IS '作成日時';


--
-- Name: COLUMN approval_email_template.updated_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_email_template.updated_at IS '更新日時';


--
-- Name: COLUMN approval_email_template.deleted_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_email_template.deleted_at IS '削除日時';


--
-- Name: COLUMN approval_email_template.deleted_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_email_template.deleted_user_id IS '削除利用者ID';


--
-- Name: COLUMN approval_email_template.client_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_email_template.client_id IS '導入企業ID';


--
-- Name: COLUMN approval_email_template.request_message_subject; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_email_template.request_message_subject IS 'タイトル (依頼)';


--
-- Name: COLUMN approval_email_template.approval_next_message_subject; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_email_template.approval_next_message_subject IS 'タイトル (承認 - 次の人)';


--
-- Name: COLUMN approval_email_template.approval_requester_message_subject; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_email_template.approval_requester_message_subject IS 'タイトル (承認 - 依頼元)';


--
-- Name: COLUMN approval_email_template.reject_message_subject; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_email_template.reject_message_subject IS 'タイトル (却下)';


--
-- Name: COLUMN approval_email_template.cancel_message_subject; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_email_template.cancel_message_subject IS 'タイトル (依頼取り消し)';


--
-- Name: approval_email_template_id_seq; Type: SEQUENCE; Schema: demo; Owner: XXXuser
--

CREATE SEQUENCE demo.approval_email_template_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE demo.approval_email_template_id_seq OWNER TO XXXuser;

--
-- Name: approval_email_template_id_seq; Type: SEQUENCE OWNED BY; Schema: demo; Owner: XXXuser
--

ALTER SEQUENCE demo.approval_email_template_id_seq OWNED BY demo.approval_email_template.id;


--
-- Name: approval_flow; Type: TABLE; Schema: demo; Owner: XXXuser
--

CREATE TABLE demo.approval_flow (
    id integer NOT NULL,
    name character varying(2048),
    description character varying(2048),
    version integer DEFAULT 1 NOT NULL,
    created_user_id integer,
    updated_user_id integer,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    deleted_at timestamp without time zone,
    deleted_user_id integer,
    client_id integer NOT NULL
);


ALTER TABLE demo.approval_flow OWNER TO XXXuser;

--
-- Name: COLUMN approval_flow.id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_flow.id IS '承認経路ID';


--
-- Name: COLUMN approval_flow.name; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_flow.name IS '承認経路名';


--
-- Name: COLUMN approval_flow.description; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_flow.description IS '説明';


--
-- Name: COLUMN approval_flow.version; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_flow.version IS 'バージョン';


--
-- Name: COLUMN approval_flow.created_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_flow.created_user_id IS '作成利用者ID';


--
-- Name: COLUMN approval_flow.updated_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_flow.updated_user_id IS '更新利用者ID';


--
-- Name: COLUMN approval_flow.created_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_flow.created_at IS '作成日時';


--
-- Name: COLUMN approval_flow.updated_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_flow.updated_at IS '更新日時';


--
-- Name: COLUMN approval_flow.deleted_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_flow.deleted_at IS '削除日時';


--
-- Name: COLUMN approval_flow.deleted_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_flow.deleted_user_id IS '削除利用者ID';


--
-- Name: COLUMN approval_flow.client_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_flow.client_id IS '導入企業ID';


--
-- Name: approval_flow_id_seq; Type: SEQUENCE; Schema: demo; Owner: XXXuser
--

CREATE SEQUENCE demo.approval_flow_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE demo.approval_flow_id_seq OWNER TO XXXuser;

--
-- Name: approval_flow_id_seq; Type: SEQUENCE OWNED BY; Schema: demo; Owner: XXXuser
--

ALTER SEQUENCE demo.approval_flow_id_seq OWNED BY demo.approval_flow.id;


--
-- Name: approval_history; Type: TABLE; Schema: demo; Owner: XXXuser
--

CREATE TABLE demo.approval_history (
    id integer NOT NULL,
    type demo.approval_history_type_enum NOT NULL,
    comment character varying(2048),
    decided_at timestamp without time zone DEFAULT now() NOT NULL,
    version integer DEFAULT 1 NOT NULL,
    created_user_id integer,
    updated_user_id integer,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    deleted_at timestamp without time zone,
    deleted_user_id integer,
    approval_step_assignee_id integer
);


ALTER TABLE demo.approval_history OWNER TO XXXuser;

--
-- Name: COLUMN approval_history.id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_history.id IS '承認結果ID';


--
-- Name: COLUMN approval_history.type; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_history.type IS '承認ステータス';


--
-- Name: COLUMN approval_history.comment; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_history.comment IS 'コメント';


--
-- Name: COLUMN approval_history.decided_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_history.decided_at IS '決定日時';


--
-- Name: COLUMN approval_history.version; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_history.version IS 'バージョン';


--
-- Name: COLUMN approval_history.created_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_history.created_user_id IS '作成利用者ID';


--
-- Name: COLUMN approval_history.updated_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_history.updated_user_id IS '更新利用者ID';


--
-- Name: COLUMN approval_history.created_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_history.created_at IS '作成日時';


--
-- Name: COLUMN approval_history.updated_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_history.updated_at IS '更新日時';


--
-- Name: COLUMN approval_history.deleted_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_history.deleted_at IS '削除日時';


--
-- Name: COLUMN approval_history.deleted_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_history.deleted_user_id IS '削除利用者ID';


--
-- Name: COLUMN approval_history.approval_step_assignee_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_history.approval_step_assignee_id IS '承認ステップ担当者ID';


--
-- Name: approval_history_id_seq; Type: SEQUENCE; Schema: demo; Owner: XXXuser
--

CREATE SEQUENCE demo.approval_history_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE demo.approval_history_id_seq OWNER TO XXXuser;

--
-- Name: approval_history_id_seq; Type: SEQUENCE OWNED BY; Schema: demo; Owner: XXXuser
--

ALTER SEQUENCE demo.approval_history_id_seq OWNED BY demo.approval_history.id;


--
-- Name: approval_request; Type: TABLE; Schema: demo; Owner: XXXuser
--

CREATE TABLE demo.approval_request (
    id integer NOT NULL,
    code character varying(21) NOT NULL,
    message character varying(2048),
    until date,
    version integer DEFAULT 1 NOT NULL,
    created_user_id integer,
    updated_user_id integer,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    deleted_at timestamp without time zone,
    deleted_user_id integer,
    client_id integer NOT NULL,
    approval_category_id integer,
    requested_by_id integer,
    project_id integer,
    task_id integer,
    measure_id integer,
    approval_flow_id integer,
    status demo.approval_request_status_enum DEFAULT 'waitingForApprove'::demo.approval_request_status_enum NOT NULL
);


ALTER TABLE demo.approval_request OWNER TO XXXuser;

--
-- Name: COLUMN approval_request.id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_request.id IS '承認依頼ID';


--
-- Name: COLUMN approval_request.code; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_request.code IS '承認依頼コード';


--
-- Name: COLUMN approval_request.message; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_request.message IS '承認依頼メッセージ';


--
-- Name: COLUMN approval_request.until; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_request.until IS '承認期限';


--
-- Name: COLUMN approval_request.version; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_request.version IS 'バージョン';


--
-- Name: COLUMN approval_request.created_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_request.created_user_id IS '作成利用者ID';


--
-- Name: COLUMN approval_request.updated_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_request.updated_user_id IS '更新利用者ID';


--
-- Name: COLUMN approval_request.created_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_request.created_at IS '作成日時';


--
-- Name: COLUMN approval_request.updated_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_request.updated_at IS '更新日時';


--
-- Name: COLUMN approval_request.deleted_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_request.deleted_at IS '削除日時';


--
-- Name: COLUMN approval_request.deleted_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_request.deleted_user_id IS '削除利用者ID';


--
-- Name: COLUMN approval_request.client_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_request.client_id IS '導入企業ID';


--
-- Name: COLUMN approval_request.approval_category_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_request.approval_category_id IS '承認対象ID';


--
-- Name: COLUMN approval_request.requested_by_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_request.requested_by_id IS '利用者部署ID';


--
-- Name: COLUMN approval_request.project_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_request.project_id IS '企画ID';


--
-- Name: COLUMN approval_request.task_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_request.task_id IS '課題ID';


--
-- Name: COLUMN approval_request.measure_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_request.measure_id IS '施策ID';


--
-- Name: COLUMN approval_request.approval_flow_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_request.approval_flow_id IS '承認経路ID';


--
-- Name: COLUMN approval_request.status; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_request.status IS '承認依頼ステータス';


--
-- Name: approval_request_id_seq; Type: SEQUENCE; Schema: demo; Owner: XXXuser
--

CREATE SEQUENCE demo.approval_request_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE demo.approval_request_id_seq OWNER TO XXXuser;

--
-- Name: approval_request_id_seq; Type: SEQUENCE OWNED BY; Schema: demo; Owner: XXXuser
--

ALTER SEQUENCE demo.approval_request_id_seq OWNED BY demo.approval_request.id;


--
-- Name: approval_request_message_template; Type: TABLE; Schema: demo; Owner: XXXuser
--

CREATE TABLE demo.approval_request_message_template (
    id integer NOT NULL,
    message character varying,
    version integer DEFAULT 1 NOT NULL,
    created_user_id integer,
    updated_user_id integer,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    deleted_at timestamp without time zone,
    deleted_user_id integer,
    client_id integer NOT NULL
);


ALTER TABLE demo.approval_request_message_template OWNER TO XXXuser;

--
-- Name: COLUMN approval_request_message_template.id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_request_message_template.id IS '承認依頼メッセージテンプレートID';


--
-- Name: COLUMN approval_request_message_template.message; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_request_message_template.message IS '承認依頼メッセージ';


--
-- Name: COLUMN approval_request_message_template.version; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_request_message_template.version IS 'バージョン';


--
-- Name: COLUMN approval_request_message_template.created_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_request_message_template.created_user_id IS '作成利用者ID';


--
-- Name: COLUMN approval_request_message_template.updated_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_request_message_template.updated_user_id IS '更新利用者ID';


--
-- Name: COLUMN approval_request_message_template.created_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_request_message_template.created_at IS '作成日時';


--
-- Name: COLUMN approval_request_message_template.updated_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_request_message_template.updated_at IS '更新日時';


--
-- Name: COLUMN approval_request_message_template.deleted_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_request_message_template.deleted_at IS '削除日時';


--
-- Name: COLUMN approval_request_message_template.deleted_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_request_message_template.deleted_user_id IS '削除利用者ID';


--
-- Name: COLUMN approval_request_message_template.client_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_request_message_template.client_id IS '導入企業ID';


--
-- Name: approval_request_message_template_id_seq; Type: SEQUENCE; Schema: demo; Owner: XXXuser
--

CREATE SEQUENCE demo.approval_request_message_template_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE demo.approval_request_message_template_id_seq OWNER TO XXXuser;

--
-- Name: approval_request_message_template_id_seq; Type: SEQUENCE OWNED BY; Schema: demo; Owner: XXXuser
--

ALTER SEQUENCE demo.approval_request_message_template_id_seq OWNED BY demo.approval_request_message_template.id;


--
-- Name: approval_step; Type: TABLE; Schema: demo; Owner: XXXuser
--

CREATE TABLE demo.approval_step (
    id integer NOT NULL,
    name character varying(2048),
    "order" integer,
    type demo.approval_step_type_enum NOT NULL,
    is_editable_flow boolean DEFAULT false,
    is_skippable_flow boolean DEFAULT false,
    approver_type demo.approval_step_approver_type_enum NOT NULL,
    is_requester_included boolean DEFAULT false,
    version integer DEFAULT 1 NOT NULL,
    created_user_id integer,
    updated_user_id integer,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    deleted_at timestamp without time zone,
    deleted_user_id integer,
    approval_flow_id integer,
    department_id integer,
    client_id integer NOT NULL
);


ALTER TABLE demo.approval_step OWNER TO XXXuser;

--
-- Name: COLUMN approval_step.id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_step.id IS '承認ステップID';


--
-- Name: COLUMN approval_step.name; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_step.name IS '承認ステップ名';


--
-- Name: COLUMN approval_step."order"; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_step."order" IS '承認順序';


--
-- Name: COLUMN approval_step.type; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_step.type IS '種別 (全員/誰か一人)';


--
-- Name: COLUMN approval_step.is_editable_flow; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_step.is_editable_flow IS '依頼時経路変更フラグ: 承認依頼時に、依頼者が経路を変更することを許可するか否か';


--
-- Name: COLUMN approval_step.is_skippable_flow; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_step.is_skippable_flow IS '依頼者経路スキップフラグ: 承認依頼時に、依頼者が経路をスキップすることを許可するか否か';


--
-- Name: COLUMN approval_step.approver_type; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_step.approver_type IS '承認者区分';


--
-- Name: COLUMN approval_step.is_requester_included; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_step.is_requester_included IS '申請者を含めるか否か';


--
-- Name: COLUMN approval_step.version; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_step.version IS 'バージョン';


--
-- Name: COLUMN approval_step.created_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_step.created_user_id IS '作成利用者ID';


--
-- Name: COLUMN approval_step.updated_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_step.updated_user_id IS '更新利用者ID';


--
-- Name: COLUMN approval_step.created_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_step.created_at IS '作成日時';


--
-- Name: COLUMN approval_step.updated_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_step.updated_at IS '更新日時';


--
-- Name: COLUMN approval_step.deleted_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_step.deleted_at IS '削除日時';


--
-- Name: COLUMN approval_step.deleted_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_step.deleted_user_id IS '削除利用者ID';


--
-- Name: COLUMN approval_step.approval_flow_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_step.approval_flow_id IS '承認経路ID';


--
-- Name: COLUMN approval_step.department_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_step.department_id IS '部署ID';


--
-- Name: COLUMN approval_step.client_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_step.client_id IS '導入企業ID';


--
-- Name: approval_step_assignee; Type: TABLE; Schema: demo; Owner: XXXuser
--

CREATE TABLE demo.approval_step_assignee (
    id integer NOT NULL,
    comment character varying(2048),
    approval_status demo.approval_step_assignee_approval_status_enum DEFAULT 'processing'::demo.approval_step_assignee_approval_status_enum NOT NULL,
    version integer DEFAULT 1 NOT NULL,
    created_user_id integer,
    updated_user_id integer,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    deleted_at timestamp without time zone,
    deleted_user_id integer,
    user_department_id integer,
    approval_step_id integer,
    client_id integer NOT NULL,
    status_changed_at timestamp without time zone
);


ALTER TABLE demo.approval_step_assignee OWNER TO XXXuser;

--
-- Name: COLUMN approval_step_assignee.id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_step_assignee.id IS '承認ステップ担当者ID';


--
-- Name: COLUMN approval_step_assignee.comment; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_step_assignee.comment IS '担当者コメント';


--
-- Name: COLUMN approval_step_assignee.approval_status; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_step_assignee.approval_status IS '承認ステータス';


--
-- Name: COLUMN approval_step_assignee.version; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_step_assignee.version IS 'バージョン';


--
-- Name: COLUMN approval_step_assignee.created_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_step_assignee.created_user_id IS '作成利用者ID';


--
-- Name: COLUMN approval_step_assignee.updated_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_step_assignee.updated_user_id IS '更新利用者ID';


--
-- Name: COLUMN approval_step_assignee.created_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_step_assignee.created_at IS '作成日時';


--
-- Name: COLUMN approval_step_assignee.updated_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_step_assignee.updated_at IS '更新日時';


--
-- Name: COLUMN approval_step_assignee.deleted_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_step_assignee.deleted_at IS '削除日時';


--
-- Name: COLUMN approval_step_assignee.deleted_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_step_assignee.deleted_user_id IS '削除利用者ID';


--
-- Name: COLUMN approval_step_assignee.user_department_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_step_assignee.user_department_id IS '利用者部署ID';


--
-- Name: COLUMN approval_step_assignee.approval_step_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_step_assignee.approval_step_id IS '承認ステップID';


--
-- Name: COLUMN approval_step_assignee.client_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_step_assignee.client_id IS '導入企業ID';


--
-- Name: COLUMN approval_step_assignee.status_changed_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_step_assignee.status_changed_at IS '承認/却下等のステータスが変化した日時';


--
-- Name: approval_step_assignee_id_seq; Type: SEQUENCE; Schema: demo; Owner: XXXuser
--

CREATE SEQUENCE demo.approval_step_assignee_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE demo.approval_step_assignee_id_seq OWNER TO XXXuser;

--
-- Name: approval_step_assignee_id_seq; Type: SEQUENCE OWNED BY; Schema: demo; Owner: XXXuser
--

ALTER SEQUENCE demo.approval_step_assignee_id_seq OWNED BY demo.approval_step_assignee.id;


--
-- Name: approval_step_id_seq; Type: SEQUENCE; Schema: demo; Owner: XXXuser
--

CREATE SEQUENCE demo.approval_step_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE demo.approval_step_id_seq OWNER TO XXXuser;

--
-- Name: approval_step_id_seq; Type: SEQUENCE OWNED BY; Schema: demo; Owner: XXXuser
--

ALTER SEQUENCE demo.approval_step_id_seq OWNED BY demo.approval_step.id;


--
-- Name: approval_step_organization; Type: TABLE; Schema: demo; Owner: XXXuser
--

CREATE TABLE demo.approval_step_organization (
    id integer NOT NULL,
    version integer DEFAULT 1 NOT NULL,
    created_user_id integer,
    updated_user_id integer,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    deleted_at timestamp without time zone,
    deleted_user_id integer,
    approval_step_id integer,
    department_id integer NOT NULL,
    client_id integer NOT NULL
);


ALTER TABLE demo.approval_step_organization OWNER TO XXXuser;

--
-- Name: COLUMN approval_step_organization.id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_step_organization.id IS '承認ステップ組織ID';


--
-- Name: COLUMN approval_step_organization.version; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_step_organization.version IS 'バージョン';


--
-- Name: COLUMN approval_step_organization.created_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_step_organization.created_user_id IS '作成利用者ID';


--
-- Name: COLUMN approval_step_organization.updated_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_step_organization.updated_user_id IS '更新利用者ID';


--
-- Name: COLUMN approval_step_organization.created_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_step_organization.created_at IS '作成日時';


--
-- Name: COLUMN approval_step_organization.updated_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_step_organization.updated_at IS '更新日時';


--
-- Name: COLUMN approval_step_organization.deleted_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_step_organization.deleted_at IS '削除日時';


--
-- Name: COLUMN approval_step_organization.deleted_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_step_organization.deleted_user_id IS '削除利用者ID';


--
-- Name: COLUMN approval_step_organization.approval_step_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_step_organization.approval_step_id IS '承認ステップID';


--
-- Name: COLUMN approval_step_organization.department_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_step_organization.department_id IS '部署ID';


--
-- Name: COLUMN approval_step_organization.client_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_step_organization.client_id IS '導入企業ID';


--
-- Name: approval_step_organization_id_seq; Type: SEQUENCE; Schema: demo; Owner: XXXuser
--

CREATE SEQUENCE demo.approval_step_organization_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE demo.approval_step_organization_id_seq OWNER TO XXXuser;

--
-- Name: approval_step_organization_id_seq; Type: SEQUENCE OWNED BY; Schema: demo; Owner: XXXuser
--

ALTER SEQUENCE demo.approval_step_organization_id_seq OWNED BY demo.approval_step_organization.id;


--
-- Name: approval_step_position; Type: TABLE; Schema: demo; Owner: XXXuser
--

CREATE TABLE demo.approval_step_position (
    id integer NOT NULL,
    version integer DEFAULT 1 NOT NULL,
    created_user_id integer,
    updated_user_id integer,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    deleted_at timestamp without time zone,
    deleted_user_id integer,
    approval_step_id integer,
    position_id integer NOT NULL,
    client_id integer NOT NULL
);


ALTER TABLE demo.approval_step_position OWNER TO XXXuser;

--
-- Name: COLUMN approval_step_position.id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_step_position.id IS '承認ステップ役職ID';


--
-- Name: COLUMN approval_step_position.version; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_step_position.version IS 'バージョン';


--
-- Name: COLUMN approval_step_position.created_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_step_position.created_user_id IS '作成利用者ID';


--
-- Name: COLUMN approval_step_position.updated_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_step_position.updated_user_id IS '更新利用者ID';


--
-- Name: COLUMN approval_step_position.created_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_step_position.created_at IS '作成日時';


--
-- Name: COLUMN approval_step_position.updated_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_step_position.updated_at IS '更新日時';


--
-- Name: COLUMN approval_step_position.deleted_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_step_position.deleted_at IS '削除日時';


--
-- Name: COLUMN approval_step_position.deleted_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_step_position.deleted_user_id IS '削除利用者ID';


--
-- Name: COLUMN approval_step_position.approval_step_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_step_position.approval_step_id IS '承認ステップID';


--
-- Name: COLUMN approval_step_position.position_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_step_position.position_id IS '役職ID';


--
-- Name: COLUMN approval_step_position.client_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approval_step_position.client_id IS '導入企業ID';


--
-- Name: approval_step_position_id_seq; Type: SEQUENCE; Schema: demo; Owner: XXXuser
--

CREATE SEQUENCE demo.approval_step_position_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE demo.approval_step_position_id_seq OWNER TO XXXuser;

--
-- Name: approval_step_position_id_seq; Type: SEQUENCE OWNED BY; Schema: demo; Owner: XXXuser
--

ALTER SEQUENCE demo.approval_step_position_id_seq OWNED BY demo.approval_step_position.id;


--
-- Name: approved_annual_plan_snapshot; Type: TABLE; Schema: demo; Owner: XXXuser
--

CREATE TABLE demo.approved_annual_plan_snapshot (
    id integer NOT NULL,
    plans text NOT NULL,
    version integer DEFAULT 1 NOT NULL,
    created_user_id integer,
    updated_user_id integer,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    deleted_at timestamp without time zone,
    deleted_user_id integer,
    annual_plan_id integer NOT NULL,
    client_id integer NOT NULL
);


ALTER TABLE demo.approved_annual_plan_snapshot OWNER TO XXXuser;

--
-- Name: COLUMN approved_annual_plan_snapshot.id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approved_annual_plan_snapshot.id IS '事業計画ID';


--
-- Name: COLUMN approved_annual_plan_snapshot.plans; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approved_annual_plan_snapshot.plans IS '年度計画に紐づく全計画のスナップショット';


--
-- Name: COLUMN approved_annual_plan_snapshot.version; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approved_annual_plan_snapshot.version IS 'バージョン';


--
-- Name: COLUMN approved_annual_plan_snapshot.created_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approved_annual_plan_snapshot.created_user_id IS '作成利用者ID';


--
-- Name: COLUMN approved_annual_plan_snapshot.updated_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approved_annual_plan_snapshot.updated_user_id IS '更新利用者ID';


--
-- Name: COLUMN approved_annual_plan_snapshot.created_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approved_annual_plan_snapshot.created_at IS '作成日時';


--
-- Name: COLUMN approved_annual_plan_snapshot.updated_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approved_annual_plan_snapshot.updated_at IS '更新日時';


--
-- Name: COLUMN approved_annual_plan_snapshot.deleted_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approved_annual_plan_snapshot.deleted_at IS '削除日時';


--
-- Name: COLUMN approved_annual_plan_snapshot.deleted_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approved_annual_plan_snapshot.deleted_user_id IS '削除利用者ID';


--
-- Name: COLUMN approved_annual_plan_snapshot.annual_plan_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approved_annual_plan_snapshot.annual_plan_id IS '事業計画ID';


--
-- Name: COLUMN approved_annual_plan_snapshot.client_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.approved_annual_plan_snapshot.client_id IS '導入企業ID';


--
-- Name: approved_annual_plan_snapshot_id_seq; Type: SEQUENCE; Schema: demo; Owner: XXXuser
--

CREATE SEQUENCE demo.approved_annual_plan_snapshot_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE demo.approved_annual_plan_snapshot_id_seq OWNER TO XXXuser;

--
-- Name: approved_annual_plan_snapshot_id_seq; Type: SEQUENCE OWNED BY; Schema: demo; Owner: XXXuser
--

ALTER SEQUENCE demo.approved_annual_plan_snapshot_id_seq OWNED BY demo.approved_annual_plan_snapshot.id;


--
-- Name: badget; Type: TABLE; Schema: demo; Owner: XXXuser
--

CREATE TABLE demo.badget (
    "GENERAL_ID" integer NOT NULL,
    version integer DEFAULT 1 NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    created_user_id integer,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_user_id integer,
    deleted_at timestamp without time zone,
    deleted_user_id integer
);


ALTER TABLE demo.badget OWNER TO XXXuser;

--
-- Name: COLUMN badget.version; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.badget.version IS 'バージョン';


--
-- Name: COLUMN badget.created_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.badget.created_at IS '作成日時';


--
-- Name: COLUMN badget.created_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.badget.created_user_id IS '作成利用者ID';


--
-- Name: COLUMN badget.updated_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.badget.updated_at IS '更新日時';


--
-- Name: COLUMN badget.updated_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.badget.updated_user_id IS '更新利用者ID';


--
-- Name: COLUMN badget.deleted_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.badget.deleted_at IS '削除日時';


--
-- Name: COLUMN badget.deleted_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.badget.deleted_user_id IS '削除利用者ID';


--
-- Name: badget_GENERAL_ID_seq; Type: SEQUENCE; Schema: demo; Owner: XXXuser
--

CREATE SEQUENCE demo."badget_GENERAL_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE demo."badget_GENERAL_ID_seq" OWNER TO XXXuser;

--
-- Name: badget_GENERAL_ID_seq; Type: SEQUENCE OWNED BY; Schema: demo; Owner: XXXuser
--

ALTER SEQUENCE demo."badget_GENERAL_ID_seq" OWNED BY demo.badget."GENERAL_ID";


--
-- Name: business_year; Type: TABLE; Schema: demo; Owner: XXXuser
--

CREATE TABLE demo.business_year (
    id integer NOT NULL,
    start_year integer NOT NULL,
    start_month integer NOT NULL,
    start_date integer NOT NULL,
    version integer DEFAULT 1 NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    created_user_id integer,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_user_id integer,
    deleted_at timestamp without time zone,
    deleted_user_id integer,
    client_id integer NOT NULL,
    name character varying(50) NOT NULL,
    end_year integer NOT NULL,
    end_month integer NOT NULL,
    end_date integer NOT NULL,
    year integer NOT NULL
);


ALTER TABLE demo.business_year OWNER TO XXXuser;

--
-- Name: COLUMN business_year.id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.business_year.id IS '年度ID';


--
-- Name: COLUMN business_year.start_year; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.business_year.start_year IS '開始年';


--
-- Name: COLUMN business_year.start_month; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.business_year.start_month IS '開始月';


--
-- Name: COLUMN business_year.start_date; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.business_year.start_date IS '開始日';


--
-- Name: COLUMN business_year.version; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.business_year.version IS 'バージョン';


--
-- Name: COLUMN business_year.created_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.business_year.created_at IS '作成日時';


--
-- Name: COLUMN business_year.created_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.business_year.created_user_id IS '作成利用者ID';


--
-- Name: COLUMN business_year.updated_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.business_year.updated_at IS '更新日時';


--
-- Name: COLUMN business_year.updated_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.business_year.updated_user_id IS '更新利用者ID';


--
-- Name: COLUMN business_year.deleted_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.business_year.deleted_at IS '削除日時';


--
-- Name: COLUMN business_year.deleted_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.business_year.deleted_user_id IS '削除利用者ID';


--
-- Name: COLUMN business_year.client_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.business_year.client_id IS '導入企業ID';


--
-- Name: COLUMN business_year.name; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.business_year.name IS '年度名称';


--
-- Name: COLUMN business_year.end_year; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.business_year.end_year IS '終了年';


--
-- Name: COLUMN business_year.end_month; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.business_year.end_month IS '終了月';


--
-- Name: COLUMN business_year.end_date; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.business_year.end_date IS '終了日';


--
-- Name: COLUMN business_year.year; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.business_year.year IS '年度';


--
-- Name: business_year_id_seq; Type: SEQUENCE; Schema: demo; Owner: XXXuser
--

CREATE SEQUENCE demo.business_year_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE demo.business_year_id_seq OWNER TO XXXuser;

--
-- Name: business_year_id_seq; Type: SEQUENCE OWNED BY; Schema: demo; Owner: XXXuser
--

ALTER SEQUENCE demo.business_year_id_seq OWNED BY demo.business_year.id;


--
-- Name: cause; Type: TABLE; Schema: demo; Owner: XXXuser
--

CREATE TABLE demo.cause (
    id integer NOT NULL,
    issue_id integer,
    text character varying(2048) NOT NULL,
    is_hypothesis boolean DEFAULT false NOT NULL,
    version integer DEFAULT 1 NOT NULL,
    created_user_id integer,
    updated_user_id integer,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    deleted_at timestamp without time zone,
    deleted_user_id integer,
    client_id integer
);


ALTER TABLE demo.cause OWNER TO XXXuser;

--
-- Name: COLUMN cause.id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.cause.id IS '原因ID';


--
-- Name: COLUMN cause.issue_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.cause.issue_id IS '問題ID';


--
-- Name: COLUMN cause.text; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.cause.text IS '原因';


--
-- Name: COLUMN cause.is_hypothesis; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.cause.is_hypothesis IS '仮説';


--
-- Name: COLUMN cause.version; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.cause.version IS 'バージョン';


--
-- Name: COLUMN cause.created_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.cause.created_user_id IS '作成利用者ID';


--
-- Name: COLUMN cause.updated_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.cause.updated_user_id IS '更新利用者ID';


--
-- Name: COLUMN cause.created_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.cause.created_at IS '作成日時';


--
-- Name: COLUMN cause.updated_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.cause.updated_at IS '更新日時';


--
-- Name: COLUMN cause.deleted_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.cause.deleted_at IS '削除日時';


--
-- Name: COLUMN cause.deleted_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.cause.deleted_user_id IS '削除利用者ID';


--
-- Name: COLUMN cause.client_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.cause.client_id IS '導入企業ID';


--
-- Name: cause_condition; Type: TABLE; Schema: demo; Owner: XXXuser
--

CREATE TABLE demo.cause_condition (
    id integer NOT NULL,
    cause_id integer,
    achievement_condition character varying(2048),
    version integer DEFAULT 1 NOT NULL,
    created_user_id integer,
    updated_user_id integer,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    deleted_at timestamp without time zone,
    deleted_user_id integer,
    client_id integer NOT NULL
);


ALTER TABLE demo.cause_condition OWNER TO XXXuser;

--
-- Name: COLUMN cause_condition.id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.cause_condition.id IS '原因解決条件ID';


--
-- Name: COLUMN cause_condition.cause_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.cause_condition.cause_id IS '原因ID';


--
-- Name: COLUMN cause_condition.achievement_condition; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.cause_condition.achievement_condition IS '達成条件';


--
-- Name: COLUMN cause_condition.version; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.cause_condition.version IS 'バージョン';


--
-- Name: COLUMN cause_condition.created_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.cause_condition.created_user_id IS '作成利用者ID';


--
-- Name: COLUMN cause_condition.updated_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.cause_condition.updated_user_id IS '更新利用者ID';


--
-- Name: COLUMN cause_condition.created_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.cause_condition.created_at IS '作成日時';


--
-- Name: COLUMN cause_condition.updated_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.cause_condition.updated_at IS '更新日時';


--
-- Name: COLUMN cause_condition.deleted_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.cause_condition.deleted_at IS '削除日時';


--
-- Name: COLUMN cause_condition.deleted_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.cause_condition.deleted_user_id IS '削除利用者ID';


--
-- Name: COLUMN cause_condition.client_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.cause_condition.client_id IS '導入企業ID';


--
-- Name: cause_condition_id_seq; Type: SEQUENCE; Schema: demo; Owner: XXXuser
--

CREATE SEQUENCE demo.cause_condition_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE demo.cause_condition_id_seq OWNER TO XXXuser;

--
-- Name: cause_condition_id_seq; Type: SEQUENCE OWNED BY; Schema: demo; Owner: XXXuser
--

ALTER SEQUENCE demo.cause_condition_id_seq OWNED BY demo.cause_condition.id;


--
-- Name: cause_id_seq; Type: SEQUENCE; Schema: demo; Owner: XXXuser
--

CREATE SEQUENCE demo.cause_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE demo.cause_id_seq OWNER TO XXXuser;

--
-- Name: cause_id_seq; Type: SEQUENCE OWNED BY; Schema: demo; Owner: XXXuser
--

ALTER SEQUENCE demo.cause_id_seq OWNED BY demo.cause.id;


--
-- Name: cause_measures_measure; Type: TABLE; Schema: demo; Owner: XXXuser
--

CREATE TABLE demo.cause_measures_measure (
    cause_id integer NOT NULL,
    measure_id integer NOT NULL
);


ALTER TABLE demo.cause_measures_measure OWNER TO XXXuser;

--
-- Name: client; Type: TABLE; Schema: demo; Owner: XXXuser
--

CREATE TABLE demo.client (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    version integer DEFAULT 1 NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    created_user_id integer,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_user_id integer,
    deleted_at timestamp without time zone,
    deleted_user_id integer,
    slug character varying(50)
);


ALTER TABLE demo.client OWNER TO XXXuser;

--
-- Name: COLUMN client.id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.client.id IS '導入企業ID';


--
-- Name: COLUMN client.name; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.client.name IS '導入企業名';


--
-- Name: COLUMN client.version; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.client.version IS 'バージョン';


--
-- Name: COLUMN client.created_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.client.created_at IS '作成日時';


--
-- Name: COLUMN client.created_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.client.created_user_id IS '作成利用者ID';


--
-- Name: COLUMN client.updated_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.client.updated_at IS '更新日時';


--
-- Name: COLUMN client.updated_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.client.updated_user_id IS '更新利用者ID';


--
-- Name: COLUMN client.deleted_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.client.deleted_at IS '削除日時';


--
-- Name: COLUMN client.deleted_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.client.deleted_user_id IS '削除利用者ID';


--
-- Name: COLUMN client.slug; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.client.slug IS '導入企業スラグ';


--
-- Name: client_id_seq; Type: SEQUENCE; Schema: demo; Owner: XXXuser
--

CREATE SEQUENCE demo.client_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE demo.client_id_seq OWNER TO XXXuser;

--
-- Name: client_id_seq; Type: SEQUENCE OWNED BY; Schema: demo; Owner: XXXuser
--

ALTER SEQUENCE demo.client_id_seq OWNED BY demo.client.id;


--
-- Name: company; Type: TABLE; Schema: demo; Owner: XXXuser
--

CREATE TABLE demo.company (
    id integer NOT NULL,
    code character varying(20) NOT NULL,
    name character varying(200) NOT NULL,
    zip_code character varying(10) NOT NULL,
    address character varying(200) NOT NULL,
    person character varying(50) NOT NULL,
    phone character varying(20) NOT NULL,
    mail_address character varying(100) NOT NULL,
    version integer DEFAULT 1 NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    created_user_id integer,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_user_id integer,
    deleted_at timestamp without time zone,
    deleted_user_id integer,
    client_id integer NOT NULL
);


ALTER TABLE demo.company OWNER TO XXXuser;

--
-- Name: COLUMN company.id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.company.id IS '事業者ID';


--
-- Name: COLUMN company.code; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.company.code IS '事業者コード';


--
-- Name: COLUMN company.name; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.company.name IS '事業者名';


--
-- Name: COLUMN company.zip_code; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.company.zip_code IS '郵便番号';


--
-- Name: COLUMN company.address; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.company.address IS '住所';


--
-- Name: COLUMN company.person; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.company.person IS '窓口担当者';


--
-- Name: COLUMN company.phone; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.company.phone IS '電話番号';


--
-- Name: COLUMN company.mail_address; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.company.mail_address IS 'メールアドレス';


--
-- Name: COLUMN company.version; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.company.version IS 'バージョン';


--
-- Name: COLUMN company.created_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.company.created_at IS '作成日時';


--
-- Name: COLUMN company.created_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.company.created_user_id IS '作成利用者ID';


--
-- Name: COLUMN company.updated_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.company.updated_at IS '更新日時';


--
-- Name: COLUMN company.updated_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.company.updated_user_id IS '更新利用者ID';


--
-- Name: COLUMN company.deleted_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.company.deleted_at IS '削除日時';


--
-- Name: COLUMN company.deleted_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.company.deleted_user_id IS '削除利用者ID';


--
-- Name: COLUMN company.client_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.company.client_id IS '導入企業ID';


--
-- Name: company_id_seq; Type: SEQUENCE; Schema: demo; Owner: XXXuser
--

CREATE SEQUENCE demo.company_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE demo.company_id_seq OWNER TO XXXuser;

--
-- Name: company_id_seq; Type: SEQUENCE OWNED BY; Schema: demo; Owner: XXXuser
--

ALTER SEQUENCE demo.company_id_seq OWNED BY demo.company.id;


--
-- Name: department; Type: TABLE; Schema: demo; Owner: XXXuser
--

CREATE TABLE demo.department (
    id integer NOT NULL,
    code character varying(20),
    name character varying(50) NOT NULL,
    version integer DEFAULT 1 NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    created_user_id integer,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_user_id integer,
    deleted_at timestamp without time zone,
    deleted_user_id integer,
    client_id integer NOT NULL,
    category demo.department_category_enum,
    enabled_at date,
    disabled_at date,
    nsleft integer DEFAULT 1 NOT NULL,
    nsright integer DEFAULT 2 NOT NULL,
    parent_id integer,
    is_common boolean DEFAULT false NOT NULL,
    department_level_id integer
);


ALTER TABLE demo.department OWNER TO XXXuser;

--
-- Name: COLUMN department.id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.department.id IS '部署ID';


--
-- Name: COLUMN department.code; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.department.code IS '部署コード';


--
-- Name: COLUMN department.name; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.department.name IS '部署名';


--
-- Name: COLUMN department.version; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.department.version IS 'バージョン';


--
-- Name: COLUMN department.created_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.department.created_at IS '作成日時';


--
-- Name: COLUMN department.created_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.department.created_user_id IS '作成利用者ID';


--
-- Name: COLUMN department.updated_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.department.updated_at IS '更新日時';


--
-- Name: COLUMN department.updated_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.department.updated_user_id IS '更新利用者ID';


--
-- Name: COLUMN department.deleted_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.department.deleted_at IS '削除日時';


--
-- Name: COLUMN department.deleted_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.department.deleted_user_id IS '削除利用者ID';


--
-- Name: COLUMN department.client_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.department.client_id IS '導入企業ID';


--
-- Name: COLUMN department.category; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.department.category IS '組織区分';


--
-- Name: COLUMN department.enabled_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.department.enabled_at IS '適用開始日';


--
-- Name: COLUMN department.disabled_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.department.disabled_at IS '適用開始日';


--
-- Name: COLUMN department.parent_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.department.parent_id IS '部署ID';


--
-- Name: COLUMN department.is_common; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.department.is_common IS '共通組織フラグ';


--
-- Name: COLUMN department.department_level_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.department.department_level_id IS '組織レベルID';


--
-- Name: department_id_seq; Type: SEQUENCE; Schema: demo; Owner: XXXuser
--

CREATE SEQUENCE demo.department_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE demo.department_id_seq OWNER TO XXXuser;

--
-- Name: department_id_seq; Type: SEQUENCE OWNED BY; Schema: demo; Owner: XXXuser
--

ALTER SEQUENCE demo.department_id_seq OWNED BY demo.department.id;


--
-- Name: department_level; Type: TABLE; Schema: demo; Owner: XXXuser
--

CREATE TABLE demo.department_level (
    id integer NOT NULL,
    "order" integer NOT NULL,
    name character varying NOT NULL,
    version integer DEFAULT 1 NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    created_user_id integer,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_user_id integer,
    deleted_at timestamp without time zone,
    deleted_user_id integer,
    client_id integer NOT NULL,
    plan_target_flag boolean DEFAULT false NOT NULL,
    CONSTRAINT "CHK_6d34b1d866bf8f816472456db1" CHECK (("order" <= 10))
);


ALTER TABLE demo.department_level OWNER TO XXXuser;

--
-- Name: COLUMN department_level.id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.department_level.id IS '組織レベルID';


--
-- Name: COLUMN department_level."order"; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.department_level."order" IS '順序';


--
-- Name: COLUMN department_level.name; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.department_level.name IS '名前';


--
-- Name: COLUMN department_level.version; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.department_level.version IS 'バージョン';


--
-- Name: COLUMN department_level.created_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.department_level.created_at IS '作成日時';


--
-- Name: COLUMN department_level.created_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.department_level.created_user_id IS '作成利用者ID';


--
-- Name: COLUMN department_level.updated_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.department_level.updated_at IS '更新日時';


--
-- Name: COLUMN department_level.updated_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.department_level.updated_user_id IS '更新利用者ID';


--
-- Name: COLUMN department_level.deleted_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.department_level.deleted_at IS '削除日時';


--
-- Name: COLUMN department_level.deleted_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.department_level.deleted_user_id IS '削除利用者ID';


--
-- Name: COLUMN department_level.client_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.department_level.client_id IS '導入企業ID';


--
-- Name: COLUMN department_level.plan_target_flag; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.department_level.plan_target_flag IS '事業計画目標設定対象フラグ';


--
-- Name: department_level_id_seq; Type: SEQUENCE; Schema: demo; Owner: XXXuser
--

CREATE SEQUENCE demo.department_level_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE demo.department_level_id_seq OWNER TO XXXuser;

--
-- Name: department_level_id_seq; Type: SEQUENCE OWNED BY; Schema: demo; Owner: XXXuser
--

ALTER SEQUENCE demo.department_level_id_seq OWNED BY demo.department_level.id;


--
-- Name: investigation; Type: TABLE; Schema: demo; Owner: XXXuser
--

CREATE TABLE demo.investigation (
    id integer NOT NULL,
    task_id integer,
    text character varying(2048),
    version integer DEFAULT 1 NOT NULL,
    created_user_id integer,
    updated_user_id integer,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    deleted_at timestamp without time zone,
    client_id integer
);


ALTER TABLE demo.investigation OWNER TO XXXuser;

--
-- Name: COLUMN investigation.id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.investigation.id IS '調査ID';


--
-- Name: COLUMN investigation.task_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.investigation.task_id IS '課題ID';


--
-- Name: COLUMN investigation.text; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.investigation.text IS 'ToDo内容';


--
-- Name: COLUMN investigation.version; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.investigation.version IS 'バージョン';


--
-- Name: COLUMN investigation.created_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.investigation.created_user_id IS '作成利用者ID';


--
-- Name: COLUMN investigation.updated_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.investigation.updated_user_id IS '更新利用者ID';


--
-- Name: COLUMN investigation.created_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.investigation.created_at IS '作成日時';


--
-- Name: COLUMN investigation.updated_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.investigation.updated_at IS '更新日時';


--
-- Name: COLUMN investigation.deleted_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.investigation.deleted_at IS '削除日時';


--
-- Name: COLUMN investigation.client_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.investigation.client_id IS '導入企業ID';


--
-- Name: investigation_id_seq; Type: SEQUENCE; Schema: demo; Owner: XXXuser
--

CREATE SEQUENCE demo.investigation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE demo.investigation_id_seq OWNER TO XXXuser;

--
-- Name: investigation_id_seq; Type: SEQUENCE OWNED BY; Schema: demo; Owner: XXXuser
--

ALTER SEQUENCE demo.investigation_id_seq OWNED BY demo.investigation.id;


--
-- Name: investigation_measures_measure; Type: TABLE; Schema: demo; Owner: XXXuser
--

CREATE TABLE demo.investigation_measures_measure (
    investigation_id integer NOT NULL,
    measure_id integer NOT NULL
);


ALTER TABLE demo.investigation_measures_measure OWNER TO XXXuser;

--
-- Name: issue; Type: TABLE; Schema: demo; Owner: XXXuser
--

CREATE TABLE demo.issue (
    id integer NOT NULL,
    task_id integer,
    occur_status demo.issue_occur_status_enum NOT NULL,
    occur_count integer DEFAULT 0 NOT NULL,
    occur_frequency demo.issue_occur_frequency_enum NOT NULL,
    occur_frequency_detail character varying(50),
    contents character varying(2048) NOT NULL,
    impact character varying(2048) NOT NULL,
    version integer DEFAULT 1 NOT NULL,
    created_user_id integer,
    updated_user_id integer,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    deleted_at timestamp without time zone,
    deleted_user_id integer,
    client_id integer NOT NULL
);


ALTER TABLE demo.issue OWNER TO XXXuser;

--
-- Name: COLUMN issue.id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.issue.id IS '問題ID';


--
-- Name: COLUMN issue.task_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.issue.task_id IS '課題ID';


--
-- Name: COLUMN issue.occur_status; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.issue.occur_status IS '発生状況';


--
-- Name: COLUMN issue.occur_count; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.issue.occur_count IS '発生回数';


--
-- Name: COLUMN issue.occur_frequency; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.issue.occur_frequency IS '発生頻度';


--
-- Name: COLUMN issue.occur_frequency_detail; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.issue.occur_frequency_detail IS '発生頻度詳細';


--
-- Name: COLUMN issue.contents; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.issue.contents IS '問題内容';


--
-- Name: COLUMN issue.impact; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.issue.impact IS '影響';


--
-- Name: COLUMN issue.version; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.issue.version IS 'バージョン';


--
-- Name: COLUMN issue.created_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.issue.created_user_id IS '作成利用者ID';


--
-- Name: COLUMN issue.updated_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.issue.updated_user_id IS '更新利用者ID';


--
-- Name: COLUMN issue.created_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.issue.created_at IS '作成日時';


--
-- Name: COLUMN issue.updated_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.issue.updated_at IS '更新日時';


--
-- Name: COLUMN issue.deleted_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.issue.deleted_at IS '削除日時';


--
-- Name: COLUMN issue.deleted_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.issue.deleted_user_id IS '削除利用者ID';


--
-- Name: COLUMN issue.client_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.issue.client_id IS '導入企業ID';


--
-- Name: issue_id_seq; Type: SEQUENCE; Schema: demo; Owner: XXXuser
--

CREATE SEQUENCE demo.issue_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE demo.issue_id_seq OWNER TO XXXuser;

--
-- Name: issue_id_seq; Type: SEQUENCE OWNED BY; Schema: demo; Owner: XXXuser
--

ALTER SEQUENCE demo.issue_id_seq OWNED BY demo.issue.id;


--
-- Name: it_asset_type; Type: TABLE; Schema: demo; Owner: XXXuser
--

CREATE TABLE demo.it_asset_type (
    id integer NOT NULL,
    code character varying(20) NOT NULL,
    display_order integer NOT NULL,
    version integer DEFAULT 1 NOT NULL,
    created_user_id integer,
    updated_user_id integer,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    deleted_at timestamp without time zone,
    client_id integer
);


ALTER TABLE demo.it_asset_type OWNER TO XXXuser;

--
-- Name: COLUMN it_asset_type.id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.it_asset_type.id IS '施策ID';


--
-- Name: COLUMN it_asset_type.code; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.it_asset_type.code IS '種類名';


--
-- Name: COLUMN it_asset_type.display_order; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.it_asset_type.display_order IS '表示順';


--
-- Name: COLUMN it_asset_type.version; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.it_asset_type.version IS 'バージョン';


--
-- Name: COLUMN it_asset_type.created_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.it_asset_type.created_user_id IS '作成利用者ID';


--
-- Name: COLUMN it_asset_type.updated_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.it_asset_type.updated_user_id IS '更新利用者ID';


--
-- Name: COLUMN it_asset_type.created_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.it_asset_type.created_at IS '作成日時';


--
-- Name: COLUMN it_asset_type.updated_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.it_asset_type.updated_at IS '更新日時';


--
-- Name: COLUMN it_asset_type.deleted_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.it_asset_type.deleted_at IS '削除日時';


--
-- Name: COLUMN it_asset_type.client_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.it_asset_type.client_id IS '導入企業ID';


--
-- Name: it_asset_type_abandonment_plans_measure_implementation_task; Type: TABLE; Schema: demo; Owner: XXXuser
--

CREATE TABLE demo.it_asset_type_abandonment_plans_measure_implementation_task (
    it_asset_type_id integer NOT NULL,
    measure_implementation_task_id integer NOT NULL
);


ALTER TABLE demo.it_asset_type_abandonment_plans_measure_implementation_task OWNER TO XXXuser;

--
-- Name: it_asset_type_id_seq; Type: SEQUENCE; Schema: demo; Owner: XXXuser
--

CREATE SEQUENCE demo.it_asset_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE demo.it_asset_type_id_seq OWNER TO XXXuser;

--
-- Name: it_asset_type_id_seq; Type: SEQUENCE OWNED BY; Schema: demo; Owner: XXXuser
--

ALTER SEQUENCE demo.it_asset_type_id_seq OWNED BY demo.it_asset_type.id;


--
-- Name: it_asset_type_purchase_plans_measure_implementation_task; Type: TABLE; Schema: demo; Owner: XXXuser
--

CREATE TABLE demo.it_asset_type_purchase_plans_measure_implementation_task (
    it_asset_type_id integer NOT NULL,
    measure_implementation_task_id integer NOT NULL
);


ALTER TABLE demo.it_asset_type_purchase_plans_measure_implementation_task OWNER TO XXXuser;

--
-- Name: manhour; Type: TABLE; Schema: demo; Owner: XXXuser
--

CREATE TABLE demo.manhour (
    "GENERAL_ID" integer NOT NULL,
    version integer DEFAULT 1 NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    created_user_id integer,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_user_id integer,
    deleted_at timestamp without time zone,
    deleted_user_id integer
);


ALTER TABLE demo.manhour OWNER TO XXXuser;

--
-- Name: COLUMN manhour.version; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.manhour.version IS 'バージョン';


--
-- Name: COLUMN manhour.created_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.manhour.created_at IS '作成日時';


--
-- Name: COLUMN manhour.created_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.manhour.created_user_id IS '作成利用者ID';


--
-- Name: COLUMN manhour.updated_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.manhour.updated_at IS '更新日時';


--
-- Name: COLUMN manhour.updated_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.manhour.updated_user_id IS '更新利用者ID';


--
-- Name: COLUMN manhour.deleted_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.manhour.deleted_at IS '削除日時';


--
-- Name: COLUMN manhour.deleted_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.manhour.deleted_user_id IS '削除利用者ID';


--
-- Name: manhour_GENERAL_ID_seq; Type: SEQUENCE; Schema: demo; Owner: XXXuser
--

CREATE SEQUENCE demo."manhour_GENERAL_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE demo."manhour_GENERAL_ID_seq" OWNER TO XXXuser;

--
-- Name: manhour_GENERAL_ID_seq; Type: SEQUENCE OWNED BY; Schema: demo; Owner: XXXuser
--

ALTER SEQUENCE demo."manhour_GENERAL_ID_seq" OWNED BY demo.manhour."GENERAL_ID";


--
-- Name: measure; Type: TABLE; Schema: demo; Owner: XXXuser
--

CREATE TABLE demo.measure (
    id integer NOT NULL,
    code character varying(21) NOT NULL,
    name character varying(200) NOT NULL,
    overview character varying(2048),
    prerequisites character varying(2048),
    effect_method character varying(2048),
    implementation_method character varying(2048),
    used_technology character varying(2048),
    system_linking character varying(2048),
    specification character varying(2048),
    purchase_amount character varying(2048),
    implementation_detail character varying(2048),
    start_date date,
    end_date date,
    is_adopted boolean,
    links text,
    cost_unit character varying(200),
    version integer NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    created_user_id integer,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_user_id integer,
    deleted_at timestamp without time zone,
    deleted_user_id integer,
    client_id integer NOT NULL
);


ALTER TABLE demo.measure OWNER TO XXXuser;

--
-- Name: COLUMN measure.id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.measure.id IS '施策ID';


--
-- Name: COLUMN measure.code; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.measure.code IS '施策コード';


--
-- Name: COLUMN measure.name; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.measure.name IS '施策名称';


--
-- Name: COLUMN measure.overview; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.measure.overview IS '概要';


--
-- Name: COLUMN measure.prerequisites; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.measure.prerequisites IS '前提事項';


--
-- Name: COLUMN measure.effect_method; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.measure.effect_method IS '効果測定方法';


--
-- Name: COLUMN measure.implementation_method; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.measure.implementation_method IS '実施手段';


--
-- Name: COLUMN measure.used_technology; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.measure.used_technology IS '利用技術';


--
-- Name: COLUMN measure.system_linking; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.measure.system_linking IS '他システムとの連携';


--
-- Name: COLUMN measure.specification; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.measure.specification IS '仕様条件';


--
-- Name: COLUMN measure.purchase_amount; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.measure.purchase_amount IS '購入量';


--
-- Name: COLUMN measure.implementation_detail; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.measure.implementation_detail IS '実施内容';


--
-- Name: COLUMN measure.start_date; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.measure.start_date IS '開始日';


--
-- Name: COLUMN measure.end_date; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.measure.end_date IS '終了日';


--
-- Name: COLUMN measure.is_adopted; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.measure.is_adopted IS '採用／不採用';


--
-- Name: COLUMN measure.links; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.measure.links IS 'クリティカルパス';


--
-- Name: COLUMN measure.cost_unit; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.measure.cost_unit IS '金額単位';


--
-- Name: COLUMN measure.created_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.measure.created_at IS '作成日時';


--
-- Name: COLUMN measure.created_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.measure.created_user_id IS '作成利用者ID';


--
-- Name: COLUMN measure.updated_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.measure.updated_at IS '更新日時';


--
-- Name: COLUMN measure.updated_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.measure.updated_user_id IS '更新利用者ID';


--
-- Name: COLUMN measure.deleted_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.measure.deleted_at IS '削除日時';


--
-- Name: COLUMN measure.deleted_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.measure.deleted_user_id IS '削除利用者ID';


--
-- Name: COLUMN measure.client_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.measure.client_id IS '導入企業ID';


--
-- Name: measure_cause_conditions_cause_condition; Type: TABLE; Schema: demo; Owner: XXXuser
--

CREATE TABLE demo.measure_cause_conditions_cause_condition (
    measure_id integer NOT NULL,
    cause_condition_id integer NOT NULL
);


ALTER TABLE demo.measure_cause_conditions_cause_condition OWNER TO XXXuser;

--
-- Name: measure_id_seq; Type: SEQUENCE; Schema: demo; Owner: XXXuser
--

CREATE SEQUENCE demo.measure_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE demo.measure_id_seq OWNER TO XXXuser;

--
-- Name: measure_id_seq; Type: SEQUENCE OWNED BY; Schema: demo; Owner: XXXuser
--

ALTER SEQUENCE demo.measure_id_seq OWNED BY demo.measure.id;


--
-- Name: measure_implementation_effect; Type: TABLE; Schema: demo; Owner: XXXuser
--

CREATE TABLE demo.measure_implementation_effect (
    id integer NOT NULL,
    measure_id integer,
    evaluation character varying(200) NOT NULL,
    value_before_improvement character varying(2048),
    value_after_improvement character varying(2048),
    calculation_basis character varying(2048),
    start_at timestamp without time zone DEFAULT now() NOT NULL,
    start_at_memo character varying(2048),
    measuring_method character varying(2048),
    annual_cost_effect bigint DEFAULT 0,
    version integer DEFAULT 1 NOT NULL,
    created_user_id integer,
    updated_user_id integer,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    deleted_at timestamp without time zone,
    type character varying NOT NULL,
    client_id integer NOT NULL
);


ALTER TABLE demo.measure_implementation_effect OWNER TO XXXuser;

--
-- Name: COLUMN measure_implementation_effect.id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.measure_implementation_effect.id IS '実施効果ID';


--
-- Name: COLUMN measure_implementation_effect.measure_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.measure_implementation_effect.measure_id IS '施策案ID';


--
-- Name: COLUMN measure_implementation_effect.evaluation; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.measure_implementation_effect.evaluation IS '名称';


--
-- Name: COLUMN measure_implementation_effect.value_before_improvement; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.measure_implementation_effect.value_before_improvement IS '改善前の値';


--
-- Name: COLUMN measure_implementation_effect.value_after_improvement; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.measure_implementation_effect.value_after_improvement IS '改善後の値';


--
-- Name: COLUMN measure_implementation_effect.calculation_basis; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.measure_implementation_effect.calculation_basis IS '効果算定根拠';


--
-- Name: COLUMN measure_implementation_effect.start_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.measure_implementation_effect.start_at IS '効果検証開始時期';


--
-- Name: COLUMN measure_implementation_effect.start_at_memo; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.measure_implementation_effect.start_at_memo IS '効果検証開始時期内容';


--
-- Name: COLUMN measure_implementation_effect.measuring_method; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.measure_implementation_effect.measuring_method IS '効果測定方法';


--
-- Name: COLUMN measure_implementation_effect.annual_cost_effect; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.measure_implementation_effect.annual_cost_effect IS '年間の金額効果';


--
-- Name: COLUMN measure_implementation_effect.version; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.measure_implementation_effect.version IS 'バージョン';


--
-- Name: COLUMN measure_implementation_effect.created_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.measure_implementation_effect.created_user_id IS '作成利用者ID';


--
-- Name: COLUMN measure_implementation_effect.updated_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.measure_implementation_effect.updated_user_id IS '更新利用者ID';


--
-- Name: COLUMN measure_implementation_effect.created_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.measure_implementation_effect.created_at IS '作成日時';


--
-- Name: COLUMN measure_implementation_effect.updated_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.measure_implementation_effect.updated_at IS '更新日時';


--
-- Name: COLUMN measure_implementation_effect.deleted_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.measure_implementation_effect.deleted_at IS '削除日時';


--
-- Name: COLUMN measure_implementation_effect.client_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.measure_implementation_effect.client_id IS '導入企業ID';


--
-- Name: measure_implementation_effect_id_seq; Type: SEQUENCE; Schema: demo; Owner: XXXuser
--

CREATE SEQUENCE demo.measure_implementation_effect_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE demo.measure_implementation_effect_id_seq OWNER TO XXXuser;

--
-- Name: measure_implementation_effect_id_seq; Type: SEQUENCE OWNED BY; Schema: demo; Owner: XXXuser
--

ALTER SEQUENCE demo.measure_implementation_effect_id_seq OWNED BY demo.measure_implementation_effect.id;


--
-- Name: measure_implementation_task; Type: TABLE; Schema: demo; Owner: XXXuser
--

CREATE TABLE demo.measure_implementation_task (
    id integer NOT NULL,
    gantt_id character varying,
    type character varying,
    measure_id integer,
    name character varying(200) NOT NULL,
    overview character varying(2048),
    new_system_name character varying(2048),
    system_overview character varying(2048),
    modification_description character varying(2048),
    implementation_detail character varying(2048),
    investigation_description character varying(2048),
    procurement_description character varying(2048),
    procurement_scope character varying(2048),
    implement_target character varying(2048),
    participants text,
    scopes text,
    participant_scope_roles text,
    start_at timestamp without time zone,
    end_at timestamp without time zone,
    version integer DEFAULT 1 NOT NULL,
    created_user_id integer,
    updated_user_id integer,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    deleted_at timestamp without time zone,
    client_id integer NOT NULL,
    target_system_id integer
);


ALTER TABLE demo.measure_implementation_task OWNER TO XXXuser;

--
-- Name: COLUMN measure_implementation_task.id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.measure_implementation_task.id IS '実施タスクID';


--
-- Name: COLUMN measure_implementation_task.gantt_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.measure_implementation_task.gantt_id IS 'ガントID';


--
-- Name: COLUMN measure_implementation_task.measure_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.measure_implementation_task.measure_id IS '施策案ID';


--
-- Name: COLUMN measure_implementation_task.name; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.measure_implementation_task.name IS '名称';


--
-- Name: COLUMN measure_implementation_task.overview; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.measure_implementation_task.overview IS '概要';


--
-- Name: COLUMN measure_implementation_task.new_system_name; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.measure_implementation_task.new_system_name IS '新システム名称';


--
-- Name: COLUMN measure_implementation_task.system_overview; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.measure_implementation_task.system_overview IS 'システム概要';


--
-- Name: COLUMN measure_implementation_task.modification_description; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.measure_implementation_task.modification_description IS '改修内容';


--
-- Name: COLUMN measure_implementation_task.implementation_detail; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.measure_implementation_task.implementation_detail IS '実施内容';


--
-- Name: COLUMN measure_implementation_task.investigation_description; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.measure_implementation_task.investigation_description IS '調査内容';


--
-- Name: COLUMN measure_implementation_task.procurement_description; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.measure_implementation_task.procurement_description IS '調達内容';


--
-- Name: COLUMN measure_implementation_task.procurement_scope; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.measure_implementation_task.procurement_scope IS '調達範囲';


--
-- Name: COLUMN measure_implementation_task.implement_target; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.measure_implementation_task.implement_target IS '実施対象';


--
-- Name: COLUMN measure_implementation_task.participants; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.measure_implementation_task.participants IS '担当者';


--
-- Name: COLUMN measure_implementation_task.scopes; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.measure_implementation_task.scopes IS 'スコープ';


--
-- Name: COLUMN measure_implementation_task.participant_scope_roles; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.measure_implementation_task.participant_scope_roles IS '役割';


--
-- Name: COLUMN measure_implementation_task.start_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.measure_implementation_task.start_at IS '開始日時';


--
-- Name: COLUMN measure_implementation_task.end_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.measure_implementation_task.end_at IS '終了日時';


--
-- Name: COLUMN measure_implementation_task.version; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.measure_implementation_task.version IS 'バージョン';


--
-- Name: COLUMN measure_implementation_task.created_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.measure_implementation_task.created_user_id IS '作成利用者ID';


--
-- Name: COLUMN measure_implementation_task.updated_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.measure_implementation_task.updated_user_id IS '更新利用者ID';


--
-- Name: COLUMN measure_implementation_task.created_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.measure_implementation_task.created_at IS '作成日時';


--
-- Name: COLUMN measure_implementation_task.updated_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.measure_implementation_task.updated_at IS '更新日時';


--
-- Name: COLUMN measure_implementation_task.deleted_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.measure_implementation_task.deleted_at IS '削除日時';


--
-- Name: COLUMN measure_implementation_task.client_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.measure_implementation_task.client_id IS '導入企業ID';


--
-- Name: COLUMN measure_implementation_task.target_system_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.measure_implementation_task.target_system_id IS '施策ID';


--
-- Name: measure_implementation_task_affected_systems_system; Type: TABLE; Schema: demo; Owner: XXXuser
--

CREATE TABLE demo.measure_implementation_task_affected_systems_system (
    measure_implementation_task_id integer NOT NULL,
    system_id integer NOT NULL
);


ALTER TABLE demo.measure_implementation_task_affected_systems_system OWNER TO XXXuser;

--
-- Name: measure_implementation_task_id_seq; Type: SEQUENCE; Schema: demo; Owner: XXXuser
--

CREATE SEQUENCE demo.measure_implementation_task_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE demo.measure_implementation_task_id_seq OWNER TO XXXuser;

--
-- Name: measure_implementation_task_id_seq; Type: SEQUENCE OWNED BY; Schema: demo; Owner: XXXuser
--

ALTER SEQUENCE demo.measure_implementation_task_id_seq OWNED BY demo.measure_implementation_task.id;


--
-- Name: notification; Type: TABLE; Schema: demo; Owner: XXXuser
--

CREATE TABLE demo.notification (
    id integer NOT NULL,
    version integer DEFAULT 1 NOT NULL,
    created_user_id integer,
    updated_user_id integer,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    deleted_at timestamp without time zone,
    deleted_user_id integer,
    client_id integer NOT NULL,
    is_seen boolean DEFAULT false,
    notify_to_id integer,
    raised_by_id integer,
    template_id integer,
    notify_date timestamp without time zone,
    link character varying(2048),
    message character varying(2048)
);


ALTER TABLE demo.notification OWNER TO XXXuser;

--
-- Name: COLUMN notification.id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.notification.id IS '通知ID';


--
-- Name: COLUMN notification.version; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.notification.version IS 'バージョン';


--
-- Name: COLUMN notification.created_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.notification.created_user_id IS '作成利用者ID';


--
-- Name: COLUMN notification.updated_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.notification.updated_user_id IS '更新利用者ID';


--
-- Name: COLUMN notification.created_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.notification.created_at IS '作成日時';


--
-- Name: COLUMN notification.updated_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.notification.updated_at IS '更新日時';


--
-- Name: COLUMN notification.deleted_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.notification.deleted_at IS '削除日時';


--
-- Name: COLUMN notification.deleted_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.notification.deleted_user_id IS '削除利用者ID';


--
-- Name: COLUMN notification.client_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.notification.client_id IS '導入企業ID';


--
-- Name: COLUMN notification.is_seen; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.notification.is_seen IS '既読フラグ';


--
-- Name: COLUMN notification.notify_to_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.notification.notify_to_id IS '利用者部署ID';


--
-- Name: COLUMN notification.raised_by_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.notification.raised_by_id IS '利用者部署ID';


--
-- Name: COLUMN notification.template_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.notification.template_id IS '通知テンプレートID';


--
-- Name: COLUMN notification.notify_date; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.notification.notify_date IS '目標日';


--
-- Name: COLUMN notification.link; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.notification.link IS 'リンク';


--
-- Name: COLUMN notification.message; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.notification.message IS '通知メッセージ';


--
-- Name: notification_id_seq; Type: SEQUENCE; Schema: demo; Owner: XXXuser
--

CREATE SEQUENCE demo.notification_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE demo.notification_id_seq OWNER TO XXXuser;

--
-- Name: notification_id_seq; Type: SEQUENCE OWNED BY; Schema: demo; Owner: XXXuser
--

ALTER SEQUENCE demo.notification_id_seq OWNED BY demo.notification.id;


--
-- Name: notification_template; Type: TABLE; Schema: demo; Owner: XXXuser
--

CREATE TABLE demo.notification_template (
    id integer NOT NULL,
    version integer DEFAULT 1 NOT NULL,
    created_user_id integer,
    updated_user_id integer,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    deleted_at timestamp without time zone,
    deleted_user_id integer,
    client_id integer NOT NULL,
    body character varying(2048),
    type demo.notification_template_type_enum NOT NULL,
    link character varying(2048)
);


ALTER TABLE demo.notification_template OWNER TO XXXuser;

--
-- Name: COLUMN notification_template.id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.notification_template.id IS '通知テンプレートID';


--
-- Name: COLUMN notification_template.version; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.notification_template.version IS 'バージョン';


--
-- Name: COLUMN notification_template.created_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.notification_template.created_user_id IS '作成利用者ID';


--
-- Name: COLUMN notification_template.updated_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.notification_template.updated_user_id IS '更新利用者ID';


--
-- Name: COLUMN notification_template.created_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.notification_template.created_at IS '作成日時';


--
-- Name: COLUMN notification_template.updated_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.notification_template.updated_at IS '更新日時';


--
-- Name: COLUMN notification_template.deleted_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.notification_template.deleted_at IS '削除日時';


--
-- Name: COLUMN notification_template.deleted_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.notification_template.deleted_user_id IS '削除利用者ID';


--
-- Name: COLUMN notification_template.client_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.notification_template.client_id IS '導入企業ID';


--
-- Name: COLUMN notification_template.body; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.notification_template.body IS '通知本文';


--
-- Name: COLUMN notification_template.type; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.notification_template.type IS '通知タイプ';


--
-- Name: COLUMN notification_template.link; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.notification_template.link IS 'リンク';


--
-- Name: notification_template_id_seq; Type: SEQUENCE; Schema: demo; Owner: XXXuser
--

CREATE SEQUENCE demo.notification_template_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE demo.notification_template_id_seq OWNER TO XXXuser;

--
-- Name: notification_template_id_seq; Type: SEQUENCE OWNED BY; Schema: demo; Owner: XXXuser
--

ALTER SEQUENCE demo.notification_template_id_seq OWNED BY demo.notification_template.id;


--
-- Name: other; Type: TABLE; Schema: demo; Owner: XXXuser
--

CREATE TABLE demo.other (
    id integer NOT NULL,
    task_id integer,
    text character varying(2048),
    version integer DEFAULT 1 NOT NULL,
    created_user_id integer,
    updated_user_id integer,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    deleted_at timestamp without time zone,
    client_id integer
);


ALTER TABLE demo.other OWNER TO XXXuser;

--
-- Name: COLUMN other.id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.other.id IS '原因ID';


--
-- Name: COLUMN other.task_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.other.task_id IS '課題ID';


--
-- Name: COLUMN other.text; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.other.text IS 'ToDo内容';


--
-- Name: COLUMN other.version; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.other.version IS 'バージョン';


--
-- Name: COLUMN other.created_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.other.created_user_id IS '作成利用者ID';


--
-- Name: COLUMN other.updated_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.other.updated_user_id IS '更新利用者ID';


--
-- Name: COLUMN other.created_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.other.created_at IS '作成日時';


--
-- Name: COLUMN other.updated_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.other.updated_at IS '更新日時';


--
-- Name: COLUMN other.deleted_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.other.deleted_at IS '削除日時';


--
-- Name: COLUMN other.client_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.other.client_id IS '導入企業ID';


--
-- Name: other_id_seq; Type: SEQUENCE; Schema: demo; Owner: XXXuser
--

CREATE SEQUENCE demo.other_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE demo.other_id_seq OWNER TO XXXuser;

--
-- Name: other_id_seq; Type: SEQUENCE OWNED BY; Schema: demo; Owner: XXXuser
--

ALTER SEQUENCE demo.other_id_seq OWNED BY demo.other.id;


--
-- Name: other_measures_measure; Type: TABLE; Schema: demo; Owner: XXXuser
--

CREATE TABLE demo.other_measures_measure (
    other_id integer NOT NULL,
    measure_id integer NOT NULL
);


ALTER TABLE demo.other_measures_measure OWNER TO XXXuser;

--
-- Name: plan; Type: TABLE; Schema: demo; Owner: XXXuser
--

CREATE TABLE demo.plan (
    id integer NOT NULL,
    status demo.plan_status_enum DEFAULT 'inProgress'::demo.plan_status_enum NOT NULL,
    target_sales double precision DEFAULT '0'::double precision NOT NULL,
    target_sales_cost double precision DEFAULT '0'::double precision NOT NULL,
    target_selling_expense double precision DEFAULT '0'::double precision NOT NULL,
    target_general_administrative_expense double precision DEFAULT '0'::double precision NOT NULL,
    version integer DEFAULT 1 NOT NULL,
    created_user_id integer,
    updated_user_id integer,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    deleted_at timestamp without time zone,
    deleted_user_id integer,
    department_id integer,
    annual_plan_id integer,
    client_id integer NOT NULL,
    target_selling_expense_of_own_department double precision DEFAULT '0'::double precision NOT NULL,
    deemed_sales double precision DEFAULT '0'::double precision NOT NULL
);


ALTER TABLE demo.plan OWNER TO XXXuser;

--
-- Name: COLUMN plan.id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan.id IS '事業計画ID';


--
-- Name: COLUMN plan.status; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan.status IS 'ステータス';


--
-- Name: COLUMN plan.target_sales; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan.target_sales IS '目標売上額';


--
-- Name: COLUMN plan.target_sales_cost; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan.target_sales_cost IS '目標売上原価';


--
-- Name: COLUMN plan.target_selling_expense; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan.target_selling_expense IS '目標販売費';


--
-- Name: COLUMN plan.target_general_administrative_expense; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan.target_general_administrative_expense IS '目標一般管理費';


--
-- Name: COLUMN plan.version; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan.version IS 'バージョン';


--
-- Name: COLUMN plan.created_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan.created_user_id IS '作成利用者ID';


--
-- Name: COLUMN plan.updated_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan.updated_user_id IS '更新利用者ID';


--
-- Name: COLUMN plan.created_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan.created_at IS '作成日時';


--
-- Name: COLUMN plan.updated_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan.updated_at IS '更新日時';


--
-- Name: COLUMN plan.deleted_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan.deleted_at IS '削除日時';


--
-- Name: COLUMN plan.deleted_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan.deleted_user_id IS '削除利用者ID';


--
-- Name: COLUMN plan.department_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan.department_id IS '部署ID';


--
-- Name: COLUMN plan.annual_plan_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan.annual_plan_id IS '事業計画ID';


--
-- Name: COLUMN plan.client_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan.client_id IS '導入企業ID';


--
-- Name: COLUMN plan.target_selling_expense_of_own_department; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan.target_selling_expense_of_own_department IS '目標販売費（自部門コスト）';


--
-- Name: COLUMN plan.deemed_sales; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan.deemed_sales IS 'みなし売上';


--
-- Name: plan_formulation_email_template; Type: TABLE; Schema: demo; Owner: XXXuser
--

CREATE TABLE demo.plan_formulation_email_template (
    id integer NOT NULL,
    message character varying NOT NULL,
    subject character varying,
    version integer DEFAULT 1 NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    created_user_id integer,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_user_id integer,
    deleted_at timestamp without time zone,
    deleted_user_id integer,
    client_id integer NOT NULL
);


ALTER TABLE demo.plan_formulation_email_template OWNER TO XXXuser;

--
-- Name: COLUMN plan_formulation_email_template.id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_formulation_email_template.id IS '事業計画策定/施策登録メールテンプレートID';


--
-- Name: COLUMN plan_formulation_email_template.message; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_formulation_email_template.message IS '文面';


--
-- Name: COLUMN plan_formulation_email_template.subject; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_formulation_email_template.subject IS 'タイトル';


--
-- Name: COLUMN plan_formulation_email_template.version; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_formulation_email_template.version IS 'バージョン';


--
-- Name: COLUMN plan_formulation_email_template.created_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_formulation_email_template.created_at IS '作成日時';


--
-- Name: COLUMN plan_formulation_email_template.created_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_formulation_email_template.created_user_id IS '作成利用者ID';


--
-- Name: COLUMN plan_formulation_email_template.updated_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_formulation_email_template.updated_at IS '更新日時';


--
-- Name: COLUMN plan_formulation_email_template.updated_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_formulation_email_template.updated_user_id IS '更新利用者ID';


--
-- Name: COLUMN plan_formulation_email_template.deleted_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_formulation_email_template.deleted_at IS '削除日時';


--
-- Name: COLUMN plan_formulation_email_template.deleted_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_formulation_email_template.deleted_user_id IS '削除利用者ID';


--
-- Name: COLUMN plan_formulation_email_template.client_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_formulation_email_template.client_id IS '導入企業ID';


--
-- Name: plan_formulation_email_template_id_seq; Type: SEQUENCE; Schema: demo; Owner: XXXuser
--

CREATE SEQUENCE demo.plan_formulation_email_template_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE demo.plan_formulation_email_template_id_seq OWNER TO XXXuser;

--
-- Name: plan_formulation_email_template_id_seq; Type: SEQUENCE OWNED BY; Schema: demo; Owner: XXXuser
--

ALTER SEQUENCE demo.plan_formulation_email_template_id_seq OWNED BY demo.plan_formulation_email_template.id;


--
-- Name: plan_formulation_request; Type: TABLE; Schema: demo; Owner: XXXuser
--

CREATE TABLE demo.plan_formulation_request (
    id integer NOT NULL,
    code character varying(21) NOT NULL,
    until date,
    version integer DEFAULT 1 NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    created_user_id integer,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_user_id integer,
    deleted_at timestamp without time zone,
    deleted_user_id integer,
    plan_id integer,
    requested_by_id integer,
    client_id integer NOT NULL
);


ALTER TABLE demo.plan_formulation_request OWNER TO XXXuser;

--
-- Name: COLUMN plan_formulation_request.id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_formulation_request.id IS '依頼ID';


--
-- Name: COLUMN plan_formulation_request.code; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_formulation_request.code IS '依頼コード';


--
-- Name: COLUMN plan_formulation_request.until; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_formulation_request.until IS '提出期限';


--
-- Name: COLUMN plan_formulation_request.version; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_formulation_request.version IS 'バージョン';


--
-- Name: COLUMN plan_formulation_request.created_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_formulation_request.created_at IS '作成日時';


--
-- Name: COLUMN plan_formulation_request.created_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_formulation_request.created_user_id IS '作成利用者ID';


--
-- Name: COLUMN plan_formulation_request.updated_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_formulation_request.updated_at IS '更新日時';


--
-- Name: COLUMN plan_formulation_request.updated_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_formulation_request.updated_user_id IS '更新利用者ID';


--
-- Name: COLUMN plan_formulation_request.deleted_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_formulation_request.deleted_at IS '削除日時';


--
-- Name: COLUMN plan_formulation_request.deleted_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_formulation_request.deleted_user_id IS '削除利用者ID';


--
-- Name: COLUMN plan_formulation_request.plan_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_formulation_request.plan_id IS '事業計画ID';


--
-- Name: COLUMN plan_formulation_request.requested_by_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_formulation_request.requested_by_id IS '利用者部署ID';


--
-- Name: COLUMN plan_formulation_request.client_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_formulation_request.client_id IS '導入企業ID';


--
-- Name: plan_formulation_request_id_seq; Type: SEQUENCE; Schema: demo; Owner: XXXuser
--

CREATE SEQUENCE demo.plan_formulation_request_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE demo.plan_formulation_request_id_seq OWNER TO XXXuser;

--
-- Name: plan_formulation_request_id_seq; Type: SEQUENCE OWNED BY; Schema: demo; Owner: XXXuser
--

ALTER SEQUENCE demo.plan_formulation_request_id_seq OWNED BY demo.plan_formulation_request.id;


--
-- Name: plan_formulation_request_requested_to_user_department; Type: TABLE; Schema: demo; Owner: XXXuser
--

CREATE TABLE demo.plan_formulation_request_requested_to_user_department (
    plan_formulation_request_id integer NOT NULL,
    user_department_id integer NOT NULL
);


ALTER TABLE demo.plan_formulation_request_requested_to_user_department OWNER TO XXXuser;

--
-- Name: plan_id_seq; Type: SEQUENCE; Schema: demo; Owner: XXXuser
--

CREATE SEQUENCE demo.plan_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE demo.plan_id_seq OWNER TO XXXuser;

--
-- Name: plan_id_seq; Type: SEQUENCE OWNED BY; Schema: demo; Owner: XXXuser
--

ALTER SEQUENCE demo.plan_id_seq OWNED BY demo.plan.id;


--
-- Name: plan_measure; Type: TABLE; Schema: demo; Owner: XXXuser
--

CREATE TABLE demo.plan_measure (
    id integer NOT NULL,
    measure_name character varying(200) NOT NULL,
    overview character varying(2048),
    classification demo.plan_measure_classification_enum,
    implementation_target demo.plan_measure_implementation_target_enum,
    version integer DEFAULT 1 NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    created_user_id integer,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    deleted_at timestamp without time zone,
    deleted_user_id integer,
    department_id integer NOT NULL,
    client_id integer NOT NULL,
    code character varying(21) NOT NULL,
    registered_by_id integer NOT NULL,
    business_year_id integer NOT NULL,
    updated_user_id integer
);


ALTER TABLE demo.plan_measure OWNER TO XXXuser;

--
-- Name: COLUMN plan_measure.id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure.id IS '施策ID';


--
-- Name: COLUMN plan_measure.measure_name; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure.measure_name IS '施策名';


--
-- Name: COLUMN plan_measure.overview; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure.overview IS '概要';


--
-- Name: COLUMN plan_measure.classification; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure.classification IS '分類';


--
-- Name: COLUMN plan_measure.implementation_target; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure.implementation_target IS '実施対象';


--
-- Name: COLUMN plan_measure.version; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure.version IS 'バージョン';


--
-- Name: COLUMN plan_measure.created_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure.created_at IS '作成日時';


--
-- Name: COLUMN plan_measure.created_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure.created_user_id IS '作成利用者ID';


--
-- Name: COLUMN plan_measure.updated_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure.updated_at IS '更新日時';


--
-- Name: COLUMN plan_measure.deleted_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure.deleted_at IS '削除日時';


--
-- Name: COLUMN plan_measure.deleted_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure.deleted_user_id IS '削除利用者ID';


--
-- Name: COLUMN plan_measure.department_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure.department_id IS '部署ID';


--
-- Name: COLUMN plan_measure.client_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure.client_id IS '導入企業ID';


--
-- Name: COLUMN plan_measure.code; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure.code IS '施策コード';


--
-- Name: COLUMN plan_measure.registered_by_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure.registered_by_id IS '利用者部署ID';


--
-- Name: COLUMN plan_measure.business_year_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure.business_year_id IS '年度ID';


--
-- Name: COLUMN plan_measure.updated_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure.updated_user_id IS '更新利用者ID';


--
-- Name: plan_measure_cost; Type: TABLE; Schema: demo; Owner: XXXuser
--

CREATE TABLE demo.plan_measure_cost (
    id integer NOT NULL,
    item demo.plan_measure_cost_item_enum,
    version integer DEFAULT 1 NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    created_user_id integer,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    deleted_at timestamp without time zone,
    deleted_user_id integer,
    department_id integer NOT NULL,
    client_id integer NOT NULL,
    cost_name character varying(200),
    plan_measure_id integer NOT NULL,
    business_year_id integer NOT NULL,
    effect_inc_dec demo.plan_measure_cost_effect_inc_dec_enum,
    account_title_id integer,
    updated_user_id integer
);


ALTER TABLE demo.plan_measure_cost OWNER TO XXXuser;

--
-- Name: COLUMN plan_measure_cost.id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_cost.id IS '効果ID';


--
-- Name: COLUMN plan_measure_cost.item; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_cost.item IS '項目';


--
-- Name: COLUMN plan_measure_cost.version; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_cost.version IS 'バージョン';


--
-- Name: COLUMN plan_measure_cost.created_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_cost.created_at IS '作成日時';


--
-- Name: COLUMN plan_measure_cost.created_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_cost.created_user_id IS '作成利用者ID';


--
-- Name: COLUMN plan_measure_cost.updated_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_cost.updated_at IS '更新日時';


--
-- Name: COLUMN plan_measure_cost.deleted_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_cost.deleted_at IS '削除日時';


--
-- Name: COLUMN plan_measure_cost.deleted_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_cost.deleted_user_id IS '削除利用者ID';


--
-- Name: COLUMN plan_measure_cost.department_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_cost.department_id IS '部署ID';


--
-- Name: COLUMN plan_measure_cost.client_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_cost.client_id IS '導入企業ID';


--
-- Name: COLUMN plan_measure_cost.cost_name; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_cost.cost_name IS 'コスト名';


--
-- Name: COLUMN plan_measure_cost.plan_measure_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_cost.plan_measure_id IS '施策ID';


--
-- Name: COLUMN plan_measure_cost.business_year_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_cost.business_year_id IS '年度ID';


--
-- Name: COLUMN plan_measure_cost.effect_inc_dec; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_cost.effect_inc_dec IS '効果増減';


--
-- Name: COLUMN plan_measure_cost.account_title_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_cost.account_title_id IS '科目ID';


--
-- Name: COLUMN plan_measure_cost.updated_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_cost.updated_user_id IS '更新利用者ID';


--
-- Name: plan_measure_cost_assign; Type: TABLE; Schema: demo; Owner: XXXuser
--

CREATE TABLE demo.plan_measure_cost_assign (
    id integer NOT NULL,
    version integer DEFAULT 1 NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    created_user_id integer,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    deleted_at timestamp without time zone,
    deleted_user_id integer,
    department_id integer,
    cost_id integer NOT NULL,
    client_id integer NOT NULL,
    business_year_id integer,
    updated_user_id integer
);


ALTER TABLE demo.plan_measure_cost_assign OWNER TO XXXuser;

--
-- Name: COLUMN plan_measure_cost_assign.id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_cost_assign.id IS '効果(コスト)コスト計上先ID';


--
-- Name: COLUMN plan_measure_cost_assign.version; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_cost_assign.version IS 'バージョン';


--
-- Name: COLUMN plan_measure_cost_assign.created_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_cost_assign.created_at IS '作成日時';


--
-- Name: COLUMN plan_measure_cost_assign.created_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_cost_assign.created_user_id IS '作成利用者ID';


--
-- Name: COLUMN plan_measure_cost_assign.updated_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_cost_assign.updated_at IS '更新日時';


--
-- Name: COLUMN plan_measure_cost_assign.deleted_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_cost_assign.deleted_at IS '削除日時';


--
-- Name: COLUMN plan_measure_cost_assign.deleted_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_cost_assign.deleted_user_id IS '削除利用者ID';


--
-- Name: COLUMN plan_measure_cost_assign.department_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_cost_assign.department_id IS '部署ID';


--
-- Name: COLUMN plan_measure_cost_assign.cost_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_cost_assign.cost_id IS '効果ID';


--
-- Name: COLUMN plan_measure_cost_assign.client_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_cost_assign.client_id IS '導入企業ID';


--
-- Name: COLUMN plan_measure_cost_assign.business_year_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_cost_assign.business_year_id IS '年度ID';


--
-- Name: COLUMN plan_measure_cost_assign.updated_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_cost_assign.updated_user_id IS '更新利用者ID';


--
-- Name: plan_measure_cost_assign_id_seq; Type: SEQUENCE; Schema: demo; Owner: XXXuser
--

CREATE SEQUENCE demo.plan_measure_cost_assign_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE demo.plan_measure_cost_assign_id_seq OWNER TO XXXuser;

--
-- Name: plan_measure_cost_assign_id_seq; Type: SEQUENCE OWNED BY; Schema: demo; Owner: XXXuser
--

ALTER SEQUENCE demo.plan_measure_cost_assign_id_seq OWNED BY demo.plan_measure_cost_assign.id;


--
-- Name: plan_measure_cost_id_seq; Type: SEQUENCE; Schema: demo; Owner: XXXuser
--

CREATE SEQUENCE demo.plan_measure_cost_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE demo.plan_measure_cost_id_seq OWNER TO XXXuser;

--
-- Name: plan_measure_cost_id_seq; Type: SEQUENCE OWNED BY; Schema: demo; Owner: XXXuser
--

ALTER SEQUENCE demo.plan_measure_cost_id_seq OWNED BY demo.plan_measure_cost.id;


--
-- Name: plan_measure_cost_price; Type: TABLE; Schema: demo; Owner: XXXuser
--

CREATE TABLE demo.plan_measure_cost_price (
    id integer NOT NULL,
    year_of_occurrence integer NOT NULL,
    month_of_occurrence integer NOT NULL,
    cost numeric DEFAULT '0'::numeric NOT NULL,
    version integer DEFAULT 1 NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    created_user_id integer,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    deleted_at timestamp without time zone,
    deleted_user_id integer,
    department_id integer NOT NULL,
    client_id integer NOT NULL,
    business_year_id integer NOT NULL,
    plan_measure_cost_id integer NOT NULL,
    updated_user_id integer
);


ALTER TABLE demo.plan_measure_cost_price OWNER TO XXXuser;

--
-- Name: COLUMN plan_measure_cost_price.id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_cost_price.id IS '効果(コスト)金額ID';


--
-- Name: COLUMN plan_measure_cost_price.year_of_occurrence; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_cost_price.year_of_occurrence IS '発生年';


--
-- Name: COLUMN plan_measure_cost_price.month_of_occurrence; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_cost_price.month_of_occurrence IS '発生月';


--
-- Name: COLUMN plan_measure_cost_price.cost; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_cost_price.cost IS 'コスト';


--
-- Name: COLUMN plan_measure_cost_price.version; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_cost_price.version IS 'バージョン';


--
-- Name: COLUMN plan_measure_cost_price.created_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_cost_price.created_at IS '作成日時';


--
-- Name: COLUMN plan_measure_cost_price.created_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_cost_price.created_user_id IS '作成利用者ID';


--
-- Name: COLUMN plan_measure_cost_price.updated_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_cost_price.updated_at IS '更新日時';


--
-- Name: COLUMN plan_measure_cost_price.deleted_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_cost_price.deleted_at IS '削除日時';


--
-- Name: COLUMN plan_measure_cost_price.deleted_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_cost_price.deleted_user_id IS '削除利用者ID';


--
-- Name: COLUMN plan_measure_cost_price.department_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_cost_price.department_id IS '部署ID';


--
-- Name: COLUMN plan_measure_cost_price.client_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_cost_price.client_id IS '導入企業ID';


--
-- Name: COLUMN plan_measure_cost_price.business_year_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_cost_price.business_year_id IS '年度ID';


--
-- Name: COLUMN plan_measure_cost_price.plan_measure_cost_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_cost_price.plan_measure_cost_id IS '効果ID';


--
-- Name: COLUMN plan_measure_cost_price.updated_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_cost_price.updated_user_id IS '更新利用者ID';


--
-- Name: plan_measure_cost_price_id_seq; Type: SEQUENCE; Schema: demo; Owner: XXXuser
--

CREATE SEQUENCE demo.plan_measure_cost_price_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE demo.plan_measure_cost_price_id_seq OWNER TO XXXuser;

--
-- Name: plan_measure_cost_price_id_seq; Type: SEQUENCE OWNED BY; Schema: demo; Owner: XXXuser
--

ALTER SEQUENCE demo.plan_measure_cost_price_id_seq OWNED BY demo.plan_measure_cost_price.id;


--
-- Name: plan_measure_cost_target_department; Type: TABLE; Schema: demo; Owner: XXXuser
--

CREATE TABLE demo.plan_measure_cost_target_department (
    id integer NOT NULL,
    version integer DEFAULT 1 NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    created_user_id integer,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    deleted_at timestamp without time zone,
    deleted_user_id integer,
    business_year_id integer,
    department_id integer,
    assign_id integer NOT NULL,
    client_id integer NOT NULL,
    cost_id integer,
    measure_id integer
);


ALTER TABLE demo.plan_measure_cost_target_department OWNER TO XXXuser;

--
-- Name: COLUMN plan_measure_cost_target_department.id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_cost_target_department.id IS 'リスクコスト対象(組織)ID';


--
-- Name: COLUMN plan_measure_cost_target_department.version; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_cost_target_department.version IS 'バージョン';


--
-- Name: COLUMN plan_measure_cost_target_department.created_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_cost_target_department.created_at IS '作成日時';


--
-- Name: COLUMN plan_measure_cost_target_department.created_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_cost_target_department.created_user_id IS '作成利用者ID';


--
-- Name: COLUMN plan_measure_cost_target_department.updated_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_cost_target_department.updated_at IS '更新日時';


--
-- Name: COLUMN plan_measure_cost_target_department.deleted_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_cost_target_department.deleted_at IS '削除日時';


--
-- Name: COLUMN plan_measure_cost_target_department.deleted_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_cost_target_department.deleted_user_id IS '削除利用者ID';


--
-- Name: COLUMN plan_measure_cost_target_department.business_year_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_cost_target_department.business_year_id IS '年度ID';


--
-- Name: COLUMN plan_measure_cost_target_department.department_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_cost_target_department.department_id IS '部署ID';


--
-- Name: COLUMN plan_measure_cost_target_department.assign_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_cost_target_department.assign_id IS '効果(コスト)コスト計上先ID';


--
-- Name: COLUMN plan_measure_cost_target_department.client_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_cost_target_department.client_id IS '導入企業ID';


--
-- Name: COLUMN plan_measure_cost_target_department.cost_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_cost_target_department.cost_id IS '効果ID';


--
-- Name: COLUMN plan_measure_cost_target_department.measure_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_cost_target_department.measure_id IS '施策ID';


--
-- Name: plan_measure_cost_target_department_id_seq; Type: SEQUENCE; Schema: demo; Owner: XXXuser
--

CREATE SEQUENCE demo.plan_measure_cost_target_department_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE demo.plan_measure_cost_target_department_id_seq OWNER TO XXXuser;

--
-- Name: plan_measure_cost_target_department_id_seq; Type: SEQUENCE OWNED BY; Schema: demo; Owner: XXXuser
--

ALTER SEQUENCE demo.plan_measure_cost_target_department_id_seq OWNED BY demo.plan_measure_cost_target_department.id;


--
-- Name: plan_measure_cost_target_individual; Type: TABLE; Schema: demo; Owner: XXXuser
--

CREATE TABLE demo.plan_measure_cost_target_individual (
    id integer NOT NULL,
    version integer DEFAULT 1 NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    created_user_id integer,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    deleted_at timestamp without time zone,
    deleted_user_id integer,
    business_year_id integer,
    department_id integer,
    cost_id integer,
    assign_id integer,
    user_dpm_id integer NOT NULL,
    client_id integer NOT NULL,
    measure_id integer
);


ALTER TABLE demo.plan_measure_cost_target_individual OWNER TO XXXuser;

--
-- Name: COLUMN plan_measure_cost_target_individual.id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_cost_target_individual.id IS 'リスクコスト計上先ID';


--
-- Name: COLUMN plan_measure_cost_target_individual.version; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_cost_target_individual.version IS 'バージョン';


--
-- Name: COLUMN plan_measure_cost_target_individual.created_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_cost_target_individual.created_at IS '作成日時';


--
-- Name: COLUMN plan_measure_cost_target_individual.created_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_cost_target_individual.created_user_id IS '作成利用者ID';


--
-- Name: COLUMN plan_measure_cost_target_individual.updated_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_cost_target_individual.updated_at IS '更新日時';


--
-- Name: COLUMN plan_measure_cost_target_individual.deleted_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_cost_target_individual.deleted_at IS '削除日時';


--
-- Name: COLUMN plan_measure_cost_target_individual.deleted_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_cost_target_individual.deleted_user_id IS '削除利用者ID';


--
-- Name: COLUMN plan_measure_cost_target_individual.business_year_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_cost_target_individual.business_year_id IS '年度ID';


--
-- Name: COLUMN plan_measure_cost_target_individual.department_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_cost_target_individual.department_id IS '部署ID';


--
-- Name: COLUMN plan_measure_cost_target_individual.cost_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_cost_target_individual.cost_id IS '効果ID';


--
-- Name: COLUMN plan_measure_cost_target_individual.assign_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_cost_target_individual.assign_id IS '効果(コスト)コスト計上先ID';


--
-- Name: COLUMN plan_measure_cost_target_individual.user_dpm_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_cost_target_individual.user_dpm_id IS '利用者部署ID';


--
-- Name: COLUMN plan_measure_cost_target_individual.client_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_cost_target_individual.client_id IS '導入企業ID';


--
-- Name: COLUMN plan_measure_cost_target_individual.measure_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_cost_target_individual.measure_id IS '施策ID';


--
-- Name: plan_measure_cost_target_individual_id_seq; Type: SEQUENCE; Schema: demo; Owner: XXXuser
--

CREATE SEQUENCE demo.plan_measure_cost_target_individual_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE demo.plan_measure_cost_target_individual_id_seq OWNER TO XXXuser;

--
-- Name: plan_measure_cost_target_individual_id_seq; Type: SEQUENCE OWNED BY; Schema: demo; Owner: XXXuser
--

ALTER SEQUENCE demo.plan_measure_cost_target_individual_id_seq OWNED BY demo.plan_measure_cost_target_individual.id;


--
-- Name: plan_measure_effect_sale; Type: TABLE; Schema: demo; Owner: XXXuser
--

CREATE TABLE demo.plan_measure_effect_sale (
    id integer NOT NULL,
    project demo.plan_measure_effect_sale_project_enum,
    effect_inc_dec demo.plan_measure_effect_sale_effect_inc_dec_enum,
    version integer DEFAULT 1 NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    created_user_id integer,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_user_id integer,
    deleted_at timestamp without time zone,
    deleted_user_id integer,
    business_year_id integer NOT NULL,
    department_id integer NOT NULL,
    client_id integer NOT NULL,
    plan_measure_id integer NOT NULL
);


ALTER TABLE demo.plan_measure_effect_sale OWNER TO XXXuser;

--
-- Name: COLUMN plan_measure_effect_sale.id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_effect_sale.id IS '効果ID';


--
-- Name: COLUMN plan_measure_effect_sale.project; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_effect_sale.project IS '項目';


--
-- Name: COLUMN plan_measure_effect_sale.effect_inc_dec; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_effect_sale.effect_inc_dec IS '効果増減';


--
-- Name: COLUMN plan_measure_effect_sale.version; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_effect_sale.version IS 'バージョン';


--
-- Name: COLUMN plan_measure_effect_sale.created_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_effect_sale.created_at IS '作成日時';


--
-- Name: COLUMN plan_measure_effect_sale.created_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_effect_sale.created_user_id IS '作成利用者ID';


--
-- Name: COLUMN plan_measure_effect_sale.updated_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_effect_sale.updated_at IS '更新日時';


--
-- Name: COLUMN plan_measure_effect_sale.updated_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_effect_sale.updated_user_id IS '更新利用者ID';


--
-- Name: COLUMN plan_measure_effect_sale.deleted_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_effect_sale.deleted_at IS '削除日時';


--
-- Name: COLUMN plan_measure_effect_sale.deleted_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_effect_sale.deleted_user_id IS '削除利用者ID';


--
-- Name: COLUMN plan_measure_effect_sale.business_year_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_effect_sale.business_year_id IS '年度ID';


--
-- Name: COLUMN plan_measure_effect_sale.department_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_effect_sale.department_id IS '部署ID';


--
-- Name: COLUMN plan_measure_effect_sale.client_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_effect_sale.client_id IS '導入企業ID';


--
-- Name: COLUMN plan_measure_effect_sale.plan_measure_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_effect_sale.plan_measure_id IS '施策ID';


--
-- Name: plan_measure_effect_sale_id_seq; Type: SEQUENCE; Schema: demo; Owner: XXXuser
--

CREATE SEQUENCE demo.plan_measure_effect_sale_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE demo.plan_measure_effect_sale_id_seq OWNER TO XXXuser;

--
-- Name: plan_measure_effect_sale_id_seq; Type: SEQUENCE OWNED BY; Schema: demo; Owner: XXXuser
--

ALTER SEQUENCE demo.plan_measure_effect_sale_id_seq OWNED BY demo.plan_measure_effect_sale.id;


--
-- Name: plan_measure_effect_sale_price; Type: TABLE; Schema: demo; Owner: XXXuser
--

CREATE TABLE demo.plan_measure_effect_sale_price (
    id integer NOT NULL,
    year_of_occurrence integer NOT NULL,
    month_of_occurrence integer NOT NULL,
    cost numeric DEFAULT '0'::numeric NOT NULL,
    version integer DEFAULT 1 NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    created_user_id integer,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    deleted_at timestamp without time zone,
    deleted_user_id integer,
    business_year_id integer NOT NULL,
    department_id integer NOT NULL,
    plan_measure_effect_sale_id integer NOT NULL,
    client_id integer NOT NULL,
    updated_user_id integer
);


ALTER TABLE demo.plan_measure_effect_sale_price OWNER TO XXXuser;

--
-- Name: COLUMN plan_measure_effect_sale_price.id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_effect_sale_price.id IS 'リスク金額ID';


--
-- Name: COLUMN plan_measure_effect_sale_price.year_of_occurrence; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_effect_sale_price.year_of_occurrence IS '発生年';


--
-- Name: COLUMN plan_measure_effect_sale_price.month_of_occurrence; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_effect_sale_price.month_of_occurrence IS '発生月';


--
-- Name: COLUMN plan_measure_effect_sale_price.cost; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_effect_sale_price.cost IS 'コスト';


--
-- Name: COLUMN plan_measure_effect_sale_price.version; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_effect_sale_price.version IS 'バージョン';


--
-- Name: COLUMN plan_measure_effect_sale_price.created_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_effect_sale_price.created_at IS '作成日時';


--
-- Name: COLUMN plan_measure_effect_sale_price.created_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_effect_sale_price.created_user_id IS '作成利用者ID';


--
-- Name: COLUMN plan_measure_effect_sale_price.updated_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_effect_sale_price.updated_at IS '更新日時';


--
-- Name: COLUMN plan_measure_effect_sale_price.deleted_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_effect_sale_price.deleted_at IS '削除日時';


--
-- Name: COLUMN plan_measure_effect_sale_price.deleted_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_effect_sale_price.deleted_user_id IS '削除利用者ID';


--
-- Name: COLUMN plan_measure_effect_sale_price.business_year_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_effect_sale_price.business_year_id IS '年度ID';


--
-- Name: COLUMN plan_measure_effect_sale_price.department_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_effect_sale_price.department_id IS '部署ID';


--
-- Name: COLUMN plan_measure_effect_sale_price.plan_measure_effect_sale_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_effect_sale_price.plan_measure_effect_sale_id IS '効果ID';


--
-- Name: COLUMN plan_measure_effect_sale_price.client_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_effect_sale_price.client_id IS '導入企業ID';


--
-- Name: COLUMN plan_measure_effect_sale_price.updated_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_effect_sale_price.updated_user_id IS '更新利用者ID';


--
-- Name: plan_measure_effect_sale_price_id_seq; Type: SEQUENCE; Schema: demo; Owner: XXXuser
--

CREATE SEQUENCE demo.plan_measure_effect_sale_price_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE demo.plan_measure_effect_sale_price_id_seq OWNER TO XXXuser;

--
-- Name: plan_measure_effect_sale_price_id_seq; Type: SEQUENCE OWNED BY; Schema: demo; Owner: XXXuser
--

ALTER SEQUENCE demo.plan_measure_effect_sale_price_id_seq OWNED BY demo.plan_measure_effect_sale_price.id;


--
-- Name: plan_measure_id_seq; Type: SEQUENCE; Schema: demo; Owner: XXXuser
--

CREATE SEQUENCE demo.plan_measure_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE demo.plan_measure_id_seq OWNER TO XXXuser;

--
-- Name: plan_measure_id_seq; Type: SEQUENCE OWNED BY; Schema: demo; Owner: XXXuser
--

ALTER SEQUENCE demo.plan_measure_id_seq OWNED BY demo.plan_measure.id;


--
-- Name: plan_measure_plans_plan; Type: TABLE; Schema: demo; Owner: XXXuser
--

CREATE TABLE demo.plan_measure_plans_plan (
    plan_measure_id integer NOT NULL,
    plan_id integer NOT NULL
);


ALTER TABLE demo.plan_measure_plans_plan OWNER TO XXXuser;

--
-- Name: plan_measure_registration_request; Type: TABLE; Schema: demo; Owner: XXXuser
--

CREATE TABLE demo.plan_measure_registration_request (
    id integer NOT NULL,
    code character varying(21) NOT NULL,
    until date,
    version integer DEFAULT 1 NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    created_user_id integer,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_user_id integer,
    deleted_at timestamp without time zone,
    deleted_user_id integer,
    plan_id integer,
    requested_by_id integer,
    client_id integer NOT NULL
);


ALTER TABLE demo.plan_measure_registration_request OWNER TO XXXuser;

--
-- Name: COLUMN plan_measure_registration_request.id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_registration_request.id IS '依頼ID';


--
-- Name: COLUMN plan_measure_registration_request.code; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_registration_request.code IS '依頼コード';


--
-- Name: COLUMN plan_measure_registration_request.until; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_registration_request.until IS '提出期限';


--
-- Name: COLUMN plan_measure_registration_request.version; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_registration_request.version IS 'バージョン';


--
-- Name: COLUMN plan_measure_registration_request.created_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_registration_request.created_at IS '作成日時';


--
-- Name: COLUMN plan_measure_registration_request.created_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_registration_request.created_user_id IS '作成利用者ID';


--
-- Name: COLUMN plan_measure_registration_request.updated_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_registration_request.updated_at IS '更新日時';


--
-- Name: COLUMN plan_measure_registration_request.updated_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_registration_request.updated_user_id IS '更新利用者ID';


--
-- Name: COLUMN plan_measure_registration_request.deleted_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_registration_request.deleted_at IS '削除日時';


--
-- Name: COLUMN plan_measure_registration_request.deleted_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_registration_request.deleted_user_id IS '削除利用者ID';


--
-- Name: COLUMN plan_measure_registration_request.plan_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_registration_request.plan_id IS '事業計画ID';


--
-- Name: COLUMN plan_measure_registration_request.requested_by_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_registration_request.requested_by_id IS '利用者部署ID';


--
-- Name: COLUMN plan_measure_registration_request.client_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_registration_request.client_id IS '導入企業ID';


--
-- Name: plan_measure_registration_request_id_seq; Type: SEQUENCE; Schema: demo; Owner: XXXuser
--

CREATE SEQUENCE demo.plan_measure_registration_request_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE demo.plan_measure_registration_request_id_seq OWNER TO XXXuser;

--
-- Name: plan_measure_registration_request_id_seq; Type: SEQUENCE OWNED BY; Schema: demo; Owner: XXXuser
--

ALTER SEQUENCE demo.plan_measure_registration_request_id_seq OWNED BY demo.plan_measure_registration_request.id;


--
-- Name: plan_measure_registration_request_plan_measure_plan_measure; Type: TABLE; Schema: demo; Owner: XXXuser
--

CREATE TABLE demo.plan_measure_registration_request_plan_measure_plan_measure (
    plan_measure_registration_request_id integer NOT NULL,
    plan_measure_id integer NOT NULL
);


ALTER TABLE demo.plan_measure_registration_request_plan_measure_plan_measure OWNER TO XXXuser;

--
-- Name: plan_measure_registration_request_requested_to_user_department; Type: TABLE; Schema: demo; Owner: XXXuser
--

CREATE TABLE demo.plan_measure_registration_request_requested_to_user_department (
    plan_measure_registration_request_id integer NOT NULL,
    user_department_id integer NOT NULL
);


ALTER TABLE demo.plan_measure_registration_request_requested_to_user_department OWNER TO XXXuser;

--
-- Name: plan_measure_risk; Type: TABLE; Schema: demo; Owner: XXXuser
--

CREATE TABLE demo.plan_measure_risk (
    id integer NOT NULL,
    risk_name character varying(200) NOT NULL,
    version integer DEFAULT 1 NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    created_user_id integer,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    deleted_at timestamp without time zone,
    deleted_user_id integer,
    department_id integer NOT NULL,
    client_id integer NOT NULL,
    updated_user_id integer,
    business_year_id integer NOT NULL,
    plan_measure_id integer NOT NULL,
    account_title_id integer,
    target_type demo.plan_measure_risk_target_type_enum
);


ALTER TABLE demo.plan_measure_risk OWNER TO XXXuser;

--
-- Name: COLUMN plan_measure_risk.id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_risk.id IS 'リスクID';


--
-- Name: COLUMN plan_measure_risk.risk_name; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_risk.risk_name IS 'リスク名';


--
-- Name: COLUMN plan_measure_risk.version; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_risk.version IS 'バージョン';


--
-- Name: COLUMN plan_measure_risk.created_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_risk.created_at IS '作成日時';


--
-- Name: COLUMN plan_measure_risk.created_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_risk.created_user_id IS '作成利用者ID';


--
-- Name: COLUMN plan_measure_risk.updated_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_risk.updated_at IS '更新日時';


--
-- Name: COLUMN plan_measure_risk.deleted_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_risk.deleted_at IS '削除日時';


--
-- Name: COLUMN plan_measure_risk.deleted_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_risk.deleted_user_id IS '削除利用者ID';


--
-- Name: COLUMN plan_measure_risk.department_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_risk.department_id IS '部署ID';


--
-- Name: COLUMN plan_measure_risk.client_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_risk.client_id IS '導入企業ID';


--
-- Name: COLUMN plan_measure_risk.updated_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_risk.updated_user_id IS '更新利用者ID';


--
-- Name: COLUMN plan_measure_risk.business_year_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_risk.business_year_id IS '年度ID';


--
-- Name: COLUMN plan_measure_risk.plan_measure_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_risk.plan_measure_id IS '施策ID';


--
-- Name: COLUMN plan_measure_risk.account_title_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_risk.account_title_id IS '科目ID';


--
-- Name: COLUMN plan_measure_risk.target_type; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_risk.target_type IS 'risk target';


--
-- Name: plan_measure_risk_assign; Type: TABLE; Schema: demo; Owner: XXXuser
--

CREATE TABLE demo.plan_measure_risk_assign (
    id integer NOT NULL,
    version integer DEFAULT 1 NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    created_user_id integer,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    deleted_at timestamp without time zone,
    deleted_user_id integer,
    department_id integer NOT NULL,
    risk_id integer NOT NULL,
    client_id integer NOT NULL,
    business_year_id integer NOT NULL,
    updated_user_id integer
);


ALTER TABLE demo.plan_measure_risk_assign OWNER TO XXXuser;

--
-- Name: COLUMN plan_measure_risk_assign.id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_risk_assign.id IS 'リスクコスト計上先ID';


--
-- Name: COLUMN plan_measure_risk_assign.version; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_risk_assign.version IS 'バージョン';


--
-- Name: COLUMN plan_measure_risk_assign.created_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_risk_assign.created_at IS '作成日時';


--
-- Name: COLUMN plan_measure_risk_assign.created_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_risk_assign.created_user_id IS '作成利用者ID';


--
-- Name: COLUMN plan_measure_risk_assign.updated_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_risk_assign.updated_at IS '更新日時';


--
-- Name: COLUMN plan_measure_risk_assign.deleted_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_risk_assign.deleted_at IS '削除日時';


--
-- Name: COLUMN plan_measure_risk_assign.deleted_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_risk_assign.deleted_user_id IS '削除利用者ID';


--
-- Name: COLUMN plan_measure_risk_assign.department_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_risk_assign.department_id IS '部署ID';


--
-- Name: COLUMN plan_measure_risk_assign.risk_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_risk_assign.risk_id IS 'リスクID';


--
-- Name: COLUMN plan_measure_risk_assign.client_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_risk_assign.client_id IS '導入企業ID';


--
-- Name: COLUMN plan_measure_risk_assign.business_year_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_risk_assign.business_year_id IS '年度ID';


--
-- Name: COLUMN plan_measure_risk_assign.updated_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_risk_assign.updated_user_id IS '更新利用者ID';


--
-- Name: plan_measure_risk_assign_id_seq; Type: SEQUENCE; Schema: demo; Owner: XXXuser
--

CREATE SEQUENCE demo.plan_measure_risk_assign_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE demo.plan_measure_risk_assign_id_seq OWNER TO XXXuser;

--
-- Name: plan_measure_risk_assign_id_seq; Type: SEQUENCE OWNED BY; Schema: demo; Owner: XXXuser
--

ALTER SEQUENCE demo.plan_measure_risk_assign_id_seq OWNED BY demo.plan_measure_risk_assign.id;


--
-- Name: plan_measure_risk_cost_target_department; Type: TABLE; Schema: demo; Owner: XXXuser
--

CREATE TABLE demo.plan_measure_risk_cost_target_department (
    id integer NOT NULL,
    version integer DEFAULT 1 NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    created_user_id integer,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    deleted_at timestamp without time zone,
    deleted_user_id integer,
    business_year_id integer NOT NULL,
    department_id integer NOT NULL,
    client_id integer NOT NULL,
    assign_id integer NOT NULL,
    risk_id integer,
    measure_id integer,
    updated_user_id integer
);


ALTER TABLE demo.plan_measure_risk_cost_target_department OWNER TO XXXuser;

--
-- Name: COLUMN plan_measure_risk_cost_target_department.id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_risk_cost_target_department.id IS 'リスクコスト対象(組織)ID';


--
-- Name: COLUMN plan_measure_risk_cost_target_department.version; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_risk_cost_target_department.version IS 'バージョン';


--
-- Name: COLUMN plan_measure_risk_cost_target_department.created_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_risk_cost_target_department.created_at IS '作成日時';


--
-- Name: COLUMN plan_measure_risk_cost_target_department.created_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_risk_cost_target_department.created_user_id IS '作成利用者ID';


--
-- Name: COLUMN plan_measure_risk_cost_target_department.updated_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_risk_cost_target_department.updated_at IS '更新日時';


--
-- Name: COLUMN plan_measure_risk_cost_target_department.deleted_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_risk_cost_target_department.deleted_at IS '削除日時';


--
-- Name: COLUMN plan_measure_risk_cost_target_department.deleted_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_risk_cost_target_department.deleted_user_id IS '削除利用者ID';


--
-- Name: COLUMN plan_measure_risk_cost_target_department.business_year_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_risk_cost_target_department.business_year_id IS '年度ID';


--
-- Name: COLUMN plan_measure_risk_cost_target_department.department_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_risk_cost_target_department.department_id IS '部署ID';


--
-- Name: COLUMN plan_measure_risk_cost_target_department.client_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_risk_cost_target_department.client_id IS '導入企業ID';


--
-- Name: COLUMN plan_measure_risk_cost_target_department.assign_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_risk_cost_target_department.assign_id IS 'リスクコスト計上先ID';


--
-- Name: COLUMN plan_measure_risk_cost_target_department.risk_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_risk_cost_target_department.risk_id IS 'リスクID';


--
-- Name: COLUMN plan_measure_risk_cost_target_department.measure_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_risk_cost_target_department.measure_id IS '施策ID';


--
-- Name: COLUMN plan_measure_risk_cost_target_department.updated_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_risk_cost_target_department.updated_user_id IS '更新利用者ID';


--
-- Name: plan_measure_risk_cost_target_department_id_seq; Type: SEQUENCE; Schema: demo; Owner: XXXuser
--

CREATE SEQUENCE demo.plan_measure_risk_cost_target_department_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE demo.plan_measure_risk_cost_target_department_id_seq OWNER TO XXXuser;

--
-- Name: plan_measure_risk_cost_target_department_id_seq; Type: SEQUENCE OWNED BY; Schema: demo; Owner: XXXuser
--

ALTER SEQUENCE demo.plan_measure_risk_cost_target_department_id_seq OWNED BY demo.plan_measure_risk_cost_target_department.id;


--
-- Name: plan_measure_risk_cost_target_individual; Type: TABLE; Schema: demo; Owner: XXXuser
--

CREATE TABLE demo.plan_measure_risk_cost_target_individual (
    id integer NOT NULL,
    version integer DEFAULT 1 NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    created_user_id integer,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    deleted_at timestamp without time zone,
    deleted_user_id integer,
    business_year_id integer NOT NULL,
    department_id integer NOT NULL,
    risk_id integer,
    user_dpm_id integer NOT NULL,
    client_id integer NOT NULL,
    assign_id integer,
    measure_id integer,
    updated_user_id integer
);


ALTER TABLE demo.plan_measure_risk_cost_target_individual OWNER TO XXXuser;

--
-- Name: COLUMN plan_measure_risk_cost_target_individual.id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_risk_cost_target_individual.id IS 'リスクコスト計上先ID';


--
-- Name: COLUMN plan_measure_risk_cost_target_individual.version; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_risk_cost_target_individual.version IS 'バージョン';


--
-- Name: COLUMN plan_measure_risk_cost_target_individual.created_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_risk_cost_target_individual.created_at IS '作成日時';


--
-- Name: COLUMN plan_measure_risk_cost_target_individual.created_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_risk_cost_target_individual.created_user_id IS '作成利用者ID';


--
-- Name: COLUMN plan_measure_risk_cost_target_individual.updated_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_risk_cost_target_individual.updated_at IS '更新日時';


--
-- Name: COLUMN plan_measure_risk_cost_target_individual.deleted_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_risk_cost_target_individual.deleted_at IS '削除日時';


--
-- Name: COLUMN plan_measure_risk_cost_target_individual.deleted_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_risk_cost_target_individual.deleted_user_id IS '削除利用者ID';


--
-- Name: COLUMN plan_measure_risk_cost_target_individual.business_year_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_risk_cost_target_individual.business_year_id IS '年度ID';


--
-- Name: COLUMN plan_measure_risk_cost_target_individual.department_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_risk_cost_target_individual.department_id IS '部署ID';


--
-- Name: COLUMN plan_measure_risk_cost_target_individual.risk_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_risk_cost_target_individual.risk_id IS 'リスクID';


--
-- Name: COLUMN plan_measure_risk_cost_target_individual.user_dpm_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_risk_cost_target_individual.user_dpm_id IS '利用者部署ID';


--
-- Name: COLUMN plan_measure_risk_cost_target_individual.client_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_risk_cost_target_individual.client_id IS '導入企業ID';


--
-- Name: COLUMN plan_measure_risk_cost_target_individual.assign_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_risk_cost_target_individual.assign_id IS 'リスクコスト計上先ID';


--
-- Name: COLUMN plan_measure_risk_cost_target_individual.measure_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_risk_cost_target_individual.measure_id IS '施策ID';


--
-- Name: COLUMN plan_measure_risk_cost_target_individual.updated_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_risk_cost_target_individual.updated_user_id IS '更新利用者ID';


--
-- Name: plan_measure_risk_cost_target_individual_id_seq; Type: SEQUENCE; Schema: demo; Owner: XXXuser
--

CREATE SEQUENCE demo.plan_measure_risk_cost_target_individual_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE demo.plan_measure_risk_cost_target_individual_id_seq OWNER TO XXXuser;

--
-- Name: plan_measure_risk_cost_target_individual_id_seq; Type: SEQUENCE OWNED BY; Schema: demo; Owner: XXXuser
--

ALTER SEQUENCE demo.plan_measure_risk_cost_target_individual_id_seq OWNED BY demo.plan_measure_risk_cost_target_individual.id;


--
-- Name: plan_measure_risk_id_seq; Type: SEQUENCE; Schema: demo; Owner: XXXuser
--

CREATE SEQUENCE demo.plan_measure_risk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE demo.plan_measure_risk_id_seq OWNER TO XXXuser;

--
-- Name: plan_measure_risk_id_seq; Type: SEQUENCE OWNED BY; Schema: demo; Owner: XXXuser
--

ALTER SEQUENCE demo.plan_measure_risk_id_seq OWNED BY demo.plan_measure_risk.id;


--
-- Name: plan_measure_risk_price; Type: TABLE; Schema: demo; Owner: XXXuser
--

CREATE TABLE demo.plan_measure_risk_price (
    year_of_occurrence integer NOT NULL,
    month_of_occurrence integer NOT NULL,
    cost numeric DEFAULT '0'::numeric NOT NULL,
    version integer DEFAULT 1 NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    created_user_id integer,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    deleted_at timestamp without time zone,
    deleted_user_id integer,
    department_id integer NOT NULL,
    risk_id integer NOT NULL,
    client_id integer NOT NULL,
    business_year_id integer NOT NULL,
    id integer NOT NULL,
    updated_user_id integer
);


ALTER TABLE demo.plan_measure_risk_price OWNER TO XXXuser;

--
-- Name: COLUMN plan_measure_risk_price.year_of_occurrence; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_risk_price.year_of_occurrence IS '発生年';


--
-- Name: COLUMN plan_measure_risk_price.month_of_occurrence; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_risk_price.month_of_occurrence IS '発生月';


--
-- Name: COLUMN plan_measure_risk_price.cost; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_risk_price.cost IS 'コスト';


--
-- Name: COLUMN plan_measure_risk_price.version; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_risk_price.version IS 'バージョン';


--
-- Name: COLUMN plan_measure_risk_price.created_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_risk_price.created_at IS '作成日時';


--
-- Name: COLUMN plan_measure_risk_price.created_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_risk_price.created_user_id IS '作成利用者ID';


--
-- Name: COLUMN plan_measure_risk_price.updated_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_risk_price.updated_at IS '更新日時';


--
-- Name: COLUMN plan_measure_risk_price.deleted_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_risk_price.deleted_at IS '削除日時';


--
-- Name: COLUMN plan_measure_risk_price.deleted_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_risk_price.deleted_user_id IS '削除利用者ID';


--
-- Name: COLUMN plan_measure_risk_price.department_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_risk_price.department_id IS '部署ID';


--
-- Name: COLUMN plan_measure_risk_price.risk_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_risk_price.risk_id IS 'リスクID';


--
-- Name: COLUMN plan_measure_risk_price.client_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_risk_price.client_id IS '導入企業ID';


--
-- Name: COLUMN plan_measure_risk_price.business_year_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_risk_price.business_year_id IS '年度ID';


--
-- Name: COLUMN plan_measure_risk_price.id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_risk_price.id IS 'リスク金額ID';


--
-- Name: COLUMN plan_measure_risk_price.updated_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_risk_price.updated_user_id IS '更新利用者ID';


--
-- Name: plan_measure_risk_price_id_seq; Type: SEQUENCE; Schema: demo; Owner: XXXuser
--

CREATE SEQUENCE demo.plan_measure_risk_price_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE demo.plan_measure_risk_price_id_seq OWNER TO XXXuser;

--
-- Name: plan_measure_risk_price_id_seq; Type: SEQUENCE OWNED BY; Schema: demo; Owner: XXXuser
--

ALTER SEQUENCE demo.plan_measure_risk_price_id_seq OWNED BY demo.plan_measure_risk_price.id;


--
-- Name: plan_measure_task; Type: TABLE; Schema: demo; Owner: XXXuser
--

CREATE TABLE demo.plan_measure_task (
    id integer NOT NULL,
    task_name character varying(200) NOT NULL,
    cost_recording_destination demo.plan_measure_task_cost_recording_destination_enum,
    version integer DEFAULT 1 NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    created_user_id integer,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    deleted_at timestamp without time zone,
    deleted_user_id integer,
    department_id integer NOT NULL,
    client_id integer NOT NULL,
    kpi_other character varying(50),
    plan_measure_id integer NOT NULL,
    business_year_id integer NOT NULL,
    kpi_type demo.plan_measure_task_kpi_type_enum,
    kpi_threshold character varying(255),
    kpi_period demo.plan_measure_task_kpi_period_enum,
    account_title_id integer,
    updated_user_id integer
);


ALTER TABLE demo.plan_measure_task OWNER TO XXXuser;

--
-- Name: COLUMN plan_measure_task.id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_task.id IS 'タスクID';


--
-- Name: COLUMN plan_measure_task.task_name; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_task.task_name IS 'タスク名';


--
-- Name: COLUMN plan_measure_task.cost_recording_destination; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_task.cost_recording_destination IS 'コスト計上先';


--
-- Name: COLUMN plan_measure_task.version; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_task.version IS 'バージョン';


--
-- Name: COLUMN plan_measure_task.created_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_task.created_at IS '作成日時';


--
-- Name: COLUMN plan_measure_task.created_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_task.created_user_id IS '作成利用者ID';


--
-- Name: COLUMN plan_measure_task.updated_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_task.updated_at IS '更新日時';


--
-- Name: COLUMN plan_measure_task.deleted_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_task.deleted_at IS '削除日時';


--
-- Name: COLUMN plan_measure_task.deleted_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_task.deleted_user_id IS '削除利用者ID';


--
-- Name: COLUMN plan_measure_task.department_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_task.department_id IS '部署ID';


--
-- Name: COLUMN plan_measure_task.client_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_task.client_id IS '導入企業ID';


--
-- Name: COLUMN plan_measure_task.kpi_other; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_task.kpi_other IS 'KPIその他';


--
-- Name: COLUMN plan_measure_task.plan_measure_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_task.plan_measure_id IS '施策ID';


--
-- Name: COLUMN plan_measure_task.business_year_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_task.business_year_id IS '年度ID';


--
-- Name: COLUMN plan_measure_task.kpi_type; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_task.kpi_type IS 'KPI種類';


--
-- Name: COLUMN plan_measure_task.kpi_threshold; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_task.kpi_threshold IS 'KPI閾値';


--
-- Name: COLUMN plan_measure_task.kpi_period; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_task.kpi_period IS 'KPI期間';


--
-- Name: COLUMN plan_measure_task.account_title_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_task.account_title_id IS '科目ID';


--
-- Name: COLUMN plan_measure_task.updated_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_task.updated_user_id IS '更新利用者ID';


--
-- Name: plan_measure_task_allocation; Type: TABLE; Schema: demo; Owner: XXXuser
--

CREATE TABLE demo.plan_measure_task_allocation (
    id integer NOT NULL,
    allocation_rate integer DEFAULT 0 NOT NULL,
    version integer DEFAULT 1 NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    created_user_id integer,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    deleted_at timestamp without time zone,
    deleted_user_id integer,
    department_id integer NOT NULL,
    distri_dpm_id integer NOT NULL,
    task_id integer NOT NULL,
    client_id integer NOT NULL,
    business_year_id integer NOT NULL,
    updated_user_id integer
);


ALTER TABLE demo.plan_measure_task_allocation OWNER TO XXXuser;

--
-- Name: COLUMN plan_measure_task_allocation.id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_task_allocation.id IS 'タスク配賦ID';


--
-- Name: COLUMN plan_measure_task_allocation.allocation_rate; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_task_allocation.allocation_rate IS '配賦率';


--
-- Name: COLUMN plan_measure_task_allocation.version; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_task_allocation.version IS 'バージョン';


--
-- Name: COLUMN plan_measure_task_allocation.created_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_task_allocation.created_at IS '作成日時';


--
-- Name: COLUMN plan_measure_task_allocation.created_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_task_allocation.created_user_id IS '作成利用者ID';


--
-- Name: COLUMN plan_measure_task_allocation.updated_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_task_allocation.updated_at IS '更新日時';


--
-- Name: COLUMN plan_measure_task_allocation.deleted_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_task_allocation.deleted_at IS '削除日時';


--
-- Name: COLUMN plan_measure_task_allocation.deleted_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_task_allocation.deleted_user_id IS '削除利用者ID';


--
-- Name: COLUMN plan_measure_task_allocation.department_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_task_allocation.department_id IS '部署ID';


--
-- Name: COLUMN plan_measure_task_allocation.distri_dpm_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_task_allocation.distri_dpm_id IS '部署ID';


--
-- Name: COLUMN plan_measure_task_allocation.task_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_task_allocation.task_id IS 'タスクID';


--
-- Name: COLUMN plan_measure_task_allocation.client_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_task_allocation.client_id IS '導入企業ID';


--
-- Name: COLUMN plan_measure_task_allocation.business_year_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_task_allocation.business_year_id IS '年度ID';


--
-- Name: COLUMN plan_measure_task_allocation.updated_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_task_allocation.updated_user_id IS '更新利用者ID';


--
-- Name: plan_measure_task_allocation_id_seq; Type: SEQUENCE; Schema: demo; Owner: XXXuser
--

CREATE SEQUENCE demo.plan_measure_task_allocation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE demo.plan_measure_task_allocation_id_seq OWNER TO XXXuser;

--
-- Name: plan_measure_task_allocation_id_seq; Type: SEQUENCE OWNED BY; Schema: demo; Owner: XXXuser
--

ALTER SEQUENCE demo.plan_measure_task_allocation_id_seq OWNED BY demo.plan_measure_task_allocation.id;


--
-- Name: plan_measure_task_assign; Type: TABLE; Schema: demo; Owner: XXXuser
--

CREATE TABLE demo.plan_measure_task_assign (
    id integer NOT NULL,
    version integer DEFAULT 1 NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    created_user_id integer,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    deleted_at timestamp without time zone,
    deleted_user_id integer,
    department_id integer NOT NULL,
    task_id integer NOT NULL,
    client_id integer NOT NULL,
    business_year_id integer NOT NULL,
    updated_user_id integer
);


ALTER TABLE demo.plan_measure_task_assign OWNER TO XXXuser;

--
-- Name: COLUMN plan_measure_task_assign.id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_task_assign.id IS 'タスク担当ID';


--
-- Name: COLUMN plan_measure_task_assign.version; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_task_assign.version IS 'バージョン';


--
-- Name: COLUMN plan_measure_task_assign.created_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_task_assign.created_at IS '作成日時';


--
-- Name: COLUMN plan_measure_task_assign.created_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_task_assign.created_user_id IS '作成利用者ID';


--
-- Name: COLUMN plan_measure_task_assign.updated_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_task_assign.updated_at IS '更新日時';


--
-- Name: COLUMN plan_measure_task_assign.deleted_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_task_assign.deleted_at IS '削除日時';


--
-- Name: COLUMN plan_measure_task_assign.deleted_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_task_assign.deleted_user_id IS '削除利用者ID';


--
-- Name: COLUMN plan_measure_task_assign.department_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_task_assign.department_id IS '部署ID';


--
-- Name: COLUMN plan_measure_task_assign.task_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_task_assign.task_id IS 'タスクID';


--
-- Name: COLUMN plan_measure_task_assign.client_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_task_assign.client_id IS '導入企業ID';


--
-- Name: COLUMN plan_measure_task_assign.business_year_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_task_assign.business_year_id IS '年度ID';


--
-- Name: COLUMN plan_measure_task_assign.updated_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_task_assign.updated_user_id IS '更新利用者ID';


--
-- Name: plan_measure_task_assign_id_seq; Type: SEQUENCE; Schema: demo; Owner: XXXuser
--

CREATE SEQUENCE demo.plan_measure_task_assign_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE demo.plan_measure_task_assign_id_seq OWNER TO XXXuser;

--
-- Name: plan_measure_task_assign_id_seq; Type: SEQUENCE OWNED BY; Schema: demo; Owner: XXXuser
--

ALTER SEQUENCE demo.plan_measure_task_assign_id_seq OWNED BY demo.plan_measure_task_assign.id;


--
-- Name: plan_measure_task_cost_target_department; Type: TABLE; Schema: demo; Owner: XXXuser
--

CREATE TABLE demo.plan_measure_task_cost_target_department (
    id integer NOT NULL,
    version integer DEFAULT 1 NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    created_user_id integer,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    deleted_at timestamp without time zone,
    deleted_user_id integer,
    business_year_id integer,
    department_id integer,
    task_id integer,
    assign_id integer NOT NULL,
    client_id integer NOT NULL,
    measure_id integer,
    updated_user_id integer
);


ALTER TABLE demo.plan_measure_task_cost_target_department OWNER TO XXXuser;

--
-- Name: COLUMN plan_measure_task_cost_target_department.id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_task_cost_target_department.id IS 'タスクコスト対象(組織)ID';


--
-- Name: COLUMN plan_measure_task_cost_target_department.version; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_task_cost_target_department.version IS 'バージョン';


--
-- Name: COLUMN plan_measure_task_cost_target_department.created_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_task_cost_target_department.created_at IS '作成日時';


--
-- Name: COLUMN plan_measure_task_cost_target_department.created_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_task_cost_target_department.created_user_id IS '作成利用者ID';


--
-- Name: COLUMN plan_measure_task_cost_target_department.updated_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_task_cost_target_department.updated_at IS '更新日時';


--
-- Name: COLUMN plan_measure_task_cost_target_department.deleted_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_task_cost_target_department.deleted_at IS '削除日時';


--
-- Name: COLUMN plan_measure_task_cost_target_department.deleted_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_task_cost_target_department.deleted_user_id IS '削除利用者ID';


--
-- Name: COLUMN plan_measure_task_cost_target_department.business_year_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_task_cost_target_department.business_year_id IS '年度ID';


--
-- Name: COLUMN plan_measure_task_cost_target_department.department_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_task_cost_target_department.department_id IS '部署ID';


--
-- Name: COLUMN plan_measure_task_cost_target_department.task_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_task_cost_target_department.task_id IS 'タスクID';


--
-- Name: COLUMN plan_measure_task_cost_target_department.assign_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_task_cost_target_department.assign_id IS 'タスク担当ID';


--
-- Name: COLUMN plan_measure_task_cost_target_department.client_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_task_cost_target_department.client_id IS '導入企業ID';


--
-- Name: COLUMN plan_measure_task_cost_target_department.measure_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_task_cost_target_department.measure_id IS '施策ID';


--
-- Name: COLUMN plan_measure_task_cost_target_department.updated_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_task_cost_target_department.updated_user_id IS '更新利用者ID';


--
-- Name: plan_measure_task_cost_target_department_id_seq; Type: SEQUENCE; Schema: demo; Owner: XXXuser
--

CREATE SEQUENCE demo.plan_measure_task_cost_target_department_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE demo.plan_measure_task_cost_target_department_id_seq OWNER TO XXXuser;

--
-- Name: plan_measure_task_cost_target_department_id_seq; Type: SEQUENCE OWNED BY; Schema: demo; Owner: XXXuser
--

ALTER SEQUENCE demo.plan_measure_task_cost_target_department_id_seq OWNED BY demo.plan_measure_task_cost_target_department.id;


--
-- Name: plan_measure_task_cost_target_individual; Type: TABLE; Schema: demo; Owner: XXXuser
--

CREATE TABLE demo.plan_measure_task_cost_target_individual (
    id integer NOT NULL,
    version integer DEFAULT 1 NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    created_user_id integer,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    deleted_at timestamp without time zone,
    deleted_user_id integer,
    business_year_id integer,
    department_id integer,
    task_id integer,
    assign_id integer,
    user_dpm_id integer NOT NULL,
    client_id integer NOT NULL,
    measure_id integer,
    updated_user_id integer
);


ALTER TABLE demo.plan_measure_task_cost_target_individual OWNER TO XXXuser;

--
-- Name: COLUMN plan_measure_task_cost_target_individual.id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_task_cost_target_individual.id IS 'タスクコスト計上先ID';


--
-- Name: COLUMN plan_measure_task_cost_target_individual.version; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_task_cost_target_individual.version IS 'バージョン';


--
-- Name: COLUMN plan_measure_task_cost_target_individual.created_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_task_cost_target_individual.created_at IS '作成日時';


--
-- Name: COLUMN plan_measure_task_cost_target_individual.created_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_task_cost_target_individual.created_user_id IS '作成利用者ID';


--
-- Name: COLUMN plan_measure_task_cost_target_individual.updated_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_task_cost_target_individual.updated_at IS '更新日時';


--
-- Name: COLUMN plan_measure_task_cost_target_individual.deleted_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_task_cost_target_individual.deleted_at IS '削除日時';


--
-- Name: COLUMN plan_measure_task_cost_target_individual.deleted_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_task_cost_target_individual.deleted_user_id IS '削除利用者ID';


--
-- Name: COLUMN plan_measure_task_cost_target_individual.business_year_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_task_cost_target_individual.business_year_id IS '年度ID';


--
-- Name: COLUMN plan_measure_task_cost_target_individual.department_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_task_cost_target_individual.department_id IS '部署ID';


--
-- Name: COLUMN plan_measure_task_cost_target_individual.task_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_task_cost_target_individual.task_id IS 'タスクID';


--
-- Name: COLUMN plan_measure_task_cost_target_individual.assign_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_task_cost_target_individual.assign_id IS 'タスク担当ID';


--
-- Name: COLUMN plan_measure_task_cost_target_individual.user_dpm_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_task_cost_target_individual.user_dpm_id IS '利用者部署ID';


--
-- Name: COLUMN plan_measure_task_cost_target_individual.client_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_task_cost_target_individual.client_id IS '導入企業ID';


--
-- Name: COLUMN plan_measure_task_cost_target_individual.measure_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_task_cost_target_individual.measure_id IS '施策ID';


--
-- Name: COLUMN plan_measure_task_cost_target_individual.updated_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_task_cost_target_individual.updated_user_id IS '更新利用者ID';


--
-- Name: plan_measure_task_cost_target_individual_id_seq; Type: SEQUENCE; Schema: demo; Owner: XXXuser
--

CREATE SEQUENCE demo.plan_measure_task_cost_target_individual_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE demo.plan_measure_task_cost_target_individual_id_seq OWNER TO XXXuser;

--
-- Name: plan_measure_task_cost_target_individual_id_seq; Type: SEQUENCE OWNED BY; Schema: demo; Owner: XXXuser
--

ALTER SEQUENCE demo.plan_measure_task_cost_target_individual_id_seq OWNED BY demo.plan_measure_task_cost_target_individual.id;


--
-- Name: plan_measure_task_id_seq; Type: SEQUENCE; Schema: demo; Owner: XXXuser
--

CREATE SEQUENCE demo.plan_measure_task_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE demo.plan_measure_task_id_seq OWNER TO XXXuser;

--
-- Name: plan_measure_task_id_seq; Type: SEQUENCE OWNED BY; Schema: demo; Owner: XXXuser
--

ALTER SEQUENCE demo.plan_measure_task_id_seq OWNED BY demo.plan_measure_task.id;


--
-- Name: plan_measure_task_price; Type: TABLE; Schema: demo; Owner: XXXuser
--

CREATE TABLE demo.plan_measure_task_price (
    id integer NOT NULL,
    year_of_occurrence integer NOT NULL,
    month_of_occurrence integer NOT NULL,
    cost numeric DEFAULT '0'::numeric NOT NULL,
    version integer DEFAULT 1 NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    created_user_id integer,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    deleted_at timestamp without time zone,
    deleted_user_id integer,
    department_id integer NOT NULL,
    task_id integer NOT NULL,
    client_id integer NOT NULL,
    business_year_id integer NOT NULL,
    updated_user_id integer
);


ALTER TABLE demo.plan_measure_task_price OWNER TO XXXuser;

--
-- Name: COLUMN plan_measure_task_price.id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_task_price.id IS 'タスクコストID';


--
-- Name: COLUMN plan_measure_task_price.year_of_occurrence; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_task_price.year_of_occurrence IS '発生年';


--
-- Name: COLUMN plan_measure_task_price.month_of_occurrence; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_task_price.month_of_occurrence IS '発生月';


--
-- Name: COLUMN plan_measure_task_price.cost; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_task_price.cost IS 'コスト';


--
-- Name: COLUMN plan_measure_task_price.version; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_task_price.version IS 'バージョン';


--
-- Name: COLUMN plan_measure_task_price.created_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_task_price.created_at IS '作成日時';


--
-- Name: COLUMN plan_measure_task_price.created_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_task_price.created_user_id IS '作成利用者ID';


--
-- Name: COLUMN plan_measure_task_price.updated_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_task_price.updated_at IS '更新日時';


--
-- Name: COLUMN plan_measure_task_price.deleted_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_task_price.deleted_at IS '削除日時';


--
-- Name: COLUMN plan_measure_task_price.deleted_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_task_price.deleted_user_id IS '削除利用者ID';


--
-- Name: COLUMN plan_measure_task_price.department_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_task_price.department_id IS '部署ID';


--
-- Name: COLUMN plan_measure_task_price.task_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_task_price.task_id IS 'タスクID';


--
-- Name: COLUMN plan_measure_task_price.client_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_task_price.client_id IS '導入企業ID';


--
-- Name: COLUMN plan_measure_task_price.business_year_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_task_price.business_year_id IS '年度ID';


--
-- Name: COLUMN plan_measure_task_price.updated_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.plan_measure_task_price.updated_user_id IS '更新利用者ID';


--
-- Name: plan_measure_task_price_id_seq; Type: SEQUENCE; Schema: demo; Owner: XXXuser
--

CREATE SEQUENCE demo.plan_measure_task_price_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE demo.plan_measure_task_price_id_seq OWNER TO XXXuser;

--
-- Name: plan_measure_task_price_id_seq; Type: SEQUENCE OWNED BY; Schema: demo; Owner: XXXuser
--

ALTER SEQUENCE demo.plan_measure_task_price_id_seq OWNED BY demo.plan_measure_task_price.id;


--
-- Name: policy_consideration; Type: TABLE; Schema: demo; Owner: XXXuser
--

CREATE TABLE demo.policy_consideration (
    "POLICY_CONSID_ID" integer NOT NULL,
    "CONSID" character varying(2048),
    version integer DEFAULT 1 NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    created_user_id integer,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_user_id integer,
    deleted_at timestamp without time zone,
    deleted_user_id integer
);


ALTER TABLE demo.policy_consideration OWNER TO XXXuser;

--
-- Name: COLUMN policy_consideration.version; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.policy_consideration.version IS 'バージョン';


--
-- Name: COLUMN policy_consideration.created_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.policy_consideration.created_at IS '作成日時';


--
-- Name: COLUMN policy_consideration.created_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.policy_consideration.created_user_id IS '作成利用者ID';


--
-- Name: COLUMN policy_consideration.updated_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.policy_consideration.updated_at IS '更新日時';


--
-- Name: COLUMN policy_consideration.updated_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.policy_consideration.updated_user_id IS '更新利用者ID';


--
-- Name: COLUMN policy_consideration.deleted_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.policy_consideration.deleted_at IS '削除日時';


--
-- Name: COLUMN policy_consideration.deleted_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.policy_consideration.deleted_user_id IS '削除利用者ID';


--
-- Name: policy_consideration_POLICY_CONSID_ID_seq; Type: SEQUENCE; Schema: demo; Owner: XXXuser
--

CREATE SEQUENCE demo."policy_consideration_POLICY_CONSID_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE demo."policy_consideration_POLICY_CONSID_ID_seq" OWNER TO XXXuser;

--
-- Name: policy_consideration_POLICY_CONSID_ID_seq; Type: SEQUENCE OWNED BY; Schema: demo; Owner: XXXuser
--

ALTER SEQUENCE demo."policy_consideration_POLICY_CONSID_ID_seq" OWNED BY demo.policy_consideration."POLICY_CONSID_ID";


--
-- Name: position; Type: TABLE; Schema: demo; Owner: XXXuser
--

CREATE TABLE demo."position" (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    weight integer NOT NULL,
    enabled_at date,
    disabled_at date,
    version integer DEFAULT 1 NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    created_user_id integer,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_user_id integer,
    deleted_at timestamp without time zone,
    deleted_user_id integer,
    client_id integer NOT NULL
);


ALTER TABLE demo."position" OWNER TO XXXuser;

--
-- Name: COLUMN "position".id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo."position".id IS '役職ID';


--
-- Name: COLUMN "position".name; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo."position".name IS '役職名';


--
-- Name: COLUMN "position".weight; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo."position".weight IS '役職';


--
-- Name: COLUMN "position".enabled_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo."position".enabled_at IS '適用開始日';


--
-- Name: COLUMN "position".disabled_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo."position".disabled_at IS '適用開始日';


--
-- Name: COLUMN "position".version; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo."position".version IS 'バージョン';


--
-- Name: COLUMN "position".created_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo."position".created_at IS '作成日時';


--
-- Name: COLUMN "position".created_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo."position".created_user_id IS '作成利用者ID';


--
-- Name: COLUMN "position".updated_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo."position".updated_at IS '更新日時';


--
-- Name: COLUMN "position".updated_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo."position".updated_user_id IS '更新利用者ID';


--
-- Name: COLUMN "position".deleted_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo."position".deleted_at IS '削除日時';


--
-- Name: COLUMN "position".deleted_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo."position".deleted_user_id IS '削除利用者ID';


--
-- Name: COLUMN "position".client_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo."position".client_id IS '導入企業ID';


--
-- Name: position_id_seq; Type: SEQUENCE; Schema: demo; Owner: XXXuser
--

CREATE SEQUENCE demo.position_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE demo.position_id_seq OWNER TO XXXuser;

--
-- Name: position_id_seq; Type: SEQUENCE OWNED BY; Schema: demo; Owner: XXXuser
--

ALTER SEQUENCE demo.position_id_seq OWNED BY demo."position".id;


--
-- Name: price_unit; Type: TABLE; Schema: demo; Owner: XXXuser
--

CREATE TABLE demo.price_unit (
    id integer NOT NULL,
    digit_length integer NOT NULL,
    version integer DEFAULT 1 NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    created_user_id integer,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    deleted_at timestamp without time zone,
    deleted_user_id integer,
    client_id integer NOT NULL
);


ALTER TABLE demo.price_unit OWNER TO XXXuser;

--
-- Name: COLUMN price_unit.id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.price_unit.id IS '金額単位初期値ID';


--
-- Name: COLUMN price_unit.digit_length; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.price_unit.digit_length IS '金額単位';


--
-- Name: COLUMN price_unit.version; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.price_unit.version IS 'バージョン';


--
-- Name: COLUMN price_unit.created_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.price_unit.created_at IS '作成日時';


--
-- Name: COLUMN price_unit.created_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.price_unit.created_user_id IS '作成利用者ID';


--
-- Name: COLUMN price_unit.updated_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.price_unit.updated_at IS '更新日時';


--
-- Name: COLUMN price_unit.deleted_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.price_unit.deleted_at IS '削除日時';


--
-- Name: COLUMN price_unit.deleted_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.price_unit.deleted_user_id IS '削除利用者ID';


--
-- Name: COLUMN price_unit.client_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.price_unit.client_id IS '導入企業ID';


--
-- Name: price_unit_id_seq; Type: SEQUENCE; Schema: demo; Owner: XXXuser
--

CREATE SEQUENCE demo.price_unit_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE demo.price_unit_id_seq OWNER TO XXXuser;

--
-- Name: price_unit_id_seq; Type: SEQUENCE OWNED BY; Schema: demo; Owner: XXXuser
--

ALTER SEQUENCE demo.price_unit_id_seq OWNED BY demo.price_unit.id;


--
-- Name: project; Type: TABLE; Schema: demo; Owner: XXXuser
--

CREATE TABLE demo.project (
    id integer NOT NULL,
    project_code character varying(21) NOT NULL,
    status demo.project_status_enum,
    premise_condition character varying(2048),
    impact character varying(2048),
    raised_user_id integer,
    owner_id integer,
    raised_department_id integer,
    priority demo.project_priority_enum,
    name character varying(200),
    start_date date,
    description character varying(2048),
    version integer DEFAULT 1 NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    created_user_id integer,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_user_id integer,
    deleted_at timestamp without time zone,
    deleted_user_id integer,
    client_id integer NOT NULL
);


ALTER TABLE demo.project OWNER TO XXXuser;

--
-- Name: COLUMN project.id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.project.id IS '企画ID';


--
-- Name: COLUMN project.project_code; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.project.project_code IS '企画コード';


--
-- Name: COLUMN project.status; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.project.status IS 'ステータス';


--
-- Name: COLUMN project.premise_condition; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.project.premise_condition IS '前提条件';


--
-- Name: COLUMN project.impact; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.project.impact IS '影響';


--
-- Name: COLUMN project.priority; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.project.priority IS '優先度';


--
-- Name: COLUMN project.name; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.project.name IS '企画名';


--
-- Name: COLUMN project.start_date; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.project.start_date IS '開始日';


--
-- Name: COLUMN project.description; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.project.description IS '概要';


--
-- Name: COLUMN project.version; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.project.version IS 'バージョン';


--
-- Name: COLUMN project.created_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.project.created_at IS '作成日時';


--
-- Name: COLUMN project.created_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.project.created_user_id IS '作成利用者ID';


--
-- Name: COLUMN project.updated_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.project.updated_at IS '更新日時';


--
-- Name: COLUMN project.updated_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.project.updated_user_id IS '更新利用者ID';


--
-- Name: COLUMN project.deleted_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.project.deleted_at IS '削除日時';


--
-- Name: COLUMN project.deleted_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.project.deleted_user_id IS '削除利用者ID';


--
-- Name: COLUMN project.client_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.project.client_id IS '導入企業ID';


--
-- Name: project_achievement_condition; Type: TABLE; Schema: demo; Owner: XXXuser
--

CREATE TABLE demo.project_achievement_condition (
    id integer NOT NULL,
    description character varying(2048),
    version integer DEFAULT 1 NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    created_user_id integer,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_user_id integer,
    deleted_at timestamp without time zone,
    deleted_user_id integer,
    client_id integer NOT NULL,
    project_id integer NOT NULL
);


ALTER TABLE demo.project_achievement_condition OWNER TO XXXuser;

--
-- Name: COLUMN project_achievement_condition.id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.project_achievement_condition.id IS '企画達成条件ID';


--
-- Name: COLUMN project_achievement_condition.description; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.project_achievement_condition.description IS '説明';


--
-- Name: COLUMN project_achievement_condition.version; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.project_achievement_condition.version IS 'バージョン';


--
-- Name: COLUMN project_achievement_condition.created_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.project_achievement_condition.created_at IS '作成日時';


--
-- Name: COLUMN project_achievement_condition.created_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.project_achievement_condition.created_user_id IS '作成利用者ID';


--
-- Name: COLUMN project_achievement_condition.updated_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.project_achievement_condition.updated_at IS '更新日時';


--
-- Name: COLUMN project_achievement_condition.updated_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.project_achievement_condition.updated_user_id IS '更新利用者ID';


--
-- Name: COLUMN project_achievement_condition.deleted_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.project_achievement_condition.deleted_at IS '削除日時';


--
-- Name: COLUMN project_achievement_condition.deleted_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.project_achievement_condition.deleted_user_id IS '削除利用者ID';


--
-- Name: COLUMN project_achievement_condition.client_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.project_achievement_condition.client_id IS '導入企業ID';


--
-- Name: COLUMN project_achievement_condition.project_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.project_achievement_condition.project_id IS '企画ID';


--
-- Name: project_achievement_condition_id_seq; Type: SEQUENCE; Schema: demo; Owner: XXXuser
--

CREATE SEQUENCE demo.project_achievement_condition_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE demo.project_achievement_condition_id_seq OWNER TO XXXuser;

--
-- Name: project_achievement_condition_id_seq; Type: SEQUENCE OWNED BY; Schema: demo; Owner: XXXuser
--

ALTER SEQUENCE demo.project_achievement_condition_id_seq OWNED BY demo.project_achievement_condition.id;


--
-- Name: project_id_seq; Type: SEQUENCE; Schema: demo; Owner: XXXuser
--

CREATE SEQUENCE demo.project_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE demo.project_id_seq OWNER TO XXXuser;

--
-- Name: project_id_seq; Type: SEQUENCE OWNED BY; Schema: demo; Owner: XXXuser
--

ALTER SEQUENCE demo.project_id_seq OWNED BY demo.project.id;


--
-- Name: project_members_user_department; Type: TABLE; Schema: demo; Owner: XXXuser
--

CREATE TABLE demo.project_members_user_department (
    project_id integer NOT NULL,
    user_department_id integer NOT NULL
);


ALTER TABLE demo.project_members_user_department OWNER TO XXXuser;

--
-- Name: project_milestone; Type: TABLE; Schema: demo; Owner: XXXuser
--

CREATE TABLE demo.project_milestone (
    id integer NOT NULL,
    type demo.project_milestone_type_enum DEFAULT 'others'::demo.project_milestone_type_enum NOT NULL,
    description character varying(2048),
    target_date date,
    version integer DEFAULT 1 NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    created_user_id integer,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_user_id integer,
    deleted_at timestamp without time zone,
    deleted_user_id integer,
    client_id integer NOT NULL,
    project_id integer NOT NULL
);


ALTER TABLE demo.project_milestone OWNER TO XXXuser;

--
-- Name: COLUMN project_milestone.id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.project_milestone.id IS '企画マイルストーンID';


--
-- Name: COLUMN project_milestone.type; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.project_milestone.type IS 'マイルストーン種類';


--
-- Name: COLUMN project_milestone.description; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.project_milestone.description IS '説明';


--
-- Name: COLUMN project_milestone.target_date; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.project_milestone.target_date IS '目標日';


--
-- Name: COLUMN project_milestone.version; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.project_milestone.version IS 'バージョン';


--
-- Name: COLUMN project_milestone.created_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.project_milestone.created_at IS '作成日時';


--
-- Name: COLUMN project_milestone.created_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.project_milestone.created_user_id IS '作成利用者ID';


--
-- Name: COLUMN project_milestone.updated_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.project_milestone.updated_at IS '更新日時';


--
-- Name: COLUMN project_milestone.updated_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.project_milestone.updated_user_id IS '更新利用者ID';


--
-- Name: COLUMN project_milestone.deleted_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.project_milestone.deleted_at IS '削除日時';


--
-- Name: COLUMN project_milestone.deleted_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.project_milestone.deleted_user_id IS '削除利用者ID';


--
-- Name: COLUMN project_milestone.client_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.project_milestone.client_id IS '導入企業ID';


--
-- Name: COLUMN project_milestone.project_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.project_milestone.project_id IS '企画ID';


--
-- Name: project_milestone_id_seq; Type: SEQUENCE; Schema: demo; Owner: XXXuser
--

CREATE SEQUENCE demo.project_milestone_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE demo.project_milestone_id_seq OWNER TO XXXuser;

--
-- Name: project_milestone_id_seq; Type: SEQUENCE OWNED BY; Schema: demo; Owner: XXXuser
--

ALTER SEQUENCE demo.project_milestone_id_seq OWNED BY demo.project_milestone.id;


--
-- Name: project_progress_report; Type: TABLE; Schema: demo; Owner: XXXuser
--

CREATE TABLE demo.project_progress_report (
    id integer NOT NULL,
    target_date date,
    status demo.project_progress_report_status_enum,
    project_status demo.project_progress_report_project_status_enum,
    unit demo.project_progress_report_unit_enum,
    delay integer,
    avoid_delay_plan character varying(2048),
    impact character varying(2048),
    progress integer,
    report_body character varying(2048),
    quality character varying(2048),
    cost character varying(2048),
    member character varying(2048),
    reported_at timestamp without time zone DEFAULT now() NOT NULL,
    version integer DEFAULT 1 NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    created_user_id integer,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_user_id integer,
    deleted_at timestamp without time zone,
    deleted_user_id integer,
    project_id integer NOT NULL,
    client_id integer NOT NULL
);


ALTER TABLE demo.project_progress_report OWNER TO XXXuser;

--
-- Name: COLUMN project_progress_report.id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.project_progress_report.id IS '企画進捗履歴ID';


--
-- Name: COLUMN project_progress_report.target_date; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.project_progress_report.target_date IS '基準日';


--
-- Name: COLUMN project_progress_report.status; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.project_progress_report.status IS '状況';


--
-- Name: COLUMN project_progress_report.project_status; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.project_progress_report.project_status IS '企画ステータス';


--
-- Name: COLUMN project_progress_report.unit; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.project_progress_report.unit IS '単位';


--
-- Name: COLUMN project_progress_report.delay; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.project_progress_report.delay IS '遅延';


--
-- Name: COLUMN project_progress_report.avoid_delay_plan; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.project_progress_report.avoid_delay_plan IS '遅延対策';


--
-- Name: COLUMN project_progress_report.impact; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.project_progress_report.impact IS '影響';


--
-- Name: COLUMN project_progress_report.progress; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.project_progress_report.progress IS '進捗率';


--
-- Name: COLUMN project_progress_report.report_body; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.project_progress_report.report_body IS '報告内容';


--
-- Name: COLUMN project_progress_report.quality; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.project_progress_report.quality IS '品質';


--
-- Name: COLUMN project_progress_report.cost; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.project_progress_report.cost IS 'コスト';


--
-- Name: COLUMN project_progress_report.member; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.project_progress_report.member IS '要員';


--
-- Name: COLUMN project_progress_report.reported_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.project_progress_report.reported_at IS '作成日時';


--
-- Name: COLUMN project_progress_report.version; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.project_progress_report.version IS 'バージョン';


--
-- Name: COLUMN project_progress_report.created_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.project_progress_report.created_at IS '作成日時';


--
-- Name: COLUMN project_progress_report.created_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.project_progress_report.created_user_id IS '作成利用者ID';


--
-- Name: COLUMN project_progress_report.updated_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.project_progress_report.updated_at IS '更新日時';


--
-- Name: COLUMN project_progress_report.updated_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.project_progress_report.updated_user_id IS '更新利用者ID';


--
-- Name: COLUMN project_progress_report.deleted_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.project_progress_report.deleted_at IS '削除日時';


--
-- Name: COLUMN project_progress_report.deleted_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.project_progress_report.deleted_user_id IS '削除利用者ID';


--
-- Name: COLUMN project_progress_report.project_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.project_progress_report.project_id IS '企画ID';


--
-- Name: COLUMN project_progress_report.client_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.project_progress_report.client_id IS '導入企業ID';


--
-- Name: project_progress_report_id_seq; Type: SEQUENCE; Schema: demo; Owner: XXXuser
--

CREATE SEQUENCE demo.project_progress_report_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE demo.project_progress_report_id_seq OWNER TO XXXuser;

--
-- Name: project_progress_report_id_seq; Type: SEQUENCE OWNED BY; Schema: demo; Owner: XXXuser
--

ALTER SEQUENCE demo.project_progress_report_id_seq OWNED BY demo.project_progress_report.id;


--
-- Name: project_schedule; Type: TABLE; Schema: demo; Owner: XXXuser
--

CREATE TABLE demo.project_schedule (
    id integer NOT NULL,
    type demo.project_schedule_type_enum NOT NULL,
    start_date date NOT NULL,
    end_date date NOT NULL,
    version integer DEFAULT 1 NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    created_user_id integer,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_user_id integer,
    deleted_at timestamp without time zone,
    deleted_user_id integer,
    client_id integer NOT NULL,
    project_id integer NOT NULL
);


ALTER TABLE demo.project_schedule OWNER TO XXXuser;

--
-- Name: COLUMN project_schedule.id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.project_schedule.id IS '企画スケジュールID';


--
-- Name: COLUMN project_schedule.type; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.project_schedule.type IS 'スケジュール種類';


--
-- Name: COLUMN project_schedule.start_date; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.project_schedule.start_date IS '開始日';


--
-- Name: COLUMN project_schedule.end_date; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.project_schedule.end_date IS '終了日';


--
-- Name: COLUMN project_schedule.version; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.project_schedule.version IS 'バージョン';


--
-- Name: COLUMN project_schedule.created_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.project_schedule.created_at IS '作成日時';


--
-- Name: COLUMN project_schedule.created_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.project_schedule.created_user_id IS '作成利用者ID';


--
-- Name: COLUMN project_schedule.updated_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.project_schedule.updated_at IS '更新日時';


--
-- Name: COLUMN project_schedule.updated_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.project_schedule.updated_user_id IS '更新利用者ID';


--
-- Name: COLUMN project_schedule.deleted_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.project_schedule.deleted_at IS '削除日時';


--
-- Name: COLUMN project_schedule.deleted_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.project_schedule.deleted_user_id IS '削除利用者ID';


--
-- Name: COLUMN project_schedule.client_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.project_schedule.client_id IS '導入企業ID';


--
-- Name: COLUMN project_schedule.project_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.project_schedule.project_id IS '企画ID';


--
-- Name: project_schedule_id_seq; Type: SEQUENCE; Schema: demo; Owner: XXXuser
--

CREATE SEQUENCE demo.project_schedule_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE demo.project_schedule_id_seq OWNER TO XXXuser;

--
-- Name: project_schedule_id_seq; Type: SEQUENCE OWNED BY; Schema: demo; Owner: XXXuser
--

ALTER SEQUENCE demo.project_schedule_id_seq OWNED BY demo.project_schedule.id;


--
-- Name: salary; Type: TABLE; Schema: demo; Owner: XXXuser
--

CREATE TABLE demo.salary (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    salary integer DEFAULT 0 NOT NULL,
    version integer DEFAULT 1 NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    created_user_id integer,
    updated_user_id integer,
    deleted_at timestamp without time zone,
    deleted_user_id integer,
    client_id integer NOT NULL
);


ALTER TABLE demo.salary OWNER TO XXXuser;

--
-- Name: COLUMN salary.id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.salary.id IS '給与等級ID';


--
-- Name: COLUMN salary.name; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.salary.name IS '等級名';


--
-- Name: COLUMN salary.salary; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.salary.salary IS '内部原価';


--
-- Name: COLUMN salary.version; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.salary.version IS 'バージョン';


--
-- Name: COLUMN salary.created_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.salary.created_at IS '作成日時';


--
-- Name: COLUMN salary.updated_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.salary.updated_at IS '更新日時';


--
-- Name: COLUMN salary.created_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.salary.created_user_id IS '作成利用者ID';


--
-- Name: COLUMN salary.updated_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.salary.updated_user_id IS '更新利用者ID';


--
-- Name: COLUMN salary.deleted_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.salary.deleted_at IS '削除日時';


--
-- Name: COLUMN salary.deleted_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.salary.deleted_user_id IS '削除利用者ID';


--
-- Name: COLUMN salary.client_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.salary.client_id IS '導入企業ID';


--
-- Name: salary_id_seq; Type: SEQUENCE; Schema: demo; Owner: XXXuser
--

CREATE SEQUENCE demo.salary_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE demo.salary_id_seq OWNER TO XXXuser;

--
-- Name: salary_id_seq; Type: SEQUENCE OWNED BY; Schema: demo; Owner: XXXuser
--

ALTER SEQUENCE demo.salary_id_seq OWNED BY demo.salary.id;


--
-- Name: sequence; Type: TABLE; Schema: demo; Owner: XXXuser
--

CREATE TABLE demo.sequence (
    id integer NOT NULL,
    table_name character varying(20) NOT NULL,
    last_inserted_number integer NOT NULL,
    client_id integer NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    created_user_id integer,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_user_id integer,
    deleted_at timestamp without time zone,
    deleted_user_id integer
);


ALTER TABLE demo.sequence OWNER TO XXXuser;

--
-- Name: COLUMN sequence.id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.sequence.id IS 'ID';


--
-- Name: COLUMN sequence.table_name; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.sequence.table_name IS 'テーブル名';


--
-- Name: COLUMN sequence.last_inserted_number; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.sequence.last_inserted_number IS '最大採番値';


--
-- Name: COLUMN sequence.created_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.sequence.created_at IS '作成日時';


--
-- Name: COLUMN sequence.created_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.sequence.created_user_id IS '作成利用者ID';


--
-- Name: COLUMN sequence.updated_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.sequence.updated_at IS '更新日時';


--
-- Name: COLUMN sequence.updated_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.sequence.updated_user_id IS '更新利用者ID';


--
-- Name: COLUMN sequence.deleted_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.sequence.deleted_at IS '削除日時';


--
-- Name: COLUMN sequence.deleted_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.sequence.deleted_user_id IS '削除利用者ID';


--
-- Name: sequence_id_seq; Type: SEQUENCE; Schema: demo; Owner: XXXuser
--

CREATE SEQUENCE demo.sequence_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE demo.sequence_id_seq OWNER TO XXXuser;

--
-- Name: sequence_id_seq; Type: SEQUENCE OWNED BY; Schema: demo; Owner: XXXuser
--

ALTER SEQUENCE demo.sequence_id_seq OWNED BY demo.sequence.id;


--
-- Name: study_content; Type: TABLE; Schema: demo; Owner: XXXuser
--

CREATE TABLE demo.study_content (
    id integer NOT NULL,
    task_id integer,
    text character varying(2048),
    version integer DEFAULT 1 NOT NULL,
    created_user_id integer,
    updated_user_id integer,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    deleted_at timestamp without time zone,
    client_id integer
);


ALTER TABLE demo.study_content OWNER TO XXXuser;

--
-- Name: COLUMN study_content.id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.study_content.id IS '方針検討ID';


--
-- Name: COLUMN study_content.task_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.study_content.task_id IS '課題ID';


--
-- Name: COLUMN study_content.text; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.study_content.text IS 'ToDo内容';


--
-- Name: COLUMN study_content.version; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.study_content.version IS 'バージョン';


--
-- Name: COLUMN study_content.created_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.study_content.created_user_id IS '作成利用者ID';


--
-- Name: COLUMN study_content.updated_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.study_content.updated_user_id IS '更新利用者ID';


--
-- Name: COLUMN study_content.created_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.study_content.created_at IS '作成日時';


--
-- Name: COLUMN study_content.updated_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.study_content.updated_at IS '更新日時';


--
-- Name: COLUMN study_content.deleted_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.study_content.deleted_at IS '削除日時';


--
-- Name: COLUMN study_content.client_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.study_content.client_id IS '導入企業ID';


--
-- Name: study_content_id_seq; Type: SEQUENCE; Schema: demo; Owner: XXXuser
--

CREATE SEQUENCE demo.study_content_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE demo.study_content_id_seq OWNER TO XXXuser;

--
-- Name: study_content_id_seq; Type: SEQUENCE OWNED BY; Schema: demo; Owner: XXXuser
--

ALTER SEQUENCE demo.study_content_id_seq OWNED BY demo.study_content.id;


--
-- Name: study_content_measures_measure; Type: TABLE; Schema: demo; Owner: XXXuser
--

CREATE TABLE demo.study_content_measures_measure (
    study_content_id integer NOT NULL,
    measure_id integer NOT NULL
);


ALTER TABLE demo.study_content_measures_measure OWNER TO XXXuser;

--
-- Name: system; Type: TABLE; Schema: demo; Owner: XXXuser
--

CREATE TABLE demo.system (
    id integer NOT NULL,
    name character varying(50),
    version integer DEFAULT 1 NOT NULL,
    created_user_id integer,
    updated_user_id integer,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    deleted_at timestamp without time zone,
    client_id integer
);


ALTER TABLE demo.system OWNER TO XXXuser;

--
-- Name: COLUMN system.id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.system.id IS '施策ID';


--
-- Name: COLUMN system.name; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.system.name IS 'システム名称';


--
-- Name: COLUMN system.version; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.system.version IS 'バージョン';


--
-- Name: COLUMN system.created_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.system.created_user_id IS '作成利用者ID';


--
-- Name: COLUMN system.updated_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.system.updated_user_id IS '更新利用者ID';


--
-- Name: COLUMN system.created_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.system.created_at IS '作成日時';


--
-- Name: COLUMN system.updated_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.system.updated_at IS '更新日時';


--
-- Name: COLUMN system.deleted_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.system.deleted_at IS '削除日時';


--
-- Name: COLUMN system.client_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.system.client_id IS '導入企業ID';


--
-- Name: system_id_seq; Type: SEQUENCE; Schema: demo; Owner: XXXuser
--

CREATE SEQUENCE demo.system_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE demo.system_id_seq OWNER TO XXXuser;

--
-- Name: system_id_seq; Type: SEQUENCE OWNED BY; Schema: demo; Owner: XXXuser
--

ALTER SEQUENCE demo.system_id_seq OWNED BY demo.system.id;


--
-- Name: system_measure_implementation_tasks_measure_implementation_task; Type: TABLE; Schema: demo; Owner: XXXuser
--

CREATE TABLE demo.system_measure_implementation_tasks_measure_implementation_task (
    system_id integer NOT NULL,
    measure_implementation_task_id integer NOT NULL
);


ALTER TABLE demo.system_measure_implementation_tasks_measure_implementation_task OWNER TO XXXuser;

--
-- Name: target; Type: TABLE; Schema: demo; Owner: XXXuser
--

CREATE TABLE demo.target (
    id integer NOT NULL,
    task_id integer,
    text character varying(2048) NOT NULL,
    version integer DEFAULT 1 NOT NULL,
    created_user_id integer,
    updated_user_id integer,
    deleted_user_id integer,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    deleted_at timestamp without time zone,
    client_id integer NOT NULL
);


ALTER TABLE demo.target OWNER TO XXXuser;

--
-- Name: COLUMN target.id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.target.id IS '目標ID';


--
-- Name: COLUMN target.task_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.target.task_id IS '課題ID';


--
-- Name: COLUMN target.text; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.target.text IS '目標';


--
-- Name: COLUMN target.version; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.target.version IS 'バージョン';


--
-- Name: COLUMN target.created_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.target.created_user_id IS '作成利用者ID';


--
-- Name: COLUMN target.updated_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.target.updated_user_id IS '更新利用者ID';


--
-- Name: COLUMN target.deleted_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.target.deleted_user_id IS '削除利用者ID';


--
-- Name: COLUMN target.created_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.target.created_at IS '作成日時';


--
-- Name: COLUMN target.updated_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.target.updated_at IS '更新日時';


--
-- Name: COLUMN target.deleted_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.target.deleted_at IS '削除日時';


--
-- Name: COLUMN target.client_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.target.client_id IS '導入企業ID';


--
-- Name: target_id_seq; Type: SEQUENCE; Schema: demo; Owner: XXXuser
--

CREATE SEQUENCE demo.target_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE demo.target_id_seq OWNER TO XXXuser;

--
-- Name: target_id_seq; Type: SEQUENCE OWNED BY; Schema: demo; Owner: XXXuser
--

ALTER SEQUENCE demo.target_id_seq OWNED BY demo.target.id;


--
-- Name: target_measures_measure; Type: TABLE; Schema: demo; Owner: XXXuser
--

CREATE TABLE demo.target_measures_measure (
    target_id integer NOT NULL,
    measure_id integer NOT NULL
);


ALTER TABLE demo.target_measures_measure OWNER TO XXXuser;

--
-- Name: task; Type: TABLE; Schema: demo; Owner: XXXuser
--

CREATE TABLE demo.task (
    id integer NOT NULL,
    code character varying(21) NOT NULL,
    name character varying(50),
    registered_at timestamp without time zone DEFAULT now() NOT NULL,
    registered_user_id integer,
    task_type demo.task_task_type_enum,
    task_status demo.task_task_status_enum,
    start_date date,
    end_date date,
    project_id integer,
    version integer DEFAULT 1 NOT NULL,
    created_user_id integer,
    updated_user_id integer,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    deleted_at timestamp without time zone,
    deleted_user_id integer,
    client_id integer NOT NULL
);


ALTER TABLE demo.task OWNER TO XXXuser;

--
-- Name: COLUMN task.id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.task.id IS '課題ID';


--
-- Name: COLUMN task.code; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.task.code IS '課題コード';


--
-- Name: COLUMN task.name; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.task.name IS '課題名';


--
-- Name: COLUMN task.registered_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.task.registered_at IS '作成日時';


--
-- Name: COLUMN task.registered_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.task.registered_user_id IS '登録利用者ID';


--
-- Name: COLUMN task.task_type; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.task.task_type IS '課題タイプ';


--
-- Name: COLUMN task.task_status; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.task.task_status IS 'status';


--
-- Name: COLUMN task.start_date; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.task.start_date IS '開始日';


--
-- Name: COLUMN task.end_date; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.task.end_date IS '終了日';


--
-- Name: COLUMN task.project_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.task.project_id IS '企画ID';


--
-- Name: COLUMN task.version; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.task.version IS 'バージョン';


--
-- Name: COLUMN task.created_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.task.created_user_id IS '作成利用者ID';


--
-- Name: COLUMN task.updated_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.task.updated_user_id IS '更新利用者ID';


--
-- Name: COLUMN task.created_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.task.created_at IS '作成日時';


--
-- Name: COLUMN task.updated_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.task.updated_at IS '更新日時';


--
-- Name: COLUMN task.deleted_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.task.deleted_at IS '削除日時';


--
-- Name: COLUMN task.deleted_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.task.deleted_user_id IS '削除利用者ID';


--
-- Name: COLUMN task.client_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.task.client_id IS '導入企業ID';


--
-- Name: task_id_seq; Type: SEQUENCE; Schema: demo; Owner: XXXuser
--

CREATE SEQUENCE demo.task_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE demo.task_id_seq OWNER TO XXXuser;

--
-- Name: task_id_seq; Type: SEQUENCE OWNED BY; Schema: demo; Owner: XXXuser
--

ALTER SEQUENCE demo.task_id_seq OWNED BY demo.task.id;


--
-- Name: todo; Type: TABLE; Schema: demo; Owner: XXXuser
--

CREATE TABLE demo.todo (
    id integer NOT NULL,
    task_id integer,
    text character varying(2048),
    version integer DEFAULT 1 NOT NULL,
    created_user_id integer,
    updated_user_id integer,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    deleted_at timestamp without time zone,
    deleted_user_id integer,
    client_id integer
);


ALTER TABLE demo.todo OWNER TO XXXuser;

--
-- Name: COLUMN todo.id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.todo.id IS 'ToDo ID';


--
-- Name: COLUMN todo.task_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.todo.task_id IS '課題ID';


--
-- Name: COLUMN todo.text; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.todo.text IS 'ToDo内容';


--
-- Name: COLUMN todo.version; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.todo.version IS 'バージョン';


--
-- Name: COLUMN todo.created_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.todo.created_user_id IS '作成利用者ID';


--
-- Name: COLUMN todo.updated_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.todo.updated_user_id IS '更新利用者ID';


--
-- Name: COLUMN todo.created_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.todo.created_at IS '作成日時';


--
-- Name: COLUMN todo.updated_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.todo.updated_at IS '更新日時';


--
-- Name: COLUMN todo.deleted_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.todo.deleted_at IS '削除日時';


--
-- Name: COLUMN todo.deleted_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.todo.deleted_user_id IS '削除利用者ID';


--
-- Name: COLUMN todo.client_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.todo.client_id IS '導入企業ID';


--
-- Name: todo_id_seq; Type: SEQUENCE; Schema: demo; Owner: XXXuser
--

CREATE SEQUENCE demo.todo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE demo.todo_id_seq OWNER TO XXXuser;

--
-- Name: todo_id_seq; Type: SEQUENCE OWNED BY; Schema: demo; Owner: XXXuser
--

ALTER SEQUENCE demo.todo_id_seq OWNED BY demo.todo.id;


--
-- Name: todo_measures_measure; Type: TABLE; Schema: demo; Owner: XXXuser
--

CREATE TABLE demo.todo_measures_measure (
    todo_id integer NOT NULL,
    measure_id integer NOT NULL
);


ALTER TABLE demo.todo_measures_measure OWNER TO XXXuser;

--
-- Name: typeorm_metadata; Type: TABLE; Schema: demo; Owner: XXXuser
--

CREATE TABLE demo.typeorm_metadata (
    type character varying NOT NULL,
    database character varying,
    schema character varying,
    "table" character varying,
    name character varying,
    value text
);


ALTER TABLE demo.typeorm_metadata OWNER TO XXXuser;

--
-- Name: user_department; Type: TABLE; Schema: demo; Owner: XXXuser
--

CREATE TABLE demo.user_department (
    id integer NOT NULL,
    version integer DEFAULT 1 NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    client_id integer NOT NULL,
    user_id integer NOT NULL,
    department_id integer NOT NULL,
    position_id integer,
    activated_at timestamp without time zone DEFAULT now(),
    expired_at timestamp without time zone DEFAULT now() NOT NULL
);


ALTER TABLE demo.user_department OWNER TO XXXuser;

--
-- Name: COLUMN user_department.id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.user_department.id IS '利用者部署ID';


--
-- Name: COLUMN user_department.version; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.user_department.version IS 'バージョン';


--
-- Name: COLUMN user_department.created_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.user_department.created_at IS '作成日時';


--
-- Name: COLUMN user_department.updated_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.user_department.updated_at IS '更新日時';


--
-- Name: COLUMN user_department.client_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.user_department.client_id IS '導入企業ID';


--
-- Name: COLUMN user_department.user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.user_department.user_id IS '利用者ID';


--
-- Name: COLUMN user_department.department_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.user_department.department_id IS '部署ID';


--
-- Name: COLUMN user_department.position_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.user_department.position_id IS '役職ID';


--
-- Name: COLUMN user_department.activated_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.user_department.activated_at IS '適用開始日';


--
-- Name: COLUMN user_department.expired_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.user_department.expired_at IS '適用終了日';


--
-- Name: user_department_id_seq; Type: SEQUENCE; Schema: demo; Owner: XXXuser
--

CREATE SEQUENCE demo.user_department_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE demo.user_department_id_seq OWNER TO XXXuser;

--
-- Name: user_department_id_seq; Type: SEQUENCE OWNED BY; Schema: demo; Owner: XXXuser
--

ALTER SEQUENCE demo.user_department_id_seq OWNED BY demo.user_department.id;


--
-- Name: users; Type: TABLE; Schema: demo; Owner: XXXuser
--

CREATE TABLE demo.users (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    login_id character varying(100) NOT NULL,
    hashed_password character varying(60) NOT NULL,
    is_employee_bp boolean NOT NULL,
    mail_address character varying(100),
    last_logged_in_at timestamp without time zone DEFAULT now() NOT NULL,
    version integer DEFAULT 1 NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    created_user_id integer,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_user_id integer,
    deleted_at timestamp without time zone,
    deleted_user_id integer,
    client_id integer NOT NULL,
    salary_id integer,
    activated_at timestamp without time zone DEFAULT now() NOT NULL,
    expired_at timestamp without time zone DEFAULT now() NOT NULL
);


ALTER TABLE demo.users OWNER TO XXXuser;

--
-- Name: COLUMN users.id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.users.id IS '利用者ID';


--
-- Name: COLUMN users.name; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.users.name IS '氏名';


--
-- Name: COLUMN users.login_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.users.login_id IS 'ログインID';


--
-- Name: COLUMN users.hashed_password; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.users.hashed_password IS 'ハッシュ化パスワード';


--
-- Name: COLUMN users.is_employee_bp; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.users.is_employee_bp IS '社員BP';


--
-- Name: COLUMN users.mail_address; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.users.mail_address IS 'メールアドレス';


--
-- Name: COLUMN users.last_logged_in_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.users.last_logged_in_at IS '最終ログイン日時';


--
-- Name: COLUMN users.version; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.users.version IS 'バージョン';


--
-- Name: COLUMN users.created_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.users.created_at IS '作成日時';


--
-- Name: COLUMN users.created_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.users.created_user_id IS '作成利用者ID';


--
-- Name: COLUMN users.updated_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.users.updated_at IS '更新日時';


--
-- Name: COLUMN users.updated_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.users.updated_user_id IS '更新利用者ID';


--
-- Name: COLUMN users.deleted_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.users.deleted_at IS '削除日時';


--
-- Name: COLUMN users.deleted_user_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.users.deleted_user_id IS '削除利用者ID';


--
-- Name: COLUMN users.client_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.users.client_id IS '導入企業ID';


--
-- Name: COLUMN users.salary_id; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.users.salary_id IS '給与等級ID';


--
-- Name: COLUMN users.activated_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.users.activated_at IS '適用開始日';


--
-- Name: COLUMN users.expired_at; Type: COMMENT; Schema: demo; Owner: XXXuser
--

COMMENT ON COLUMN demo.users.expired_at IS '適用終了日';


--
-- Name: users_id_seq; Type: SEQUENCE; Schema: demo; Owner: XXXuser
--

CREATE SEQUENCE demo.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE demo.users_id_seq OWNER TO XXXuser;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: demo; Owner: XXXuser
--

ALTER SEQUENCE demo.users_id_seq OWNED BY demo.users.id;


--
-- Name: access_control id; Type: DEFAULT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.access_control ALTER COLUMN id SET DEFAULT nextval('demo.access_control_id_seq'::regclass);


--
-- Name: account_display_title id; Type: DEFAULT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.account_display_title ALTER COLUMN id SET DEFAULT nextval('demo.account_display_title_id_seq'::regclass);


--
-- Name: account_title id; Type: DEFAULT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.account_title ALTER COLUMN id SET DEFAULT nextval('demo.account_title_id_seq'::regclass);


--
-- Name: annual_plan id; Type: DEFAULT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.annual_plan ALTER COLUMN id SET DEFAULT nextval('demo.annual_plan_id_seq'::regclass);


--
-- Name: approval_category id; Type: DEFAULT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.approval_category ALTER COLUMN id SET DEFAULT nextval('demo.approval_category_id_seq'::regclass);


--
-- Name: approval_email_template id; Type: DEFAULT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.approval_email_template ALTER COLUMN id SET DEFAULT nextval('demo.approval_email_template_id_seq'::regclass);


--
-- Name: approval_flow id; Type: DEFAULT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.approval_flow ALTER COLUMN id SET DEFAULT nextval('demo.approval_flow_id_seq'::regclass);


--
-- Name: approval_history id; Type: DEFAULT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.approval_history ALTER COLUMN id SET DEFAULT nextval('demo.approval_history_id_seq'::regclass);


--
-- Name: approval_request id; Type: DEFAULT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.approval_request ALTER COLUMN id SET DEFAULT nextval('demo.approval_request_id_seq'::regclass);


--
-- Name: approval_request_message_template id; Type: DEFAULT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.approval_request_message_template ALTER COLUMN id SET DEFAULT nextval('demo.approval_request_message_template_id_seq'::regclass);


--
-- Name: approval_step id; Type: DEFAULT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.approval_step ALTER COLUMN id SET DEFAULT nextval('demo.approval_step_id_seq'::regclass);


--
-- Name: approval_step_assignee id; Type: DEFAULT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.approval_step_assignee ALTER COLUMN id SET DEFAULT nextval('demo.approval_step_assignee_id_seq'::regclass);


--
-- Name: approval_step_organization id; Type: DEFAULT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.approval_step_organization ALTER COLUMN id SET DEFAULT nextval('demo.approval_step_organization_id_seq'::regclass);


--
-- Name: approval_step_position id; Type: DEFAULT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.approval_step_position ALTER COLUMN id SET DEFAULT nextval('demo.approval_step_position_id_seq'::regclass);


--
-- Name: approved_annual_plan_snapshot id; Type: DEFAULT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.approved_annual_plan_snapshot ALTER COLUMN id SET DEFAULT nextval('demo.approved_annual_plan_snapshot_id_seq'::regclass);


--
-- Name: badget GENERAL_ID; Type: DEFAULT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.badget ALTER COLUMN "GENERAL_ID" SET DEFAULT nextval('demo."badget_GENERAL_ID_seq"'::regclass);


--
-- Name: business_year id; Type: DEFAULT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.business_year ALTER COLUMN id SET DEFAULT nextval('demo.business_year_id_seq'::regclass);


--
-- Name: cause id; Type: DEFAULT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.cause ALTER COLUMN id SET DEFAULT nextval('demo.cause_id_seq'::regclass);


--
-- Name: cause_condition id; Type: DEFAULT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.cause_condition ALTER COLUMN id SET DEFAULT nextval('demo.cause_condition_id_seq'::regclass);


--
-- Name: client id; Type: DEFAULT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.client ALTER COLUMN id SET DEFAULT nextval('demo.client_id_seq'::regclass);


--
-- Name: company id; Type: DEFAULT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.company ALTER COLUMN id SET DEFAULT nextval('demo.company_id_seq'::regclass);


--
-- Name: department id; Type: DEFAULT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.department ALTER COLUMN id SET DEFAULT nextval('demo.department_id_seq'::regclass);


--
-- Name: department_level id; Type: DEFAULT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.department_level ALTER COLUMN id SET DEFAULT nextval('demo.department_level_id_seq'::regclass);


--
-- Name: investigation id; Type: DEFAULT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.investigation ALTER COLUMN id SET DEFAULT nextval('demo.investigation_id_seq'::regclass);


--
-- Name: issue id; Type: DEFAULT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.issue ALTER COLUMN id SET DEFAULT nextval('demo.issue_id_seq'::regclass);


--
-- Name: it_asset_type id; Type: DEFAULT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.it_asset_type ALTER COLUMN id SET DEFAULT nextval('demo.it_asset_type_id_seq'::regclass);


--
-- Name: manhour GENERAL_ID; Type: DEFAULT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.manhour ALTER COLUMN "GENERAL_ID" SET DEFAULT nextval('demo."manhour_GENERAL_ID_seq"'::regclass);


--
-- Name: measure id; Type: DEFAULT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.measure ALTER COLUMN id SET DEFAULT nextval('demo.measure_id_seq'::regclass);


--
-- Name: measure_implementation_effect id; Type: DEFAULT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.measure_implementation_effect ALTER COLUMN id SET DEFAULT nextval('demo.measure_implementation_effect_id_seq'::regclass);


--
-- Name: measure_implementation_task id; Type: DEFAULT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.measure_implementation_task ALTER COLUMN id SET DEFAULT nextval('demo.measure_implementation_task_id_seq'::regclass);


--
-- Name: notification id; Type: DEFAULT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.notification ALTER COLUMN id SET DEFAULT nextval('demo.notification_id_seq'::regclass);


--
-- Name: notification_template id; Type: DEFAULT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.notification_template ALTER COLUMN id SET DEFAULT nextval('demo.notification_template_id_seq'::regclass);


--
-- Name: other id; Type: DEFAULT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.other ALTER COLUMN id SET DEFAULT nextval('demo.other_id_seq'::regclass);


--
-- Name: plan id; Type: DEFAULT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan ALTER COLUMN id SET DEFAULT nextval('demo.plan_id_seq'::regclass);


--
-- Name: plan_formulation_email_template id; Type: DEFAULT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_formulation_email_template ALTER COLUMN id SET DEFAULT nextval('demo.plan_formulation_email_template_id_seq'::regclass);


--
-- Name: plan_formulation_request id; Type: DEFAULT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_formulation_request ALTER COLUMN id SET DEFAULT nextval('demo.plan_formulation_request_id_seq'::regclass);


--
-- Name: plan_measure id; Type: DEFAULT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure ALTER COLUMN id SET DEFAULT nextval('demo.plan_measure_id_seq'::regclass);


--
-- Name: plan_measure_cost id; Type: DEFAULT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_cost ALTER COLUMN id SET DEFAULT nextval('demo.plan_measure_cost_id_seq'::regclass);


--
-- Name: plan_measure_cost_assign id; Type: DEFAULT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_cost_assign ALTER COLUMN id SET DEFAULT nextval('demo.plan_measure_cost_assign_id_seq'::regclass);


--
-- Name: plan_measure_cost_price id; Type: DEFAULT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_cost_price ALTER COLUMN id SET DEFAULT nextval('demo.plan_measure_cost_price_id_seq'::regclass);


--
-- Name: plan_measure_cost_target_department id; Type: DEFAULT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_cost_target_department ALTER COLUMN id SET DEFAULT nextval('demo.plan_measure_cost_target_department_id_seq'::regclass);


--
-- Name: plan_measure_cost_target_individual id; Type: DEFAULT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_cost_target_individual ALTER COLUMN id SET DEFAULT nextval('demo.plan_measure_cost_target_individual_id_seq'::regclass);


--
-- Name: plan_measure_effect_sale id; Type: DEFAULT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_effect_sale ALTER COLUMN id SET DEFAULT nextval('demo.plan_measure_effect_sale_id_seq'::regclass);


--
-- Name: plan_measure_effect_sale_price id; Type: DEFAULT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_effect_sale_price ALTER COLUMN id SET DEFAULT nextval('demo.plan_measure_effect_sale_price_id_seq'::regclass);


--
-- Name: plan_measure_registration_request id; Type: DEFAULT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_registration_request ALTER COLUMN id SET DEFAULT nextval('demo.plan_measure_registration_request_id_seq'::regclass);


--
-- Name: plan_measure_risk id; Type: DEFAULT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_risk ALTER COLUMN id SET DEFAULT nextval('demo.plan_measure_risk_id_seq'::regclass);


--
-- Name: plan_measure_risk_assign id; Type: DEFAULT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_risk_assign ALTER COLUMN id SET DEFAULT nextval('demo.plan_measure_risk_assign_id_seq'::regclass);


--
-- Name: plan_measure_risk_cost_target_department id; Type: DEFAULT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_risk_cost_target_department ALTER COLUMN id SET DEFAULT nextval('demo.plan_measure_risk_cost_target_department_id_seq'::regclass);


--
-- Name: plan_measure_risk_cost_target_individual id; Type: DEFAULT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_risk_cost_target_individual ALTER COLUMN id SET DEFAULT nextval('demo.plan_measure_risk_cost_target_individual_id_seq'::regclass);


--
-- Name: plan_measure_risk_price id; Type: DEFAULT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_risk_price ALTER COLUMN id SET DEFAULT nextval('demo.plan_measure_risk_price_id_seq'::regclass);


--
-- Name: plan_measure_task id; Type: DEFAULT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_task ALTER COLUMN id SET DEFAULT nextval('demo.plan_measure_task_id_seq'::regclass);


--
-- Name: plan_measure_task_allocation id; Type: DEFAULT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_task_allocation ALTER COLUMN id SET DEFAULT nextval('demo.plan_measure_task_allocation_id_seq'::regclass);


--
-- Name: plan_measure_task_assign id; Type: DEFAULT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_task_assign ALTER COLUMN id SET DEFAULT nextval('demo.plan_measure_task_assign_id_seq'::regclass);


--
-- Name: plan_measure_task_cost_target_department id; Type: DEFAULT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_task_cost_target_department ALTER COLUMN id SET DEFAULT nextval('demo.plan_measure_task_cost_target_department_id_seq'::regclass);


--
-- Name: plan_measure_task_cost_target_individual id; Type: DEFAULT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_task_cost_target_individual ALTER COLUMN id SET DEFAULT nextval('demo.plan_measure_task_cost_target_individual_id_seq'::regclass);


--
-- Name: plan_measure_task_price id; Type: DEFAULT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_task_price ALTER COLUMN id SET DEFAULT nextval('demo.plan_measure_task_price_id_seq'::regclass);


--
-- Name: policy_consideration POLICY_CONSID_ID; Type: DEFAULT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.policy_consideration ALTER COLUMN "POLICY_CONSID_ID" SET DEFAULT nextval('demo."policy_consideration_POLICY_CONSID_ID_seq"'::regclass);


--
-- Name: position id; Type: DEFAULT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo."position" ALTER COLUMN id SET DEFAULT nextval('demo.position_id_seq'::regclass);


--
-- Name: price_unit id; Type: DEFAULT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.price_unit ALTER COLUMN id SET DEFAULT nextval('demo.price_unit_id_seq'::regclass);


--
-- Name: project id; Type: DEFAULT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.project ALTER COLUMN id SET DEFAULT nextval('demo.project_id_seq'::regclass);


--
-- Name: project_achievement_condition id; Type: DEFAULT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.project_achievement_condition ALTER COLUMN id SET DEFAULT nextval('demo.project_achievement_condition_id_seq'::regclass);


--
-- Name: project_milestone id; Type: DEFAULT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.project_milestone ALTER COLUMN id SET DEFAULT nextval('demo.project_milestone_id_seq'::regclass);


--
-- Name: project_progress_report id; Type: DEFAULT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.project_progress_report ALTER COLUMN id SET DEFAULT nextval('demo.project_progress_report_id_seq'::regclass);


--
-- Name: project_schedule id; Type: DEFAULT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.project_schedule ALTER COLUMN id SET DEFAULT nextval('demo.project_schedule_id_seq'::regclass);


--
-- Name: salary id; Type: DEFAULT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.salary ALTER COLUMN id SET DEFAULT nextval('demo.salary_id_seq'::regclass);


--
-- Name: sequence id; Type: DEFAULT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.sequence ALTER COLUMN id SET DEFAULT nextval('demo.sequence_id_seq'::regclass);


--
-- Name: study_content id; Type: DEFAULT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.study_content ALTER COLUMN id SET DEFAULT nextval('demo.study_content_id_seq'::regclass);


--
-- Name: system id; Type: DEFAULT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.system ALTER COLUMN id SET DEFAULT nextval('demo.system_id_seq'::regclass);


--
-- Name: target id; Type: DEFAULT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.target ALTER COLUMN id SET DEFAULT nextval('demo.target_id_seq'::regclass);


--
-- Name: task id; Type: DEFAULT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.task ALTER COLUMN id SET DEFAULT nextval('demo.task_id_seq'::regclass);


--
-- Name: todo id; Type: DEFAULT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.todo ALTER COLUMN id SET DEFAULT nextval('demo.todo_id_seq'::regclass);


--
-- Name: user_department id; Type: DEFAULT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.user_department ALTER COLUMN id SET DEFAULT nextval('demo.user_department_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.users ALTER COLUMN id SET DEFAULT nextval('demo.users_id_seq'::regclass);


--
-- Name: cause PK_0308b07678cb9ab10fa0d3a7c63; Type: CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.cause
    ADD CONSTRAINT "PK_0308b07678cb9ab10fa0d3a7c63" PRIMARY KEY (id);


--
-- Name: plan_measure_registration_request_requested_to_user_department PK_047580441671a37ca525c16343c; Type: CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_registration_request_requested_to_user_department
    ADD CONSTRAINT "PK_047580441671a37ca525c16343c" PRIMARY KEY (plan_measure_registration_request_id, user_department_id);


--
-- Name: system_measure_implementation_tasks_measure_implementation_task PK_091c7d4c54d5ae8e63eee0b938f; Type: CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.system_measure_implementation_tasks_measure_implementation_task
    ADD CONSTRAINT "PK_091c7d4c54d5ae8e63eee0b938f" PRIMARY KEY (system_id, measure_implementation_task_id);


--
-- Name: plan_measure_risk_price PK_14879ad78f75a87635cea49798e; Type: CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_risk_price
    ADD CONSTRAINT "PK_14879ad78f75a87635cea49798e" PRIMARY KEY (id);


--
-- Name: it_asset_type_purchase_plans_measure_implementation_task PK_17040130e1152588eca8435d57f; Type: CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.it_asset_type_purchase_plans_measure_implementation_task
    ADD CONSTRAINT "PK_17040130e1152588eca8435d57f" PRIMARY KEY (it_asset_type_id, measure_implementation_task_id);


--
-- Name: plan_measure_task_cost_target_department PK_18cb02e0971df2f98b7c1b08716; Type: CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_task_cost_target_department
    ADD CONSTRAINT "PK_18cb02e0971df2f98b7c1b08716" PRIMARY KEY (id);


--
-- Name: plan_measure_task_allocation PK_1d186d3d1a817820ee2555fa022; Type: CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_task_allocation
    ADD CONSTRAINT "PK_1d186d3d1a817820ee2555fa022" PRIMARY KEY (id);


--
-- Name: client PK_1d7f977dce904d4ffd68ce226bb; Type: CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.client
    ADD CONSTRAINT "PK_1d7f977dce904d4ffd68ce226bb" PRIMARY KEY (id);


--
-- Name: badget PK_1efdb5c9ccfb0bc2c40d47d502c; Type: CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.badget
    ADD CONSTRAINT "PK_1efdb5c9ccfb0bc2c40d47d502c" PRIMARY KEY ("GENERAL_ID");


--
-- Name: plan_measure_registration_request_plan_measure_plan_measure PK_222f4247ee54bbb49c63b41bb87; Type: CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_registration_request_plan_measure_plan_measure
    ADD CONSTRAINT "PK_222f4247ee54bbb49c63b41bb87" PRIMARY KEY (plan_measure_registration_request_id, plan_measure_id);


--
-- Name: project_progress_report PK_24b1162942606900a93e8487fca; Type: CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.project_progress_report
    ADD CONSTRAINT "PK_24b1162942606900a93e8487fca" PRIMARY KEY (id);


--
-- Name: company PK_27311acabf78b3edc061a017210; Type: CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.company
    ADD CONSTRAINT "PK_27311acabf78b3edc061a017210" PRIMARY KEY (id);


--
-- Name: todo_measures_measure PK_292a35b929f09c5ec346472a76f; Type: CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.todo_measures_measure
    ADD CONSTRAINT "PK_292a35b929f09c5ec346472a76f" PRIMARY KEY (todo_id, measure_id);


--
-- Name: approval_step_organization PK_2adadb50cbbc710a80c2b810b3a; Type: CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.approval_step_organization
    ADD CONSTRAINT "PK_2adadb50cbbc710a80c2b810b3a" PRIMARY KEY (id);


--
-- Name: plan_measure_task PK_3016fe1b43f23dc92821d4aa665; Type: CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_task
    ADD CONSTRAINT "PK_3016fe1b43f23dc92821d4aa665" PRIMARY KEY (id);


--
-- Name: position PK_3708bb369dfd9583643caf4e1c8; Type: CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo."position"
    ADD CONSTRAINT "PK_3708bb369dfd9583643caf4e1c8" PRIMARY KEY (id);


--
-- Name: plan_formulation_email_template PK_377b41809b0f62e99f83397ec4b; Type: CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_formulation_email_template
    ADD CONSTRAINT "PK_377b41809b0f62e99f83397ec4b" PRIMARY KEY (id);


--
-- Name: it_asset_type_abandonment_plans_measure_implementation_task PK_3ead99acd042d69920e9dd95ae1; Type: CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.it_asset_type_abandonment_plans_measure_implementation_task
    ADD CONSTRAINT "PK_3ead99acd042d69920e9dd95ae1" PRIMARY KEY (it_asset_type_id, measure_implementation_task_id);


--
-- Name: plan_measure_cost_target_department PK_424eb5853539c93439b771606ac; Type: CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_cost_target_department
    ADD CONSTRAINT "PK_424eb5853539c93439b771606ac" PRIMARY KEY (id);


--
-- Name: other PK_4456986da37af20504e898f8af3; Type: CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.other
    ADD CONSTRAINT "PK_4456986da37af20504e898f8af3" PRIMARY KEY (id);


--
-- Name: approval_category PK_44e6fd4c459dcac2dc23e20e1ff; Type: CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.approval_category
    ADD CONSTRAINT "PK_44e6fd4c459dcac2dc23e20e1ff" PRIMARY KEY (id);


--
-- Name: plan_measure_cost_price PK_4640243ea2cc46384fdf6fa2d66; Type: CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_cost_price
    ADD CONSTRAINT "PK_4640243ea2cc46384fdf6fa2d66" PRIMARY KEY (id);


--
-- Name: approval_step_assignee PK_4778f08eb68951982ed9d3389b2; Type: CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.approval_step_assignee
    ADD CONSTRAINT "PK_4778f08eb68951982ed9d3389b2" PRIMARY KEY (id);


--
-- Name: measure_implementation_task_affected_systems_system PK_477dbaa19147f4ac8dc3706d61f; Type: CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.measure_implementation_task_affected_systems_system
    ADD CONSTRAINT "PK_477dbaa19147f4ac8dc3706d61f" PRIMARY KEY (measure_implementation_task_id, system_id);


--
-- Name: cause_condition PK_51ce2ca836356194409b5a97d36; Type: CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.cause_condition
    ADD CONSTRAINT "PK_51ce2ca836356194409b5a97d36" PRIMARY KEY (id);


--
-- Name: policy_consideration PK_55b1799caa5aa6d38a8e13a9d7b; Type: CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.policy_consideration
    ADD CONSTRAINT "PK_55b1799caa5aa6d38a8e13a9d7b" PRIMARY KEY ("POLICY_CONSID_ID");


--
-- Name: department PK_58d261117d7d8ccd61e5948f5f8; Type: CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.department
    ADD CONSTRAINT "PK_58d261117d7d8ccd61e5948f5f8" PRIMARY KEY (id);


--
-- Name: plan_formulation_request_requested_to_user_department PK_5985aeb5ef747df3e7cd3f24f1c; Type: CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_formulation_request_requested_to_user_department
    ADD CONSTRAINT "PK_5985aeb5ef747df3e7cd3f24f1c" PRIMARY KEY (plan_formulation_request_id, user_department_id);


--
-- Name: plan_measure_registration_request PK_5b977c9e5ce327ed5046f620994; Type: CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_registration_request
    ADD CONSTRAINT "PK_5b977c9e5ce327ed5046f620994" PRIMARY KEY (id);


--
-- Name: measure_cause_conditions_cause_condition PK_63933347110928380bb0734ed9a; Type: CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.measure_cause_conditions_cause_condition
    ADD CONSTRAINT "PK_63933347110928380bb0734ed9a" PRIMARY KEY (measure_id, cause_condition_id);


--
-- Name: approved_annual_plan_snapshot PK_679df324ef8250c015926e8791d; Type: CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.approved_annual_plan_snapshot
    ADD CONSTRAINT "PK_679df324ef8250c015926e8791d" PRIMARY KEY (id);


--
-- Name: sequence PK_683c967e3bf05f191391dcb2865; Type: CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.sequence
    ADD CONSTRAINT "PK_683c967e3bf05f191391dcb2865" PRIMARY KEY (id);


--
-- Name: user_department PK_6867d87b943993a782fdaac1e25; Type: CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.user_department
    ADD CONSTRAINT "PK_6867d87b943993a782fdaac1e25" PRIMARY KEY (id);


--
-- Name: approval_request_message_template PK_6b3d1d7f8cc7dc37940e33cb577; Type: CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.approval_request_message_template
    ADD CONSTRAINT "PK_6b3d1d7f8cc7dc37940e33cb577" PRIMARY KEY (id);


--
-- Name: notification_template PK_74cf209a844f222b470bfe04918; Type: CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.notification_template
    ADD CONSTRAINT "PK_74cf209a844f222b470bfe04918" PRIMARY KEY (id);


--
-- Name: access_control PK_76ca2e648b517ce468ede0f44d3; Type: CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.access_control
    ADD CONSTRAINT "PK_76ca2e648b517ce468ede0f44d3" PRIMARY KEY (id);


--
-- Name: measure_implementation_task PK_7b872073f2ad31254cd5e30632b; Type: CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.measure_implementation_task
    ADD CONSTRAINT "PK_7b872073f2ad31254cd5e30632b" PRIMARY KEY (id);


--
-- Name: plan_measure_task_price PK_7ba5b3a5cd32c0cf6189c70ee9f; Type: CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_task_price
    ADD CONSTRAINT "PK_7ba5b3a5cd32c0cf6189c70ee9f" PRIMARY KEY (id);


--
-- Name: cause_measures_measure PK_7cb9a8be0eb8f6c47b949218bee; Type: CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.cause_measures_measure
    ADD CONSTRAINT "PK_7cb9a8be0eb8f6c47b949218bee" PRIMARY KEY (cause_id, measure_id);


--
-- Name: approval_step_position PK_8130f7b5a1d4beb264c0e627ba8; Type: CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.approval_step_position
    ADD CONSTRAINT "PK_8130f7b5a1d4beb264c0e627ba8" PRIMARY KEY (id);


--
-- Name: notification PK_853c4eafebc4e7e2ed8cb2ae93c; Type: CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.notification
    ADD CONSTRAINT "PK_853c4eafebc4e7e2ed8cb2ae93c" PRIMARY KEY (id);


--
-- Name: it_asset_type PK_870f4458b706a52267e0271847c; Type: CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.it_asset_type
    ADD CONSTRAINT "PK_870f4458b706a52267e0271847c" PRIMARY KEY (id);


--
-- Name: plan_measure_effect_sale_price PK_87b1565f6d754310019dff50236; Type: CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_effect_sale_price
    ADD CONSTRAINT "PK_87b1565f6d754310019dff50236" PRIMARY KEY (id);


--
-- Name: approval_step PK_8a815441275ec601248aab7ae2e; Type: CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.approval_step
    ADD CONSTRAINT "PK_8a815441275ec601248aab7ae2e" PRIMARY KEY (id);


--
-- Name: plan_measure_cost_target_individual PK_90ddb6345ee79eda92a1005c8cc; Type: CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_cost_target_individual
    ADD CONSTRAINT "PK_90ddb6345ee79eda92a1005c8cc" PRIMARY KEY (id);


--
-- Name: issue PK_96adc210e663c83c7d42afd4154; Type: CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.issue
    ADD CONSTRAINT "PK_96adc210e663c83c7d42afd4154" PRIMARY KEY (id);


--
-- Name: plan_measure_risk_assign PK_9e53decd757019d486b74a4cc7a; Type: CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_risk_assign
    ADD CONSTRAINT "PK_9e53decd757019d486b74a4cc7a" PRIMARY KEY (id);


--
-- Name: plan_measure_cost PK_9f23c95e7f30745f6ab3156c9ea; Type: CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_cost
    ADD CONSTRAINT "PK_9f23c95e7f30745f6ab3156c9ea" PRIMARY KEY (id);


--
-- Name: approval_email_template PK_a46d26aef511e6cce54b62d9fd8; Type: CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.approval_email_template
    ADD CONSTRAINT "PK_a46d26aef511e6cce54b62d9fd8" PRIMARY KEY (id);


--
-- Name: project_schedule PK_a634d4fee627cd8805c3f328530; Type: CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.project_schedule
    ADD CONSTRAINT "PK_a634d4fee627cd8805c3f328530" PRIMARY KEY (id);


--
-- Name: users PK_a6cc71bedf15a41a5f5ee8aea97; Type: CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.users
    ADD CONSTRAINT "PK_a6cc71bedf15a41a5f5ee8aea97" PRIMARY KEY (id);


--
-- Name: plan_measure_task_assign PK_a7a13acd6008aeebdc534f44edd; Type: CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_task_assign
    ADD CONSTRAINT "PK_a7a13acd6008aeebdc534f44edd" PRIMARY KEY (id);


--
-- Name: other_measures_measure PK_ad9885ebc84ef749370c5806284; Type: CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.other_measures_measure
    ADD CONSTRAINT "PK_ad9885ebc84ef749370c5806284" PRIMARY KEY (other_id, measure_id);


--
-- Name: study_content_measures_measure PK_ae082e00ec079e2394cdea2ffb9; Type: CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.study_content_measures_measure
    ADD CONSTRAINT "PK_ae082e00ec079e2394cdea2ffb9" PRIMARY KEY (study_content_id, measure_id);


--
-- Name: approval_flow PK_ae864bf537f659b0df4280414f1; Type: CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.approval_flow
    ADD CONSTRAINT "PK_ae864bf537f659b0df4280414f1" PRIMARY KEY (id);


--
-- Name: plan_measure_effect_sale PK_b09c564f11c890122fcc46ecb8f; Type: CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_effect_sale
    ADD CONSTRAINT "PK_b09c564f11c890122fcc46ecb8f" PRIMARY KEY (id);


--
-- Name: salary PK_b5037865c2a7324ccb4f55c20f0; Type: CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.salary
    ADD CONSTRAINT "PK_b5037865c2a7324ccb4f55c20f0" PRIMARY KEY (id);


--
-- Name: study_content PK_b5db62cbc2c7957d97c68ef09cc; Type: CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.study_content
    ADD CONSTRAINT "PK_b5db62cbc2c7957d97c68ef09cc" PRIMARY KEY (id);


--
-- Name: manhour PK_b624a07a10a7ecd951247d30c50; Type: CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.manhour
    ADD CONSTRAINT "PK_b624a07a10a7ecd951247d30c50" PRIMARY KEY ("GENERAL_ID");


--
-- Name: business_year PK_b776490c6f7d90f928f0cf0eab7; Type: CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.business_year
    ADD CONSTRAINT "PK_b776490c6f7d90f928f0cf0eab7" PRIMARY KEY (id);


--
-- Name: target PK_b77a97578273318a0e7c658c59e; Type: CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.target
    ADD CONSTRAINT "PK_b77a97578273318a0e7c658c59e" PRIMARY KEY (id);


--
-- Name: target_measures_measure PK_b98656ce74005bd389c4428ccbe; Type: CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.target_measures_measure
    ADD CONSTRAINT "PK_b98656ce74005bd389c4428ccbe" PRIMARY KEY (target_id, measure_id);


--
-- Name: plan_measure_risk_cost_target_department PK_c2f5f618abb9a043ede967258ca; Type: CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_risk_cost_target_department
    ADD CONSTRAINT "PK_c2f5f618abb9a043ede967258ca" PRIMARY KEY (id);


--
-- Name: measure PK_c78cac25ec5bbbdda8eacdb05f4; Type: CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.measure
    ADD CONSTRAINT "PK_c78cac25ec5bbbdda8eacdb05f4" PRIMARY KEY (id);


--
-- Name: account_display_title PK_c871151cdec766be16056545a33; Type: CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.account_display_title
    ADD CONSTRAINT "PK_c871151cdec766be16056545a33" PRIMARY KEY (id);


--
-- Name: project_members_user_department PK_c99cf204bc7ff6d17cea83f89e1; Type: CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.project_members_user_department
    ADD CONSTRAINT "PK_c99cf204bc7ff6d17cea83f89e1" PRIMARY KEY (project_id, user_department_id);


--
-- Name: measure_implementation_effect PK_cb8f4975da21077681e3de82cfc; Type: CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.measure_implementation_effect
    ADD CONSTRAINT "PK_cb8f4975da21077681e3de82cfc" PRIMARY KEY (id);


--
-- Name: investigation_measures_measure PK_cedfa272313548a04a3ba063b7e; Type: CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.investigation_measures_measure
    ADD CONSTRAINT "PK_cedfa272313548a04a3ba063b7e" PRIMARY KEY (investigation_id, measure_id);


--
-- Name: plan_measure_risk PK_d0e6d25629ad02a4d1673885e38; Type: CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_risk
    ADD CONSTRAINT "PK_d0e6d25629ad02a4d1673885e38" PRIMARY KEY (id);


--
-- Name: project_milestone PK_d48bbba0b8d2b2f7d9daabd0342; Type: CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.project_milestone
    ADD CONSTRAINT "PK_d48bbba0b8d2b2f7d9daabd0342" PRIMARY KEY (id);


--
-- Name: plan PK_d706f7043cd0274b86a2b005ab6; Type: CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan
    ADD CONSTRAINT "PK_d706f7043cd0274b86a2b005ab6" PRIMARY KEY (id);


--
-- Name: plan_measure_cost_assign PK_d87d7ed20054863ee776c8c332d; Type: CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_cost_assign
    ADD CONSTRAINT "PK_d87d7ed20054863ee776c8c332d" PRIMARY KEY (id);


--
-- Name: plan_measure PK_db90fbede8baa980eb6d10afc73; Type: CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure
    ADD CONSTRAINT "PK_db90fbede8baa980eb6d10afc73" PRIMARY KEY (id);


--
-- Name: plan_measure_plans_plan PK_e5287c9d6818d86f037b9b229ff; Type: CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_plans_plan
    ADD CONSTRAINT "PK_e5287c9d6818d86f037b9b229ff" PRIMARY KEY (plan_measure_id, plan_id);


--
-- Name: task PK_e6163605a8426183431d88d6642; Type: CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.task
    ADD CONSTRAINT "PK_e6163605a8426183431d88d6642" PRIMARY KEY (id);


--
-- Name: department_level PK_e8713c59a2905205d250783de8b; Type: CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.department_level
    ADD CONSTRAINT "PK_e8713c59a2905205d250783de8b" PRIMARY KEY (id);


--
-- Name: todo PK_e87731bafd682f5a84e2449470f; Type: CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.todo
    ADD CONSTRAINT "PK_e87731bafd682f5a84e2449470f" PRIMARY KEY (id);


--
-- Name: project_achievement_condition PK_eff62bed7e36c1cceb686a39286; Type: CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.project_achievement_condition
    ADD CONSTRAINT "PK_eff62bed7e36c1cceb686a39286" PRIMARY KEY (id);


--
-- Name: investigation PK_f1347e7c04caa9dde8dc5e8db50; Type: CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.investigation
    ADD CONSTRAINT "PK_f1347e7c04caa9dde8dc5e8db50" PRIMARY KEY (id);


--
-- Name: price_unit PK_f3b403e732752a54b6b18c4bf81; Type: CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.price_unit
    ADD CONSTRAINT "PK_f3b403e732752a54b6b18c4bf81" PRIMARY KEY (id);


--
-- Name: system PK_f41b207f36984f85d896812c411; Type: CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.system
    ADD CONSTRAINT "PK_f41b207f36984f85d896812c411" PRIMARY KEY (id);


--
-- Name: project PK_f648594d8d54cf65d99b2c10fa5; Type: CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.project
    ADD CONSTRAINT "PK_f648594d8d54cf65d99b2c10fa5" PRIMARY KEY (id);


--
-- Name: account_title PK_f7328cbdaeaecc8fec5b3b24fba; Type: CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.account_title
    ADD CONSTRAINT "PK_f7328cbdaeaecc8fec5b3b24fba" PRIMARY KEY (id);


--
-- Name: approval_request PK_f7ee4d1603ea88136ec0c6eef10; Type: CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.approval_request
    ADD CONSTRAINT "PK_f7ee4d1603ea88136ec0c6eef10" PRIMARY KEY (id);


--
-- Name: plan_measure_risk_cost_target_individual PK_f90927affa2d1d7662d47ac9925; Type: CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_risk_cost_target_individual
    ADD CONSTRAINT "PK_f90927affa2d1d7662d47ac9925" PRIMARY KEY (id);


--
-- Name: approval_history PK_fce58a4ab6d52eaaf22a8424474; Type: CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.approval_history
    ADD CONSTRAINT "PK_fce58a4ab6d52eaaf22a8424474" PRIMARY KEY (id);


--
-- Name: plan_formulation_request PK_fd59a24cfef9bddac8add181906; Type: CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_formulation_request
    ADD CONSTRAINT "PK_fd59a24cfef9bddac8add181906" PRIMARY KEY (id);


--
-- Name: annual_plan PK_ff069b9053051e7f201526efcea; Type: CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.annual_plan
    ADD CONSTRAINT "PK_ff069b9053051e7f201526efcea" PRIMARY KEY (id);


--
-- Name: plan_measure_task_cost_target_individual PK_ff5e8b87217b0dc69beef7cfdcb; Type: CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_task_cost_target_individual
    ADD CONSTRAINT "PK_ff5e8b87217b0dc69beef7cfdcb" PRIMARY KEY (id);


--
-- Name: approval_category REL_31e6d641028f6eb0e81a195ee8; Type: CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.approval_category
    ADD CONSTRAINT "REL_31e6d641028f6eb0e81a195ee8" UNIQUE (approval_request_message_template_id);


--
-- Name: plan_measure_task_cost_target_individual REL_815e3f8b5c614b06c88fdad445; Type: CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_task_cost_target_individual
    ADD CONSTRAINT "REL_815e3f8b5c614b06c88fdad445" UNIQUE (assign_id);


--
-- Name: plan_measure_cost_target_department REL_875b02f11234fcc892cebfeeca; Type: CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_cost_target_department
    ADD CONSTRAINT "REL_875b02f11234fcc892cebfeeca" UNIQUE (assign_id);


--
-- Name: issue REL_87b3e2bc843c1f3649eccbde94; Type: CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.issue
    ADD CONSTRAINT "REL_87b3e2bc843c1f3649eccbde94" UNIQUE (task_id);


--
-- Name: plan_measure_task_cost_target_department REL_bf97933c80cc43d4d2c5ef81a8; Type: CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_task_cost_target_department
    ADD CONSTRAINT "REL_bf97933c80cc43d4d2c5ef81a8" UNIQUE (assign_id);


--
-- Name: plan_measure_cost_target_individual REL_ca0657c86079a6f45a8d87ee4b; Type: CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_cost_target_individual
    ADD CONSTRAINT "REL_ca0657c86079a6f45a8d87ee4b" UNIQUE (assign_id);


--
-- Name: approval_category REL_caba9bae7be39cf1878bf28655; Type: CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.approval_category
    ADD CONSTRAINT "REL_caba9bae7be39cf1878bf28655" UNIQUE (approval_email_template_id);


--
-- Name: plan_measure_risk_cost_target_individual UQ_0008ffc932efcf0893eb574d961; Type: CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_risk_cost_target_individual
    ADD CONSTRAINT "UQ_0008ffc932efcf0893eb574d961" UNIQUE (assign_id);


--
-- Name: plan_measure UQ_2634739efbf3f589713798ada0f; Type: CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure
    ADD CONSTRAINT "UQ_2634739efbf3f589713798ada0f" UNIQUE (code, client_id);


--
-- Name: plan_formulation_request UQ_88d8455dfadc22684d2e1a68ec8; Type: CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_formulation_request
    ADD CONSTRAINT "UQ_88d8455dfadc22684d2e1a68ec8" UNIQUE (code, client_id);


--
-- Name: plan_measure_registration_request UQ_9ec4869ea165078e11fc1dc0f1c; Type: CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_registration_request
    ADD CONSTRAINT "UQ_9ec4869ea165078e11fc1dc0f1c" UNIQUE (code, client_id);


--
-- Name: sequence UQ_bd2944feebdbf33d8c32b3f0c3d; Type: CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.sequence
    ADD CONSTRAINT "UQ_bd2944feebdbf33d8c32b3f0c3d" UNIQUE (table_name, client_id);


--
-- Name: plan_measure_risk_cost_target_department UQ_bd6c95a300e97d6cf2bcf05f554; Type: CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_risk_cost_target_department
    ADD CONSTRAINT "UQ_bd6c95a300e97d6cf2bcf05f554" UNIQUE (assign_id);


--
-- Name: IDX_02218ff3d8b42e4aff23c06ca1; Type: INDEX; Schema: demo; Owner: XXXuser
--

CREATE INDEX "IDX_02218ff3d8b42e4aff23c06ca1" ON demo.plan_measure_plans_plan USING btree (plan_measure_id);


--
-- Name: IDX_0ea3760afbffb33e77fe57a98b; Type: INDEX; Schema: demo; Owner: XXXuser
--

CREATE INDEX "IDX_0ea3760afbffb33e77fe57a98b" ON demo.it_asset_type_abandonment_plans_measure_implementation_task USING btree (it_asset_type_id);


--
-- Name: IDX_11525d9d718fcfccd8118c75ba; Type: INDEX; Schema: demo; Owner: XXXuser
--

CREATE INDEX "IDX_11525d9d718fcfccd8118c75ba" ON demo.business_year USING btree (year);


--
-- Name: IDX_1655f3507f5b03279b2ef5fa17; Type: INDEX; Schema: demo; Owner: XXXuser
--

CREATE INDEX "IDX_1655f3507f5b03279b2ef5fa17" ON demo.system_measure_implementation_tasks_measure_implementation_task USING btree (system_id);


--
-- Name: IDX_17d0685cf69b97345cbef3464a; Type: INDEX; Schema: demo; Owner: XXXuser
--

CREATE INDEX "IDX_17d0685cf69b97345cbef3464a" ON demo.todo_measures_measure USING btree (todo_id);


--
-- Name: IDX_1e833de579c3b101a0688f6cbc; Type: INDEX; Schema: demo; Owner: XXXuser
--

CREATE INDEX "IDX_1e833de579c3b101a0688f6cbc" ON demo.target_measures_measure USING btree (target_id);


--
-- Name: IDX_2adeb6cc72a7740537c332d049; Type: INDEX; Schema: demo; Owner: XXXuser
--

CREATE INDEX "IDX_2adeb6cc72a7740537c332d049" ON demo.plan_formulation_request_requested_to_user_department USING btree (plan_formulation_request_id);


--
-- Name: IDX_2e9d7e3fe245e8abf17947ccc0; Type: INDEX; Schema: demo; Owner: XXXuser
--

CREATE INDEX "IDX_2e9d7e3fe245e8abf17947ccc0" ON demo.investigation_measures_measure USING btree (measure_id);


--
-- Name: IDX_3ce23f3709983d19bc42758b01; Type: INDEX; Schema: demo; Owner: XXXuser
--

CREATE UNIQUE INDEX "IDX_3ce23f3709983d19bc42758b01" ON demo.client USING btree (slug);


--
-- Name: IDX_49e27389efc17d808de0061786; Type: INDEX; Schema: demo; Owner: XXXuser
--

CREATE INDEX "IDX_49e27389efc17d808de0061786" ON demo.target_measures_measure USING btree (measure_id);


--
-- Name: IDX_59e449542b7c67f492007c4082; Type: INDEX; Schema: demo; Owner: XXXuser
--

CREATE INDEX "IDX_59e449542b7c67f492007c4082" ON demo.it_asset_type_purchase_plans_measure_implementation_task USING btree (measure_implementation_task_id);


--
-- Name: IDX_653200aee0b786974d0739cf74; Type: INDEX; Schema: demo; Owner: XXXuser
--

CREATE INDEX "IDX_653200aee0b786974d0739cf74" ON demo.cause_measures_measure USING btree (cause_id);


--
-- Name: IDX_65cc3d8a55fb634837bc201f22; Type: INDEX; Schema: demo; Owner: XXXuser
--

CREATE INDEX "IDX_65cc3d8a55fb634837bc201f22" ON demo.other_measures_measure USING btree (other_id);


--
-- Name: IDX_6a65665cc1d78a5ca3cb4d5244; Type: INDEX; Schema: demo; Owner: XXXuser
--

CREATE INDEX "IDX_6a65665cc1d78a5ca3cb4d5244" ON demo.project_members_user_department USING btree (user_department_id);


--
-- Name: IDX_6d0661183c582a20ef0eedf2e4; Type: INDEX; Schema: demo; Owner: XXXuser
--

CREATE INDEX "IDX_6d0661183c582a20ef0eedf2e4" ON demo.measure_implementation_task_affected_systems_system USING btree (system_id);


--
-- Name: IDX_70f26459fb5f1a4161a4c57c1d; Type: INDEX; Schema: demo; Owner: XXXuser
--

CREATE INDEX "IDX_70f26459fb5f1a4161a4c57c1d" ON demo.measure_cause_conditions_cause_condition USING btree (cause_condition_id);


--
-- Name: IDX_88a353eb35b69ed0e9561e6c79; Type: INDEX; Schema: demo; Owner: XXXuser
--

CREATE INDEX "IDX_88a353eb35b69ed0e9561e6c79" ON demo.investigation_measures_measure USING btree (investigation_id);


--
-- Name: IDX_8e8be4b956ca23d16933c1be4b; Type: INDEX; Schema: demo; Owner: XXXuser
--

CREATE INDEX "IDX_8e8be4b956ca23d16933c1be4b" ON demo.measure_implementation_task_affected_systems_system USING btree (measure_implementation_task_id);


--
-- Name: IDX_96d2a363815856805902371a7d; Type: INDEX; Schema: demo; Owner: XXXuser
--

CREATE INDEX "IDX_96d2a363815856805902371a7d" ON demo.study_content_measures_measure USING btree (study_content_id);


--
-- Name: IDX_9c0276690eea0ba73bcd68a216; Type: INDEX; Schema: demo; Owner: XXXuser
--

CREATE INDEX "IDX_9c0276690eea0ba73bcd68a216" ON demo.project_members_user_department USING btree (project_id);


--
-- Name: IDX_9daa6a9bcbe8de90d7659cd480; Type: INDEX; Schema: demo; Owner: XXXuser
--

CREATE INDEX "IDX_9daa6a9bcbe8de90d7659cd480" ON demo.cause_measures_measure USING btree (measure_id);


--
-- Name: IDX_a7d78dcb407f19d79a43c4a8cb; Type: INDEX; Schema: demo; Owner: XXXuser
--

CREATE INDEX "IDX_a7d78dcb407f19d79a43c4a8cb" ON demo.plan_measure_registration_request_requested_to_user_department USING btree (plan_measure_registration_request_id);


--
-- Name: IDX_a9d302dd4becc8bcfe1daa9f84; Type: INDEX; Schema: demo; Owner: XXXuser
--

CREATE INDEX "IDX_a9d302dd4becc8bcfe1daa9f84" ON demo.plan_measure_registration_request_plan_measure_plan_measure USING btree (plan_measure_id);


--
-- Name: IDX_a9dc96d4ea9392e30713917f1b; Type: INDEX; Schema: demo; Owner: XXXuser
--

CREATE INDEX "IDX_a9dc96d4ea9392e30713917f1b" ON demo.measure_cause_conditions_cause_condition USING btree (measure_id);


--
-- Name: IDX_b061a7eba80a043ae95386943a; Type: INDEX; Schema: demo; Owner: XXXuser
--

CREATE INDEX "IDX_b061a7eba80a043ae95386943a" ON demo.it_asset_type_abandonment_plans_measure_implementation_task USING btree (measure_implementation_task_id);


--
-- Name: IDX_b9044c6432fa9e532692325c5c; Type: INDEX; Schema: demo; Owner: XXXuser
--

CREATE INDEX "IDX_b9044c6432fa9e532692325c5c" ON demo.study_content_measures_measure USING btree (measure_id);


--
-- Name: IDX_c38ceb8b316c2e87f009408c74; Type: INDEX; Schema: demo; Owner: XXXuser
--

CREATE INDEX "IDX_c38ceb8b316c2e87f009408c74" ON demo.plan_measure_registration_request_plan_measure_plan_measure USING btree (plan_measure_registration_request_id);


--
-- Name: IDX_d5aa5b0d1c3b9cca4cdb358a4d; Type: INDEX; Schema: demo; Owner: XXXuser
--

CREATE INDEX "IDX_d5aa5b0d1c3b9cca4cdb358a4d" ON demo.todo_measures_measure USING btree (measure_id);


--
-- Name: IDX_d90b06cbec35fffe94e41724a2; Type: INDEX; Schema: demo; Owner: XXXuser
--

CREATE INDEX "IDX_d90b06cbec35fffe94e41724a2" ON demo.plan_formulation_request_requested_to_user_department USING btree (user_department_id);


--
-- Name: IDX_dbcfc38051a6dbf1c15188672b; Type: INDEX; Schema: demo; Owner: XXXuser
--

CREATE INDEX "IDX_dbcfc38051a6dbf1c15188672b" ON demo.it_asset_type_purchase_plans_measure_implementation_task USING btree (it_asset_type_id);


--
-- Name: IDX_e564194a9a22f8c623354284f7; Type: INDEX; Schema: demo; Owner: XXXuser
--

CREATE UNIQUE INDEX "IDX_e564194a9a22f8c623354284f7" ON demo.users USING btree (login_id);


--
-- Name: IDX_ee3f9f30dc4e0604a098bf89d6; Type: INDEX; Schema: demo; Owner: XXXuser
--

CREATE INDEX "IDX_ee3f9f30dc4e0604a098bf89d6" ON demo.measure_implementation_effect USING btree (type);


--
-- Name: IDX_ee96ab1ec08d178e70e5b732b7; Type: INDEX; Schema: demo; Owner: XXXuser
--

CREATE INDEX "IDX_ee96ab1ec08d178e70e5b732b7" ON demo.plan_measure_registration_request_requested_to_user_department USING btree (user_department_id);


--
-- Name: IDX_f4e3b39b84919d4fc9a5ed7243; Type: INDEX; Schema: demo; Owner: XXXuser
--

CREATE INDEX "IDX_f4e3b39b84919d4fc9a5ed7243" ON demo.other_measures_measure USING btree (measure_id);


--
-- Name: IDX_fb9445b64560eaf6ace2906c5e; Type: INDEX; Schema: demo; Owner: XXXuser
--

CREATE INDEX "IDX_fb9445b64560eaf6ace2906c5e" ON demo.plan_measure_plans_plan USING btree (plan_id);


--
-- Name: IDX_fe4e7122cdaf426c33e111f11f; Type: INDEX; Schema: demo; Owner: XXXuser
--

CREATE INDEX "IDX_fe4e7122cdaf426c33e111f11f" ON demo.system_measure_implementation_tasks_measure_implementation_task USING btree (measure_implementation_task_id);


--
-- Name: plan_measure_task_cost_target_individual FK_004d6599b2474f9ba63aea90286; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_task_cost_target_individual
    ADD CONSTRAINT "FK_004d6599b2474f9ba63aea90286" FOREIGN KEY (department_id) REFERENCES demo.department(id);


--
-- Name: plan_measure_task_cost_target_department FK_020df3b78ded7a8e916860bcfb9; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_task_cost_target_department
    ADD CONSTRAINT "FK_020df3b78ded7a8e916860bcfb9" FOREIGN KEY (business_year_id) REFERENCES demo.business_year(id);


--
-- Name: plan_measure_plans_plan FK_02218ff3d8b42e4aff23c06ca15; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_plans_plan
    ADD CONSTRAINT "FK_02218ff3d8b42e4aff23c06ca15" FOREIGN KEY (plan_measure_id) REFERENCES demo.plan_measure(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: approval_step FK_0321d1912ec991bb23d03f367ad; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.approval_step
    ADD CONSTRAINT "FK_0321d1912ec991bb23d03f367ad" FOREIGN KEY (department_id) REFERENCES demo.department(id);


--
-- Name: investigation FK_03e3de67ac1b5bdb38c5bc04227; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.investigation
    ADD CONSTRAINT "FK_03e3de67ac1b5bdb38c5bc04227" FOREIGN KEY (task_id) REFERENCES demo.task(id) ON DELETE CASCADE;


--
-- Name: notification FK_04493eadfb186b5b6e770e3ae67; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.notification
    ADD CONSTRAINT "FK_04493eadfb186b5b6e770e3ae67" FOREIGN KEY (raised_by_id) REFERENCES demo.user_department(id) ON DELETE CASCADE;


--
-- Name: plan_measure_effect_sale FK_057ab1adb14affaaa3340984c15; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_effect_sale
    ADD CONSTRAINT "FK_057ab1adb14affaaa3340984c15" FOREIGN KEY (business_year_id) REFERENCES demo.business_year(id);


--
-- Name: approval_step FK_067e308a03942660d594a2d5809; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.approval_step
    ADD CONSTRAINT "FK_067e308a03942660d594a2d5809" FOREIGN KEY (client_id) REFERENCES demo.client(id);


--
-- Name: sequence FK_087e220b3805e5a3babe6a56aa1; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.sequence
    ADD CONSTRAINT "FK_087e220b3805e5a3babe6a56aa1" FOREIGN KEY (client_id) REFERENCES demo.client(id);


--
-- Name: approved_annual_plan_snapshot FK_096d2b99bd670c5b81c43f570b2; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.approved_annual_plan_snapshot
    ADD CONSTRAINT "FK_096d2b99bd670c5b81c43f570b2" FOREIGN KEY (client_id) REFERENCES demo.client(id);


--
-- Name: plan_measure_cost_assign FK_0a14314285ed6308cbfe047f10a; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_cost_assign
    ADD CONSTRAINT "FK_0a14314285ed6308cbfe047f10a" FOREIGN KEY (cost_id) REFERENCES demo.plan_measure_cost(id) ON DELETE CASCADE;


--
-- Name: approval_request FK_0bf4c1af4de6f2708db40f57bc5; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.approval_request
    ADD CONSTRAINT "FK_0bf4c1af4de6f2708db40f57bc5" FOREIGN KEY (measure_id) REFERENCES demo.measure(id);


--
-- Name: task FK_0c0fe100387631a5695728e22ba; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.task
    ADD CONSTRAINT "FK_0c0fe100387631a5695728e22ba" FOREIGN KEY (client_id) REFERENCES demo.client(id);


--
-- Name: measure FK_0c4435e900a2043d689c9cd4348; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.measure
    ADD CONSTRAINT "FK_0c4435e900a2043d689c9cd4348" FOREIGN KEY (client_id) REFERENCES demo.client(id);


--
-- Name: it_asset_type FK_0c8a224408556879208b70cd745; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.it_asset_type
    ADD CONSTRAINT "FK_0c8a224408556879208b70cd745" FOREIGN KEY (client_id) REFERENCES demo.client(id);


--
-- Name: users FK_0d1e90d75674c54f8660c4ed446; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.users
    ADD CONSTRAINT "FK_0d1e90d75674c54f8660c4ed446" FOREIGN KEY (client_id) REFERENCES demo.client(id);


--
-- Name: user_department FK_0e01589f68102b0b34027b1b746; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.user_department
    ADD CONSTRAINT "FK_0e01589f68102b0b34027b1b746" FOREIGN KEY (client_id) REFERENCES demo.client(id);


--
-- Name: it_asset_type_abandonment_plans_measure_implementation_task FK_0ea3760afbffb33e77fe57a98bc; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.it_asset_type_abandonment_plans_measure_implementation_task
    ADD CONSTRAINT "FK_0ea3760afbffb33e77fe57a98bc" FOREIGN KEY (it_asset_type_id) REFERENCES demo.it_asset_type(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: plan_measure_risk_cost_target_individual FK_0ebe4cf21ac09f495ea64deb9ae; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_risk_cost_target_individual
    ADD CONSTRAINT "FK_0ebe4cf21ac09f495ea64deb9ae" FOREIGN KEY (department_id) REFERENCES demo.department(id);


--
-- Name: measure_implementation_effect FK_0fc9023bbad41bf00b7da0dcd66; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.measure_implementation_effect
    ADD CONSTRAINT "FK_0fc9023bbad41bf00b7da0dcd66" FOREIGN KEY (measure_id) REFERENCES demo.measure(id) ON DELETE CASCADE;


--
-- Name: plan_measure_effect_sale_price FK_103006be756ae2ea29e5625dc6e; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_effect_sale_price
    ADD CONSTRAINT "FK_103006be756ae2ea29e5625dc6e" FOREIGN KEY (plan_measure_effect_sale_id) REFERENCES demo.plan_measure_effect_sale(id) ON DELETE CASCADE;


--
-- Name: plan_measure_cost FK_1068a2cbc3e36e9f1f96e7df119; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_cost
    ADD CONSTRAINT "FK_1068a2cbc3e36e9f1f96e7df119" FOREIGN KEY (department_id) REFERENCES demo.department(id);


--
-- Name: department FK_110d56d702b0880fe9b005878e9; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.department
    ADD CONSTRAINT "FK_110d56d702b0880fe9b005878e9" FOREIGN KEY (parent_id) REFERENCES demo.department(id);


--
-- Name: plan_measure_task_cost_target_individual FK_161a6d91def5b212f1f1aa699e7; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_task_cost_target_individual
    ADD CONSTRAINT "FK_161a6d91def5b212f1f1aa699e7" FOREIGN KEY (business_year_id) REFERENCES demo.business_year(id);


--
-- Name: system_measure_implementation_tasks_measure_implementation_task FK_1655f3507f5b03279b2ef5fa17a; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.system_measure_implementation_tasks_measure_implementation_task
    ADD CONSTRAINT "FK_1655f3507f5b03279b2ef5fa17a" FOREIGN KEY (system_id) REFERENCES demo.system(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: cause FK_1711db3c2e4e5172757cbc023af; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.cause
    ADD CONSTRAINT "FK_1711db3c2e4e5172757cbc023af" FOREIGN KEY (issue_id) REFERENCES demo.issue(id) ON DELETE CASCADE;


--
-- Name: todo_measures_measure FK_17d0685cf69b97345cbef3464a2; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.todo_measures_measure
    ADD CONSTRAINT "FK_17d0685cf69b97345cbef3464a2" FOREIGN KEY (todo_id) REFERENCES demo.todo(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: plan_measure_task_price FK_18cf9eafdd7e6bca5ad19739b23; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_task_price
    ADD CONSTRAINT "FK_18cf9eafdd7e6bca5ad19739b23" FOREIGN KEY (client_id) REFERENCES demo.client(id);


--
-- Name: plan_formulation_email_template FK_198e9800586f6dafb5ac8654eb1; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_formulation_email_template
    ADD CONSTRAINT "FK_198e9800586f6dafb5ac8654eb1" FOREIGN KEY (client_id) REFERENCES demo.client(id);


--
-- Name: plan_measure_risk_cost_target_department FK_19d415d993b06fdfa5fe7abf792; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_risk_cost_target_department
    ADD CONSTRAINT "FK_19d415d993b06fdfa5fe7abf792" FOREIGN KEY (measure_id) REFERENCES demo.plan_measure(id);


--
-- Name: plan_measure_risk_cost_target_individual FK_1b7f9e9e2ef2018e9e100eecb47; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_risk_cost_target_individual
    ADD CONSTRAINT "FK_1b7f9e9e2ef2018e9e100eecb47" FOREIGN KEY (risk_id) REFERENCES demo.plan_measure_risk(id) ON DELETE CASCADE;


--
-- Name: access_control FK_1d0297f091e70d53ddecbc9b8e9; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.access_control
    ADD CONSTRAINT "FK_1d0297f091e70d53ddecbc9b8e9" FOREIGN KEY (client_id) REFERENCES demo.client(id);


--
-- Name: target_measures_measure FK_1e833de579c3b101a0688f6cbc5; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.target_measures_measure
    ADD CONSTRAINT "FK_1e833de579c3b101a0688f6cbc5" FOREIGN KEY (target_id) REFERENCES demo.target(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: task FK_1f53e7ffe94530f9e0221224d29; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.task
    ADD CONSTRAINT "FK_1f53e7ffe94530f9e0221224d29" FOREIGN KEY (project_id) REFERENCES demo.project(id);


--
-- Name: position FK_20476b625ff666b43b823e7a430; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo."position"
    ADD CONSTRAINT "FK_20476b625ff666b43b823e7a430" FOREIGN KEY (client_id) REFERENCES demo.client(id);


--
-- Name: measure_implementation_task FK_2256d20f7440054d851add46997; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.measure_implementation_task
    ADD CONSTRAINT "FK_2256d20f7440054d851add46997" FOREIGN KEY (client_id) REFERENCES demo.client(id);


--
-- Name: notification_template FK_231980959b940446c5a81be364f; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.notification_template
    ADD CONSTRAINT "FK_231980959b940446c5a81be364f" FOREIGN KEY (client_id) REFERENCES demo.client(id);


--
-- Name: plan_measure_cost_assign FK_239c7e0b15b5dff08efc14cef8e; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_cost_assign
    ADD CONSTRAINT "FK_239c7e0b15b5dff08efc14cef8e" FOREIGN KEY (department_id) REFERENCES demo.department(id);


--
-- Name: plan_measure_risk_price FK_24c4a08414ac4b31ab72388044e; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_risk_price
    ADD CONSTRAINT "FK_24c4a08414ac4b31ab72388044e" FOREIGN KEY (business_year_id) REFERENCES demo.business_year(id);


--
-- Name: approval_step_organization FK_260d89462401ba0d7db4a4e8234; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.approval_step_organization
    ADD CONSTRAINT "FK_260d89462401ba0d7db4a4e8234" FOREIGN KEY (approval_step_id) REFERENCES demo.approval_step(id);


--
-- Name: plan_formulation_request_requested_to_user_department FK_2adeb6cc72a7740537c332d0494; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_formulation_request_requested_to_user_department
    ADD CONSTRAINT "FK_2adeb6cc72a7740537c332d0494" FOREIGN KEY (plan_formulation_request_id) REFERENCES demo.plan_formulation_request(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: approval_step_assignee FK_2b761598969b97eb6b341b45ae2; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.approval_step_assignee
    ADD CONSTRAINT "FK_2b761598969b97eb6b341b45ae2" FOREIGN KEY (approval_step_id) REFERENCES demo.approval_step(id);


--
-- Name: task FK_2c9a155ff342de9b5121cb78947; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.task
    ADD CONSTRAINT "FK_2c9a155ff342de9b5121cb78947" FOREIGN KEY (registered_user_id) REFERENCES demo.users(id);


--
-- Name: approval_category FK_2d6593de6f747cc34a7571c7b4e; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.approval_category
    ADD CONSTRAINT "FK_2d6593de6f747cc34a7571c7b4e" FOREIGN KEY (client_id) REFERENCES demo.client(id);


--
-- Name: plan_measure_task FK_2d7698d3ffd2e5fe52e2fb717c7; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_task
    ADD CONSTRAINT "FK_2d7698d3ffd2e5fe52e2fb717c7" FOREIGN KEY (plan_measure_id) REFERENCES demo.plan_measure(id) ON DELETE CASCADE;


--
-- Name: investigation_measures_measure FK_2e9d7e3fe245e8abf17947ccc0e; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.investigation_measures_measure
    ADD CONSTRAINT "FK_2e9d7e3fe245e8abf17947ccc0e" FOREIGN KEY (measure_id) REFERENCES demo.measure(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: measure_implementation_task FK_2e9e70e6165ac2da091a1dc818a; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.measure_implementation_task
    ADD CONSTRAINT "FK_2e9e70e6165ac2da091a1dc818a" FOREIGN KEY (target_system_id) REFERENCES demo.system(id);


--
-- Name: notification FK_2f8191c8135979dde1b63b44710; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.notification
    ADD CONSTRAINT "FK_2f8191c8135979dde1b63b44710" FOREIGN KEY (notify_to_id) REFERENCES demo.user_department(id) ON DELETE CASCADE;


--
-- Name: approval_step FK_32c5501357a2551b3f7fc1f0d8d; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.approval_step
    ADD CONSTRAINT "FK_32c5501357a2551b3f7fc1f0d8d" FOREIGN KEY (approval_flow_id) REFERENCES demo.approval_flow(id) ON DELETE CASCADE;


--
-- Name: plan FK_355f641812904462c282c76006b; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan
    ADD CONSTRAINT "FK_355f641812904462c282c76006b" FOREIGN KEY (department_id) REFERENCES demo.department(id);


--
-- Name: plan_measure_cost_target_department FK_372b3b9e3081f3165f36628b297; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_cost_target_department
    ADD CONSTRAINT "FK_372b3b9e3081f3165f36628b297" FOREIGN KEY (measure_id) REFERENCES demo.plan_measure(id);


--
-- Name: plan_measure_risk_assign FK_3bec7d7d33a2f30cfea017cb7d7; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_risk_assign
    ADD CONSTRAINT "FK_3bec7d7d33a2f30cfea017cb7d7" FOREIGN KEY (department_id) REFERENCES demo.department(id);


--
-- Name: plan_measure_risk FK_3c4100ca2a74dffe97a07f6989e; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_risk
    ADD CONSTRAINT "FK_3c4100ca2a74dffe97a07f6989e" FOREIGN KEY (plan_measure_id) REFERENCES demo.plan_measure(id) ON DELETE CASCADE;


--
-- Name: plan_measure_task_cost_target_department FK_3cb186a2111f5fde246e4f5cdc4; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_task_cost_target_department
    ADD CONSTRAINT "FK_3cb186a2111f5fde246e4f5cdc4" FOREIGN KEY (client_id) REFERENCES demo.client(id);


--
-- Name: todo FK_3de168e3925a8e0e328d29300d6; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.todo
    ADD CONSTRAINT "FK_3de168e3925a8e0e328d29300d6" FOREIGN KEY (client_id) REFERENCES demo.client(id);


--
-- Name: plan_measure_cost_target_individual FK_414493aaae85b3fdda4d32e6c86; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_cost_target_individual
    ADD CONSTRAINT "FK_414493aaae85b3fdda4d32e6c86" FOREIGN KEY (department_id) REFERENCES demo.department(id);


--
-- Name: plan_measure_task_cost_target_department FK_438aa0ef8402df8d51f279e8b4f; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_task_cost_target_department
    ADD CONSTRAINT "FK_438aa0ef8402df8d51f279e8b4f" FOREIGN KEY (assign_id) REFERENCES demo.plan_measure_task_assign(id) ON DELETE CASCADE;


--
-- Name: project_milestone FK_44038101b2516c75f0486d1ef93; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.project_milestone
    ADD CONSTRAINT "FK_44038101b2516c75f0486d1ef93" FOREIGN KEY (client_id) REFERENCES demo.client(id);


--
-- Name: plan_measure_risk_cost_target_individual FK_46a1087bee142bb99b9f71b3dca; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_risk_cost_target_individual
    ADD CONSTRAINT "FK_46a1087bee142bb99b9f71b3dca" FOREIGN KEY (assign_id) REFERENCES demo.plan_measure_risk_assign(id) ON DELETE CASCADE;


--
-- Name: plan_measure_cost_assign FK_480cc733ee247badb701637fe4b; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_cost_assign
    ADD CONSTRAINT "FK_480cc733ee247badb701637fe4b" FOREIGN KEY (client_id) REFERENCES demo.client(id);


--
-- Name: annual_plan FK_49c22b6b36f86f3e52d36eb7519; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.annual_plan
    ADD CONSTRAINT "FK_49c22b6b36f86f3e52d36eb7519" FOREIGN KEY (client_id) REFERENCES demo.client(id);


--
-- Name: target_measures_measure FK_49e27389efc17d808de00617863; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.target_measures_measure
    ADD CONSTRAINT "FK_49e27389efc17d808de00617863" FOREIGN KEY (measure_id) REFERENCES demo.measure(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: plan_measure_task_assign FK_4a641b8779ade1d4ecbac645812; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_task_assign
    ADD CONSTRAINT "FK_4a641b8779ade1d4ecbac645812" FOREIGN KEY (task_id) REFERENCES demo.plan_measure_task(id) ON DELETE CASCADE;


--
-- Name: project_schedule FK_4aad1795641a4025934f46587a8; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.project_schedule
    ADD CONSTRAINT "FK_4aad1795641a4025934f46587a8" FOREIGN KEY (client_id) REFERENCES demo.client(id);


--
-- Name: plan_measure_task_cost_target_department FK_4ad70341c9e86a08c99ff463266; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_task_cost_target_department
    ADD CONSTRAINT "FK_4ad70341c9e86a08c99ff463266" FOREIGN KEY (measure_id) REFERENCES demo.plan_measure(id);


--
-- Name: plan_measure_effect_sale FK_4b4691490cdd56d1fed46799ccd; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_effect_sale
    ADD CONSTRAINT "FK_4b4691490cdd56d1fed46799ccd" FOREIGN KEY (department_id) REFERENCES demo.department(id);


--
-- Name: plan_measure_effect_sale FK_4ca27e2b157f54858e93a7d1eb2; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_effect_sale
    ADD CONSTRAINT "FK_4ca27e2b157f54858e93a7d1eb2" FOREIGN KEY (plan_measure_id) REFERENCES demo.plan_measure(id) ON DELETE CASCADE;


--
-- Name: approval_request FK_4d07ea633f907bca39654a32da0; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.approval_request
    ADD CONSTRAINT "FK_4d07ea633f907bca39654a32da0" FOREIGN KEY (client_id) REFERENCES demo.client(id);


--
-- Name: plan_measure_risk_price FK_4f723c5ebf907db9daf30ec1462; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_risk_price
    ADD CONSTRAINT "FK_4f723c5ebf907db9daf30ec1462" FOREIGN KEY (department_id) REFERENCES demo.department(id);


--
-- Name: account_display_title FK_532288e8939f22494d228e047dc; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.account_display_title
    ADD CONSTRAINT "FK_532288e8939f22494d228e047dc" FOREIGN KEY (client_id) REFERENCES demo.client(id);


--
-- Name: plan_measure_risk_cost_target_department FK_5421c57d976e5be2b538df9417d; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_risk_cost_target_department
    ADD CONSTRAINT "FK_5421c57d976e5be2b538df9417d" FOREIGN KEY (business_year_id) REFERENCES demo.business_year(id);


--
-- Name: approval_step_position FK_55418f2b4389d284bf68bcd34c2; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.approval_step_position
    ADD CONSTRAINT "FK_55418f2b4389d284bf68bcd34c2" FOREIGN KEY (client_id) REFERENCES demo.client(id);


--
-- Name: plan_formulation_request FK_559235c4814f77c6c24e6788684; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_formulation_request
    ADD CONSTRAINT "FK_559235c4814f77c6c24e6788684" FOREIGN KEY (requested_by_id) REFERENCES demo.user_department(id);


--
-- Name: plan_measure_registration_request FK_55d3c9fc9c9cfedae80797993dc; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_registration_request
    ADD CONSTRAINT "FK_55d3c9fc9c9cfedae80797993dc" FOREIGN KEY (requested_by_id) REFERENCES demo.user_department(id);


--
-- Name: plan_measure_task_assign FK_5673b110d8804e02f9b212dc1f6; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_task_assign
    ADD CONSTRAINT "FK_5673b110d8804e02f9b212dc1f6" FOREIGN KEY (business_year_id) REFERENCES demo.business_year(id);


--
-- Name: price_unit FK_579bda7ed642d6ea0d7d48d49d1; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.price_unit
    ADD CONSTRAINT "FK_579bda7ed642d6ea0d7d48d49d1" FOREIGN KEY (client_id) REFERENCES demo.client(id);


--
-- Name: plan_measure_cost_target_individual FK_57b8987fb5993da22ecaacb6986; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_cost_target_individual
    ADD CONSTRAINT "FK_57b8987fb5993da22ecaacb6986" FOREIGN KEY (client_id) REFERENCES demo.client(id);


--
-- Name: plan_measure_cost_price FK_58ba7a8770ca0af3f26c0ca99aa; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_cost_price
    ADD CONSTRAINT "FK_58ba7a8770ca0af3f26c0ca99aa" FOREIGN KEY (business_year_id) REFERENCES demo.business_year(id);


--
-- Name: approval_step_organization FK_590022afc9ddd49b1ccbc8236c6; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.approval_step_organization
    ADD CONSTRAINT "FK_590022afc9ddd49b1ccbc8236c6" FOREIGN KEY (client_id) REFERENCES demo.client(id);


--
-- Name: it_asset_type_purchase_plans_measure_implementation_task FK_59e449542b7c67f492007c40826; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.it_asset_type_purchase_plans_measure_implementation_task
    ADD CONSTRAINT "FK_59e449542b7c67f492007c40826" FOREIGN KEY (measure_implementation_task_id) REFERENCES demo.measure_implementation_task(id);


--
-- Name: cause_condition FK_5a23908a78de94dba308186b90e; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.cause_condition
    ADD CONSTRAINT "FK_5a23908a78de94dba308186b90e" FOREIGN KEY (cause_id) REFERENCES demo.cause(id) ON DELETE CASCADE;


--
-- Name: plan_measure_task_cost_target_department FK_5a898cb3d9987294fac0457bef8; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_task_cost_target_department
    ADD CONSTRAINT "FK_5a898cb3d9987294fac0457bef8" FOREIGN KEY (department_id) REFERENCES demo.department(id);


--
-- Name: target FK_5b37d266a8e1ec0535dc36d83bb; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.target
    ADD CONSTRAINT "FK_5b37d266a8e1ec0535dc36d83bb" FOREIGN KEY (task_id) REFERENCES demo.task(id) ON DELETE CASCADE;


--
-- Name: plan_measure_cost_target_individual FK_5de37e8c3ed3221f1a43a6eba9e; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_cost_target_individual
    ADD CONSTRAINT "FK_5de37e8c3ed3221f1a43a6eba9e" FOREIGN KEY (cost_id) REFERENCES demo.plan_measure_cost(id) ON DELETE CASCADE;


--
-- Name: plan_measure_cost_target_department FK_5f03bb58d277be517bc3b53c74a; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_cost_target_department
    ADD CONSTRAINT "FK_5f03bb58d277be517bc3b53c74a" FOREIGN KEY (department_id) REFERENCES demo.department(id);


--
-- Name: approval_category FK_61175ee09281d8df8f3b9ff5393; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.approval_category
    ADD CONSTRAINT "FK_61175ee09281d8df8f3b9ff5393" FOREIGN KEY (approval_email_template_id) REFERENCES demo.approval_email_template(id);


--
-- Name: plan_measure_task_assign FK_613e036f4a79cec3b6d0d6b4df7; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_task_assign
    ADD CONSTRAINT "FK_613e036f4a79cec3b6d0d6b4df7" FOREIGN KEY (client_id) REFERENCES demo.client(id);


--
-- Name: project_progress_report FK_635cb2245cf5485bdafa2e82d9d; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.project_progress_report
    ADD CONSTRAINT "FK_635cb2245cf5485bdafa2e82d9d" FOREIGN KEY (project_id) REFERENCES demo.project(id);


--
-- Name: account_title FK_64555ae59a7eee850718fcba369; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.account_title
    ADD CONSTRAINT "FK_64555ae59a7eee850718fcba369" FOREIGN KEY (client_id) REFERENCES demo.client(id);


--
-- Name: cause_measures_measure FK_653200aee0b786974d0739cf74a; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.cause_measures_measure
    ADD CONSTRAINT "FK_653200aee0b786974d0739cf74a" FOREIGN KEY (cause_id) REFERENCES demo.cause(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: account_title FK_657290f5c48767228d5405b812d; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.account_title
    ADD CONSTRAINT "FK_657290f5c48767228d5405b812d" FOREIGN KEY (account_display_title_id) REFERENCES demo.account_display_title(id);


--
-- Name: plan_measure_cost_price FK_6592c1c9d9e7a028389080a29b8; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_cost_price
    ADD CONSTRAINT "FK_6592c1c9d9e7a028389080a29b8" FOREIGN KEY (department_id) REFERENCES demo.department(id);


--
-- Name: other_measures_measure FK_65cc3d8a55fb634837bc201f222; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.other_measures_measure
    ADD CONSTRAINT "FK_65cc3d8a55fb634837bc201f222" FOREIGN KEY (other_id) REFERENCES demo.other(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: company FK_662b374a9e31f6470b58c668aea; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.company
    ADD CONSTRAINT "FK_662b374a9e31f6470b58c668aea" FOREIGN KEY (client_id) REFERENCES demo.client(id);


--
-- Name: approval_request FK_685d5badaa9374b2798806c250c; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.approval_request
    ADD CONSTRAINT "FK_685d5badaa9374b2798806c250c" FOREIGN KEY (requested_by_id) REFERENCES demo.user_department(id);


--
-- Name: project_members_user_department FK_6a65665cc1d78a5ca3cb4d52449; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.project_members_user_department
    ADD CONSTRAINT "FK_6a65665cc1d78a5ca3cb4d52449" FOREIGN KEY (user_department_id) REFERENCES demo.user_department(id);


--
-- Name: plan_measure_risk_cost_target_individual FK_6b1e1a9ac3ece30156d11394422; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_risk_cost_target_individual
    ADD CONSTRAINT "FK_6b1e1a9ac3ece30156d11394422" FOREIGN KEY (measure_id) REFERENCES demo.plan_measure(id);


--
-- Name: approval_flow FK_6c3d39e6ca41d76af484bef226d; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.approval_flow
    ADD CONSTRAINT "FK_6c3d39e6ca41d76af484bef226d" FOREIGN KEY (client_id) REFERENCES demo.client(id);


--
-- Name: measure_implementation_effect FK_6cbd45ce7a0051054b512928bb5; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.measure_implementation_effect
    ADD CONSTRAINT "FK_6cbd45ce7a0051054b512928bb5" FOREIGN KEY (client_id) REFERENCES demo.client(id);


--
-- Name: measure_implementation_task_affected_systems_system FK_6d0661183c582a20ef0eedf2e46; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.measure_implementation_task_affected_systems_system
    ADD CONSTRAINT "FK_6d0661183c582a20ef0eedf2e46" FOREIGN KEY (system_id) REFERENCES demo.system(id);


--
-- Name: plan_measure_task_allocation FK_6e8f378958cf0e990df3e20c04f; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_task_allocation
    ADD CONSTRAINT "FK_6e8f378958cf0e990df3e20c04f" FOREIGN KEY (department_id) REFERENCES demo.department(id);


--
-- Name: user_department FK_7044b4fcd0d40c6f11ed27a0b70; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.user_department
    ADD CONSTRAINT "FK_7044b4fcd0d40c6f11ed27a0b70" FOREIGN KEY (department_id) REFERENCES demo.department(id);


--
-- Name: measure_cause_conditions_cause_condition FK_70f26459fb5f1a4161a4c57c1df; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.measure_cause_conditions_cause_condition
    ADD CONSTRAINT "FK_70f26459fb5f1a4161a4c57c1df" FOREIGN KEY (cause_condition_id) REFERENCES demo.cause_condition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: plan_measure_cost_target_department FK_75bb63283a03d4c593fb2175e80; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_cost_target_department
    ADD CONSTRAINT "FK_75bb63283a03d4c593fb2175e80" FOREIGN KEY (business_year_id) REFERENCES demo.business_year(id);


--
-- Name: plan_measure_risk_cost_target_individual FK_76a3b3d2bbb2755e82ceceb846a; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_risk_cost_target_individual
    ADD CONSTRAINT "FK_76a3b3d2bbb2755e82ceceb846a" FOREIGN KEY (client_id) REFERENCES demo.client(id);


--
-- Name: plan_measure_cost_target_individual FK_76aa7b64c6aeaf31a5a39bb4bb0; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_cost_target_individual
    ADD CONSTRAINT "FK_76aa7b64c6aeaf31a5a39bb4bb0" FOREIGN KEY (assign_id) REFERENCES demo.plan_measure_cost_assign(id) ON DELETE CASCADE;


--
-- Name: project_achievement_condition FK_77c430abe52b3c480f9a45eabb9; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.project_achievement_condition
    ADD CONSTRAINT "FK_77c430abe52b3c480f9a45eabb9" FOREIGN KEY (client_id) REFERENCES demo.client(id);


--
-- Name: plan_measure_task_cost_target_department FK_790e5d317c366f831b310c3749d; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_task_cost_target_department
    ADD CONSTRAINT "FK_790e5d317c366f831b310c3749d" FOREIGN KEY (task_id) REFERENCES demo.plan_measure_task(id) ON DELETE CASCADE;


--
-- Name: plan_measure_risk_assign FK_7ac3d84ac461a620945150c000f; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_risk_assign
    ADD CONSTRAINT "FK_7ac3d84ac461a620945150c000f" FOREIGN KEY (risk_id) REFERENCES demo.plan_measure_risk(id) ON DELETE CASCADE;


--
-- Name: plan_measure_task_allocation FK_7b2652d2f976dd0fc8940395ce1; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_task_allocation
    ADD CONSTRAINT "FK_7b2652d2f976dd0fc8940395ce1" FOREIGN KEY (task_id) REFERENCES demo.plan_measure_task(id) ON DELETE CASCADE;


--
-- Name: todo FK_7c47734394d4c7e8f027d8eafeb; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.todo
    ADD CONSTRAINT "FK_7c47734394d4c7e8f027d8eafeb" FOREIGN KEY (task_id) REFERENCES demo.task(id) ON DELETE CASCADE;


--
-- Name: study_content FK_7d6425daf982f2db6a52994e07e; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.study_content
    ADD CONSTRAINT "FK_7d6425daf982f2db6a52994e07e" FOREIGN KEY (task_id) REFERENCES demo.task(id) ON DELETE CASCADE;


--
-- Name: plan_measure_cost_target_department FK_7d74fb36d665330de8bf3d6fef8; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_cost_target_department
    ADD CONSTRAINT "FK_7d74fb36d665330de8bf3d6fef8" FOREIGN KEY (client_id) REFERENCES demo.client(id);


--
-- Name: measure_implementation_task FK_7d90e060c8ea778efed69d5ea35; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.measure_implementation_task
    ADD CONSTRAINT "FK_7d90e060c8ea778efed69d5ea35" FOREIGN KEY (measure_id) REFERENCES demo.measure(id) ON DELETE CASCADE;


--
-- Name: plan_measure_cost_target_individual FK_7e4da38fccea393d1109ece1046; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_cost_target_individual
    ADD CONSTRAINT "FK_7e4da38fccea393d1109ece1046" FOREIGN KEY (user_dpm_id) REFERENCES demo.user_department(id);


--
-- Name: plan_measure_registration_request FK_807011ab445862658aa63685346; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_registration_request
    ADD CONSTRAINT "FK_807011ab445862658aa63685346" FOREIGN KEY (plan_id) REFERENCES demo.plan(id);


--
-- Name: users FK_8142e2da245f6810a3733d9c2be; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.users
    ADD CONSTRAINT "FK_8142e2da245f6810a3733d9c2be" FOREIGN KEY (salary_id) REFERENCES demo.salary(id);


--
-- Name: target FK_82ddab94af89ac3283a2b1719c0; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.target
    ADD CONSTRAINT "FK_82ddab94af89ac3283a2b1719c0" FOREIGN KEY (client_id) REFERENCES demo.client(id);


--
-- Name: plan_measure_risk_cost_target_individual FK_84c8c173dcba686412a23a640ad; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_risk_cost_target_individual
    ADD CONSTRAINT "FK_84c8c173dcba686412a23a640ad" FOREIGN KEY (user_dpm_id) REFERENCES demo.user_department(id);


--
-- Name: approval_request FK_85af52b7b874ed6ca5bfe9d8061; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.approval_request
    ADD CONSTRAINT "FK_85af52b7b874ed6ca5bfe9d8061" FOREIGN KEY (task_id) REFERENCES demo.task(id);


--
-- Name: plan_measure_task_price FK_87a4614daa45b7e2df755ed07c1; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_task_price
    ADD CONSTRAINT "FK_87a4614daa45b7e2df755ed07c1" FOREIGN KEY (business_year_id) REFERENCES demo.business_year(id);


--
-- Name: approval_step_organization FK_8865be059233c589f9fcd63a4cc; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.approval_step_organization
    ADD CONSTRAINT "FK_8865be059233c589f9fcd63a4cc" FOREIGN KEY (department_id) REFERENCES demo.department(id);


--
-- Name: investigation_measures_measure FK_88a353eb35b69ed0e9561e6c79c; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.investigation_measures_measure
    ADD CONSTRAINT "FK_88a353eb35b69ed0e9561e6c79c" FOREIGN KEY (investigation_id) REFERENCES demo.investigation(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: access_control FK_88cbfe4249ed0b8f9ca3a4d10d8; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.access_control
    ADD CONSTRAINT "FK_88cbfe4249ed0b8f9ca3a4d10d8" FOREIGN KEY (position_id) REFERENCES demo."position"(id);

-- P2FW-719
--
-- Name: access_control FK_88cbfe4249ed0b8f9ca3a4d1235; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.access_control
    ADD CONSTRAINT "FK_88cbfe4249ed0b8f9ca3a4d1235" FOREIGN KEY (target_department_level_id) REFERENCES demo."department_level"(id);


--
-- Name: plan_measure_cost FK_8a13bd274311d111af218c702d4; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_cost
    ADD CONSTRAINT "FK_8a13bd274311d111af218c702d4" FOREIGN KEY (business_year_id) REFERENCES demo.business_year(id);


--
-- Name: plan_measure FK_8a70dfd0a6394194405f856c89d; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure
    ADD CONSTRAINT "FK_8a70dfd0a6394194405f856c89d" FOREIGN KEY (business_year_id) REFERENCES demo.business_year(id);


--
-- Name: project FK_8c92ef92d8edf56a4da63c1c345; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.project
    ADD CONSTRAINT "FK_8c92ef92d8edf56a4da63c1c345" FOREIGN KEY (raised_user_id) REFERENCES demo.users(id);


--
-- Name: plan_measure_task FK_8ca59ef09f622d56b80fbaa44af; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_task
    ADD CONSTRAINT "FK_8ca59ef09f622d56b80fbaa44af" FOREIGN KEY (account_title_id) REFERENCES demo.account_title(id);


--
-- Name: plan_measure_risk_assign FK_8d42e313006b025303fdba968f9; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_risk_assign
    ADD CONSTRAINT "FK_8d42e313006b025303fdba968f9" FOREIGN KEY (client_id) REFERENCES demo.client(id);


--
-- Name: plan_formulation_request FK_8e4dba2b1820b690926d3ff47fe; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_formulation_request
    ADD CONSTRAINT "FK_8e4dba2b1820b690926d3ff47fe" FOREIGN KEY (client_id) REFERENCES demo.client(id);


--
-- Name: plan_measure_task_allocation FK_8e73e238e988fb80eb2a88f24eb; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_task_allocation
    ADD CONSTRAINT "FK_8e73e238e988fb80eb2a88f24eb" FOREIGN KEY (distri_dpm_id) REFERENCES demo.department(id);


--
-- Name: measure_implementation_task_affected_systems_system FK_8e8be4b956ca23d16933c1be4b2; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.measure_implementation_task_affected_systems_system
    ADD CONSTRAINT "FK_8e8be4b956ca23d16933c1be4b2" FOREIGN KEY (measure_implementation_task_id) REFERENCES demo.measure_implementation_task(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: plan_measure_cost FK_9253f4ed1555d71efd5577fb07c; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_cost
    ADD CONSTRAINT "FK_9253f4ed1555d71efd5577fb07c" FOREIGN KEY (plan_measure_id) REFERENCES demo.plan_measure(id) ON DELETE CASCADE;


--
-- Name: user_department FK_92bb51ffd463f2dfba95539e10d; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.user_department
    ADD CONSTRAINT "FK_92bb51ffd463f2dfba95539e10d" FOREIGN KEY (user_id) REFERENCES demo.users(id);


--
-- Name: other FK_94356b40cf69925bf8721390869; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.other
    ADD CONSTRAINT "FK_94356b40cf69925bf8721390869" FOREIGN KEY (task_id) REFERENCES demo.task(id) ON DELETE CASCADE;


--
-- Name: plan_measure_registration_request FK_95aa28bef149f0347d899f0e3b1; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_registration_request
    ADD CONSTRAINT "FK_95aa28bef149f0347d899f0e3b1" FOREIGN KEY (client_id) REFERENCES demo.client(id);


--
-- Name: study_content_measures_measure FK_96d2a363815856805902371a7d3; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.study_content_measures_measure
    ADD CONSTRAINT "FK_96d2a363815856805902371a7d3" FOREIGN KEY (study_content_id) REFERENCES demo.study_content(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: project_achievement_condition FK_98ac042e29debc4f4a204e59f5f; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.project_achievement_condition
    ADD CONSTRAINT "FK_98ac042e29debc4f4a204e59f5f" FOREIGN KEY (project_id) REFERENCES demo.project(id);


--
-- Name: plan_measure_risk_price FK_99806082b871bc9979da3faea5b; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_risk_price
    ADD CONSTRAINT "FK_99806082b871bc9979da3faea5b" FOREIGN KEY (risk_id) REFERENCES demo.plan_measure_risk(id) ON DELETE CASCADE;


--
-- Name: plan_measure_cost_target_individual FK_9a6274f0a8c3eee45f618a44d9a; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_cost_target_individual
    ADD CONSTRAINT "FK_9a6274f0a8c3eee45f618a44d9a" FOREIGN KEY (measure_id) REFERENCES demo.plan_measure(id);


--
-- Name: project_members_user_department FK_9c0276690eea0ba73bcd68a2169; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.project_members_user_department
    ADD CONSTRAINT "FK_9c0276690eea0ba73bcd68a2169" FOREIGN KEY (project_id) REFERENCES demo.project(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: other FK_9c70467a20f36987ce4a1f4d7c8; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.other
    ADD CONSTRAINT "FK_9c70467a20f36987ce4a1f4d7c8" FOREIGN KEY (client_id) REFERENCES demo.client(id);


--
-- Name: approval_request FK_9d2441d6534e9f78b75aba00787; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.approval_request
    ADD CONSTRAINT "FK_9d2441d6534e9f78b75aba00787" FOREIGN KEY (project_id) REFERENCES demo.project(id);


--
-- Name: cause_measures_measure FK_9daa6a9bcbe8de90d7659cd480d; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.cause_measures_measure
    ADD CONSTRAINT "FK_9daa6a9bcbe8de90d7659cd480d" FOREIGN KEY (measure_id) REFERENCES demo.measure(id);


--
-- Name: plan_formulation_request FK_9fad479692809343c65859a550c; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_formulation_request
    ADD CONSTRAINT "FK_9fad479692809343c65859a550c" FOREIGN KEY (plan_id) REFERENCES demo.plan(id);


--
-- Name: plan_measure_risk FK_a031af26931722e0fca09b96e08; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_risk
    ADD CONSTRAINT "FK_a031af26931722e0fca09b96e08" FOREIGN KEY (business_year_id) REFERENCES demo.business_year(id);


--
-- Name: plan_measure_risk_price FK_a090a91c6b94e9261fbe98f750b; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_risk_price
    ADD CONSTRAINT "FK_a090a91c6b94e9261fbe98f750b" FOREIGN KEY (client_id) REFERENCES demo.client(id);


--
-- Name: project_milestone FK_a111304a8272ba72e9c44eac47c; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.project_milestone
    ADD CONSTRAINT "FK_a111304a8272ba72e9c44eac47c" FOREIGN KEY (project_id) REFERENCES demo.project(id);


--
-- Name: access_control FK_a11bde91b0d68a15e05690adbd3; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.access_control
    ADD CONSTRAINT "FK_a11bde91b0d68a15e05690adbd3" FOREIGN KEY (user_department_id) REFERENCES demo.user_department(id);


--
-- Name: approval_step_assignee FK_a17813bc5bba537b8b6de82445a; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.approval_step_assignee
    ADD CONSTRAINT "FK_a17813bc5bba537b8b6de82445a" FOREIGN KEY (user_department_id) REFERENCES demo.user_department(id);


--
-- Name: annual_plan FK_a503324dea2a435e7541fa71f08; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.annual_plan
    ADD CONSTRAINT "FK_a503324dea2a435e7541fa71f08" FOREIGN KEY (department_id) REFERENCES demo.department(id);


--
-- Name: approval_category FK_a55cd68dd6b9539717d0524b99d; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.approval_category
    ADD CONSTRAINT "FK_a55cd68dd6b9539717d0524b99d" FOREIGN KEY (approval_request_message_template_id) REFERENCES demo.approval_request_message_template(id);


--
-- Name: plan_measure_registration_request_requested_to_user_department FK_a7d78dcb407f19d79a43c4a8cb2; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_registration_request_requested_to_user_department
    ADD CONSTRAINT "FK_a7d78dcb407f19d79a43c4a8cb2" FOREIGN KEY (plan_measure_registration_request_id) REFERENCES demo.plan_measure_registration_request(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: investigation FK_a7f2de6b8d4da74a7f788178900; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.investigation
    ADD CONSTRAINT "FK_a7f2de6b8d4da74a7f788178900" FOREIGN KEY (client_id) REFERENCES demo.client(id);


--
-- Name: approval_request FK_a8d94f48efb87e531bf4a8d5c0a; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.approval_request
    ADD CONSTRAINT "FK_a8d94f48efb87e531bf4a8d5c0a" FOREIGN KEY (approval_flow_id) REFERENCES demo.approval_flow(id);


--
-- Name: approval_step_assignee FK_a9a4eac8e5aaa84277ead7785f6; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.approval_step_assignee
    ADD CONSTRAINT "FK_a9a4eac8e5aaa84277ead7785f6" FOREIGN KEY (client_id) REFERENCES demo.client(id);


--
-- Name: plan_measure_registration_request_plan_measure_plan_measure FK_a9d302dd4becc8bcfe1daa9f84d; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_registration_request_plan_measure_plan_measure
    ADD CONSTRAINT "FK_a9d302dd4becc8bcfe1daa9f84d" FOREIGN KEY (plan_measure_id) REFERENCES demo.plan_measure(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: measure_cause_conditions_cause_condition FK_a9dc96d4ea9392e30713917f1be; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.measure_cause_conditions_cause_condition
    ADD CONSTRAINT "FK_a9dc96d4ea9392e30713917f1be" FOREIGN KEY (measure_id) REFERENCES demo.measure(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: plan_measure_cost FK_aac3c3420d27f22607a7a700d07; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_cost
    ADD CONSTRAINT "FK_aac3c3420d27f22607a7a700d07" FOREIGN KEY (account_title_id) REFERENCES demo.account_title(id);


--
-- Name: approved_annual_plan_snapshot FK_ab0d6e219bceee7054cfa3c6e16; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.approved_annual_plan_snapshot
    ADD CONSTRAINT "FK_ab0d6e219bceee7054cfa3c6e16" FOREIGN KEY (annual_plan_id) REFERENCES demo.annual_plan(id);


--
-- Name: plan_measure_task_cost_target_individual FK_ac0368b4fee4cea386de9bcea06; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_task_cost_target_individual
    ADD CONSTRAINT "FK_ac0368b4fee4cea386de9bcea06" FOREIGN KEY (client_id) REFERENCES demo.client(id);


--
-- Name: approval_email_template FK_ac78f804b7b9a2199bbecc73335; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.approval_email_template
    ADD CONSTRAINT "FK_ac78f804b7b9a2199bbecc73335" FOREIGN KEY (client_id) REFERENCES demo.client(id);


--
-- Name: department FK_ace1787c3275aed9ffe045fdb5a; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.department
    ADD CONSTRAINT "FK_ace1787c3275aed9ffe045fdb5a" FOREIGN KEY (department_level_id) REFERENCES demo.department_level(id);


--
-- Name: plan_measure_effect_sale_price FK_aee0d58a6fb6199a9f256a2cfe9; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_effect_sale_price
    ADD CONSTRAINT "FK_aee0d58a6fb6199a9f256a2cfe9" FOREIGN KEY (department_id) REFERENCES demo.department(id);


--
-- Name: plan_measure_cost_target_department FK_afccbd59dde73ec63d2106a93e3; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_cost_target_department
    ADD CONSTRAINT "FK_afccbd59dde73ec63d2106a93e3" FOREIGN KEY (cost_id) REFERENCES demo.plan_measure_cost(id) ON DELETE CASCADE;


--
-- Name: it_asset_type_abandonment_plans_measure_implementation_task FK_b061a7eba80a043ae95386943af; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.it_asset_type_abandonment_plans_measure_implementation_task
    ADD CONSTRAINT "FK_b061a7eba80a043ae95386943af" FOREIGN KEY (measure_implementation_task_id) REFERENCES demo.measure_implementation_task(id);


--
-- Name: plan_measure_task_price FK_b08c4357416aae7faa3f958b7e4; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_task_price
    ADD CONSTRAINT "FK_b08c4357416aae7faa3f958b7e4" FOREIGN KEY (department_id) REFERENCES demo.department(id);


--
-- Name: plan_measure_risk_cost_target_department FK_b0cbc6e6c25d50e1ca72ce4244c; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_risk_cost_target_department
    ADD CONSTRAINT "FK_b0cbc6e6c25d50e1ca72ce4244c" FOREIGN KEY (client_id) REFERENCES demo.client(id);


--
-- Name: plan_measure_task_cost_target_individual FK_b2bf27cf6763f31db4515bece5d; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_task_cost_target_individual
    ADD CONSTRAINT "FK_b2bf27cf6763f31db4515bece5d" FOREIGN KEY (assign_id) REFERENCES demo.plan_measure_task_assign(id) ON DELETE CASCADE;


--
-- Name: salary FK_b2caa69bdceb63d05f84af53b30; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.salary
    ADD CONSTRAINT "FK_b2caa69bdceb63d05f84af53b30" FOREIGN KEY (client_id) REFERENCES demo.client(id);


--
-- Name: approval_step_position FK_b398481299867162725856db82e; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.approval_step_position
    ADD CONSTRAINT "FK_b398481299867162725856db82e" FOREIGN KEY (position_id) REFERENCES demo."position"(id);


--
-- Name: plan_measure_risk FK_b54745d6d7a78c33ef915ed40f5; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_risk
    ADD CONSTRAINT "FK_b54745d6d7a78c33ef915ed40f5" FOREIGN KEY (account_title_id) REFERENCES demo.account_title(id);


--
-- Name: cause FK_b5544ba1bd9a07e076f77463f2a; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.cause
    ADD CONSTRAINT "FK_b5544ba1bd9a07e076f77463f2a" FOREIGN KEY (client_id) REFERENCES demo.client(id);


--
-- Name: plan_measure_effect_sale_price FK_b62ce51e14eaee7286ac10457a3; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_effect_sale_price
    ADD CONSTRAINT "FK_b62ce51e14eaee7286ac10457a3" FOREIGN KEY (client_id) REFERENCES demo.client(id);


--
-- Name: plan_measure_cost_target_individual FK_b74b62861134164ab5779c8c4d3; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_cost_target_individual
    ADD CONSTRAINT "FK_b74b62861134164ab5779c8c4d3" FOREIGN KEY (business_year_id) REFERENCES demo.business_year(id);


--
-- Name: plan_measure_task_cost_target_individual FK_b89fcef60deec020fd3a90d0f42; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_task_cost_target_individual
    ADD CONSTRAINT "FK_b89fcef60deec020fd3a90d0f42" FOREIGN KEY (user_dpm_id) REFERENCES demo.user_department(id);


--
-- Name: study_content_measures_measure FK_b9044c6432fa9e532692325c5c2; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.study_content_measures_measure
    ADD CONSTRAINT "FK_b9044c6432fa9e532692325c5c2" FOREIGN KEY (measure_id) REFERENCES demo.measure(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: plan_measure_risk_cost_target_individual FK_b946e4b8e438ac8030197159ae0; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_risk_cost_target_individual
    ADD CONSTRAINT "FK_b946e4b8e438ac8030197159ae0" FOREIGN KEY (business_year_id) REFERENCES demo.business_year(id);


--
-- Name: notification FK_ba99104b2d760362b8f2ca0ac05; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.notification
    ADD CONSTRAINT "FK_ba99104b2d760362b8f2ca0ac05" FOREIGN KEY (client_id) REFERENCES demo.client(id);


--
-- Name: plan FK_be04b174b52cecd677b838c8ed2; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan
    ADD CONSTRAINT "FK_be04b174b52cecd677b838c8ed2" FOREIGN KEY (client_id) REFERENCES demo.client(id);


--
-- Name: project FK_bf699147b72844c80ec53f54da5; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.project
    ADD CONSTRAINT "FK_bf699147b72844c80ec53f54da5" FOREIGN KEY (raised_department_id) REFERENCES demo.department(id);


--
-- Name: plan_measure_effect_sale_price FK_c12df4189b94058f782f5d0d14a; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_effect_sale_price
    ADD CONSTRAINT "FK_c12df4189b94058f782f5d0d14a" FOREIGN KEY (business_year_id) REFERENCES demo.business_year(id);


--
-- Name: plan_measure_registration_request_plan_measure_plan_measure FK_c38ceb8b316c2e87f009408c744; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_registration_request_plan_measure_plan_measure
    ADD CONSTRAINT "FK_c38ceb8b316c2e87f009408c744" FOREIGN KEY (plan_measure_registration_request_id) REFERENCES demo.plan_measure_registration_request(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: project FK_c72d76e480d7334858782543610; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.project
    ADD CONSTRAINT "FK_c72d76e480d7334858782543610" FOREIGN KEY (client_id) REFERENCES demo.client(id);


--
-- Name: plan_measure_cost_target_department FK_c817c84cf347c027ac2a16d9958; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_cost_target_department
    ADD CONSTRAINT "FK_c817c84cf347c027ac2a16d9958" FOREIGN KEY (assign_id) REFERENCES demo.plan_measure_cost_assign(id) ON DELETE CASCADE;


--
-- Name: plan_measure_effect_sale FK_c8b6cee28ee4516ac1f2f25e38c; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_effect_sale
    ADD CONSTRAINT "FK_c8b6cee28ee4516ac1f2f25e38c" FOREIGN KEY (client_id) REFERENCES demo.client(id);


--
-- Name: department FK_c8c84fb60d8d1f6517c795f1adf; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.department
    ADD CONSTRAINT "FK_c8c84fb60d8d1f6517c795f1adf" FOREIGN KEY (client_id) REFERENCES demo.client(id);


--
-- Name: plan_measure_risk FK_cabaf51bb469c02a5919d30818a; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_risk
    ADD CONSTRAINT "FK_cabaf51bb469c02a5919d30818a" FOREIGN KEY (client_id) REFERENCES demo.client(id);


--
-- Name: plan_measure_task FK_cc472e5f0cfdf2b9e86125f373b; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_task
    ADD CONSTRAINT "FK_cc472e5f0cfdf2b9e86125f373b" FOREIGN KEY (client_id) REFERENCES demo.client(id);


--
-- Name: plan FK_ccbd36513b0f6039a931b2636f0; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan
    ADD CONSTRAINT "FK_ccbd36513b0f6039a931b2636f0" FOREIGN KEY (annual_plan_id) REFERENCES demo.annual_plan(id) ON DELETE CASCADE;


--
-- Name: plan_measure_task FK_cd5a9c5d5280fab5c034a481e1e; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_task
    ADD CONSTRAINT "FK_cd5a9c5d5280fab5c034a481e1e" FOREIGN KEY (department_id) REFERENCES demo.department(id);


--
-- Name: project_progress_report FK_d265280ab538e1d8434dbf84e81; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.project_progress_report
    ADD CONSTRAINT "FK_d265280ab538e1d8434dbf84e81" FOREIGN KEY (client_id) REFERENCES demo.client(id);


--
-- Name: notification FK_d2a6ef77141a01b8ac31f514cfc; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.notification
    ADD CONSTRAINT "FK_d2a6ef77141a01b8ac31f514cfc" FOREIGN KEY (template_id) REFERENCES demo.notification_template(id) ON DELETE CASCADE;


--
-- Name: project FK_d40afe32d1d771bea7a5f468185; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.project
    ADD CONSTRAINT "FK_d40afe32d1d771bea7a5f468185" FOREIGN KEY (owner_id) REFERENCES demo.user_department(id);


--
-- Name: system FK_d418eeb7a89e09501c97856842d; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.system
    ADD CONSTRAINT "FK_d418eeb7a89e09501c97856842d" FOREIGN KEY (client_id) REFERENCES demo.client(id);


--
-- Name: plan_measure_task_cost_target_individual FK_d42c47489b181b3b6c0c571fe64; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_task_cost_target_individual
    ADD CONSTRAINT "FK_d42c47489b181b3b6c0c571fe64" FOREIGN KEY (task_id) REFERENCES demo.plan_measure_task(id) ON DELETE CASCADE;


--
-- Name: study_content FK_d4524159ea6ba04da4f687249df; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.study_content
    ADD CONSTRAINT "FK_d4524159ea6ba04da4f687249df" FOREIGN KEY (client_id) REFERENCES demo.client(id);


--
-- Name: plan_measure_cost FK_d467db66ea586d493bf89d9ad09; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_cost
    ADD CONSTRAINT "FK_d467db66ea586d493bf89d9ad09" FOREIGN KEY (client_id) REFERENCES demo.client(id);


--
-- Name: plan_measure_risk_cost_target_department FK_d5a56210778a3e0bec93db111cb; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_risk_cost_target_department
    ADD CONSTRAINT "FK_d5a56210778a3e0bec93db111cb" FOREIGN KEY (risk_id) REFERENCES demo.plan_measure_risk(id) ON DELETE CASCADE;


--
-- Name: todo_measures_measure FK_d5aa5b0d1c3b9cca4cdb358a4d4; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.todo_measures_measure
    ADD CONSTRAINT "FK_d5aa5b0d1c3b9cca4cdb358a4d4" FOREIGN KEY (measure_id) REFERENCES demo.measure(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: approval_request FK_d696f2b72dc3038f6fe1799a69f; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.approval_request
    ADD CONSTRAINT "FK_d696f2b72dc3038f6fe1799a69f" FOREIGN KEY (approval_category_id) REFERENCES demo.approval_category(id);


--
-- Name: approval_request_message_template FK_d6fcd17e74280ac3893ef40721b; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.approval_request_message_template
    ADD CONSTRAINT "FK_d6fcd17e74280ac3893ef40721b" FOREIGN KEY (client_id) REFERENCES demo.client(id);


--
-- Name: project_schedule FK_d85baaed628032fc3988bd7a08d; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.project_schedule
    ADD CONSTRAINT "FK_d85baaed628032fc3988bd7a08d" FOREIGN KEY (project_id) REFERENCES demo.project(id);


--
-- Name: plan_formulation_request_requested_to_user_department FK_d90b06cbec35fffe94e41724a2e; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_formulation_request_requested_to_user_department
    ADD CONSTRAINT "FK_d90b06cbec35fffe94e41724a2e" FOREIGN KEY (user_department_id) REFERENCES demo.user_department(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: cause_condition FK_da36e9b103dc3c06eb1609c7b3d; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.cause_condition
    ADD CONSTRAINT "FK_da36e9b103dc3c06eb1609c7b3d" FOREIGN KEY (client_id) REFERENCES demo.client(id);


--
-- Name: department_level FK_db66827421cf42bbcfeabe50bac; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.department_level
    ADD CONSTRAINT "FK_db66827421cf42bbcfeabe50bac" FOREIGN KEY (client_id) REFERENCES demo.client(id);


--
-- Name: plan_measure_task_allocation FK_dbbf10e1715018324b613d4a20d; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_task_allocation
    ADD CONSTRAINT "FK_dbbf10e1715018324b613d4a20d" FOREIGN KEY (business_year_id) REFERENCES demo.business_year(id);


--
-- Name: it_asset_type_purchase_plans_measure_implementation_task FK_dbcfc38051a6dbf1c15188672b9; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.it_asset_type_purchase_plans_measure_implementation_task
    ADD CONSTRAINT "FK_dbcfc38051a6dbf1c15188672b9" FOREIGN KEY (it_asset_type_id) REFERENCES demo.it_asset_type(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: issue FK_dd1c8be1be86b14e0580409ed00; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.issue
    ADD CONSTRAINT "FK_dd1c8be1be86b14e0580409ed00" FOREIGN KEY (task_id) REFERENCES demo.task(id) ON DELETE CASCADE;


--
-- Name: plan_measure FK_ddfceb3e6a22cbd51d609418b1d; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure
    ADD CONSTRAINT "FK_ddfceb3e6a22cbd51d609418b1d" FOREIGN KEY (registered_by_id) REFERENCES demo.user_department(id);


--
-- Name: business_year FK_dfee894aa654b7f3783fbef2983; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.business_year
    ADD CONSTRAINT "FK_dfee894aa654b7f3783fbef2983" FOREIGN KEY (client_id) REFERENCES demo.client(id);


--
-- Name: plan_measure_risk_assign FK_e0323733d766c58b6ec9be4111d; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_risk_assign
    ADD CONSTRAINT "FK_e0323733d766c58b6ec9be4111d" FOREIGN KEY (business_year_id) REFERENCES demo.business_year(id);


--
-- Name: plan_measure_task_allocation FK_e03f491c1bade0b893eab418eed; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_task_allocation
    ADD CONSTRAINT "FK_e03f491c1bade0b893eab418eed" FOREIGN KEY (client_id) REFERENCES demo.client(id);


--
-- Name: approval_history FK_e263456d99ca9420b69901079ec; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.approval_history
    ADD CONSTRAINT "FK_e263456d99ca9420b69901079ec" FOREIGN KEY (approval_step_assignee_id) REFERENCES demo.approval_step_assignee(id);


--
-- Name: plan_measure_task_cost_target_individual FK_e32882f0660a3ff5eb012c82d2c; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_task_cost_target_individual
    ADD CONSTRAINT "FK_e32882f0660a3ff5eb012c82d2c" FOREIGN KEY (measure_id) REFERENCES demo.plan_measure(id);


--
-- Name: annual_plan FK_e4dad98a903b12c2e2973c44f88; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.annual_plan
    ADD CONSTRAINT "FK_e4dad98a903b12c2e2973c44f88" FOREIGN KEY (business_year_id) REFERENCES demo.business_year(id);


--
-- Name: plan_measure_cost_price FK_e78809f712ee9f506f56f1bb6e6; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_cost_price
    ADD CONSTRAINT "FK_e78809f712ee9f506f56f1bb6e6" FOREIGN KEY (plan_measure_cost_id) REFERENCES demo.plan_measure_cost(id) ON DELETE CASCADE;


--
-- Name: user_department FK_e7a3a1bd0540baafe2a7a3cb25e; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.user_department
    ADD CONSTRAINT "FK_e7a3a1bd0540baafe2a7a3cb25e" FOREIGN KEY (position_id) REFERENCES demo."position"(id);


--
-- Name: plan_measure_cost_price FK_e9165590ae3d7288300be24270d; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_cost_price
    ADD CONSTRAINT "FK_e9165590ae3d7288300be24270d" FOREIGN KEY (client_id) REFERENCES demo.client(id);


--
-- Name: approval_step_position FK_ead2108c825338e5ae645935682; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.approval_step_position
    ADD CONSTRAINT "FK_ead2108c825338e5ae645935682" FOREIGN KEY (approval_step_id) REFERENCES demo.approval_step(id);


--
-- Name: plan_measure FK_ec981bfe06e71c9b80a5400198b; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure
    ADD CONSTRAINT "FK_ec981bfe06e71c9b80a5400198b" FOREIGN KEY (client_id) REFERENCES demo.client(id);


--
-- Name: plan_measure_registration_request_requested_to_user_department FK_ee96ab1ec08d178e70e5b732b7b; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_registration_request_requested_to_user_department
    ADD CONSTRAINT "FK_ee96ab1ec08d178e70e5b732b7b" FOREIGN KEY (user_department_id) REFERENCES demo.user_department(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: plan_measure_risk_cost_target_department FK_ef0fb28472bdf4a97dcac24bb74; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_risk_cost_target_department
    ADD CONSTRAINT "FK_ef0fb28472bdf4a97dcac24bb74" FOREIGN KEY (department_id) REFERENCES demo.department(id);


--
-- Name: issue FK_f013c2c66de2a74321d1bada32b; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.issue
    ADD CONSTRAINT "FK_f013c2c66de2a74321d1bada32b" FOREIGN KEY (client_id) REFERENCES demo.client(id);


--
-- Name: plan_measure FK_f318c90804db9e0da807f4acc8f; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure
    ADD CONSTRAINT "FK_f318c90804db9e0da807f4acc8f" FOREIGN KEY (department_id) REFERENCES demo.department(id);


--
-- Name: plan_measure_risk FK_f37812862c967087e001453aa9e; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_risk
    ADD CONSTRAINT "FK_f37812862c967087e001453aa9e" FOREIGN KEY (department_id) REFERENCES demo.department(id);


--
-- Name: plan_measure_task_assign FK_f490c8855b8e8de24160183c0e4; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_task_assign
    ADD CONSTRAINT "FK_f490c8855b8e8de24160183c0e4" FOREIGN KEY (department_id) REFERENCES demo.department(id);


--
-- Name: other_measures_measure FK_f4e3b39b84919d4fc9a5ed72436; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.other_measures_measure
    ADD CONSTRAINT "FK_f4e3b39b84919d4fc9a5ed72436" FOREIGN KEY (measure_id) REFERENCES demo.measure(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: plan_measure_cost_assign FK_f6065a36673368719a02ad61f2a; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_cost_assign
    ADD CONSTRAINT "FK_f6065a36673368719a02ad61f2a" FOREIGN KEY (business_year_id) REFERENCES demo.business_year(id);


--
-- Name: plan_measure_task FK_f7c47dcc7681aa5acfd17708efe; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_task
    ADD CONSTRAINT "FK_f7c47dcc7681aa5acfd17708efe" FOREIGN KEY (business_year_id) REFERENCES demo.business_year(id);


--
-- Name: plan_measure_risk_cost_target_department FK_fa0ebc55789587b6a9c63f8fab3; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_risk_cost_target_department
    ADD CONSTRAINT "FK_fa0ebc55789587b6a9c63f8fab3" FOREIGN KEY (assign_id) REFERENCES demo.plan_measure_risk_assign(id) ON DELETE CASCADE;


--
-- Name: plan_measure_task_price FK_fa5e07243775278f5aee632fa91; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_task_price
    ADD CONSTRAINT "FK_fa5e07243775278f5aee632fa91" FOREIGN KEY (task_id) REFERENCES demo.plan_measure_task(id) ON DELETE CASCADE;


--
-- Name: plan_measure_plans_plan FK_fb9445b64560eaf6ace2906c5e0; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.plan_measure_plans_plan
    ADD CONSTRAINT "FK_fb9445b64560eaf6ace2906c5e0" FOREIGN KEY (plan_id) REFERENCES demo.plan(id);


--
-- Name: system_measure_implementation_tasks_measure_implementation_task FK_fe4e7122cdaf426c33e111f11f6; Type: FK CONSTRAINT; Schema: demo; Owner: XXXuser
--

ALTER TABLE ONLY demo.system_measure_implementation_tasks_measure_implementation_task
    ADD CONSTRAINT "FK_fe4e7122cdaf426c33e111f11f6" FOREIGN KEY (measure_implementation_task_id) REFERENCES demo.measure_implementation_task(id);


--
-- PostgreSQL database dump complete
--

