# classes.dex

.class public Lcom/android/server/display/statistics/OneTrackFoldStateHelper;
.super Ljava/lang/Object;
.source "OneTrackFoldStateHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/statistics/OneTrackFoldStateHelper$OneTrackFoldStateHelperHandler;
    }
.end annotation


# static fields
.field private static final APP_FOLDED_UNFOLDED_AVG_TIME:Ljava/lang/String; = "app_folded_unfolded_avg_time"

.field private static final APP_FOLD_SCREEN_AVG_TIME:I = 0x1

.field private static final APP_ID:Ljava/lang/String; = "31000401594"

.field private static final APP_UNFOLD_SCREEN_AVG_TIME:I = 0x0

.field private static final APP_USE_SCREEN_TIME:Ljava/lang/String; = "app_use_screen_time"

.field private static final DEBUG:Z

.field private static final DEBUG_REPORT_TIME_DURATION:J = 0x1d4c0L

.field private static final DEVICE_REGION:Ljava/lang/String;

.field private static final DEVICE_STATE_CLOSE:I = 0x0

.field private static final DEVICE_STATE_DEBOUNCE_TIME:J = 0x3e8L

.field private static final DEVICE_STATE_HALF_OPEN:I = 0x2

.field private static final DEVICE_STATE_INVALID:I = -0x1

.field private static final DEVICE_STATE_OPEN:I = 0x3

.field private static final DEVICE_STATE_OPEN_PRESENTATION:I = 0x5

.field private static final DEVICE_STATE_OPEN_REVERSE:I = 0x4

.field private static final DEVICE_STATE_OPEN_REVERSE_PRESENTATION:I = 0x6

.field private static final DEVICE_STATE_TENT:I = 0x1

.field private static final DEVICE_STATE_TIME:Ljava/lang/String; = "device_state_time"

.field private static final EVENT_NAME:Ljava/lang/String; = "fold_statistic"

.field private static final FLAG_NON_ANONYMOUS:I = 0x2

.field private static final FLAG_NOT_LIMITED_BY_USER_EXPERIENCE_PLAN:I = 0x1

.field private static final FOLDED_AVG_TIME:Ljava/lang/String; = "folded_avg_time"

.field private static final FOLD_TIMES:Ljava/lang/String; = "fold_times"

.field private static final IS_FOLDABLE_OR_FLIP_DEVICE:Z

.field private static final IS_INTERNATIONAL_BUILD:Z

.field private static final MSG_DEVICE_STATE_CHANGED:I = 0x3

.field private static final MSG_DEVICE_STATE_DEBOUNCE:I = 0x4

.field private static final MSG_DISPLAY_SWAP_FINISHED:I = 0x6

.field private static final MSG_INTERACTIVE_CHANGED:I = 0x5

.field private static final MSG_ON_FOCUS_PACKAGE_CHANGED:I = 0x8

.field private static final MSG_ON_FOLD_CHANGED:I = 0x1

.field private static final MSG_ON_FOREGROUND_APP_CHANGED:I = 0x2

.field private static final MSG_RESET_PENDING_DISPLAY_SWAP:I = 0x7

.field private static final ONE_SECOND:F = 1000.0f

.field private static final ONE_TRACK_ACTION:Ljava/lang/String; = "onetrack.action.TRACK_EVENT"

.field private static final ONE_TRACK_PACKAGE_NAME:Ljava/lang/String; = "com.miui.analytics"

.field private static final PACKAGE:Ljava/lang/String; = "android"

.field private static final RECORD_REASON_DEVICE_STATE:I = 0x0

.field private static final RECORD_REASON_FOREGROUND_APP:I = 0x2

.field private static final RECORD_REASON_INTERACTIVE:I = 0x1

.field private static final RECORD_REASON_REPORT_DATA:I = 0x3

.field private static final SCREEN_TYPE_INVALID:I = -0x1

.field private static final SCREEN_TYPE_LARGE:I = 0x0

.field private static final SCREEN_TYPE_SMALL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "OneTrackFoldStateHelper"

.field private static final TIMEOUT_PENDING_DISPLAY_SWAP_MILLIS:J = 0x1388L

.field private static final UNFOLDED_AVG_TIME:Ljava/lang/String; = "unfolded_avg_time"

.field private static volatile sInstance:Lcom/android/server/display/statistics/OneTrackFoldStateHelper;


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private final mAppFoldAvgTimeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mApplicationContext:Landroid/content/Context;

.field private mCurrentDeviceState:I

.field private final mDeviceStateUsageDetail:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private mFocusPackageName:Ljava/lang/String;

.field private mFoldCountSum:I

.field private mFoldTimeSum:F

.field private mFoldTimes:I

.field private mFolded:Z

.field private final mFoldedStateList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mForegroundAppName:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mInteractive:Z

.field private mLastEventReason:I

.field private mLastEventTime:J

.field private mLastFocusPackageName:Ljava/lang/String;

.field private mLastFoldChangeTime:J

.field private final mOnAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private mPendingDeviceState:I

.field private mPendingDeviceStateDebounceTime:J

.field private mPendingWaitForDisplaySwapFinished:Z

.field private mPreInteractive:Z

.field private mPreviousDeviceState:I

.field private mUnfoldCountSum:I

.field private mUnfoldTimeSum:F

.field private final mUnfoldedStateList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mWindowListener:Lmiui/process/IForegroundWindowListener;


# direct methods
.method public static synthetic $r8$lambda$eJi2Z7oXfyqu_SBhIyLyBYhMJZA(Lcom/android/server/display/statistics/OneTrackFoldStateHelper;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$k_cPUxH_NqWdSZpZg9zvLPnycKY(Lcom/android/server/display/statistics/OneTrackFoldStateHelper;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->lambda$new$1()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/display/statistics/OneTrackFoldStateHelper;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mdebounceDeviceState(Lcom/android/server/display/statistics/OneTrackFoldStateHelper;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->debounceDeviceState(J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleDeviceStateChanged(Lcom/android/server/display/statistics/OneTrackFoldStateHelper;IJ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->handleDeviceStateChanged(IJ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleDisplaySwapFinished(Lcom/android/server/display/statistics/OneTrackFoldStateHelper;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->handleDisplaySwapFinished(J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleFocusedWindowChanged(Lcom/android/server/display/statistics/OneTrackFoldStateHelper;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->handleFocusedWindowChanged(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleFoldChanged(Lcom/android/server/display/statistics/OneTrackFoldStateHelper;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->handleFoldChanged(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleInteractiveChanged(Lcom/android/server/display/statistics/OneTrackFoldStateHelper;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->handleInteractiveChanged(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleWindowChanged(Lcom/android/server/display/statistics/OneTrackFoldStateHelper;Lmiui/process/ForegroundInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->handleWindowChanged(Lmiui/process/ForegroundInfo;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->DEBUG:Z

    return v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 38
    nop

    .line 39
    const-string v0, "debug.miui.power.fold.dgb"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_d

    move v0, v2

    goto :goto_e

    :cond_d
    move v0, v1

    :goto_e
    sput-boolean v0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->DEBUG:Z

    .line 60
    invoke-static {}, Lmiui/util/MiuiMultiDisplayTypeInfo;->isFoldDeviceInside()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 61
    invoke-static {}, Lmiui/util/MiuiMultiDisplayTypeInfo;->isFlipDevice()Z

    move-result v0

    if-eqz v0, :cond_1d

    :cond_1c
    move v1, v2

    :cond_1d
    sput-boolean v1, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->IS_FOLDABLE_OR_FLIP_DEVICE:Z

    .line 87
    nop

    .line 88
    const-string/jumbo v0, "ro.product.mod_device"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_global"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->IS_INTERNATIONAL_BUILD:Z

    .line 90
    const-string/jumbo v0, "ro.miui.region"

    const-string v1, "CN"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->DEVICE_REGION:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mDeviceStateUsageDetail:Ljava/util/Map;

    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mAppFoldAvgTimeMap:Ljava/util/Map;

    .line 126
    new-instance v0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/statistics/OneTrackFoldStateHelper$1;-><init>(Lcom/android/server/display/statistics/OneTrackFoldStateHelper;)V

    iput-object v0, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mFoldedStateList:Ljava/util/List;

    .line 135
    new-instance v0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper$2;

    invoke-direct {v0, p0}, Lcom/android/server/display/statistics/OneTrackFoldStateHelper$2;-><init>(Lcom/android/server/display/statistics/OneTrackFoldStateHelper;)V

    iput-object v0, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mUnfoldedStateList:Ljava/util/List;

    .line 143
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mFoldTimes:I

    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mInteractive:Z

    .line 154
    iput-boolean v0, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mPreInteractive:Z

    .line 155
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mCurrentDeviceState:I

    .line 156
    iput v0, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mPreviousDeviceState:I

    .line 157
    iput v0, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mPendingDeviceState:I

    .line 160
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mPendingDeviceStateDebounceTime:J

    .line 212
    new-instance v0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/display/statistics/OneTrackFoldStateHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/statistics/OneTrackFoldStateHelper;)V

    iput-object v0, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mOnAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 232
    new-instance v0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper$3;

    invoke-direct {v0, p0}, Lcom/android/server/display/statistics/OneTrackFoldStateHelper$3;-><init>(Lcom/android/server/display/statistics/OneTrackFoldStateHelper;)V

    iput-object v0, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mWindowListener:Lmiui/process/IForegroundWindowListener;

    .line 170
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mApplicationContext:Landroid/content/Context;

    .line 171
    new-instance v0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper$OneTrackFoldStateHelperHandler;

    invoke-static {}, Lcom/android/server/MiuiBgThread;->get()Lcom/android/server/MiuiBgThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/MiuiBgThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/statistics/OneTrackFoldStateHelper$OneTrackFoldStateHelperHandler;-><init>(Lcom/android/server/display/statistics/OneTrackFoldStateHelper;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mHandler:Landroid/os/Handler;

    .line 172
    iget-object v0, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mApplicationContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mActivityManager:Landroid/app/ActivityManager;

    .line 174
    iget-object v0, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mApplicationContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mAlarmManager:Landroid/app/AlarmManager;

    .line 176
    sget-boolean v0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->IS_FOLDABLE_OR_FLIP_DEVICE:Z

    if-eqz v0, :cond_7f

    .line 177
    iget-object v0, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/statistics/OneTrackFoldStateHelper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/display/statistics/OneTrackFoldStateHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/statistics/OneTrackFoldStateHelper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 182
    :cond_7f
    return-void
.end method

.method private addAppFoldInfoToIntent(Landroid/content/Intent;)V
    .registers 15
    .param p1, "intent"  # Landroid/content/Intent;

    .line 354
    iget-object v0, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mAppFoldAvgTimeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8b

    .line 356
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 357
    .local v0, "appFoldAvgTimeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Float;>;>;"
    iget-object v1, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mAppFoldAvgTimeMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_82

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 358
    .local v2, "appName":Ljava/lang/String;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 360
    .local v3, "tempMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Float;>;"
    iget-object v4, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mAppFoldAvgTimeMap:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_38
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 361
    .local v5, "foldEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Long;>;>;"
    const/4 v6, 0x0

    .line 363
    .local v6, "totalTime":F
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 365
    .local v7, "foldType":Ljava/lang/Integer;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 367
    .local v8, "timeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_55
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_68

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 368
    .local v10, "time":J
    long-to-float v12, v10

    add-float/2addr v6, v12

    .line 369
    .end local v10  # "time":J
    goto :goto_55

    .line 370
    :cond_68
    const/4 v9, 0x0

    .line 372
    .local v9, "avgTime":F
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-eqz v10, :cond_76

    .line 373
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    int-to-float v10, v10

    div-float v9, v6, v10

    .line 375
    :cond_76
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v3, v7, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    .end local v5  # "foldEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v6  # "totalTime":F
    .end local v7  # "foldType":Ljava/lang/Integer;
    .end local v8  # "timeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v9  # "avgTime":F
    goto :goto_38

    .line 377
    :cond_7e
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    .end local v2  # "appName":Ljava/lang/String;
    .end local v3  # "tempMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Float;>;"
    goto :goto_17

    .line 380
    :cond_82
    const-string v1, "app_folded_unfolded_avg_time"

    invoke-interface {v0}, Ljava/util/Map;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 382
    .end local v0  # "appFoldAvgTimeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Float;>;>;"
    :cond_8b
    iget v0, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mFoldTimeSum:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_a1

    iget v0, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mFoldCountSum:I

    if-eqz v0, :cond_a1

    .line 383
    iget v0, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mFoldTimeSum:F

    iget v2, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mFoldCountSum:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 385
    .local v0, "foldAvgTime":F
    const-string v2, "folded_avg_time"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 387
    .end local v0  # "foldAvgTime":F
    :cond_a1
    iget v0, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mUnfoldTimeSum:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_b7

    iget v0, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mUnfoldCountSum:I

    if-eqz v0, :cond_b7

    .line 388
    iget v0, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mUnfoldTimeSum:F

    iget v1, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mUnfoldCountSum:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 390
    .local v0, "unfoldAvgTime":F
    const-string/jumbo v1, "unfolded_avg_time"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 393
    .end local v0  # "unfoldAvgTime":F
    :cond_b7
    const-string v0, "fold_times"

    iget v1, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mFoldTimes:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 394
    return-void
.end method

.method private addAppUsageTimeInScreenToIntent(Landroid/content/Intent;)V
    .registers 16
    .param p1, "intent"  # Landroid/content/Intent;

    .line 401
    const/4 v0, -0x1

    .line 402
    .local v0, "stateType":I
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 403
    .local v1, "deviceStateTimeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Float;>;>;"
    iget-object v2, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mDeviceStateUsageDetail:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 405
    .local v3, "deviceState":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mFoldedStateList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 406
    const/4 v0, 0x1

    goto :goto_2f

    .line 407
    :cond_26
    iget-object v4, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mUnfoldedStateList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 408
    const/4 v0, 0x0

    .line 412
    :cond_2f
    :goto_2f
    iget-object v4, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mDeviceStateUsageDetail:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 413
    .local v5, "appUsageEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 414
    .local v6, "appName":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 415
    .local v7, "appUseTime":J
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 416
    invoke-interface {v1, v6, v9}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    .line 417
    .local v9, "appUseMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Float;>;"
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    .line 418
    .local v10, "duration":F
    long-to-float v11, v7

    add-float/2addr v11, v10

    const/high16 v12, 0x447a0000  # 1000.0f

    div-float/2addr v11, v12

    .line 419
    .local v11, "newDuration":F
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    invoke-interface {v9, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    invoke-interface {v1, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    .end local v5  # "appUsageEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v6  # "appName":Ljava/lang/String;
    .end local v7  # "appUseTime":J
    .end local v9  # "appUseMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Float;>;"
    .end local v10  # "duration":F
    .end local v11  # "newDuration":F
    goto :goto_3f

    .line 422
    .end local v3  # "deviceState":Ljava/lang/Integer;
    :cond_8d
    goto :goto_10

    .line 423
    :cond_8e
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9d

    .line 424
    const-string v2, "app_use_screen_time"

    invoke-interface {v1}, Ljava/util/Map;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 426
    :cond_9d
    return-void
.end method

.method private addDeviceStateUsageTimeToIntent(Landroid/content/Intent;)V
    .registers 10
    .param p1, "intent"  # Landroid/content/Intent;

    .line 333
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 334
    .local v0, "deviceStateUsageMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Float;>;"
    iget-object v1, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mDeviceStateUsageDetail:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 336
    .local v2, "deviceState":Ljava/lang/Integer;
    const-wide/16 v3, 0x0

    .line 337
    .local v3, "stateSumTime":J
    iget-object v5, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mDeviceStateUsageDetail:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 338
    .local v6, "usageTime":J
    add-long/2addr v3, v6

    .line 339
    .end local v6  # "usageTime":J
    goto :goto_2d

    .line 340
    :cond_3f
    long-to-float v5, v3

    const/high16 v6, 0x447a0000  # 1000.0f

    div-float/2addr v5, v6

    .line 341
    .local v5, "deviceStateTime":F
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    .end local v2  # "deviceState":Ljava/lang/Integer;
    .end local v3  # "stateSumTime":J
    .end local v5  # "deviceStateTime":F
    goto :goto_f

    .line 343
    :cond_4b
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5a

    .line 344
    const-string v1, "device_state_time"

    invoke-interface {v0}, Ljava/util/Map;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 346
    :cond_5a
    return-void
.end method

.method private debounceDeviceState(J)V
    .registers 9
    .param p1, "eventTime"  # J

    .line 582
    iget v0, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mPendingDeviceState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_49

    iget-wide v2, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mPendingDeviceStateDebounceTime:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_49

    .line 583
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 585
    .local v2, "now":J
    iget-wide v4, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mPendingDeviceStateDebounceTime:J

    cmp-long v0, v4, v2

    if-gtz v0, :cond_32

    .line 586
    iget v0, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mCurrentDeviceState:I

    iget v4, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mPendingDeviceState:I

    if-eq v0, v4, :cond_2b

    .line 588
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->recordDeviceStateDetails(I)V

    .line 589
    iput-wide v2, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mLastEventTime:J

    .line 590
    iget v0, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mCurrentDeviceState:I

    iput v0, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mPreviousDeviceState:I

    .line 591
    iget v0, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mPendingDeviceState:I

    iput v0, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mCurrentDeviceState:I

    .line 593
    :cond_2b
    iput v1, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mPendingDeviceState:I

    .line 594
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mPendingDeviceStateDebounceTime:J

    goto :goto_49

    .line 597
    :cond_32
    iget-object v0, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 598
    iget-object v0, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mHandler:Landroid/os/Handler;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 599
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mHandler:Landroid/os/Handler;

    iget-wide v4, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mPendingDeviceStateDebounceTime:J

    invoke-virtual {v1, v0, v4, v5}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 602
    .end local v0  # "msg":Landroid/os/Message;
    .end local v2  # "now":J
    :cond_49
    :goto_49
    return-void
.end method

.method public static getInstance()Lcom/android/server/display/statistics/OneTrackFoldStateHelper;
    .registers 2

    .line 185
    sget-object v0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->sInstance:Lcom/android/server/display/statistics/OneTrackFoldStateHelper;

    if-nez v0, :cond_17

    .line 186
    const-class v0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;

    monitor-enter v0

    .line 187
    :try_start_7
    sget-object v1, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->sInstance:Lcom/android/server/display/statistics/OneTrackFoldStateHelper;

    if-nez v1, :cond_12

    .line 188
    new-instance v1, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;

    invoke-direct {v1}, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;-><init>()V

    sput-object v1, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->sInstance:Lcom/android/server/display/statistics/OneTrackFoldStateHelper;

    .line 190
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 192
    :cond_17
    :goto_17
    sget-object v0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->sInstance:Lcom/android/server/display/statistics/OneTrackFoldStateHelper;

    return-object v0
.end method

.method private getTopAppName()Ljava/lang/String;
    .registers 7

    .line 434
    const-string/jumbo v0, "getTopAppName: exception:"

    const-string v1, "OneTrackFoldStateHelper"

    const-string v2, ""

    :try_start_7
    iget-object v3, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mActivityManager:Landroid/app/ActivityManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_30

    iget-object v3, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mActivityManager:Landroid/app/ActivityManager;

    .line 435
    invoke-virtual {v3, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x0

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 436
    iget-object v3, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v3, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 437
    .local v3, "cn":Landroid/content/ComponentName;
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0
    :try_end_2f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_2f} :catch_4b
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_2f} :catch_31

    .line 438
    .local v0, "packageName":Ljava/lang/String;
    return-object v0

    .line 440
    .end local v0  # "packageName":Ljava/lang/String;
    .end local v3  # "cn":Landroid/content/ComponentName;
    :cond_30
    return-object v2

    .line 445
    :catch_31
    move-exception v3

    .line 446
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    return-object v2

    .line 442
    .end local v3  # "e":Ljava/lang/Exception;
    :catch_4b
    move-exception v3

    .line 443
    .local v3, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    return-object v2
.end method

.method private handleDeviceStateChanged(IJ)V
    .registers 8
    .param p1, "toState"  # I
    .param p2, "eventTime"  # J

    .line 568
    sget-boolean v0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->DEBUG:Z

    if-eqz v0, :cond_1d

    .line 569
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleDeviceStateChanged: toState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneTrackFoldStateHelper"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    :cond_1d
    iput p1, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mPendingDeviceState:I

    .line 572
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 573
    .local v0, "now":J
    const-wide/16 v2, 0x3e8

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mPendingDeviceStateDebounceTime:J

    .line 574
    invoke-direct {p0, p2, p3}, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->debounceDeviceState(J)V

    .line 575
    return-void
.end method

.method private handleDisplaySwapFinished(J)V
    .registers 10
    .param p1, "time"  # J

    .line 512
    iget-boolean v0, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mPendingWaitForDisplaySwapFinished:Z

    if-eqz v0, :cond_7c

    iget-object v0, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mLastFocusPackageName:Ljava/lang/String;

    if-eqz v0, :cond_7c

    .line 513
    iget-wide v0, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mLastFoldChangeTime:J

    sub-long v0, p1, v0

    .line 514
    .local v0, "duration":J
    sget-boolean v2, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->DEBUG:Z

    if-eqz v2, :cond_29

    .line 515
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleDisplaySwapFinished: duration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OneTrackFoldStateHelper"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    :cond_29
    iget-boolean v2, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mFolded:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 519
    .local v2, "foldType":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mAppFoldAvgTimeMap:Ljava/util/Map;

    iget-object v4, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mLastFocusPackageName:Ljava/lang/String;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 520
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 521
    .local v3, "appFoldTimeMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Long;>;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 523
    .local v4, "appTimeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 524
    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    iget-boolean v5, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mFolded:Z

    if-eqz v5, :cond_66

    .line 527
    iget v5, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mFoldTimeSum:F

    long-to-float v6, v0

    add-float/2addr v5, v6

    iput v5, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mFoldTimeSum:F

    .line 528
    iget v5, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mFoldCountSum:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mFoldCountSum:I

    goto :goto_72

    .line 530
    :cond_66
    iget v5, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mUnfoldTimeSum:F

    long-to-float v6, v0

    add-float/2addr v5, v6

    iput v5, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mUnfoldTimeSum:F

    .line 531
    iget v5, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mUnfoldCountSum:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mUnfoldCountSum:I

    .line 533
    :goto_72
    iget-object v5, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mAppFoldAvgTimeMap:Ljava/util/Map;

    iget-object v6, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mLastFocusPackageName:Ljava/lang/String;

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mPendingWaitForDisplaySwapFinished:Z

    .line 537
    .end local v0  # "duration":J
    .end local v2  # "foldType":Ljava/lang/Integer;
    .end local v3  # "appFoldTimeMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v4  # "appTimeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_7c
    return-void
.end method

.method private handleDisplaySwapStarted()V
    .registers 5

    .line 493
    sget-boolean v0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->DEBUG:Z

    if-eqz v0, :cond_1f

    .line 494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleDisplaySwapStarted: mInteractive: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mInteractive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneTrackFoldStateHelper"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    :cond_1f
    iget-boolean v0, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mInteractive:Z

    if-eqz v0, :cond_47

    iget-boolean v0, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mPreInteractive:Z

    if-eqz v0, :cond_47

    .line 497
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mLastFoldChangeTime:J

    .line 498
    iget-object v0, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mFocusPackageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mLastFocusPackageName:Ljava/lang/String;

    .line 499
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mPendingWaitForDisplaySwapFinished:Z

    .line 500
    iget-object v0, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 501
    iget-object v0, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 502
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 504
    .end local v0  # "msg":Landroid/os/Message;
    :cond_47
    iget-boolean v0, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mInteractive:Z

    iput-boolean v0, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mPreInteractive:Z

    .line 505
    return-void
.end method

.method private handleFocusedWindowChanged(Ljava/lang/String;)V
    .registers 4
    .param p1, "focusPackageName"  # Ljava/lang/String;

    .line 544
    sget-boolean v0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->DEBUG:Z

    if-eqz v0, :cond_1d

    .line 545
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleFocusedWindowChanged: focusPackageName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneTrackFoldStateHelper"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    :cond_1d
    if-eqz p1, :cond_29

    iget-object v0, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mFocusPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 548
    iput-object p1, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mFocusPackageName:Ljava/lang/String;

    .line 550
    :cond_29
    return-void
.end method

.method private handleFoldChanged(Z)V
    .registers 5
    .param p1, "folded"  # Z

    .line 259
    iget-boolean v0, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mFolded:Z

    const-string v1, "OneTrackFoldStateHelper"

    if-ne v0, p1, :cond_24

    .line 260
    sget-boolean v0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->DEBUG:Z

    if-eqz v0, :cond_23

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleFoldChanged: no change mFolded: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mFolded:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_23
    return-void

    .line 265
    :cond_24
    iput-boolean p1, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mFolded:Z

    .line 266
    invoke-direct {p0}, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->handleDisplaySwapStarted()V

    .line 268
    iget v0, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mFoldTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mFoldTimes:I

    .line 269
    sget-boolean v0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->DEBUG:Z

    if-eqz v0, :cond_4c

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleFoldChanged: mFoldTimes: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mFoldTimes:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_4c
    return-void
.end method

.method private handleInteractiveChanged(Z)V
    .registers 6
    .param p1, "interactive"  # Z

    .line 609
    sget-boolean v0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->DEBUG:Z

    if-eqz v0, :cond_1d

    .line 610
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleInteractiveChanged: interactive: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneTrackFoldStateHelper"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    :cond_1d
    iget-boolean v0, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mInteractive:Z

    if-eq v0, p1, :cond_46

    .line 613
    iput-boolean p1, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mInteractive:Z

    .line 614
    iget-boolean v0, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mInteractive:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_36

    .line 615
    invoke-direct {p0}, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->getTopAppName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mForegroundAppName:Ljava/lang/String;

    .line 617
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-direct {p0, v2, v3, v1}, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->updateLastEventInfo(JI)V

    goto :goto_46

    .line 620
    :cond_36
    iget-boolean v0, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mPendingWaitForDisplaySwapFinished:Z

    if-eqz v0, :cond_43

    .line 621
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mPendingWaitForDisplaySwapFinished:Z

    .line 622
    iget-object v0, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 625
    :cond_43
    invoke-direct {p0, v1}, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->recordDeviceStateDetails(I)V

    .line 628
    :cond_46
    :goto_46
    return-void
.end method

.method private handleWindowChanged(Lmiui/process/ForegroundInfo;)V
    .registers 6
    .param p1, "foregroundInfo"  # Lmiui/process/ForegroundInfo;

    .line 275
    iget-object v0, p1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    .line 276
    .local v0, "packageName":Ljava/lang/String;
    sget-boolean v1, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->DEBUG:Z

    if-eqz v1, :cond_2b

    .line 277
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleWindowChanged: pkgName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mForegroundAppName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mForegroundAppName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OneTrackFoldStateHelper"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :cond_2b
    iget-object v1, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mForegroundAppName:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_40

    .line 281
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->recordDeviceStateDetails(I)V

    .line 282
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-direct {p0, v2, v3, v1}, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->updateLastEventInfo(JI)V

    .line 283
    iput-object v0, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mForegroundAppName:Ljava/lang/String;

    .line 285
    :cond_40
    return-void
.end method

.method private synthetic lambda$new$0()V
    .registers 1

    .line 178
    invoke-direct {p0}, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->registerForegroundWindowListener()V

    .line 179
    invoke-direct {p0}, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->setReportScheduleEventAlarm()V

    .line 180
    return-void
.end method

.method private synthetic lambda$new$1()V
    .registers 1

    .line 213
    invoke-direct {p0}, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->reportScheduleEvents()V

    .line 214
    invoke-direct {p0}, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->setReportScheduleEventAlarm()V

    .line 215
    return-void
.end method

.method private recordDeviceStateDetails(I)V
    .registers 11
    .param p1, "reason"  # I

    .line 643
    iget-boolean v0, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mInteractive:Z

    if-nez v0, :cond_9

    if-eqz p1, :cond_e

    const/4 v0, 0x3

    if-eq p1, v0, :cond_e

    :cond_9
    iget v0, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mCurrentDeviceState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    .line 646
    :cond_e
    return-void

    .line 648
    :cond_f
    sget-boolean v0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->DEBUG:Z

    if-eqz v0, :cond_38

    .line 649
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "recordDeviceStateDetails: start tracking device state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mCurrentDeviceState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneTrackFoldStateHelper"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    :cond_38
    iget-object v0, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mDeviceStateUsageDetail:Ljava/util/Map;

    iget v1, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mCurrentDeviceState:I

    .line 653
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 654
    .local v0, "deviceStateMaps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    iget-object v1, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mForegroundAppName:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 655
    .local v1, "duration":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 656
    .local v3, "now":J
    iget-wide v5, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mLastEventTime:J

    sub-long v5, v3, v5

    add-long/2addr v5, v1

    .line 657
    .local v5, "newDuration":J
    iget-object v7, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mForegroundAppName:Ljava/lang/String;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    iget-object v7, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mDeviceStateUsageDetail:Ljava/util/Map;

    iget v8, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mCurrentDeviceState:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    return-void
.end method

.method private registerForegroundWindowListener()V
    .registers 2

    .line 255
    iget-object v0, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mWindowListener:Lmiui/process/IForegroundWindowListener;

    invoke-static {v0}, Lmiui/process/ProcessManager;->registerForegroundWindowListener(Lmiui/process/IForegroundWindowListener;)V

    .line 256
    return-void
.end method

.method private reportFoldInfoToOneTrack()V
    .registers 5

    .line 292
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "onetrack.action.TRACK_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 293
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.miui.analytics"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 294
    const-string v2, "APP_ID"

    const-string v3, "31000401594"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 295
    const-string v2, "PACKAGE"

    const-string v3, "android"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 296
    const-string v2, "EVENT_NAME"

    const-string v3, "fold_statistic"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 298
    invoke-direct {p0, v0}, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->addDeviceStateUsageTimeToIntent(Landroid/content/Intent;)V

    .line 300
    invoke-direct {p0, v0}, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->addAppFoldInfoToIntent(Landroid/content/Intent;)V

    .line 302
    invoke-direct {p0, v0}, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->addAppUsageTimeInScreenToIntent(Landroid/content/Intent;)V

    .line 304
    sget-boolean v1, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->IS_INTERNATIONAL_BUILD:Z

    if-nez v1, :cond_36

    .line 305
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 307
    :cond_36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reportOneTrack: data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OneTrackFoldStateHelper"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :try_start_53
    iget-object v1, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mApplicationContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_5a} :catch_5b

    .line 312
    goto :goto_62

    .line 310
    :catch_5b
    move-exception v1

    .line 311
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "reportOneTrack Failed to upload!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    .end local v1  # "e":Ljava/lang/Exception;
    :goto_62
    return-void
.end method

.method private reportScheduleEvents()V
    .registers 4

    .line 218
    sget-object v0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->DEVICE_REGION:Ljava/lang/String;

    const-string v1, "IN"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 219
    return-void

    .line 221
    :cond_b
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->recordDeviceStateDetails(I)V

    .line 222
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->updateLastEventInfo(JI)V

    .line 224
    invoke-direct {p0}, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->reportFoldInfoToOneTrack()V

    .line 226
    invoke-direct {p0}, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->resetFoldInfoAfterReported()V

    .line 227
    return-void
.end method

.method private resetFoldInfoAfterReported()V
    .registers 3

    .line 319
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mFoldTimes:I

    .line 320
    iget-object v1, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mDeviceStateUsageDetail:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 321
    iget-object v1, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mAppFoldAvgTimeMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 322
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mFoldTimeSum:F

    .line 323
    iput v0, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mFoldCountSum:I

    .line 324
    iput v1, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mUnfoldTimeSum:F

    .line 325
    iput v0, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mUnfoldCountSum:I

    .line 326
    return-void
.end method

.method private setReportScheduleEventAlarm()V
    .registers 12

    .line 199
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 200
    .local v0, "now":J
    sget-boolean v2, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->DEBUG:Z

    if-eqz v2, :cond_c

    const-wide/32 v2, 0x1d4c0

    goto :goto_f

    :cond_c
    const-wide/32 v2, 0x5265c00

    .line 201
    .local v2, "duration":J
    :goto_f
    add-long v6, v0, v2

    .line 202
    .local v6, "nextTime":J
    sget-boolean v4, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->DEBUG:Z

    if-eqz v4, :cond_32

    .line 203
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setReportSwitchStatAlarm: next time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 204
    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 203
    const-string v5, "OneTrackFoldStateHelper"

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_32
    iget-object v4, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mAlarmManager:Landroid/app/AlarmManager;

    if-eqz v4, :cond_42

    .line 207
    iget-object v4, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v9, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mOnAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v10, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    const-string v8, "OneTrackFoldStateHelper"

    invoke-virtual/range {v4 .. v10}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 210
    :cond_42
    return-void
.end method

.method private updateLastEventInfo(JI)V
    .registers 4
    .param p1, "eventTime"  # J
    .param p3, "reason"  # I

    .line 631
    iput-wide p1, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mLastEventTime:J

    .line 632
    iput p3, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mLastEventReason:I

    .line 633
    return-void
.end method


# virtual methods
.method public notifyDeviceStateChanged(I)V
    .registers 6
    .param p1, "newState"  # I

    .line 662
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 663
    .local v0, "now":J
    iget-object v2, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 664
    iget-object v2, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 665
    .local v2, "msg":Landroid/os/Message;
    iput p1, v2, Landroid/os/Message;->arg1:I

    .line 666
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 667
    iget-object v3, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 668
    return-void
.end method

.method public notifyDisplaySwapFinished()V
    .registers 6

    .line 671
    iget-object v0, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 672
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 673
    .local v2, "now":J
    iget-object v0, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mHandler:Landroid/os/Handler;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 674
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 675
    return-void
.end method

.method public notifyFocusedWindowChanged(Ljava/lang/String;)V
    .registers 4
    .param p1, "focusedPackageName"  # Ljava/lang/String;

    .line 678
    iget-object v0, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 679
    iget-object v0, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 680
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 681
    iget-object v1, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 682
    return-void
.end method

.method public onEarlyInteractivityChange(Z)V
    .registers 5
    .param p1, "interactive"  # Z

    .line 557
    iget-object v0, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 558
    iget-object v0, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 559
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 560
    return-void
.end method

.method public oneTrackFoldState(Z)V
    .registers 5
    .param p1, "folded"  # Z

    .line 246
    sget-boolean v0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->DEBUG:Z

    if-eqz v0, :cond_1d

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "oneTrackFoldState: folded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneTrackFoldStateHelper"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_1d
    iget-object v0, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 250
    iget-object v0, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 251
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 252
    return-void
.end method
