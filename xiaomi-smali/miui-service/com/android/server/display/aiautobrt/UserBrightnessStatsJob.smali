# classes.dex

.class public Lcom/android/server/display/aiautobrt/UserBrightnessStatsJob;
.super Landroid/app/job/JobService;
.source "UserBrightnessStatsJob.java"


# static fields
.field private static final DEBUG_INTERVAL:J

.field private static final JOB_ID:I = 0x87d1

.field private static final TAG:Ljava/lang/String; = "CbmController-StatsJob"

.field private static final sDebug:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 25
    const-string v0, "debug.miui.display.JobService.dbg"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_a

    const/4 v1, 0x1

    :cond_a
    sput-boolean v1, Lcom/android/server/display/aiautobrt/UserBrightnessStatsJob;->sDebug:Z

    .line 27
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xf

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/display/aiautobrt/UserBrightnessStatsJob;->DEBUG_INTERVAL:J

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method public static scheduleJob(Landroid/content/Context;)V
    .registers 9
    .param p0, "context"  # Landroid/content/Context;

    .line 30
    const-string v0, "Start schedule job."

    const-string v1, "CbmController-StatsJob"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    const-class v0, Landroid/app/job/JobScheduler;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 32
    .local v0, "jobScheduler":Landroid/app/job/JobScheduler;
    const v2, 0x87d1

    invoke-virtual {v0, v2}, Landroid/app/job/JobScheduler;->getPendingJob(I)Landroid/app/job/JobInfo;

    move-result-object v3

    .line 33
    .local v3, "pending":Landroid/app/job/JobInfo;
    new-instance v4, Landroid/app/job/JobInfo$Builder;

    new-instance v5, Landroid/content/ComponentName;

    const-class v6, Lcom/android/server/display/aiautobrt/UserBrightnessStatsJob;

    invoke-direct {v5, p0, v6}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v4, v2, v5}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 35
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v4

    .line 36
    sget-boolean v5, Lcom/android/server/display/aiautobrt/UserBrightnessStatsJob;->sDebug:Z

    if-eqz v5, :cond_2e

    sget-wide v5, Lcom/android/server/display/aiautobrt/UserBrightnessStatsJob;->DEBUG_INTERVAL:J

    goto :goto_36

    :cond_2e
    sget-object v5, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x18

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    :goto_36
    invoke-virtual {v4, v5, v6}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v4

    .line 37
    invoke-virtual {v4}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v4

    .line 39
    .local v4, "jobInfo":Landroid/app/job/JobInfo;
    if-eqz v3, :cond_50

    invoke-virtual {v3, v4}, Landroid/app/job/JobInfo;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_50

    .line 40
    const-string/jumbo v5, "scheduleJob: cancel."

    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-virtual {v0, v2}, Landroid/app/job/JobScheduler;->cancel(I)V

    .line 42
    const/4 v3, 0x0

    .line 45
    :cond_50
    if-nez v3, :cond_5b

    .line 46
    const-string/jumbo v2, "scheduleJob: schedule."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-virtual {v0, v4}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 50
    :cond_5b
    sget-boolean v2, Lcom/android/server/display/aiautobrt/UserBrightnessStatsJob;->sDebug:Z

    if-eqz v2, :cond_77

    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Schedule job use debug interval, interval: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v5, Lcom/android/server/display/aiautobrt/UserBrightnessStatsJob;->DEBUG_INTERVAL:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_77
    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .registers 4
    .param p1, "params"  # Landroid/app/job/JobParameters;

    .line 57
    const-string v0, "CbmController-StatsJob"

    const-string v1, "Start user manual adjustment stats."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-static {}, Lcom/android/server/display/DisplayManagerServiceStub;->getInstance()Lcom/android/server/display/DisplayManagerServiceStub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/DisplayManagerServiceStub;->startCbmStatsJob()V

    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .registers 4
    .param p1, "params"  # Landroid/app/job/JobParameters;

    .line 64
    const-string v0, "CbmController-StatsJob"

    const-string v1, "Stop job."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const/4 v0, 0x0

    return v0
.end method
