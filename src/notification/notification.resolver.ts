import { Args, Mutation, Query, Resolver } from '@nestjs/graphql';
import { Notification } from '../notification/notification.entity';
import { UseGuards } from '@nestjs/common';
import { GqlAuthGuard } from '../auth/graphql-auth.guard';
import { CurrentUser } from '../shared/decorators/decorators';
import { JWTPayload } from '../auth/jwt.strategy';
import { NotificationService } from './notification.service';
import { SeeNotificationInput } from './notification.input';
import { UnreadCountOutput } from './notification.output';

@Resolver()
export class NotificationResolver {
  constructor(private readonly notificationService: NotificationService) {
    this.notificationService = notificationService;
  }

  @Query(() => [Notification])
  @UseGuards(GqlAuthGuard)
  async findNotificationsToMe(@CurrentUser() user: JWTPayload) {
    return await this.notificationService.findNotificationsToMe(user);
  }

  @Query(() => UnreadCountOutput)
  @UseGuards(GqlAuthGuard)
  async findUnreadNotificationNumber(@CurrentUser() user: JWTPayload) {
    const unreadCount = await this.notificationService.findUnreadNotificationNumber(
      user,
    );
    console.log('unreadCount', unreadCount);
    return { unreadCount: unreadCount };
  }

  @Mutation(() => Notification)
  @UseGuards(GqlAuthGuard)
  async seeNotification(
    @Args('seeNotificationInput')
    seeNotificationInput: SeeNotificationInput,
  ) {
    return await this.notificationService.see(seeNotificationInput);
  }
}
