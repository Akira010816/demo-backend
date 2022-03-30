export const jwtConstants = {
  secret: process.env.JWT_SECRET || 'please set JWT_SECRET',
  expiration: process.env.JWT_EXPIRATION || '24h',
};
