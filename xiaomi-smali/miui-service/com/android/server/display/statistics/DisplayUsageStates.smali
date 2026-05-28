# classes.dex

.class public Lcom/android/server/display/statistics/DisplayUsageStates;
.super Ljava/lang/Object;
.source "DisplayUsageStates.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/statistics/DisplayUsageStates$DisplayUsageStatesHandler;
    }
.end annotation


# static fields
.field private static final ENABLE_USAGE_STATES:Z

.field private static final IS_FLIP:Z

.field private static final IS_FOLD:Z

.field private static final IS_TABLET:Z

.field private static final MSG_FLOD_CHANGED:I = 0x1

.field private static final MSG_ROTATION_CHANGED:I = 0x0

.field private static final MSG_SCREEN_OFF:I = 0x3

.field private static final MSG_SCREEN_ON:I = 0x2

.field private static final TAG:Ljava/lang/String; = "DisplayUsageStates"

.field private static final USER_ID:I

.field private static volatile sInstance:Lcom/android/server/display/statistics/DisplayUsageStates;


# instance fields
.field private initialized:Z

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIsScreenOn:Z

.field private mLastRotation:I

.field private mScreenStateReceiver:Landroid/content/BroadcastReceiver;

.field private mThread:Landroid/os/HandlerThread;

.field private mThreadInit:Z

.field private mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;


# direct methods
.method public static synthetic $r8$lambda$WNV8DEdLS_tNYbe9mP3X7vcKItE(Lcom/android/server/display/statistics/DisplayUsageStates;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/statistics/DisplayUsageStates;->reportFoldEvent(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$viEV5FqsjaQmNtf3IXvoHkqwDEM(Lcom/android/server/display/statistics/DisplayUsageStates;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/statistics/DisplayUsageStates;->initListeners()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmThreadInit(Lcom/android/server/display/statistics/DisplayUsageStates;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/display/statistics/DisplayUsageStates;->mThreadInit:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$mhandleFoldEvent(Lcom/android/server/display/statistics/DisplayUsageStates;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/statistics/DisplayUsageStates;->handleFoldEvent(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleRotationEvent(Lcom/android/server/display/statistics/DisplayUsageStates;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/statistics/DisplayUsageStates;->handleRotationEvent(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleScreenStateEvent(Lcom/android/server/display/statistics/DisplayUsageStates;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/statistics/DisplayUsageStates;->handleScreenStateEvent(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreportScreenOffEvent(Lcom/android/server/display/statistics/DisplayUsageStates;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/statistics/DisplayUsageStates;->reportScreenOffEvent()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreportScreenOnEvent(Lcom/android/server/display/statistics/DisplayUsageStates;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/statistics/DisplayUsageStates;->reportScreenOnEvent()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 37
    invoke-static {}, Lmiui/util/MiuiMultiDisplayTypeInfo;->isTableDevice()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/statistics/DisplayUsageStates;->IS_TABLET:Z

    .line 38
    invoke-static {}, Lmiui/util/MiuiMultiDisplayTypeInfo;->isFoldDevice()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/statistics/DisplayUsageStates;->IS_FOLD:Z

    .line 39
    invoke-static {}, Lmiui/util/MiuiMultiDisplayTypeInfo;->isFlipDevice()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/statistics/DisplayUsageStates;->IS_FLIP:Z

    .line 40
    sget-boolean v0, Lcom/android/server/display/statistics/DisplayUsageStates;->IS_FOLD:Z

    if-nez v0, :cond_21

    sget-boolean v0, Lcom/android/server/display/statistics/DisplayUsageStates;->IS_TABLET:Z

    if-nez v0, :cond_21

    sget-boolean v0, Lcom/android/server/display/statistics/DisplayUsageStates;->IS_FLIP:Z

    if-eqz v0, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 v0, 0x0

    goto :goto_22

    :cond_21
    :goto_21
    const/4 v0, 0x1

    :goto_22
    sput-boolean v0, Lcom/android/server/display/statistics/DisplayUsageStates;->ENABLE_USAGE_STATES:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/statistics/DisplayUsageStates;->mLastRotation:I

    .line 47
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/display/statistics/DisplayUsageStates;->mIsScreenOn:Z

    .line 48
    iput-boolean v0, p0, Lcom/android/server/display/statistics/DisplayUsageStates;->initialized:Z

    .line 49
    iput-boolean v0, p0, Lcom/android/server/display/statistics/DisplayUsageStates;->mThreadInit:Z

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ENABLE_USAGE_STATES: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/display/statistics/DisplayUsageStates;->ENABLE_USAGE_STATES:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayUsageStates"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    return-void
.end method

.method public static getInstance()Lcom/android/server/display/statistics/DisplayUsageStates;
    .registers 2

    .line 123
    sget-object v0, Lcom/android/server/display/statistics/DisplayUsageStates;->sInstance:Lcom/android/server/display/statistics/DisplayUsageStates;

    if-nez v0, :cond_17

    .line 124
    const-class v0, Lcom/android/server/display/statistics/DisplayUsageStates;

    monitor-enter v0

    .line 125
    :try_start_7
    sget-object v1, Lcom/android/server/display/statistics/DisplayUsageStates;->sInstance:Lcom/android/server/display/statistics/DisplayUsageStates;

    if-nez v1, :cond_12

    .line 126
    new-instance v1, Lcom/android/server/display/statistics/DisplayUsageStates;

    invoke-direct {v1}, Lcom/android/server/display/statistics/DisplayUsageStates;-><init>()V

    sput-object v1, Lcom/android/server/display/statistics/DisplayUsageStates;->sInstance:Lcom/android/server/display/statistics/DisplayUsageStates;

    .line 128
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 130
    :cond_17
    :goto_17
    sget-object v0, Lcom/android/server/display/statistics/DisplayUsageStates;->sInstance:Lcom/android/server/display/statistics/DisplayUsageStates;

    return-object v0
.end method

.method private handleFoldEvent(Z)V
    .registers 6
    .param p1, "isFold"  # Z

    .line 180
    iget-object v0, p0, Lcom/android/server/display/statistics/DisplayUsageStates;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    iget-object v1, p0, Lcom/android/server/display/statistics/DisplayUsageStates;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    if-eqz p1, :cond_d

    const/16 v2, 0x2a

    goto :goto_f

    :cond_d
    const/16 v2, 0x2b

    :goto_f
    const-string v3, "android.display"

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/usage/UsageStatsManagerInternal;->reportEvent(Ljava/lang/String;II)V

    .line 181
    return-void
.end method

.method private handleRotationEvent(I)V
    .registers 6
    .param p1, "rotation"  # I

    .line 159
    iput p1, p0, Lcom/android/server/display/statistics/DisplayUsageStates;->mLastRotation:I

    .line 160
    iget-boolean v0, p0, Lcom/android/server/display/statistics/DisplayUsageStates;->mIsScreenOn:Z

    if-nez v0, :cond_7

    .line 162
    return-void

    .line 164
    :cond_7
    const-string v0, "android.display"

    packed-switch p1, :pswitch_data_46

    goto :goto_45

    .line 175
    :pswitch_d  #0x3
    iget-object v1, p0, Lcom/android/server/display/statistics/DisplayUsageStates;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    iget-object v2, p0, Lcom/android/server/display/statistics/DisplayUsageStates;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    const/16 v3, 0x29

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/usage/UsageStatsManagerInternal;->reportEvent(Ljava/lang/String;II)V

    goto :goto_45

    .line 172
    :pswitch_1b  #0x2
    iget-object v1, p0, Lcom/android/server/display/statistics/DisplayUsageStates;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    iget-object v2, p0, Lcom/android/server/display/statistics/DisplayUsageStates;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    const/16 v3, 0x28

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/usage/UsageStatsManagerInternal;->reportEvent(Ljava/lang/String;II)V

    .line 173
    goto :goto_45

    .line 169
    :pswitch_29  #0x1
    iget-object v1, p0, Lcom/android/server/display/statistics/DisplayUsageStates;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    iget-object v2, p0, Lcom/android/server/display/statistics/DisplayUsageStates;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    const/16 v3, 0x27

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/usage/UsageStatsManagerInternal;->reportEvent(Ljava/lang/String;II)V

    .line 170
    goto :goto_45

    .line 166
    :pswitch_37  #0x0
    iget-object v1, p0, Lcom/android/server/display/statistics/DisplayUsageStates;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    iget-object v2, p0, Lcom/android/server/display/statistics/DisplayUsageStates;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    const/16 v3, 0x26

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/usage/UsageStatsManagerInternal;->reportEvent(Ljava/lang/String;II)V

    .line 167
    nop

    .line 178
    :goto_45
    return-void

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_37  #00000000
        :pswitch_29  #00000001
        :pswitch_1b  #00000002
        :pswitch_d  #00000003
    .end packed-switch
.end method

.method private handleScreenStateEvent(I)V
    .registers 3
    .param p1, "screenStateEvent"  # I

    .line 183
    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    const/4 v0, 0x1

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    iput-boolean v0, p0, Lcom/android/server/display/statistics/DisplayUsageStates;->mIsScreenOn:Z

    .line 184
    iget-boolean v0, p0, Lcom/android/server/display/statistics/DisplayUsageStates;->mIsScreenOn:Z

    if-eqz v0, :cond_11

    .line 185
    iget v0, p0, Lcom/android/server/display/statistics/DisplayUsageStates;->mLastRotation:I

    invoke-direct {p0, v0}, Lcom/android/server/display/statistics/DisplayUsageStates;->handleRotationEvent(I)V

    .line 187
    :cond_11
    return-void
.end method

.method private initData()V
    .registers 5

    .line 74
    iget-object v0, p0, Lcom/android/server/display/statistics/DisplayUsageStates;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    iget-object v1, p0, Lcom/android/server/display/statistics/DisplayUsageStates;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    const/16 v2, 0x26

    const-string v3, "android.display"

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/usage/UsageStatsManagerInternal;->reportEvent(Ljava/lang/String;II)V

    .line 75
    return-void
.end method

.method private initListeners()V
    .registers 7

    .line 77
    iget-object v0, p0, Lcom/android/server/display/statistics/DisplayUsageStates;->mContext:Landroid/content/Context;

    const-string v1, "DisplayUsageStates"

    if-nez v0, :cond_d

    .line 78
    const-string/jumbo v0, "initListeners: mContext = null"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    return-void

    .line 82
    :cond_d
    sget-boolean v0, Lcom/android/server/display/statistics/DisplayUsageStates;->IS_FOLD:Z

    if-nez v0, :cond_15

    sget-boolean v0, Lcom/android/server/display/statistics/DisplayUsageStates;->IS_FLIP:Z

    if-eqz v0, :cond_3e

    .line 83
    :cond_15
    iget-object v0, p0, Lcom/android/server/display/statistics/DisplayUsageStates;->mContext:Landroid/content/Context;

    const-class v2, Landroid/hardware/devicestate/DeviceStateManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/devicestate/DeviceStateManager;

    .line 84
    .local v0, "deviceStateManager":Landroid/hardware/devicestate/DeviceStateManager;
    if-eqz v0, :cond_38

    .line 85
    new-instance v2, Landroid/os/HandlerExecutor;

    iget-object v3, p0, Lcom/android/server/display/statistics/DisplayUsageStates;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, v3}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    new-instance v3, Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;

    iget-object v4, p0, Lcom/android/server/display/statistics/DisplayUsageStates;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/server/display/statistics/DisplayUsageStates$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lcom/android/server/display/statistics/DisplayUsageStates$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/statistics/DisplayUsageStates;)V

    invoke-direct {v3, v4, v5}, Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;-><init>(Landroid/content/Context;Ljava/util/function/Consumer;)V

    invoke-virtual {v0, v2, v3}, Landroid/hardware/devicestate/DeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    goto :goto_3e

    .line 88
    :cond_38
    const-string/jumbo v2, "initListeners: deviceStateManager = null"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .end local v0  # "deviceStateManager":Landroid/hardware/devicestate/DeviceStateManager;
    :cond_3e
    :goto_3e
    new-instance v0, Lcom/android/server/display/statistics/DisplayUsageStates$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/statistics/DisplayUsageStates$1;-><init>(Lcom/android/server/display/statistics/DisplayUsageStates;)V

    iput-object v0, p0, Lcom/android/server/display/statistics/DisplayUsageStates;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    .line 108
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 109
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 110
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    :try_start_54
    iget-object v2, p0, Lcom/android/server/display/statistics/DisplayUsageStates;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/display/statistics/DisplayUsageStates;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_5b} :catch_60

    .line 119
    nop

    .line 120
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/display/statistics/DisplayUsageStates;->mThreadInit:Z

    .line 121
    return-void

    .line 116
    :catch_60
    move-exception v2

    .line 117
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "initListeners failed, e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    return-void
.end method

.method private reportFoldEvent(Z)V
    .registers 5
    .param p1, "isFold"  # Z

    .line 141
    iget-object v0, p0, Lcom/android/server/display/statistics/DisplayUsageStates;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 142
    iget-object v0, p0, Lcom/android/server/display/statistics/DisplayUsageStates;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 143
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/display/statistics/DisplayUsageStates;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 144
    return-void
.end method

.method private reportScreenOffEvent()V
    .registers 3

    .line 150
    iget-object v0, p0, Lcom/android/server/display/statistics/DisplayUsageStates;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 151
    iget-object v0, p0, Lcom/android/server/display/statistics/DisplayUsageStates;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 152
    return-void
.end method

.method private reportScreenOnEvent()V
    .registers 3

    .line 146
    iget-object v0, p0, Lcom/android/server/display/statistics/DisplayUsageStates;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 147
    iget-object v0, p0, Lcom/android/server/display/statistics/DisplayUsageStates;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 148
    return-void
.end method


# virtual methods
.method public init()V
    .registers 3

    .line 54
    sget-boolean v0, Lcom/android/server/display/statistics/DisplayUsageStates;->ENABLE_USAGE_STATES:Z

    if-nez v0, :cond_5

    .line 55
    return-void

    .line 57
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/display/statistics/DisplayUsageStates;->initialized:Z

    if-eqz v0, :cond_a

    .line 58
    return-void

    .line 60
    :cond_a
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/statistics/DisplayUsageStates;->mContext:Landroid/content/Context;

    .line 61
    iget-object v0, p0, Lcom/android/server/display/statistics/DisplayUsageStates;->mContext:Landroid/content/Context;

    if-nez v0, :cond_21

    .line 62
    const-string v0, "DisplayUsageStates"

    const-string/jumbo v1, "init DisplayUsageStates mContext = null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    return-void

    .line 65
    :cond_21
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    iput-object v0, p0, Lcom/android/server/display/statistics/DisplayUsageStates;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    .line 66
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DisplayUsageStatesThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/display/statistics/DisplayUsageStates;->mThread:Landroid/os/HandlerThread;

    .line 67
    iget-object v0, p0, Lcom/android/server/display/statistics/DisplayUsageStates;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 68
    new-instance v0, Lcom/android/server/display/statistics/DisplayUsageStates$DisplayUsageStatesHandler;

    iget-object v1, p0, Lcom/android/server/display/statistics/DisplayUsageStates;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/statistics/DisplayUsageStates$DisplayUsageStatesHandler;-><init>(Lcom/android/server/display/statistics/DisplayUsageStates;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/display/statistics/DisplayUsageStates;->mHandler:Landroid/os/Handler;

    .line 69
    iget-object v0, p0, Lcom/android/server/display/statistics/DisplayUsageStates;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/statistics/DisplayUsageStates$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/display/statistics/DisplayUsageStates$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/statistics/DisplayUsageStates;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 70
    invoke-direct {p0}, Lcom/android/server/display/statistics/DisplayUsageStates;->initData()V

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/statistics/DisplayUsageStates;->initialized:Z

    .line 72
    return-void
.end method

.method public reportRotationEvent(I)V
    .registers 5
    .param p1, "rotation"  # I

    .line 133
    sget-boolean v0, Lcom/android/server/display/statistics/DisplayUsageStates;->ENABLE_USAGE_STATES:Z

    if-nez v0, :cond_5

    .line 134
    return-void

    .line 136
    :cond_5
    iget-object v0, p0, Lcom/android/server/display/statistics/DisplayUsageStates;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 137
    iget-object v0, p0, Lcom/android/server/display/statistics/DisplayUsageStates;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 138
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/display/statistics/DisplayUsageStates;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 139
    return-void
.end method
