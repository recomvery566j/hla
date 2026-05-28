# classes.dex

.class public Lcom/android/server/display/mode/DisplayModeDirectorImpl;
.super Ljava/lang/Object;
.source "DisplayModeDirectorImpl.java"

# interfaces
.implements Lcom/android/server/display/mode/DisplayModeDirectorStub;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/mode/DisplayModeDirectorImpl$DisplayModeDirectorEntry;
    }
.end annotation


# static fields
.field public static final BSP_SUPPORT_EXTRADISPLAY_HIGH_REFRESHRATE:Ljava/lang/String; = "vendor.display.support_builtin_high_fps_when_pluggable_connected"

.field private static final EXTERNAL_DISPLAY_CONNECTED:Ljava/lang/String; = "external_display_connected"

.field private static final FLOAT_COMPARISON_EPSILON:F = 1.0E-5f

.field private static final FLOAT_TOLERANCE:F = 0.01f

.field private static final FPS_CHANGE_REASON_CORE_SCENE:I = 0x3

.field private static final FPS_CHANGE_REASON_DP:I = 0x6

.field private static final FPS_CHANGE_REASON_MISPEED:I = 0x11

.field private static final FPS_CHANGE_REASON_POWERKEEPER:I = 0x4

.field private static final FPS_CHANGE_REASON_SETTINGS:I = 0x2

.field private static final FPS_CHANGE_REASON_THERMAL:I = 0x5

.field private static final FPS_CHANGE_REASON_VIDEO:I = 0xc

.field private static final FPS_CHANGE_REASON_WIFI_DISPLAY:I = 0x7

.field private static final HISTORY_COUNT_FOR_HIGH_RAM_DEVICE:I = 0x1e

.field private static final HISTORY_COUNT_FOR_LOW_RAM_DEVICE:I = 0xa

.field public static final MIMOTION_PWM_ENABLE:Ljava/lang/String; = "mimotion_pwm_enable"

.field public static final MIUI_OPTIMIZATION:Ljava/lang/String; = "miui_optimization"

.field public static final MIUI_OPTIMIZATION_PROP:Ljava/lang/String; = "persist.sys.miui_optimization"

.field public static final MIUI_REFRESH_RATE:Ljava/lang/String; = "miui_refresh_rate"

.field public static final MIUI_THERMAL_LIMIT_REFRESH_RATE:Ljava/lang/String; = "thermal_limit_refresh_rate"

.field public static final MIUI_USER_REFRESH_RATE:Ljava/lang/String; = "user_refresh_rate"

.field public static final PLUGIN_REFRESH_RATE:Ljava/lang/String; = "plugin_refresh_rate"

.field private static final TAG:Ljava/lang/String; = "DisplayModeDirectorImpl"

.field private static final THERMAL_LIMITED_FPS_FOR_XRING_LOW_TEMP:F = 120.0f

.field private static final mEnablePwmSwitch:Z

.field private static final mMoveFrameRateStrategyUp:Z

.field private static final mNormalModeSkipOveride:Z


# instance fields
.field mArrModeIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAutoModeLowFPSSupport:Z

.field private mAutoRefreshRates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mBaseModeId:I

.field private mBaseSfModeId:I

.field private mBrightnessList:[I

.field private mBrightnessObserver:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

.field private mBspSupportExtraDisplayHigRefreshRate:Z

.field private mContext:Landroid/content/Context;

.field private mCoreScenarioPresent:Z

.field private mCurrentAutoMode:Z

.field mDCModeIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mDateFormat:Ljava/text/SimpleDateFormat;

.field private mDesiredDisplayModeSpecs:Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;

.field private mDisplayModeDirector:Lcom/android/server/display/mode/DisplayModeDirector;

.field private mDisplayModeDirectorHistory:[Lcom/android/server/display/mode/DisplayModeDirectorImpl$DisplayModeDirectorEntry;

.field private mExternalDisplayConnected:Z

.field private final mExternalDisplayRefreshRateSetting:Landroid/net/Uri;

.field private mFpsSwitchReason:I

.field private mHistoryCount:I

.field private mHistoryIndex:I

.field private mIsCoreSceneActive:Z

.field private mIsForceSkip90hzScenario:Z

.field private final mIsForceSkipAutoMode:Landroid/util/SparseBooleanArray;

.field private final mIsForceSkipCoreScenario:Landroid/util/SparseBooleanArray;

.field private final mIsForceSkipIdleRefreshRate:Landroid/util/SparseBooleanArray;

.field private mIsGameMode:Z

.field private mIsInOverMode:Z

.field private mLastAutoMode:Z

.field private mLastDisplayModeSpecs:Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

.field private mLock:Ljava/lang/Object;

.field private final mMimotionPwmEnableSetting:Landroid/net/Uri;

.field private final mMiuiOptimizationSetting:Landroid/net/Uri;

.field private mMiuiRefreshRateEnable:Z

.field private final mMiuiRefreshRateSetting:Landroid/net/Uri;

.field private mMultiDisplaysLimit:Z

.field private mPhysicRange:Landroid/view/SurfaceControl$RefreshRateRange;

.field private mPluginMaxRefreshRate:F

.field private final mPluginRefreshRateSetting:Landroid/net/Uri;

.field private mRefreshRateLimits:[I

.field private mRefreshRateRanges:Landroid/view/SurfaceControl$RefreshRateRanges;

.field private mRenderRange:Landroid/view/SurfaceControl$RefreshRateRange;

.field private final mSceneMaxRefreshLock:Ljava/lang/Object;

.field private mSceneMaxRefreshRate:F

.field private mSceneMaxRefreshRateByDisplay:[[F

.field private mSettingsObserver:Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;

.field private final mThermalRefreshRateSetting:Landroid/net/Uri;

.field private mVideoMaxRefreshRate:F

.field private mVotesStorage:Lcom/android/server/display/mode/VotesStorage;


# direct methods
.method static bridge synthetic -$$Nest$fgetmDateFormat(Lcom/android/server/display/mode/DisplayModeDirectorImpl;)Ljava/text/SimpleDateFormat;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mDateFormat:Ljava/text/SimpleDateFormat;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 126
    nop

    .line 127
    const-string/jumbo v0, "ro.display.move_frame_rate_strategy_up"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 126
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mMoveFrameRateStrategyUp:Z

    .line 128
    nop

    .line 129
    const-string/jumbo v0, "ro.vendor.mi_sf.dynamic_skip_override_refresh_rate"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mNormalModeSkipOveride:Z

    .line 130
    nop

    .line 131
    const-string/jumbo v0, "ro.display.enable_pwm_switch"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mEnablePwmSwitch:Z

    .line 132
    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mDateFormat:Ljava/text/SimpleDateFormat;

    .line 45
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 46
    const/16 v0, 0xa

    goto :goto_17

    :cond_15
    const/16 v0, 0x1e

    :goto_17
    iput v0, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mHistoryCount:I

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mHistoryIndex:I

    .line 64
    const-string/jumbo v1, "miui_refresh_rate"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mMiuiRefreshRateSetting:Landroid/net/Uri;

    .line 65
    nop

    .line 66
    const-string/jumbo v1, "thermal_limit_refresh_rate"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mThermalRefreshRateSetting:Landroid/net/Uri;

    .line 67
    nop

    .line 68
    const-string/jumbo v1, "mimotion_pwm_enable"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mMimotionPwmEnableSetting:Landroid/net/Uri;

    .line 69
    const-string/jumbo v1, "miui_optimization"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mMiuiOptimizationSetting:Landroid/net/Uri;

    .line 71
    nop

    .line 72
    const-string v1, "external_display_connected"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mExternalDisplayRefreshRateSetting:Landroid/net/Uri;

    .line 74
    const-string/jumbo v1, "plugin_refresh_rate"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mPluginRefreshRateSetting:Landroid/net/Uri;

    .line 89
    const/4 v1, 0x2

    new-array v2, v1, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    aput v1, v2, v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[F

    iput-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mSceneMaxRefreshRateByDisplay:[[F

    .line 91
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mSceneMaxRefreshLock:Ljava/lang/Object;

    .line 95
    const-string/jumbo v1, "vendor.display.support_builtin_high_fps_when_pluggable_connected"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_77

    move v0, v3

    :cond_77
    iput-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mBspSupportExtraDisplayHigRefreshRate:Z

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mBrightnessList:[I

    .line 99
    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mRefreshRateLimits:[I

    .line 102
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mBaseSfModeId:I

    .line 105
    new-instance v0, Landroid/view/SurfaceControl$RefreshRateRanges;

    invoke-direct {v0}, Landroid/view/SurfaceControl$RefreshRateRanges;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mRefreshRateRanges:Landroid/view/SurfaceControl$RefreshRateRanges;

    .line 110
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mIsForceSkipCoreScenario:Landroid/util/SparseBooleanArray;

    .line 113
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mIsForceSkipIdleRefreshRate:Landroid/util/SparseBooleanArray;

    .line 114
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mIsForceSkipAutoMode:Landroid/util/SparseBooleanArray;

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mAutoRefreshRates:Ljava/util/List;

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mArrModeIds:Ljava/util/List;

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mDCModeIds:Ljava/util/List;

    return-void
.end method

.method private addToHistory(ILcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;Landroid/util/SparseArray;)Lcom/android/server/display/mode/DisplayModeDirectorImpl$DisplayModeDirectorEntry;
    .registers 8
    .param p1, "displayId"  # I
    .param p2, "desiredDisplayModeSpecs"  # Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/display/mode/Vote;",
            ">;)",
            "Lcom/android/server/display/mode/DisplayModeDirectorImpl$DisplayModeDirectorEntry;"
        }
    .end annotation

    .line 240
    .local p3, "votes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/mode/Vote;>;"
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 241
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mDisplayModeDirectorHistory:[Lcom/android/server/display/mode/DisplayModeDirectorImpl$DisplayModeDirectorEntry;

    iget v2, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mHistoryIndex:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_34

    .line 242
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mDisplayModeDirectorHistory:[Lcom/android/server/display/mode/DisplayModeDirectorImpl$DisplayModeDirectorEntry;

    iget v2, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mHistoryIndex:I

    aget-object v1, v1, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/server/display/mode/DisplayModeDirectorImpl$DisplayModeDirectorEntry;->-$$Nest$fputtimesTamp(Lcom/android/server/display/mode/DisplayModeDirectorImpl$DisplayModeDirectorEntry;J)V

    .line 243
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mDisplayModeDirectorHistory:[Lcom/android/server/display/mode/DisplayModeDirectorImpl$DisplayModeDirectorEntry;

    iget v2, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mHistoryIndex:I

    aget-object v1, v1, v2

    invoke-static {v1, p1}, Lcom/android/server/display/mode/DisplayModeDirectorImpl$DisplayModeDirectorEntry;->-$$Nest$fputdisplayId(Lcom/android/server/display/mode/DisplayModeDirectorImpl$DisplayModeDirectorEntry;I)V

    .line 244
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mDisplayModeDirectorHistory:[Lcom/android/server/display/mode/DisplayModeDirectorImpl$DisplayModeDirectorEntry;

    iget v2, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mHistoryIndex:I

    aget-object v1, v1, v2

    invoke-static {v1, p2}, Lcom/android/server/display/mode/DisplayModeDirectorImpl$DisplayModeDirectorEntry;->-$$Nest$fputdesiredDisplayModeSpecs(Lcom/android/server/display/mode/DisplayModeDirectorImpl$DisplayModeDirectorEntry;Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;)V

    .line 245
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mDisplayModeDirectorHistory:[Lcom/android/server/display/mode/DisplayModeDirectorImpl$DisplayModeDirectorEntry;

    iget v2, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mHistoryIndex:I

    aget-object v1, v1, v2

    invoke-static {v1, p3}, Lcom/android/server/display/mode/DisplayModeDirectorImpl$DisplayModeDirectorEntry;->-$$Nest$fputvotes(Lcom/android/server/display/mode/DisplayModeDirectorImpl$DisplayModeDirectorEntry;Landroid/util/SparseArray;)V

    goto :goto_3f

    .line 247
    :cond_34
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mDisplayModeDirectorHistory:[Lcom/android/server/display/mode/DisplayModeDirectorImpl$DisplayModeDirectorEntry;

    iget v2, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mHistoryIndex:I

    new-instance v3, Lcom/android/server/display/mode/DisplayModeDirectorImpl$DisplayModeDirectorEntry;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/android/server/display/mode/DisplayModeDirectorImpl$DisplayModeDirectorEntry;-><init>(Lcom/android/server/display/mode/DisplayModeDirectorImpl;ILcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;Landroid/util/SparseArray;)V

    aput-object v3, v1, v2

    .line 250
    :goto_3f
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mDisplayModeDirectorHistory:[Lcom/android/server/display/mode/DisplayModeDirectorImpl$DisplayModeDirectorEntry;

    iget v2, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mHistoryIndex:I

    aget-object v1, v1, v2

    .line 251
    .local v1, "displayModeDirectorEntry":Lcom/android/server/display/mode/DisplayModeDirectorImpl$DisplayModeDirectorEntry;
    iget v2, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mHistoryIndex:I

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mHistoryCount:I

    rem-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mHistoryIndex:I

    .line 252
    monitor-exit v0

    return-object v1

    .line 253
    .end local v1  # "displayModeDirectorEntry":Lcom/android/server/display/mode/DisplayModeDirectorImpl$DisplayModeDirectorEntry;
    :catchall_50
    move-exception v1

    monitor-exit v0
    :try_end_52
    .catchall {:try_start_3 .. :try_end_52} :catchall_50

    throw v1
.end method

.method private clearAospSettingVote()V
    .registers 3

    .line 527
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/android/server/display/mode/VotesStorage;->removeAllVotesForPriority(I)V

    .line 528
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/display/mode/VotesStorage;->removeAllVotesForPriority(I)V

    .line 529
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/display/mode/VotesStorage;->removeAllVotesForPriority(I)V

    .line 530
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/android/server/display/mode/VotesStorage;->removeAllVotesForPriority(I)V

    .line 531
    return-void
.end method

.method private clearMiuiSettingVote()V
    .registers 4

    .line 520
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    const/16 v1, 0x19

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/mode/VotesStorage;->updateGlobalVote(ILcom/android/server/display/mode/Vote;)V

    .line 522
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    const/16 v1, 0x17

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/mode/VotesStorage;->updateGlobalVote(ILcom/android/server/display/mode/Vote;)V

    .line 524
    return-void
.end method

.method private createSmartDisplayPolicyDisplayModeSpecs(I)Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;
    .registers 5
    .param p1, "baseSfModeId"  # I

    .line 797
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mDesiredDisplayModeSpecs:Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;

    iput p1, v0, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->defaultMode:I

    .line 798
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mDesiredDisplayModeSpecs:Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->allowGroupSwitching:Z

    .line 799
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mDesiredDisplayModeSpecs:Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;

    iget-object v0, v0, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->primaryRanges:Landroid/view/SurfaceControl$RefreshRateRanges;

    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mRefreshRateRanges:Landroid/view/SurfaceControl$RefreshRateRanges;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$RefreshRateRanges;->copyFrom(Landroid/view/SurfaceControl$RefreshRateRanges;)V

    .line 800
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mDesiredDisplayModeSpecs:Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;

    iget-object v0, v0, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->appRequestRanges:Landroid/view/SurfaceControl$RefreshRateRanges;

    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mRefreshRateRanges:Landroid/view/SurfaceControl$RefreshRateRanges;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$RefreshRateRanges;->copyFrom(Landroid/view/SurfaceControl$RefreshRateRanges;)V

    .line 801
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mDesiredDisplayModeSpecs:Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;

    .line 802
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mLastDisplayModeSpecs:Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    iget-object v1, v1, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;->mIdleScreenRefreshRateConfig:Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;

    if-nez v1, :cond_25

    const/4 v1, 0x0

    goto :goto_30

    :cond_25
    new-instance v1, Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;

    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mLastDisplayModeSpecs:Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    iget-object v2, v2, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;->mIdleScreenRefreshRateConfig:Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;

    iget v2, v2, Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;->timeoutMillis:I

    invoke-direct {v1, v2}, Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;-><init>(I)V

    :goto_30
    iput-object v1, v0, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->idleScreenRefreshRateConfig:Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;

    .line 804
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mDesiredDisplayModeSpecs:Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;

    return-object v0
.end method

.method private getAutoRefreshRateLocked([Landroid/view/Display$Mode;Landroid/view/Display$Mode;)Z
    .registers 6
    .param p1, "modes"  # [Landroid/view/Display$Mode;
    .param p2, "baseMode"  # Landroid/view/Display$Mode;

    .line 683
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mIsForceSkipCoreScenario:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->indexOfValue(Z)I

    move-result v0

    const/4 v2, 0x0

    if-gez v0, :cond_1d

    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mIsForceSkipAutoMode:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->indexOfValue(Z)I

    move-result v0

    if-ltz v0, :cond_13

    goto :goto_1d

    .line 685
    :cond_13
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mIsForceSkipCoreScenario:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->indexOfValue(Z)I

    move-result v0

    if-gez v0, :cond_1c

    .line 686
    return v1

    .line 688
    :cond_1c
    return v2

    .line 684
    :cond_1d
    :goto_1d
    return v2
.end method

.method private getDisplayModeFromRefreshRate([Landroid/view/Display$Mode;Landroid/view/Display$Mode;F)I
    .registers 12
    .param p1, "supportedModes"  # [Landroid/view/Display$Mode;
    .param p2, "baseMode"  # Landroid/view/Display$Mode;
    .param p3, "refreshRate"  # F

    .line 642
    invoke-virtual {p2}, Landroid/view/Display$Mode;->getModeId()I

    move-result v0

    .line 643
    .local v0, "targetBaseModeId":I
    invoke-virtual {p2}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v1

    .line 645
    .local v1, "height":I
    array-length v2, p1

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v2, :cond_39

    aget-object v4, p1, v3

    .line 646
    .local v4, "mode":Landroid/view/Display$Mode;
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v5

    .line 647
    .local v5, "modeRefreshRate":F
    sget-boolean v6, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mEnablePwmSwitch:Z

    if-eqz v6, :cond_1e

    iget-boolean v6, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mIsInOverMode:Z

    if-nez v6, :cond_1e

    .line 648
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getVsyncRate()F

    move-result v5

    .line 650
    :cond_1e
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v6

    if-ne v6, v1, :cond_36

    const v6, 0x3c23d70a  # 0.01f

    sub-float v7, p3, v6

    cmpl-float v7, v5, v7

    if-ltz v7, :cond_36

    add-float/2addr v6, p3

    cmpg-float v6, v5, v6

    if-gtz v6, :cond_36

    .line 653
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getModeId()I

    move-result v0

    .line 645
    .end local v4  # "mode":Landroid/view/Display$Mode;
    .end local v5  # "modeRefreshRate":F
    :cond_36
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 656
    :cond_39
    return v0
.end method

.method private getMiuiRefreshRateRange()Landroid/view/SurfaceControl$RefreshRateRange;
    .registers 6

    .line 461
    invoke-direct {p0}, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->shouldExtraDisplayLimitRefresh()Z

    move-result v0

    const/high16 v1, 0x42700000  # 60.0f

    const/4 v2, 0x0

    if-nez v0, :cond_db

    iget-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mMultiDisplaysLimit:Z

    if-eqz v0, :cond_f

    goto/16 :goto_db

    .line 464
    :cond_f
    invoke-direct {p0}, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->shouldConvertRefreshForDpHigh()Z

    move-result v0

    const-string/jumbo v3, "miui_refresh_rate"

    const/high16 v4, -0x40800000  # -1.0f

    if-eqz v0, :cond_3e

    .line 465
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    .line 468
    .local v0, "miuiRefreshRate":F
    div-float v3, v0, v1

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v3, v1

    .line 469
    .local v3, "limitDpRefresh":F
    cmpg-float v4, v3, v1

    if-gez v4, :cond_32

    goto :goto_33

    :cond_32
    move v1, v3

    .line 470
    .end local v3  # "limitDpRefresh":F
    .local v1, "limitDpRefresh":F
    :goto_33
    new-instance v3, Landroid/view/SurfaceControl$RefreshRateRange;

    invoke-direct {v3, v2, v1}, Landroid/view/SurfaceControl$RefreshRateRange;-><init>(FF)V

    .line 471
    .local v3, "miuiRefreshRange":Landroid/view/SurfaceControl$RefreshRateRange;
    const/4 v2, 0x6

    invoke-direct {p0, v2}, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->setFpsSwitchReason(I)V

    .line 472
    .end local v0  # "miuiRefreshRate":F
    .end local v1  # "limitDpRefresh":F
    goto/16 :goto_e5

    .end local v3  # "miuiRefreshRange":Landroid/view/SurfaceControl$RefreshRateRange;
    :cond_3e
    iget v0, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mSceneMaxRefreshRate:F

    cmpl-float v0, v0, v2

    const-string/jumbo v1, "user_refresh_rate"

    if-lez v0, :cond_6f

    .line 473
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    .line 475
    .local v0, "userSetRefreshRate":F
    cmpl-float v1, v0, v2

    if-lez v1, :cond_5c

    .line 476
    iget v1, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mSceneMaxRefreshRate:F

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v1

    goto :goto_5e

    :cond_5c
    iget v1, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mSceneMaxRefreshRate:F

    :goto_5e
    iput v1, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mSceneMaxRefreshRate:F

    .line 477
    new-instance v1, Landroid/view/SurfaceControl$RefreshRateRange;

    iget v3, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mSceneMaxRefreshRate:F

    invoke-direct {v1, v2, v3}, Landroid/view/SurfaceControl$RefreshRateRange;-><init>(FF)V

    move-object v3, v1

    .line 478
    .restart local v3  # "miuiRefreshRange":Landroid/view/SurfaceControl$RefreshRateRange;
    const/16 v1, 0x11

    invoke-direct {p0, v1}, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->setFpsSwitchReason(I)V

    .line 479
    .end local v0  # "userSetRefreshRate":F
    goto/16 :goto_e5

    .end local v3  # "miuiRefreshRange":Landroid/view/SurfaceControl$RefreshRateRange;
    :cond_6f
    iget v0, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mVideoMaxRefreshRate:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_97

    .line 480
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    .line 482
    .restart local v0  # "userSetRefreshRate":F
    cmpl-float v1, v0, v2

    if-lez v1, :cond_8a

    .line 483
    iget v1, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mVideoMaxRefreshRate:F

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v1

    goto :goto_8c

    :cond_8a
    iget v1, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mVideoMaxRefreshRate:F

    .line 484
    .local v1, "videoMaxRefreshRate":F
    :goto_8c
    new-instance v3, Landroid/view/SurfaceControl$RefreshRateRange;

    invoke-direct {v3, v2, v1}, Landroid/view/SurfaceControl$RefreshRateRange;-><init>(FF)V

    .line 485
    .restart local v3  # "miuiRefreshRange":Landroid/view/SurfaceControl$RefreshRateRange;
    const/16 v2, 0xc

    invoke-direct {p0, v2}, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->setFpsSwitchReason(I)V

    .line 486
    .end local v0  # "userSetRefreshRate":F
    .end local v1  # "videoMaxRefreshRate":F
    goto :goto_e5

    .end local v3  # "miuiRefreshRange":Landroid/view/SurfaceControl$RefreshRateRange;
    :cond_97
    iget v0, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mPluginMaxRefreshRate:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_bf

    .line 487
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    .line 489
    .restart local v0  # "userSetRefreshRate":F
    cmpl-float v1, v0, v2

    if-lez v1, :cond_b2

    .line 490
    iget v1, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mPluginMaxRefreshRate:F

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v1

    goto :goto_b4

    :cond_b2
    iget v1, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mPluginMaxRefreshRate:F

    :goto_b4
    iput v1, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mPluginMaxRefreshRate:F

    .line 491
    new-instance v1, Landroid/view/SurfaceControl$RefreshRateRange;

    iget v3, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mPluginMaxRefreshRate:F

    invoke-direct {v1, v2, v3}, Landroid/view/SurfaceControl$RefreshRateRange;-><init>(FF)V

    move-object v3, v1

    .line 492
    .end local v0  # "userSetRefreshRate":F
    .restart local v3  # "miuiRefreshRange":Landroid/view/SurfaceControl$RefreshRateRange;
    goto :goto_e5

    .line 493
    .end local v3  # "miuiRefreshRange":Landroid/view/SurfaceControl$RefreshRateRange;
    :cond_bf
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 494
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v1

    .line 495
    .local v1, "miuiRefreshRate":F
    cmpl-float v3, v1, v2

    if-nez v3, :cond_cf

    const/4 v2, 0x0

    goto :goto_d5

    :cond_cf
    new-instance v3, Landroid/view/SurfaceControl$RefreshRateRange;

    invoke-direct {v3, v2, v1}, Landroid/view/SurfaceControl$RefreshRateRange;-><init>(FF)V

    move-object v2, v3

    :goto_d5
    move-object v3, v2

    .line 496
    .restart local v3  # "miuiRefreshRange":Landroid/view/SurfaceControl$RefreshRateRange;
    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->setFpsSwitchReason(I)V

    goto :goto_e5

    .line 462
    .end local v0  # "cr":Landroid/content/ContentResolver;
    .end local v1  # "miuiRefreshRate":F
    .end local v3  # "miuiRefreshRange":Landroid/view/SurfaceControl$RefreshRateRange;
    :cond_db
    :goto_db
    new-instance v0, Landroid/view/SurfaceControl$RefreshRateRange;

    invoke-direct {v0, v2, v1}, Landroid/view/SurfaceControl$RefreshRateRange;-><init>(FF)V

    move-object v3, v0

    .line 463
    .restart local v3  # "miuiRefreshRange":Landroid/view/SurfaceControl$RefreshRateRange;
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->setFpsSwitchReason(I)V

    .line 498
    :goto_e5
    return-object v3
.end method

.method private getThermalLimitRefreshRange()Landroid/view/SurfaceControl$RefreshRateRange;
    .registers 5

    .line 510
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "thermal_limit_refresh_rate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 512
    .local v0, "thermalRefreshRate":I
    invoke-direct {p0}, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->shouldConvertRefreshForDpHigh()Z

    move-result v1

    if-eqz v1, :cond_18

    if-eqz v0, :cond_18

    .line 514
    const/16 v0, 0x3c

    .line 516
    :cond_18
    if-nez v0, :cond_1c

    const/4 v1, 0x0

    goto :goto_23

    :cond_1c
    new-instance v1, Landroid/view/SurfaceControl$RefreshRateRange;

    const/4 v2, 0x0

    int-to-float v3, v0

    invoke-direct {v1, v2, v3}, Landroid/view/SurfaceControl$RefreshRateRange;-><init>(FF)V

    :goto_23
    return-object v1
.end method

.method private setDesiredDisplayModeSpecs()V
    .registers 3

    .line 789
    iget v0, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mBaseSfModeId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    .line 790
    return-void

    .line 792
    :cond_6
    iget v0, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mBaseSfModeId:I

    invoke-direct {p0, v0}, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->createSmartDisplayPolicyDisplayModeSpecs(I)Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;

    move-result-object v0

    .line 793
    .local v0, "desired":Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;
    invoke-static {}, Lcom/android/server/display/DisplayManagerServiceImpl;->getInstance()Lcom/android/server/display/DisplayManagerServiceImpl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayManagerServiceImpl;->shouldUpdateDisplayModeSpecs(Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;)V

    .line 794
    return-void
.end method

.method private setFpsSwitchReason(I)V
    .registers 2
    .param p1, "reason"  # I

    .line 439
    iput p1, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mFpsSwitchReason:I

    .line 440
    return-void
.end method

.method private shouldConvertRefreshForDpHigh()Z
    .registers 2

    .line 506
    iget-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mBspSupportExtraDisplayHigRefreshRate:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mExternalDisplayConnected:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private shouldExtraDisplayLimitRefresh()Z
    .registers 2

    .line 502
    iget-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mBspSupportExtraDisplayHigRefreshRate:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mExternalDisplayConnected:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private shouldUseCoreScenarioPolicy()Z
    .registers 4

    .line 611
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mIsForceSkipCoreScenario:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->indexOfValue(Z)I

    move-result v0

    const/4 v2, 0x0

    if-ltz v0, :cond_b

    .line 612
    return v2

    .line 615
    :cond_b
    iget-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mIsCoreSceneActive:Z

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mCoreScenarioPresent:Z

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mMultiDisplaysLimit:Z

    if-nez v0, :cond_18

    .line 616
    return v1

    .line 619
    :cond_18
    iget-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mCoreScenarioPresent:Z

    if-eqz v0, :cond_27

    .line 620
    invoke-direct {p0}, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->shouldExtraDisplayLimitRefresh()Z

    move-result v0

    if-nez v0, :cond_27

    iget-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mMultiDisplaysLimit:Z

    if-nez v0, :cond_27

    goto :goto_28

    :cond_27
    move v1, v2

    .line 619
    :goto_28
    return v1
.end method

.method private updateExternalDisplayConnectedLocked()V
    .registers 4

    .line 534
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mContext:Landroid/content/Context;

    .line 535
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 534
    const-string v1, "external_display_connected"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_10

    const/4 v2, 0x1

    :cond_10
    iput-boolean v2, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mExternalDisplayConnected:Z

    .line 536
    return-void
.end method

.method private updateMiuiRefreshRateState()V
    .registers 3

    .line 262
    nop

    .line 263
    const-string/jumbo v0, "ro.miui.cts"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 262
    xor-int/lit8 v0, v0, 0x1

    const-string/jumbo v1, "persist.sys.miui_optimization"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mMiuiRefreshRateEnable:Z

    .line 264
    return-void
.end method

.method private updatePluginMaxRefreshRate()V
    .registers 4

    .line 267
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "plugin_refresh_rate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mPluginMaxRefreshRate:F

    .line 268
    return-void
.end method

.method private updateThermalVote()Landroid/view/SurfaceControl$RefreshRateRange;
    .registers 6

    .line 421
    invoke-direct {p0}, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->getThermalLimitRefreshRange()Landroid/view/SurfaceControl$RefreshRateRange;

    move-result-object v0

    .line 422
    .local v0, "thermalRange":Landroid/view/SurfaceControl$RefreshRateRange;
    if-eqz v0, :cond_f

    .line 423
    iget v1, v0, Landroid/view/SurfaceControl$RefreshRateRange;->min:F

    iget v2, v0, Landroid/view/SurfaceControl$RefreshRateRange;->max:F

    invoke-static {v1, v2}, Lcom/android/server/display/mode/Vote;->forRenderFrameRates(FF)Lcom/android/server/display/mode/Vote;

    move-result-object v1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    .line 424
    .local v1, "thermalVote":Lcom/android/server/display/mode/Vote;
    :goto_10
    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    const/16 v3, 0x19

    invoke-virtual {v2, v3, v1}, Lcom/android/server/display/mode/VotesStorage;->updateGlobalVote(ILcom/android/server/display/mode/Vote;)V

    .line 426
    const/4 v2, 0x1

    if-eqz v0, :cond_29

    iget v3, v0, Landroid/view/SurfaceControl$RefreshRateRange;->max:F

    const/high16 v4, 0x42f00000  # 120.0f

    cmpl-float v3, v3, v4

    if-nez v3, :cond_29

    .line 427
    invoke-virtual {p0, v2, v2}, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->shouldSkipCoreScenarioPolicy(ZI)V

    .line 428
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->setSmartDisplayPolicyEnd()V

    goto :goto_2d

    .line 430
    :cond_29
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->shouldSkipCoreScenarioPolicy(ZI)V

    .line 432
    :goto_2d
    if-eqz v0, :cond_33

    .line 433
    const/4 v2, 0x5

    invoke-direct {p0, v2}, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->setFpsSwitchReason(I)V

    .line 435
    :cond_33
    return-object v0
.end method


# virtual methods
.method public addToArrRefreshRateList(I)V
    .registers 4
    .param p1, "modeId"  # I

    .line 360
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mArrModeIds:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 361
    return-void
.end method

.method public addToAutoRefreshRateList(F)V
    .registers 4
    .param p1, "autoRefreshRate"  # F

    .line 352
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mAutoRefreshRates:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    const/high16 v0, 0x42700000  # 60.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_18

    const/high16 v0, 0x42b40000  # 90.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_18

    .line 354
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mAutoModeLowFPSSupport:Z

    .line 356
    :cond_18
    return-void
.end method

.method public addToDcRefreshRateList(I)V
    .registers 4
    .param p1, "modeId"  # I

    .line 365
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mDCModeIds:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 366
    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;)V
    .registers 7
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSceneMaxRefreshRate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mSceneMaxRefreshRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 193
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_19
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mSceneMaxRefreshRateByDisplay:[[F

    array-length v1, v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_41

    .line 194
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mSceneMaxRefreshRateByDisplay:[[F

    aget-object v1, v1, v0

    const/4 v3, 0x0

    aget v1, v1, v3

    float-to-int v1, v1

    .line 195
    .local v1, "displayId":I
    iget-object v3, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mSceneMaxRefreshRateByDisplay:[[F

    aget-object v3, v3, v0

    aget v2, v3, v2

    .line 196
    .local v2, "maxFrameRate":F
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "  Display %d: mSceneMaxRefreshRate = %.2f Hz\n"

    invoke-virtual {p1, v4, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 193
    .end local v1  # "displayId":I
    .end local v2  # "maxFrameRate":F
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 198
    .end local v0  # "i":I
    :cond_41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mVideoMaxRefreshRate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mVideoMaxRefreshRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 201
    .local v0, "autoRefreshRatesStr":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_61
    iget-object v3, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mAutoRefreshRates:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_83

    .line 202
    iget-object v3, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mAutoRefreshRates:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 203
    iget-object v3, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mAutoRefreshRates:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    if-ge v1, v3, :cond_80

    .line 204
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    :cond_80
    add-int/lit8 v1, v1, 0x1

    goto :goto_61

    .line 207
    .end local v1  # "i":I
    :cond_83
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mAutoRefreshRates: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 210
    const-string v1, "History of DisplayMoDirector"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 211
    const/4 v1, 0x0

    .restart local v1  # "i":I
    :goto_a8
    iget v2, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mHistoryCount:I

    if-ge v1, v2, :cond_c3

    .line 212
    iget v2, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mHistoryIndex:I

    add-int/2addr v2, v1

    iget v3, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mHistoryCount:I

    rem-int/2addr v2, v3

    .line 213
    .local v2, "index":I
    iget-object v3, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mDisplayModeDirectorHistory:[Lcom/android/server/display/mode/DisplayModeDirectorImpl$DisplayModeDirectorEntry;

    aget-object v3, v3, v2

    .line 215
    .local v3, "displayModeDirectorEntry":Lcom/android/server/display/mode/DisplayModeDirectorImpl$DisplayModeDirectorEntry;
    if-nez v3, :cond_b9

    .line 216
    goto :goto_c0

    .line 218
    :cond_b9
    invoke-virtual {v3}, Lcom/android/server/display/mode/DisplayModeDirectorImpl$DisplayModeDirectorEntry;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 211
    .end local v2  # "index":I
    .end local v3  # "displayModeDirectorEntry":Lcom/android/server/display/mode/DisplayModeDirectorImpl$DisplayModeDirectorEntry;
    :goto_c0
    add-int/lit8 v1, v1, 0x1

    goto :goto_a8

    .line 220
    .end local v1  # "i":I
    :cond_c3
    return-void
.end method

.method public getDisplayModeThreadLooper()Landroid/os/Looper;
    .registers 2

    .line 843
    invoke-static {}, Lcom/android/server/display/mode/DisplayModeThread;->get()Lcom/android/server/display/mode/DisplayModeThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/mode/DisplayModeThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public getFpsSwitchReason()I
    .registers 2

    .line 384
    iget v0, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mFpsSwitchReason:I

    return v0
.end method

.method public getMultiDisplaysRefreshRateStatus()Z
    .registers 2

    .line 838
    iget-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mMultiDisplaysLimit:Z

    return v0
.end method

.method public getVotes(I)Landroid/util/SparseArray;
    .registers 3
    .param p1, "displayId"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/display/mode/Vote;",
            ">;"
        }
    .end annotation

    .line 822
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/display/mode/VotesStorage;->getVotes(I)Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method public init(Lcom/android/server/display/mode/DisplayModeDirector;Ljava/lang/Object;Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;Landroid/content/Context;Lcom/android/server/display/mode/VotesStorage;)V
    .registers 14
    .param p1, "modeDirector"  # Lcom/android/server/display/mode/DisplayModeDirector;
    .param p2, "lock"  # Ljava/lang/Object;
    .param p3, "brightnessObserver"  # Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;
    .param p4, "settingsObserver"  # Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;
    .param p5, "context"  # Landroid/content/Context;
    .param p6, "votesStorage"  # Lcom/android/server/display/mode/VotesStorage;

    .line 140
    const-string v0, ","

    iput-object p2, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mLock:Ljava/lang/Object;

    .line 141
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mDisplayModeDirector:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 142
    iget v1, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mHistoryCount:I

    new-array v1, v1, [Lcom/android/server/display/mode/DisplayModeDirectorImpl$DisplayModeDirectorEntry;

    iput-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mDisplayModeDirectorHistory:[Lcom/android/server/display/mode/DisplayModeDirectorImpl$DisplayModeDirectorEntry;

    .line 143
    iput-object p3, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mBrightnessObserver:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    .line 144
    iput-object p4, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mSettingsObserver:Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;

    .line 145
    iput-object p5, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mContext:Landroid/content/Context;

    .line 146
    iput-object p6, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    .line 147
    new-instance v1, Landroid/view/SurfaceControl$RefreshRateRange;

    invoke-direct {v1}, Landroid/view/SurfaceControl$RefreshRateRange;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mRenderRange:Landroid/view/SurfaceControl$RefreshRateRange;

    .line 148
    new-instance v1, Landroid/view/SurfaceControl$RefreshRateRange;

    const/4 v2, 0x0

    const/high16 v3, 0x7f800000  # Float.POSITIVE_INFINITY

    invoke-direct {v1, v2, v3}, Landroid/view/SurfaceControl$RefreshRateRange;-><init>(FF)V

    iput-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mPhysicRange:Landroid/view/SurfaceControl$RefreshRateRange;

    .line 149
    new-instance v1, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    invoke-direct {v1}, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mLastDisplayModeSpecs:Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    .line 150
    new-instance v1, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;

    invoke-direct {v1}, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mDesiredDisplayModeSpecs:Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;

    .line 152
    :try_start_33
    const-string/jumbo v1, "ro.vendor.mi_sf.skip_refresh_rate_by_brightness"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, "paramsString":Ljava/lang/String;
    if-nez v1, :cond_3d

    return-void

    .line 154
    :cond_3d
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 155
    .local v2, "typeStrings":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_48

    .line 156
    return-void

    .line 158
    :cond_48
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 159
    .local v3, "brightnessListStrings":[Ljava/lang/String;
    const/4 v5, 0x1

    aget-object v5, v2, v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, "refreshRateStrings":[Ljava/lang/String;
    array-length v5, v3

    if-ne v5, v4, :cond_8a

    array-length v5, v0

    if-eq v5, v4, :cond_5d

    goto :goto_8a

    .line 163
    :cond_5d
    array-length v4, v3

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mBrightnessList:[I

    .line 164
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_63
    array-length v5, v3

    if-ge v4, v5, :cond_73

    .line 165
    iget-object v5, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mBrightnessList:[I

    aget-object v6, v3, v4

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v5, v4

    .line 164
    add-int/lit8 v4, v4, 0x1

    goto :goto_63

    .line 167
    .end local v4  # "i":I
    :cond_73
    array-length v4, v0

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mRefreshRateLimits:[I

    .line 168
    const/4 v4, 0x0

    .restart local v4  # "i":I
    :goto_79
    array-length v5, v0

    if-ge v4, v5, :cond_89

    .line 169
    iget-object v5, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mRefreshRateLimits:[I

    aget-object v6, v0, v4

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v5, v4
    :try_end_86
    .catch Ljava/lang/NumberFormatException; {:try_start_33 .. :try_end_86} :catch_90
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_33 .. :try_end_86} :catch_8b

    .line 168
    add-int/lit8 v4, v4, 0x1

    goto :goto_79

    .line 171
    .end local v4  # "i":I
    :cond_89
    return-void

    .line 161
    :cond_8a
    :goto_8a
    return-void

    .line 174
    .end local v0  # "refreshRateStrings":[Ljava/lang/String;
    .end local v1  # "paramsString":Ljava/lang/String;
    .end local v2  # "typeStrings":[Ljava/lang/String;
    .end local v3  # "brightnessListStrings":[Ljava/lang/String;
    :catch_8b
    move-exception v0

    .line 175
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    goto :goto_95

    .line 172
    .end local v0  # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catch_90
    move-exception v0

    .line 173
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 176
    .end local v0  # "e":Ljava/lang/NumberFormatException;
    nop

    .line 177
    :goto_95
    return-void
.end method

.method public isAutoModeChanged()Z
    .registers 3

    .line 666
    iget-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mLastAutoMode:Z

    iget-boolean v1, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mCurrentAutoMode:Z

    if-eq v0, v1, :cond_c

    .line 667
    iget-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mCurrentAutoMode:Z

    iput-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mLastAutoMode:Z

    .line 668
    const/4 v0, 0x1

    return v0

    .line 670
    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public isAutoModeGroup(Landroid/view/Display$Mode;)Z
    .registers 3
    .param p1, "baseMode"  # Landroid/view/Display$Mode;

    .line 661
    iget-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mCurrentAutoMode:Z

    return v0
.end method

.method public isAutoModeLowFPSSupport()Z
    .registers 2

    .line 370
    iget-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mAutoModeLowFPSSupport:Z

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mArrModeIds:Ljava/util/List;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mArrModeIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method public isInHighPWMMode()Z
    .registers 2

    .line 634
    sget-boolean v0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mEnablePwmSwitch:Z

    if-eqz v0, :cond_7

    .line 635
    iget-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mIsInOverMode:Z

    return v0

    .line 637
    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public isInOverMode()Z
    .registers 2

    .line 626
    sget-boolean v0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mNormalModeSkipOveride:Z

    if-eqz v0, :cond_7

    .line 627
    iget-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mIsInOverMode:Z

    return v0

    .line 629
    :cond_7
    const/4 v0, 0x1

    return v0
.end method

.method public notifyDisplayModeSpecsChanged()V
    .registers 2

    .line 227
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mDisplayModeDirector:Lcom/android/server/display/mode/DisplayModeDirector;

    if-eqz v0, :cond_9

    .line 228
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mDisplayModeDirector:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-virtual {v0}, Lcom/android/server/display/mode/DisplayModeDirector;->notifyDesiredDisplayModeSpecsChanged()V

    .line 230
    :cond_9
    return-void
.end method

.method public onDesiredDisplayModeSpecsChanged(ILcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;Landroid/util/SparseArray;)V
    .registers 7
    .param p1, "displayId"  # I
    .param p2, "desiredDisplayModeSpecs"  # Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/display/mode/Vote;",
            ">;)V"
        }
    .end annotation

    .line 183
    .local p3, "votes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/mode/Vote;>;"
    if-eqz p3, :cond_b

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    .line 184
    .local v0, "noVotes":Z
    :goto_c
    if-nez v0, :cond_11

    .line 185
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->addToHistory(ILcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;Landroid/util/SparseArray;)Lcom/android/server/display/mode/DisplayModeDirectorImpl$DisplayModeDirectorEntry;

    .line 187
    :cond_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDesiredDisplayModeSpecsChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " noVotes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isautomode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mCurrentAutoMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DisplayModeDirectorImpl"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    return-void
.end method

.method public registerMiuiContentObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
    .registers 5
    .param p1, "cr"  # Landroid/content/ContentResolver;
    .param p2, "observer"  # Landroid/database/ContentObserver;

    .line 588
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mMiuiRefreshRateSetting:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 590
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mMiuiOptimizationSetting:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 592
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mPluginRefreshRateSetting:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 595
    const-string/jumbo v0, "thermal_limit_refresh_rate"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_1f

    .line 596
    const-string/jumbo v0, "thermal_limit_refresh_rate"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 598
    :cond_1f
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mThermalRefreshRateSetting:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 600
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mExternalDisplayRefreshRateSetting:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 602
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mMimotionPwmEnableSetting:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 604
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 605
    :try_start_31
    invoke-direct {p0}, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->updateExternalDisplayConnectedLocked()V

    .line 606
    invoke-direct {p0}, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->updateMiuiRefreshRateState()V

    .line 607
    monitor-exit v0

    .line 608
    return-void

    .line 607
    :catchall_39
    move-exception v1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_31 .. :try_end_3b} :catchall_39

    throw v1
.end method

.method public setForceDisableAutoMode(ZI)V
    .registers 5
    .param p1, "enable"  # Z
    .param p2, "index"  # I

    .line 675
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mIsForceSkipAutoMode:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v0

    .line 676
    .local v0, "keyIndex":I
    if-ltz v0, :cond_10

    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mIsForceSkipAutoMode:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    if-eq v1, p1, :cond_18

    .line 677
    :cond_10
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mIsForceSkipAutoMode:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 678
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->notifyDisplayModeSpecsChanged()V

    .line 680
    :cond_18
    return-void
.end method

.method public setForceDisableIdleRefreshRate(ZI)V
    .registers 5
    .param p1, "enable"  # Z
    .param p2, "index"  # I

    .line 727
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mIsForceSkipIdleRefreshRate:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v0

    .line 728
    .local v0, "keyIndex":I
    if-ltz v0, :cond_10

    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mIsForceSkipIdleRefreshRate:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    if-eq v1, p1, :cond_18

    .line 729
    :cond_10
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mIsForceSkipIdleRefreshRate:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 730
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->notifyDisplayModeSpecsChanged()V

    .line 732
    :cond_18
    return-void
.end method

.method public setGameMode(Z)V
    .registers 2
    .param p1, "value"  # Z

    .line 234
    iput-boolean p1, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mIsGameMode:Z

    .line 235
    return-void
.end method

.method public setMultiDisplaysLowRefreshRate(Z)V
    .registers 4
    .param p1, "limit"  # Z

    .line 827
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 828
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mMultiDisplaysLimit:Z

    if-ne v1, p1, :cond_9

    .line 829
    monitor-exit v0

    return-void

    .line 831
    :cond_9
    iput-boolean p1, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mMultiDisplaysLimit:Z

    .line 832
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mSettingsObserver:Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;

    invoke-virtual {v1}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->updateMiuiRefreshRateSettingLocked()V

    .line 833
    monitor-exit v0

    .line 834
    return-void

    .line 833
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public setSceneMaxRefreshRate(IF)V
    .registers 9
    .param p1, "displayId"  # I
    .param p2, "maxFrameRate"  # F

    .line 559
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mSceneMaxRefreshLock:Ljava/lang/Object;

    monitor-enter v0

    .line 560
    if-ltz p1, :cond_4a

    const/4 v1, 0x2

    if-lt p1, v1, :cond_9

    goto :goto_4a

    .line 564
    :cond_9
    :try_start_9
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mSceneMaxRefreshRateByDisplay:[[F

    aget-object v1, v1, p1

    const/4 v2, 0x0

    int-to-float v3, p1

    aput v3, v1, v2

    .line 565
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mSceneMaxRefreshRateByDisplay:[[F

    aget-object v1, v1, p1

    const/4 v2, 0x1

    aput p2, v1, v2

    .line 566
    const/4 v1, 0x0

    .line 567
    .local v1, "maxValidFrameRate":F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1a
    iget-object v4, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mSceneMaxRefreshRateByDisplay:[[F

    array-length v4, v4

    if-ge v3, v4, :cond_32

    .line 568
    iget-object v4, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mSceneMaxRefreshRateByDisplay:[[F

    aget-object v4, v4, v3

    aget v4, v4, v2

    .line 569
    .local v4, "rate":F
    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    if-lez v5, :cond_2f

    .line 570
    cmpl-float v5, v4, v1

    if-lez v5, :cond_2f

    .line 571
    move v1, v4

    .line 567
    .end local v4  # "rate":F
    :cond_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 575
    .end local v3  # "i":I
    :cond_32
    iget v2, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mSceneMaxRefreshRate:F

    cmpl-float v2, v2, v1

    if-nez v2, :cond_3a

    .line 576
    monitor-exit v0

    return-void

    .line 578
    :cond_3a
    iput v1, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mSceneMaxRefreshRate:F

    .line 579
    .end local v1  # "maxValidFrameRate":F
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_9 .. :try_end_3d} :catchall_6a

    .line 581
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 582
    :try_start_40
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mSettingsObserver:Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->updateMiuiRefreshRateSettingLocked()V

    .line 583
    monitor-exit v1

    .line 584
    return-void

    .line 583
    :catchall_47
    move-exception v0

    monitor-exit v1
    :try_end_49
    .catchall {:try_start_40 .. :try_end_49} :catchall_47

    throw v0

    .line 561
    :cond_4a
    :goto_4a
    :try_start_4a
    const-string v1, "DisplayModeDirectorImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid displayId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", only 0 and 1 are supported"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    monitor-exit v0

    return-void

    .line 579
    :catchall_6a
    move-exception v1

    monitor-exit v0
    :try_end_6c
    .catchall {:try_start_4a .. :try_end_6c} :catchall_6a

    throw v1
.end method

.method public setSmartDisplayPolicyEnd()V
    .registers 4

    .line 809
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mRefreshRateRanges:Landroid/view/SurfaceControl$RefreshRateRanges;

    monitor-enter v0

    .line 810
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mCoreScenarioPresent:Z

    if-nez v1, :cond_9

    .line 811
    monitor-exit v0

    return-void

    .line 813
    :cond_9
    const-string v1, "DisplayModeDirectorImpl"

    const-string v2, "SmartDisplayPolicyEnd"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mCoreScenarioPresent:Z

    .line 815
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->setFpsSwitchReason(I)V

    .line 816
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_1c

    .line 817
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->notifyDisplayModeSpecsChanged()V

    .line 818
    return-void

    .line 816
    :catchall_1c
    move-exception v1

    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public setSmartDisplayUpRefreshRatePolicy(FF)V
    .registers 9
    .param p1, "minRefreshRate"  # F
    .param p2, "maxRefreshRate"  # F

    .line 737
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mRefreshRateRanges:Landroid/view/SurfaceControl$RefreshRateRanges;

    monitor-enter v0

    .line 738
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mCoreScenarioPresent:Z

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mRenderRange:Landroid/view/SurfaceControl$RefreshRateRange;

    iget v1, v1, Landroid/view/SurfaceControl$RefreshRateRange;->min:F

    cmpl-float v1, v1, p1

    if-nez v1, :cond_19

    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mRenderRange:Landroid/view/SurfaceControl$RefreshRateRange;

    iget v1, v1, Landroid/view/SurfaceControl$RefreshRateRange;->max:F

    cmpl-float v1, v1, p2

    if-nez v1, :cond_19

    .line 741
    monitor-exit v0

    return-void

    .line 744
    :cond_19
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mRenderRange:Landroid/view/SurfaceControl$RefreshRateRange;

    iput p1, v1, Landroid/view/SurfaceControl$RefreshRateRange;->min:F

    .line 745
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mRenderRange:Landroid/view/SurfaceControl$RefreshRateRange;

    iput p2, v1, Landroid/view/SurfaceControl$RefreshRateRange;->max:F

    .line 746
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mRefreshRateRanges:Landroid/view/SurfaceControl$RefreshRateRanges;

    iget-object v1, v1, Landroid/view/SurfaceControl$RefreshRateRanges;->physical:Landroid/view/SurfaceControl$RefreshRateRange;

    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mPhysicRange:Landroid/view/SurfaceControl$RefreshRateRange;

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$RefreshRateRange;->copyFrom(Landroid/view/SurfaceControl$RefreshRateRange;)V

    .line 747
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mRefreshRateRanges:Landroid/view/SurfaceControl$RefreshRateRanges;

    iget-object v1, v1, Landroid/view/SurfaceControl$RefreshRateRanges;->render:Landroid/view/SurfaceControl$RefreshRateRange;

    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mRenderRange:Landroid/view/SurfaceControl$RefreshRateRange;

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$RefreshRateRange;->copyFrom(Landroid/view/SurfaceControl$RefreshRateRange;)V

    .line 748
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mCoreScenarioPresent:Z

    .line 749
    invoke-direct {p0}, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->shouldUseCoreScenarioPolicy()Z

    move-result v1

    .line 750
    .local v1, "applySmartDisplayPolicy":Z
    const-string v2, "DisplayModeDirectorImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setSmartDisplayUpRefreshRatePolicy "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 751
    if-eqz v1, :cond_6e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_71

    .line 754
    :cond_6e
    const-string/jumbo v4, "reject"

    :goto_71
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 750
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    monitor-exit v0
    :try_end_7d
    .catchall {:try_start_3 .. :try_end_7d} :catchall_83

    .line 757
    if-eqz v1, :cond_82

    .line 758
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->notifyDisplayModeSpecsChanged()V

    .line 760
    :cond_82
    return-void

    .line 755
    .end local v1  # "applySmartDisplayPolicy":Z
    :catchall_83
    move-exception v1

    :try_start_84
    monitor-exit v0
    :try_end_85
    .catchall {:try_start_84 .. :try_end_85} :catchall_83

    throw v1
.end method

.method public setSmartDisplayUpRefreshRatePolicyOrign(IFF)V
    .registers 9
    .param p1, "baseSfModeId"  # I
    .param p2, "minRefreshRate"  # F
    .param p3, "maxRefreshRate"  # F

    .line 762
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mRefreshRateRanges:Landroid/view/SurfaceControl$RefreshRateRanges;

    monitor-enter v0

    .line 763
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mCoreScenarioPresent:Z

    if-eqz v1, :cond_1d

    iget v1, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mBaseSfModeId:I

    if-ne v1, p1, :cond_1d

    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mRenderRange:Landroid/view/SurfaceControl$RefreshRateRange;

    iget v1, v1, Landroid/view/SurfaceControl$RefreshRateRange;->min:F

    cmpl-float v1, v1, p2

    if-nez v1, :cond_1d

    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mRenderRange:Landroid/view/SurfaceControl$RefreshRateRange;

    iget v1, v1, Landroid/view/SurfaceControl$RefreshRateRange;->max:F

    cmpl-float v1, v1, p3

    if-nez v1, :cond_1d

    .line 767
    monitor-exit v0

    return-void

    .line 769
    :cond_1d
    iput p1, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mBaseSfModeId:I

    .line 770
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mRenderRange:Landroid/view/SurfaceControl$RefreshRateRange;

    iput p2, v1, Landroid/view/SurfaceControl$RefreshRateRange;->min:F

    .line 771
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mRenderRange:Landroid/view/SurfaceControl$RefreshRateRange;

    iput p3, v1, Landroid/view/SurfaceControl$RefreshRateRange;->max:F

    .line 772
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mRefreshRateRanges:Landroid/view/SurfaceControl$RefreshRateRanges;

    iget-object v1, v1, Landroid/view/SurfaceControl$RefreshRateRanges;->physical:Landroid/view/SurfaceControl$RefreshRateRange;

    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mPhysicRange:Landroid/view/SurfaceControl$RefreshRateRange;

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$RefreshRateRange;->copyFrom(Landroid/view/SurfaceControl$RefreshRateRange;)V

    .line 773
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mRefreshRateRanges:Landroid/view/SurfaceControl$RefreshRateRanges;

    iget-object v1, v1, Landroid/view/SurfaceControl$RefreshRateRanges;->render:Landroid/view/SurfaceControl$RefreshRateRange;

    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mRenderRange:Landroid/view/SurfaceControl$RefreshRateRange;

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$RefreshRateRange;->copyFrom(Landroid/view/SurfaceControl$RefreshRateRange;)V

    .line 774
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mCoreScenarioPresent:Z

    .line 775
    invoke-direct {p0}, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->shouldUseCoreScenarioPolicy()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mIsCoreSceneActive:Z

    .line 776
    const-string v1, "DisplayModeDirectorImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSmartDisplayUpRefreshRatePolicy "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 777
    iget-boolean v3, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mIsCoreSceneActive:Z

    if-eqz v3, :cond_78

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_7b

    .line 780
    :cond_78
    const-string/jumbo v3, "reject"

    :goto_7b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 776
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    monitor-exit v0
    :try_end_87
    .catchall {:try_start_3 .. :try_end_87} :catchall_8f

    .line 783
    iget-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mIsCoreSceneActive:Z

    if-eqz v0, :cond_8e

    .line 784
    invoke-direct {p0}, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->setDesiredDisplayModeSpecs()V

    .line 786
    :cond_8e
    return-void

    .line 781
    :catchall_8f
    move-exception v1

    :try_start_90
    monitor-exit v0
    :try_end_91
    .catchall {:try_start_90 .. :try_end_91} :catchall_8f

    throw v1
.end method

.method public setVideoMaxRefreshRate(F)V
    .registers 4
    .param p1, "fps"  # F

    .line 375
    iput p1, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mVideoMaxRefreshRate:F

    .line 376
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 377
    :try_start_5
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mSettingsObserver:Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;

    invoke-virtual {v1}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->updateMiuiRefreshRateSettingLocked()V

    .line 378
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_f

    .line 379
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->notifyDisplayModeSpecsChanged()V

    .line 380
    return-void

    .line 378
    :catchall_f
    move-exception v1

    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public shouldSkip90hzScenarioPolicy(F)V
    .registers 7
    .param p1, "brightness"  # F

    .line 324
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mBrightnessList:[I

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mBrightnessList:[I

    array-length v0, v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_b

    goto :goto_53

    .line 328
    :cond_b
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mBrightnessList:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 329
    .local v0, "denominator":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3727c5ac  # 1.0E-5f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1e

    .line 330
    return-void

    .line 333
    :cond_1e
    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mBrightnessList:[I

    const/4 v4, 0x0

    aget v2, v2, v4

    sub-int/2addr v2, v1

    int-to-float v1, v2

    div-float/2addr v1, v0

    .line 334
    .local v1, "threshold":F
    const/4 v2, 0x0

    .line 335
    .local v2, "currentForceSkip90hzScenario":Z
    add-float v4, v1, v3

    cmpg-float v4, p1, v4

    if-gtz v4, :cond_30

    .line 336
    const/4 v2, 0x1

    move v3, v2

    goto :goto_37

    .line 337
    :cond_30
    add-float/2addr v3, v1

    cmpl-float v3, p1, v3

    if-lez v3, :cond_52

    .line 338
    const/4 v2, 0x0

    move v3, v2

    .line 342
    .end local v2  # "currentForceSkip90hzScenario":Z
    .local v3, "currentForceSkip90hzScenario":Z
    :goto_37
    iget-object v4, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 343
    :try_start_3a
    iput-boolean v3, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mIsForceSkip90hzScenario:Z

    .line 344
    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mSettingsObserver:Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;

    invoke-virtual {v2}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->updateMiuiRefreshRateSettingLocked()V

    .line 345
    monitor-exit v4
    :try_end_42
    .catchall {:try_start_3a .. :try_end_42} :catchall_4f

    .line 346
    sget-boolean v2, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mEnablePwmSwitch:Z

    if-eqz v2, :cond_4b

    iget-boolean v2, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mIsInOverMode:Z

    if-eqz v2, :cond_4b

    return-void

    .line 347
    :cond_4b
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->notifyDisplayModeSpecsChanged()V

    .line 348
    return-void

    .line 345
    :catchall_4f
    move-exception v2

    :try_start_50
    monitor-exit v4
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    throw v2

    .line 340
    .end local v3  # "currentForceSkip90hzScenario":Z
    .restart local v2  # "currentForceSkip90hzScenario":Z
    :cond_52
    return-void

    .line 325
    .end local v0  # "denominator":F
    .end local v1  # "threshold":F
    .end local v2  # "currentForceSkip90hzScenario":Z
    :cond_53
    :goto_53
    return-void
.end method

.method public shouldSkipCoreScenarioPolicy(ZI)V
    .registers 6
    .param p1, "skip"  # Z
    .param p2, "index"  # I

    .line 314
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 315
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mIsForceSkipCoreScenario:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v1

    .line 316
    .local v1, "keyIndex":I
    if-ltz v1, :cond_13

    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mIsForceSkipCoreScenario:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-eq v2, p1, :cond_18

    .line 317
    :cond_13
    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mIsForceSkipCoreScenario:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p2, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 319
    .end local v1  # "keyIndex":I
    :cond_18
    monitor-exit v0

    .line 320
    return-void

    .line 319
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public updateDisplaySize(III)V
    .registers 8
    .param p1, "displayId"  # I
    .param p2, "width"  # I
    .param p3, "height"  # I

    .line 306
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 307
    :try_start_3
    invoke-static {p2, p3}, Lcom/android/server/display/mode/Vote;->forSize(II)Lcom/android/server/display/mode/Vote;

    move-result-object v1

    .line 308
    .local v1, "sizeVote":Lcom/android/server/display/mode/Vote;
    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    const/16 v3, 0x1b

    invoke-virtual {v2, p1, v3, v1}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    .line 309
    .end local v1  # "sizeVote":Lcom/android/server/display/mode/Vote;
    monitor-exit v0

    .line 310
    return-void

    .line 309
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public updateMiuiRefreshRateEnhance(Landroid/net/Uri;)Z
    .registers 4
    .param p1, "uri"  # Landroid/net/Uri;

    .line 540
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mMiuiOptimizationSetting:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_d

    .line 541
    invoke-direct {p0}, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->updateMiuiRefreshRateState()V

    .line 542
    return v1

    .line 543
    :cond_d
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mExternalDisplayRefreshRateSetting:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 544
    invoke-direct {p0}, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->updateExternalDisplayConnectedLocked()V

    .line 545
    return v1

    .line 546
    :cond_19
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mPluginRefreshRateSetting:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 547
    invoke-direct {p0}, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->updatePluginMaxRefreshRate()V

    .line 548
    return v1

    .line 549
    :cond_25
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mThermalRefreshRateSetting:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mMiuiRefreshRateSetting:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    goto :goto_41

    .line 551
    :cond_36
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mMimotionPwmEnableSetting:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 552
    return v1

    .line 554
    :cond_3f
    const/4 v0, 0x0

    return v0

    .line 550
    :cond_41
    :goto_41
    return v1
.end method

.method public updateMiuiRefreshRateSettingLocked(F)Z
    .registers 11
    .param p1, "minRefreshRate"  # F

    .line 389
    invoke-direct {p0}, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->getMiuiRefreshRateRange()Landroid/view/SurfaceControl$RefreshRateRange;

    move-result-object v0

    .line 391
    .local v0, "miuiRefreshRange":Landroid/view/SurfaceControl$RefreshRateRange;
    iget-boolean v1, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mMiuiRefreshRateEnable:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_76

    .line 392
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mRefreshRateLimits:[I

    const/4 v3, 0x1

    if-eqz v1, :cond_34

    iget-boolean v1, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mIsInOverMode:Z

    if-nez v1, :cond_34

    iget-boolean v1, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mIsGameMode:Z

    if-nez v1, :cond_34

    iget-boolean v1, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mIsForceSkip90hzScenario:Z

    if-eqz v1, :cond_34

    if-eqz v0, :cond_34

    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mRefreshRateLimits:[I

    array-length v1, v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_34

    iget v1, v0, Landroid/view/SurfaceControl$RefreshRateRange;->max:F

    iget-object v4, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mRefreshRateLimits:[I

    aget v4, v4, v2

    int-to-float v4, v4

    cmpl-float v1, v1, v4

    if-nez v1, :cond_34

    .line 395
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mRefreshRateLimits:[I

    aget v1, v1, v3

    int-to-float v1, v1

    iput v1, v0, Landroid/view/SurfaceControl$RefreshRateRange;->max:F

    .line 397
    :cond_34
    if-eqz v0, :cond_3f

    .line 398
    iget v1, v0, Landroid/view/SurfaceControl$RefreshRateRange;->min:F

    iget v4, v0, Landroid/view/SurfaceControl$RefreshRateRange;->max:F

    invoke-static {v1, v4}, Lcom/android/server/display/mode/Vote;->forRenderFrameRates(FF)Lcom/android/server/display/mode/Vote;

    move-result-object v1

    goto :goto_40

    :cond_3f
    const/4 v1, 0x0

    .line 399
    .local v1, "miuiRefreshVote":Lcom/android/server/display/mode/Vote;
    :goto_40
    invoke-direct {p0}, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->updateThermalVote()Landroid/view/SurfaceControl$RefreshRateRange;

    move-result-object v4

    .line 400
    .local v4, "thermalRange":Landroid/view/SurfaceControl$RefreshRateRange;
    iget-object v5, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    const/16 v6, 0x17

    invoke-virtual {v5, v6, v1}, Lcom/android/server/display/mode/VotesStorage;->updateGlobalVote(ILcom/android/server/display/mode/Vote;)V

    .line 402
    invoke-direct {p0}, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->clearAospSettingVote()V

    .line 403
    const/4 p1, 0x0

    .line 404
    const/high16 v5, 0x7f800000  # Float.POSITIVE_INFINITY

    if-nez v4, :cond_55

    move v6, v5

    goto :goto_57

    .line 405
    :cond_55
    iget v6, v4, Landroid/view/SurfaceControl$RefreshRateRange;->max:F

    :goto_57
    nop

    .line 406
    .local v6, "thermalRefreshRate":F
    if-nez v0, :cond_5b

    goto :goto_5d

    .line 407
    :cond_5b
    iget v5, v0, Landroid/view/SurfaceControl$RefreshRateRange;->max:F

    :goto_5d
    nop

    .line 408
    .local v5, "miuiRefresh":F
    invoke-static {v6, v5}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 409
    .local v7, "miuiMaxRefreshRate":F
    const/high16 v8, 0x42700000  # 60.0f

    cmpl-float v8, v7, v8

    if-nez v8, :cond_6a

    .line 410
    const/high16 v7, 0x42740000  # 61.0f

    .line 412
    :cond_6a
    iget-object v8, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mBrightnessObserver:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    invoke-virtual {v8, p1, v7}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->onRefreshRateSettingChangedLocked(FF)V

    .line 413
    invoke-virtual {p0, v2}, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->updateSystemRequestVote(Z)V

    .line 414
    if-eqz v1, :cond_75

    move v2, v3

    :cond_75
    return v2

    .line 416
    .end local v1  # "miuiRefreshVote":Lcom/android/server/display/mode/Vote;
    .end local v4  # "thermalRange":Landroid/view/SurfaceControl$RefreshRateRange;
    .end local v5  # "miuiRefresh":F
    .end local v6  # "thermalRefreshRate":F
    .end local v7  # "miuiMaxRefreshRate":F
    :cond_76
    invoke-direct {p0}, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->clearMiuiSettingVote()V

    .line 417
    return v2
.end method

.method public updateRefreshRateResultIfNeeded(Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;[Landroid/view/Display$Mode;Landroid/view/Display$Mode;)V
    .registers 10
    .param p1, "displayModeSpecs"  # Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;
    .param p2, "supportedModes"  # [Landroid/view/Display$Mode;
    .param p3, "baseMode"  # Landroid/view/Display$Mode;

    .line 694
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mRefreshRateRanges:Landroid/view/SurfaceControl$RefreshRateRanges;

    monitor-enter v0

    .line 696
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->shouldUseCoreScenarioPolicy()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_5b

    .line 697
    const-string v1, "DisplayModeDirectorImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "use smart display refresh rate policy "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mEnablePwmSwitch:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    iput-boolean v2, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mIsCoreSceneActive:Z

    .line 699
    iget-object v1, p1, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;->primary:Landroid/view/SurfaceControl$RefreshRateRanges;

    iget-object v4, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mRefreshRateRanges:Landroid/view/SurfaceControl$RefreshRateRanges;

    invoke-virtual {v1, v4}, Landroid/view/SurfaceControl$RefreshRateRanges;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    iget-object v1, p1, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;->appRequest:Landroid/view/SurfaceControl$RefreshRateRanges;

    iget-object v4, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mRefreshRateRanges:Landroid/view/SurfaceControl$RefreshRateRanges;

    .line 700
    invoke-virtual {v1, v4}, Landroid/view/SurfaceControl$RefreshRateRanges;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_46

    .line 701
    :cond_3c
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mRenderRange:Landroid/view/SurfaceControl$RefreshRateRange;

    iget v1, v1, Landroid/view/SurfaceControl$RefreshRateRange;->max:F

    invoke-direct {p0, p2, p3, v1}, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->getDisplayModeFromRefreshRate([Landroid/view/Display$Mode;Landroid/view/Display$Mode;F)I

    move-result v1

    iput v1, p1, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;->baseModeId:I

    .line 704
    :cond_46
    iput-boolean v3, p1, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;->allowGroupSwitching:Z

    .line 705
    iget-object v1, p1, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;->primary:Landroid/view/SurfaceControl$RefreshRateRanges;

    iget-object v4, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mRefreshRateRanges:Landroid/view/SurfaceControl$RefreshRateRanges;

    invoke-virtual {v1, v4}, Landroid/view/SurfaceControl$RefreshRateRanges;->copyFrom(Landroid/view/SurfaceControl$RefreshRateRanges;)V

    .line 706
    iget-object v1, p1, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;->appRequest:Landroid/view/SurfaceControl$RefreshRateRanges;

    iget-object v4, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mRefreshRateRanges:Landroid/view/SurfaceControl$RefreshRateRanges;

    invoke-virtual {v1, v4}, Landroid/view/SurfaceControl$RefreshRateRanges;->copyFrom(Landroid/view/SurfaceControl$RefreshRateRanges;)V

    .line 707
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->setFpsSwitchReason(I)V

    goto :goto_5d

    .line 709
    :cond_5b
    iput-boolean v3, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mIsCoreSceneActive:Z

    .line 711
    :goto_5d
    sget-boolean v1, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mMoveFrameRateStrategyUp:Z

    if-eqz v1, :cond_7f

    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mAutoRefreshRates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7f

    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mAutoRefreshRates:Ljava/util/List;

    .line 712
    invoke-virtual {p3}, Landroid/view/Display$Mode;->getVsyncRate()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7f

    .line 713
    invoke-direct {p0, p2, p3}, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->getAutoRefreshRateLocked([Landroid/view/Display$Mode;Landroid/view/Display$Mode;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mCurrentAutoMode:Z

    .line 715
    :cond_7f
    sget-boolean v1, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mMoveFrameRateStrategyUp:Z

    if-eqz v1, :cond_9c

    iget-object v1, p1, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;->mIdleScreenRefreshRateConfig:Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;

    if-eqz v1, :cond_9c

    invoke-direct {p0}, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->shouldUseCoreScenarioPolicy()Z

    move-result v1

    if-nez v1, :cond_95

    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mIsForceSkipIdleRefreshRate:Landroid/util/SparseBooleanArray;

    .line 716
    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->indexOfValue(Z)I

    move-result v1

    if-ltz v1, :cond_9c

    .line 718
    :cond_95
    new-instance v1, Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;

    invoke-direct {v1, v3}, Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;-><init>(I)V

    iput-object v1, p1, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;->mIdleScreenRefreshRateConfig:Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;

    .line 720
    :cond_9c
    const-string v1, "DisplayModeDirectorImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateRefreshRateResultIfNeeded after:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mNormalModeSkipOveride: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mNormalModeSkipOveride:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    monitor-exit v0

    .line 723
    return-void

    .line 722
    :catchall_c3
    move-exception v1

    monitor-exit v0
    :try_end_c5
    .catchall {:try_start_3 .. :try_end_c5} :catchall_c3

    throw v1
.end method

.method public updateSystemRequestVote(Z)V
    .registers 7
    .param p1, "isIncts"  # Z

    .line 443
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mimotion_pwm_enable"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 445
    .local v0, "miMotionPwmEnable":I
    const/4 v1, 0x2

    const/16 v3, 0x11

    if-nez p1, :cond_19

    sget-boolean v4, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mEnablePwmSwitch:Z

    if-eqz v4, :cond_19

    if-eq v0, v1, :cond_1f

    :cond_19
    if-eqz p1, :cond_2e

    sget-boolean v4, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mEnablePwmSwitch:Z

    if-eqz v4, :cond_2e

    .line 446
    :cond_1f
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mIsInOverMode:Z

    .line 447
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mArrModeIds:Ljava/util/List;

    invoke-static {v2}, Lcom/android/server/display/mode/Vote;->forSupportedModes(Ljava/util/List;)Lcom/android/server/display/mode/Vote;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/android/server/display/mode/VotesStorage;->updateGlobalVote(ILcom/android/server/display/mode/Vote;)V

    goto :goto_4a

    .line 448
    :cond_2e
    sget-boolean v4, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mEnablePwmSwitch:Z

    if-eqz v4, :cond_42

    if-eq v0, v1, :cond_42

    .line 449
    iput-boolean v2, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mIsInOverMode:Z

    .line 450
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mDCModeIds:Ljava/util/List;

    invoke-static {v2}, Lcom/android/server/display/mode/Vote;->forSupportedModes(Ljava/util/List;)Lcom/android/server/display/mode/Vote;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/android/server/display/mode/VotesStorage;->updateGlobalVote(ILcom/android/server/display/mode/Vote;)V

    goto :goto_4a

    .line 452
    :cond_42
    iput-boolean v2, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mIsInOverMode:Z

    .line 453
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/android/server/display/mode/VotesStorage;->updateGlobalVote(ILcom/android/server/display/mode/Vote;)V

    .line 455
    :goto_4a
    return-void
.end method
