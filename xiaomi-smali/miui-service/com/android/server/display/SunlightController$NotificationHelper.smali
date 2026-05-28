# classes.dex

.class final Lcom/android/server/display/SunlightController$NotificationHelper;
.super Ljava/lang/Object;
.source "SunlightController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/SunlightController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NotificationHelper"
.end annotation


# static fields
.field private static final AUTO_BRIGHTNESS_ACTION:Ljava/lang/String; = "com.android.settings/com.android.settings.display.BrightnessActivity"

.field private static final DEFAULT_NOTIFICATION_LIMIT:I = 0x2

.field private static final KEY_NOTIFICATION_LAST_SHOW_TIME:Ljava/lang/String; = "last_show_time"

.field private static final KEY_NOTIFICATION_LIMIT:Ljava/lang/String; = "shown_times"

.field private static final MINI_INTERVAL_NOTIFICATION:I = 0x36ee80

.field private static final NOTIFICATION_ID:I = 0x3e8

.field private static final NOTIFICATION_TAG:Ljava/lang/String; = "SUNLIGHT_NOTIFY"

.field private static final PREFS_SUNLIGHT_FILE:Ljava/lang/String; = "sunlight_notification.xml"


# instance fields
.field private mHasReachedLimitTimes:Z

.field private mLastShowNotificationTime:J

.field private mNotification:Landroid/app/Notification;

.field private mNotificationLimitTimesPrefs:Landroid/content/SharedPreferences;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field final synthetic this$0:Lcom/android/server/display/SunlightController;


# direct methods
.method static bridge synthetic -$$Nest$fgetmHasReachedLimitTimes(Lcom/android/server/display/SunlightController$NotificationHelper;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/display/SunlightController$NotificationHelper;->mHasReachedLimitTimes:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$mdump(Lcom/android/server/display/SunlightController$NotificationHelper;Ljava/io/PrintWriter;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/SunlightController$NotificationHelper;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowNotificationIfNecessary(Lcom/android/server/display/SunlightController$NotificationHelper;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/SunlightController$NotificationHelper;->showNotificationIfNecessary()Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/display/SunlightController;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 581
    iput-object p1, p0, Lcom/android/server/display/SunlightController$NotificationHelper;->this$0:Lcom/android/server/display/SunlightController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 582
    invoke-static {p1}, Lcom/android/server/display/SunlightController;->-$$Nest$fgetmContext(Lcom/android/server/display/SunlightController;)Landroid/content/Context;

    move-result-object v0

    .line 583
    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/server/display/SunlightController$NotificationHelper;->mNotificationManager:Landroid/app/NotificationManager;

    .line 584
    invoke-static {p1}, Lcom/android/server/display/SunlightController;->-$$Nest$fgetmContext(Lcom/android/server/display/SunlightController;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    .line 586
    invoke-direct {p0}, Lcom/android/server/display/SunlightController$NotificationHelper;->getSystemDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "sunlight_notification.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 585
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/io/File;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/SunlightController$NotificationHelper;->mNotificationLimitTimesPrefs:Landroid/content/SharedPreferences;

    .line 587
    iget-object p1, p0, Lcom/android/server/display/SunlightController$NotificationHelper;->mNotificationLimitTimesPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v0, "last_show_time"

    const-wide/16 v1, 0x0

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/SunlightController$NotificationHelper;->mLastShowNotificationTime:J

    .line 588
    return-void
.end method

.method private buildNotification()V
    .registers 7

    .line 652
    invoke-direct {p0}, Lcom/android/server/display/SunlightController$NotificationHelper;->getBrightnessActivityIntent()Landroid/content/Intent;

    move-result-object v0

    .line 653
    .local v0, "intent":Landroid/content/Intent;
    if-nez v0, :cond_e

    .line 654
    const-string v1, "SunlightController"

    const-string v2, "Build notification failed."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    return-void

    .line 657
    :cond_e
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 658
    .local v1, "arg":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/android/server/display/SunlightController$NotificationHelper;->this$0:Lcom/android/server/display/SunlightController;

    invoke-static {v2}, Lcom/android/server/display/SunlightController;->-$$Nest$fgetmContext(Lcom/android/server/display/SunlightController;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x110803bd

    invoke-static {v2, v3}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v2

    const-string/jumbo v3, "miui.appIcon"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 660
    iget-object v2, p0, Lcom/android/server/display/SunlightController$NotificationHelper;->this$0:Lcom/android/server/display/SunlightController;

    invoke-static {v2}, Lcom/android/server/display/SunlightController;->-$$Nest$fgetmContext(Lcom/android/server/display/SunlightController;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/high16 v4, 0x14000000

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 662
    .local v2, "pendingIntent":Landroid/app/PendingIntent;
    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/android/server/display/SunlightController$NotificationHelper;->this$0:Lcom/android/server/display/SunlightController;

    invoke-static {v4}, Lcom/android/server/display/SunlightController;->-$$Nest$fgetmContext(Lcom/android/server/display/SunlightController;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "ALERTS"

    invoke-direct {v3, v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 663
    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 664
    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/display/SunlightController$NotificationHelper;->this$0:Lcom/android/server/display/SunlightController;

    invoke-static {v4}, Lcom/android/server/display/SunlightController;->-$$Nest$fgetmContext(Lcom/android/server/display/SunlightController;)Landroid/content/Context;

    move-result-object v4

    .line 665
    const v5, 0x110f03aa

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/display/SunlightController$NotificationHelper;->this$0:Lcom/android/server/display/SunlightController;

    invoke-static {v4}, Lcom/android/server/display/SunlightController;->-$$Nest$fgetmContext(Lcom/android/server/display/SunlightController;)Landroid/content/Context;

    move-result-object v4

    .line 666
    const v5, 0x110f03a9

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 667
    const v4, 0x10809de

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 668
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 669
    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/display/SunlightController$NotificationHelper;->mNotification:Landroid/app/Notification;

    .line 670
    return-void
.end method

.method private constrainedByInterval()Z
    .registers 9

    .line 619
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 620
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/server/display/SunlightController$NotificationHelper;->mLastShowNotificationTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    if-nez v2, :cond_e

    .line 621
    return v3

    .line 623
    :cond_e
    iget-wide v4, p0, Lcom/android/server/display/SunlightController$NotificationHelper;->mLastShowNotificationTime:J

    sub-long v4, v0, v4

    .line 624
    .local v4, "interval":J
    invoke-static {}, Lcom/android/server/display/SunlightController;->-$$Nest$sfgetDEBUG()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 625
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "constrainedByInterval, interval="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "SunlightController"

    invoke-static {v6, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    :cond_30
    const-wide/32 v6, 0x36ee80

    cmp-long v2, v4, v6

    if-gtz v2, :cond_38

    const/4 v3, 0x1

    :cond_38
    return v3
.end method

.method private dump(Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 689
    const-string v0, "  Sunlight Controller Noticationcation Helper:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 690
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mHasReachedLimitTimes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/SunlightController$NotificationHelper;->mHasReachedLimitTimes:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 691
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mLastShowNotificationTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/display/SunlightController$NotificationHelper;->mLastShowNotificationTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 692
    return-void
.end method

.method private getBrightnessActivityIntent()Landroid/content/Intent;
    .registers 4

    .line 673
    const-string v0, "com.android.settings/com.android.settings.display.BrightnessActivity"

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 674
    .local v0, "component":Landroid/content/ComponentName;
    if-nez v0, :cond_a

    .line 675
    const/4 v1, 0x0

    return-object v1

    .line 678
    :cond_a
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 679
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 680
    const/high16 v2, 0x14000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 681
    return-object v1
.end method

.method private getSystemDir()Ljava/io/File;
    .registers 4

    .line 685
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private hasReachedLimitTimes()Z
    .registers 4

    .line 631
    iget-object v0, p0, Lcom/android/server/display/SunlightController$NotificationHelper;->mNotificationLimitTimesPrefs:Landroid/content/SharedPreferences;

    const/4 v1, 0x2

    const-string/jumbo v2, "shown_times"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 633
    .local v0, "times":I
    if-lez v0, :cond_1f

    .line 634
    iget-object v1, p0, Lcom/android/server/display/SunlightController$NotificationHelper;->mNotificationLimitTimesPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    add-int/lit8 v0, v0, -0x1

    .line 635
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 636
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 637
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/display/SunlightController$NotificationHelper;->mHasReachedLimitTimes:Z

    .line 638
    return v1

    .line 640
    :cond_1f
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/display/SunlightController$NotificationHelper;->mHasReachedLimitTimes:Z

    .line 641
    return v1
.end method

.method private isNotificationActive()Z
    .registers 8

    .line 605
    iget-object v0, p0, Lcom/android/server/display/SunlightController$NotificationHelper;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 606
    .local v0, "activeNotifications":[Landroid/service/notification/StatusBarNotification;
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_9
    if-ge v3, v1, :cond_26

    aget-object v4, v0, v3

    .line 607
    .local v4, "sbn":Landroid/service/notification/StatusBarNotification;
    const/16 v5, 0x3e8

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v6

    if-ne v5, v6, :cond_23

    const-string v5, "SUNLIGHT_NOTIFY"

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 608
    const/4 v1, 0x1

    return v1

    .line 606
    .end local v4  # "sbn":Landroid/service/notification/StatusBarNotification;
    :cond_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 611
    :cond_26
    return v2
.end method

.method private showNotificationIfNecessary()Z
    .registers 5

    .line 593
    invoke-direct {p0}, Lcom/android/server/display/SunlightController$NotificationHelper;->isNotificationActive()Z

    move-result v0

    if-nez v0, :cond_2a

    invoke-direct {p0}, Lcom/android/server/display/SunlightController$NotificationHelper;->constrainedByInterval()Z

    move-result v0

    if-nez v0, :cond_2a

    invoke-direct {p0}, Lcom/android/server/display/SunlightController$NotificationHelper;->hasReachedLimitTimes()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_2a

    .line 596
    :cond_13
    iget-object v0, p0, Lcom/android/server/display/SunlightController$NotificationHelper;->mNotification:Landroid/app/Notification;

    if-nez v0, :cond_1a

    .line 597
    invoke-direct {p0}, Lcom/android/server/display/SunlightController$NotificationHelper;->buildNotification()V

    .line 599
    :cond_1a
    invoke-direct {p0}, Lcom/android/server/display/SunlightController$NotificationHelper;->updateLastShowTimePrefs()V

    .line 600
    iget-object v0, p0, Lcom/android/server/display/SunlightController$NotificationHelper;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0x3e8

    iget-object v2, p0, Lcom/android/server/display/SunlightController$NotificationHelper;->mNotification:Landroid/app/Notification;

    const-string v3, "SUNLIGHT_NOTIFY"

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 601
    const/4 v0, 0x1

    return v0

    .line 594
    :cond_2a
    :goto_2a
    const/4 v0, 0x0

    return v0
.end method

.method private updateLastShowTimePrefs()V
    .registers 5

    .line 645
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/SunlightController$NotificationHelper;->mLastShowNotificationTime:J

    .line 646
    iget-object v0, p0, Lcom/android/server/display/SunlightController$NotificationHelper;->mNotificationLimitTimesPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/display/SunlightController$NotificationHelper;->mLastShowNotificationTime:J

    .line 647
    const-string/jumbo v3, "last_show_time"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 648
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 649
    return-void
.end method
