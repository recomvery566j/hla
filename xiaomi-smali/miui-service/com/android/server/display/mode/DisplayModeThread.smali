# classes.dex

.class public final Lcom/android/server/display/mode/DisplayModeThread;
.super Lcom/android/server/ServiceThread;
.source "DisplayModeThread.java"


# static fields
.field private static sHandler:Landroid/os/Handler;

.field private static sInstance:Lcom/android/server/display/mode/DisplayModeThread;


# direct methods
.method private constructor <init>()V
    .registers 4

    .line 34
    const/4 v0, -0x3

    const/4 v1, 0x0

    const-string v2, "DisplayModeThread"

    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 35
    return-void
.end method

.method public static dispose()V
    .registers 5

    .line 62
    const-class v0, Lcom/android/server/display/mode/DisplayModeThread;

    monitor-enter v0

    .line 63
    :try_start_3
    sget-object v1, Lcom/android/server/display/mode/DisplayModeThread;->sInstance:Lcom/android/server/display/mode/DisplayModeThread;

    if-nez v1, :cond_9

    .line 64
    monitor-exit v0

    return-void

    .line 66
    :cond_9
    invoke-static {}, Lcom/android/server/display/mode/DisplayModeThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/display/mode/DisplayModeThread$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/server/display/mode/DisplayModeThread$$ExternalSyntheticLambda0;-><init>()V

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    .line 67
    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/display/mode/DisplayModeThread;->sInstance:Lcom/android/server/display/mode/DisplayModeThread;

    .line 68
    monitor-exit v0

    .line 69
    return-void

    .line 68
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method private static ensureThreadLocked()V
    .registers 3

    .line 37
    sget-object v0, Lcom/android/server/display/mode/DisplayModeThread;->sInstance:Lcom/android/server/display/mode/DisplayModeThread;

    if-nez v0, :cond_28

    .line 38
    new-instance v0, Lcom/android/server/display/mode/DisplayModeThread;

    invoke-direct {v0}, Lcom/android/server/display/mode/DisplayModeThread;-><init>()V

    sput-object v0, Lcom/android/server/display/mode/DisplayModeThread;->sInstance:Lcom/android/server/display/mode/DisplayModeThread;

    .line 39
    sget-object v0, Lcom/android/server/display/mode/DisplayModeThread;->sInstance:Lcom/android/server/display/mode/DisplayModeThread;

    invoke-virtual {v0}, Lcom/android/server/display/mode/DisplayModeThread;->start()V

    .line 40
    sget-object v0, Lcom/android/server/display/mode/DisplayModeThread;->sInstance:Lcom/android/server/display/mode/DisplayModeThread;

    invoke-virtual {v0}, Lcom/android/server/display/mode/DisplayModeThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const-wide/32 v1, 0x80000

    invoke-virtual {v0, v1, v2}, Landroid/os/Looper;->setTraceTag(J)V

    .line 41
    sget-object v0, Lcom/android/server/display/mode/DisplayModeThread;->sInstance:Lcom/android/server/display/mode/DisplayModeThread;

    invoke-virtual {v0}, Lcom/android/server/display/mode/DisplayModeThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/display/mode/DisplayModeThread;->makeSharedHandler(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/mode/DisplayModeThread;->sHandler:Landroid/os/Handler;

    .line 43
    :cond_28
    return-void
.end method

.method public static get()Lcom/android/server/display/mode/DisplayModeThread;
    .registers 2

    .line 45
    const-class v0, Lcom/android/server/display/mode/DisplayModeThread;

    monitor-enter v0

    .line 46
    :try_start_3
    invoke-static {}, Lcom/android/server/display/mode/DisplayModeThread;->ensureThreadLocked()V

    .line 47
    sget-object v1, Lcom/android/server/display/mode/DisplayModeThread;->sInstance:Lcom/android/server/display/mode/DisplayModeThread;

    monitor-exit v0

    return-object v1

    .line 48
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public static getHandler()Landroid/os/Handler;
    .registers 2

    .line 51
    const-class v0, Lcom/android/server/display/mode/DisplayModeThread;

    monitor-enter v0

    .line 52
    :try_start_3
    invoke-static {}, Lcom/android/server/display/mode/DisplayModeThread;->ensureThreadLocked()V

    .line 53
    sget-object v1, Lcom/android/server/display/mode/DisplayModeThread;->sHandler:Landroid/os/Handler;

    monitor-exit v0

    return-object v1

    .line 54
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method static synthetic lambda$dispose$0()V
    .registers 1

    .line 66
    sget-object v0, Lcom/android/server/display/mode/DisplayModeThread;->sInstance:Lcom/android/server/display/mode/DisplayModeThread;

    invoke-virtual {v0}, Lcom/android/server/display/mode/DisplayModeThread;->quit()Z

    return-void
.end method
