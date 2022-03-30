import { ApprovalCategorySlug } from '../approvalCategory/approvalCategory.entity';
type ApprovalFlowKindType = 'everyone' | 'atLeastOne';

export type FlowStep = {
  name: string;
  categorySlug: ApprovalCategorySlug;
  type: ApprovalFlowKindType; //種別
  approverType: //承認区分
  'departments' | 'departmentsAndAnySuperior' | 'departmentsAndRecentSuperior';
  approvalDepartmentIds?: Array<number>;
  approvalPositionIds?: Array<number>;
  approvalUserDepartmentIds?: Array<number>;
  isEditableFlow: boolean;
  isRequesterIncluded: boolean;
  isSkippableFlow: boolean;
};

export type FlowPattern = {
  id: number;
  name: string;
  steps: Array<FlowStep>;
};

export const flowPattern: Array<FlowPattern> = [
  {
    id: 1,
    name: '承認経路サンプル',
    steps: [
      {
        name: '所属組織',
        categorySlug: 'plan',
        type: 'atLeastOne',
        approverType: 'departmentsAndRecentSuperior',
        isEditableFlow: false,
        isRequesterIncluded: false,
        isSkippableFlow: false,
      },
      {
        name: '経営担当',
        categorySlug: 'plan',
        type: 'everyone',
        approverType: 'departments',
        approvalDepartmentIds: [2],
        approvalPositionIds: [6, 8], // 部長, 課長
        isEditableFlow: false,
        isRequesterIncluded: false,
        isSkippableFlow: false,
      },
      {
        name: '管理担当',
        categorySlug: 'plan',
        type: 'atLeastOne',
        approverType: 'departmentsAndAnySuperior',
        isEditableFlow: false,
        isRequesterIncluded: false,
        isSkippableFlow: false,
      },
      {
        name: '決裁者',
        categorySlug: 'plan',
        type: 'atLeastOne',
        approvalUserDepartmentIds: [2, 3, 4],
        approverType: 'departments',
        isEditableFlow: false,
        isRequesterIncluded: false,
        isSkippableFlow: false,
      },
    ],
  },
];
