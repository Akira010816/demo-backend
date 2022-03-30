import { User } from './user.entity';

type PasswordOmitUser = Omit<User, 'password'>;
type LoginResponse = {
  accessToken: string;
  userId: number | undefined;
  departmentId: number | undefined;
  userDepartmentId: number | undefined;
  positionWeight: number | undefined;
};
