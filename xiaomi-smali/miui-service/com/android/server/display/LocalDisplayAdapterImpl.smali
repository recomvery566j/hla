# classes.dex

.class public Lcom/android/server/display/LocalDisplayAdapterImpl;
.super Lcom/android/server/display/LocalDisplayAdapterStub;
.source "LocalDisplayAdapterImpl.java"


# static fields
.field private static final IS_AOD_NORMAL_BRIGHTNESS:Z

.field private static final MIUI_PRIMARY_MIRROR_DISPLAY_NAME:Ljava/lang/String; = "screen-mirror-ScreenRecorder"

.field private static final SCREEN_ON_TOOK:Ljava/lang/String; = "screen on took in fold device"

.field private static final TAG:Ljava/lang/String; = "LocalDisplayAdapterImpl"

.field public static final mIsDualRearDevice:Z

.field private static final mIsFlipDevice:Z

.field private static final mIsFoldDevice:Z


# instance fields
.field private DeviceStateManagerServiceImpl:Lcom/android/server/devicestate/DeviceStateManagerServiceStub;

.field private mDeviceState:Z

.field private volatile mExternalScreenConfiguration:Landroid/content/res/Configuration;

.field private volatile mInternalScreenConfiguration:Landroid/content/res/Configuration;

.field private final mLock:Ljava/lang/Object;

.field private mPreBrightnessState:F

.field private mScreenOnStart:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 24
    invoke-static {}, Lmiui/util/MiuiMultiDisplayTypeInfo;->isFoldDeviceInside()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/LocalDisplayAdapterImpl;->mIsFoldDevice:Z

    .line 25
    invoke-static {}, Lmiui/util/MiuiMultiDisplayTypeInfo;->isFlipDevice()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/LocalDisplayAdapterImpl;->mIsFlipDevice:Z

    .line 28
    invoke-static {}, Lmiui/util/MiuiMultiDisplayTypeInfo;->isIndependentRearDevice()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/LocalDisplayAdapterImpl;->mIsDualRearDevice:Z

    .line 47
    const-string/jumbo v0, "is_aod_normal_brightness"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/LocalDisplayAdapterImpl;->IS_AOD_NORMAL_BRIGHTNESS:Z

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 49
    invoke-direct {p0}, Lcom/android/server/display/LocalDisplayAdapterStub;-><init>()V

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapterImpl;->mLock:Ljava/lang/Object;

    .line 50
    invoke-static {}, Lcom/android/server/devicestate/DeviceStateManagerServiceStub;->getInstance()Lcom/android/server/devicestate/DeviceStateManagerServiceStub;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapterImpl;->DeviceStateManagerServiceImpl:Lcom/android/server/devicestate/DeviceStateManagerServiceStub;

    .line 51
    return-void
.end method

.method private createRoundCornerResources(Landroid/content/res/Resources;Landroid/content/res/Configuration;)Landroid/content/res/Resources;
    .registers 7
    .param p1, "res"  # Landroid/content/res/Resources;
    .param p2, "config"  # Landroid/content/res/Configuration;

    .line 163
    new-instance v0, Landroid/content/res/Resources;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/content/res/Resources;-><init>(Z)V

    .line 164
    .local v0, "roundCornerRes":Landroid/content/res/Resources;
    new-instance v1, Landroid/content/res/ResourcesImpl;

    invoke-virtual {p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    .line 165
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    move-result-object v3

    invoke-direct {v1, v2, p2, v3}, Landroid/content/res/ResourcesImpl;-><init>(Landroid/content/res/AssetManager;Landroid/content/res/Configuration;Landroid/view/DisplayAdjustments;)V

    .line 166
    .local v1, "impl":Landroid/content/res/ResourcesImpl;
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->setImpl(Landroid/content/res/ResourcesImpl;)V

    .line 167
    return-object v0
.end method


# virtual methods
.method public getRoundCornerResources(Landroid/content/res/Resources;Z)Landroid/content/res/Resources;
    .registers 9
    .param p1, "resources"  # Landroid/content/res/Resources;
    .param p2, "isFirstDisplay"  # Z

    .line 133
    sget-boolean v0, Lcom/android/server/display/LocalDisplayAdapterImpl;->mIsFlipDevice:Z

    if-nez v0, :cond_5

    .line 134
    return-object p1

    .line 136
    :cond_5
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 138
    .local v0, "config":Landroid/content/res/Configuration;
    const-string v1, " to "

    const-string v2, "LocalDisplayAdapterImpl"

    const-string/jumbo v3, "|"

    if-eqz p2, :cond_6a

    .line 139
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapterImpl;->mInternalScreenConfiguration:Landroid/content/res/Configuration;

    if-eqz v4, :cond_c1

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getScreenType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_c1

    .line 141
    new-instance v4, Landroid/content/res/Configuration;

    invoke-direct {v4, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v4, p0, Lcom/android/server/display/LocalDisplayAdapterImpl;->mExternalScreenConfiguration:Landroid/content/res/Configuration;

    .line 142
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updating internal screen config, change screenType|screenHeightDp from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 143
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getScreenType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapterImpl;->mInternalScreenConfiguration:Landroid/content/res/Configuration;

    .line 144
    invoke-virtual {v4}, Landroid/content/res/Configuration;->getScreenType()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/display/LocalDisplayAdapterImpl;->mInternalScreenConfiguration:Landroid/content/res/Configuration;

    iget v3, v3, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 142
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapterImpl;->mInternalScreenConfiguration:Landroid/content/res/Configuration;

    invoke-direct {p0, p1, v1}, Lcom/android/server/display/LocalDisplayAdapterImpl;->createRoundCornerResources(Landroid/content/res/Resources;Landroid/content/res/Configuration;)Landroid/content/res/Resources;

    move-result-object v1

    return-object v1

    .line 149
    :cond_6a
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapterImpl;->mExternalScreenConfiguration:Landroid/content/res/Configuration;

    if-eqz v4, :cond_c1

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getScreenType()I

    move-result v4

    if-nez v4, :cond_c1

    .line 151
    new-instance v4, Landroid/content/res/Configuration;

    invoke-direct {v4, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v4, p0, Lcom/android/server/display/LocalDisplayAdapterImpl;->mInternalScreenConfiguration:Landroid/content/res/Configuration;

    .line 152
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updating external screen config, change screenType|screenHeightDp from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 153
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getScreenType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapterImpl;->mExternalScreenConfiguration:Landroid/content/res/Configuration;

    .line 154
    invoke-virtual {v4}, Landroid/content/res/Configuration;->getScreenType()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/display/LocalDisplayAdapterImpl;->mExternalScreenConfiguration:Landroid/content/res/Configuration;

    iget v3, v3, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 152
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapterImpl;->mExternalScreenConfiguration:Landroid/content/res/Configuration;

    invoke-direct {p0, p1, v1}, Lcom/android/server/display/LocalDisplayAdapterImpl;->createRoundCornerResources(Landroid/content/res/Resources;Landroid/content/res/Configuration;)Landroid/content/res/Resources;

    move-result-object v1

    return-object v1

    .line 159
    :cond_c1
    return-object p1
.end method

.method public isAodNormalbrightness()Z
    .registers 2

    .line 110
    sget-boolean v0, Lcom/android/server/display/LocalDisplayAdapterImpl;->IS_AOD_NORMAL_BRIGHTNESS:Z

    return v0
.end method

.method public isPrimaryMirrorProjection(Landroid/view/DisplayInfo;)Z
    .registers 6
    .param p1, "info"  # Landroid/view/DisplayInfo;

    .line 101
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 102
    return v0

    .line 104
    :cond_4
    iget-object v1, p1, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    .line 105
    .local v1, "uniqueId":Ljava/lang/String;
    iget v2, p1, Landroid/view/DisplayInfo;->type:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_18

    if-eqz v1, :cond_18

    .line 106
    const-string/jumbo v2, "screen-mirror-ScreenRecorder"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    nop

    .line 105
    :goto_19
    return v0
.end method

.method public printScreenOnTimeEnd(F)V
    .registers 9
    .param p1, "brightnessState"  # F

    .line 73
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapterImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 74
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/display/LocalDisplayAdapterImpl;->mDeviceState:Z

    if-eqz v1, :cond_45

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapterImpl;->mPreBrightnessState:F

    const/high16 v2, -0x40800000  # -1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_45

    cmpl-float v1, p1, v2

    if-eqz v1, :cond_45

    .line 75
    const-string v1, "LocalDisplayAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "screen on took in fold device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 76
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/server/display/LocalDisplayAdapterImpl;->mScreenOnStart:J

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 75
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const-string/jumbo v1, "screen on took in fold device"

    const/4 v2, 0x0

    const-wide/32 v3, 0x20000

    invoke-static {v3, v4, v1, v2}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 78
    iput-boolean v2, p0, Lcom/android/server/display/LocalDisplayAdapterImpl;->mDeviceState:Z

    .line 80
    :cond_45
    iput p1, p0, Lcom/android/server/display/LocalDisplayAdapterImpl;->mPreBrightnessState:F

    .line 81
    monitor-exit v0

    .line 83
    return-void

    .line 81
    :catchall_49
    move-exception v1

    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_3 .. :try_end_4b} :catchall_49

    throw v1
.end method

.method public printScreenOnTimeStart(II)V
    .registers 10
    .param p1, "state"  # I
    .param p2, "deviceState"  # I

    .line 87
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapterImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 88
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapterImpl;->DeviceStateManagerServiceImpl:Lcom/android/server/devicestate/DeviceStateManagerServiceStub;

    invoke-virtual {v1, p1}, Lcom/android/server/devicestate/DeviceStateManagerServiceStub;->isDeviceFolded(I)Z

    move-result v1

    const-wide/32 v2, 0x20000

    const/4 v4, 0x0

    if-nez v1, :cond_27

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapterImpl;->DeviceStateManagerServiceImpl:Lcom/android/server/devicestate/DeviceStateManagerServiceStub;

    .line 89
    invoke-virtual {v1, p2}, Lcom/android/server/devicestate/DeviceStateManagerServiceStub;->isDeviceFolded(I)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 90
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/display/LocalDisplayAdapterImpl;->mDeviceState:Z

    .line 91
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/display/LocalDisplayAdapterImpl;->mScreenOnStart:J

    .line 92
    const-string/jumbo v1, "screen on took in fold device"

    invoke-static {v2, v3, v1, v4}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    goto :goto_3f

    .line 93
    :cond_27
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapterImpl;->DeviceStateManagerServiceImpl:Lcom/android/server/devicestate/DeviceStateManagerServiceStub;

    invoke-virtual {v1, p1}, Lcom/android/server/devicestate/DeviceStateManagerServiceStub;->isDeviceFolded(I)Z

    move-result v1

    if-eqz v1, :cond_3f

    iget-boolean v1, p0, Lcom/android/server/display/LocalDisplayAdapterImpl;->mDeviceState:Z

    if-eqz v1, :cond_3f

    .line 94
    iput-boolean v4, p0, Lcom/android/server/display/LocalDisplayAdapterImpl;->mDeviceState:Z

    .line 95
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/android/server/display/LocalDisplayAdapterImpl;->mScreenOnStart:J

    .line 96
    const-string/jumbo v1, "screen on took in fold device"

    invoke-static {v2, v3, v1, v4}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 98
    :cond_3f
    :goto_3f
    monitor-exit v0

    .line 99
    return-void

    .line 98
    :catchall_41
    move-exception v1

    monitor-exit v0
    :try_end_43
    .catchall {:try_start_3 .. :try_end_43} :catchall_41

    throw v1
.end method

.method public setDeviceInfoFlagIfNeeded(Lcom/android/server/display/DisplayDeviceInfo;Z)V
    .registers 5
    .param p1, "deviceInfo"  # Lcom/android/server/display/DisplayDeviceInfo;
    .param p2, "isFirstDisplay"  # Z

    .line 55
    sget-boolean v0, Lcom/android/server/display/LocalDisplayAdapterImpl;->mIsFoldDevice:Z

    if-nez v0, :cond_8

    sget-boolean v0, Lcom/android/server/display/LocalDisplayAdapterImpl;->mIsFlipDevice:Z

    if-eqz v0, :cond_e

    .line 56
    :cond_8
    iget v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 58
    :cond_e
    if-nez p2, :cond_2b

    sget-boolean v0, Lcom/android/server/display/LocalDisplayAdapterImpl;->mIsDualRearDevice:Z

    if-nez v0, :cond_1f

    const-string/jumbo v0, "star"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 59
    :cond_1f
    iget v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 60
    iget v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 62
    :cond_2b
    return-void
.end method

.method public setOrUpdateSystemUIConfiguration(Z)V
    .registers 6
    .param p1, "folded"  # Z

    .line 115
    sget-boolean v0, Lcom/android/server/display/LocalDisplayAdapterImpl;->mIsFlipDevice:Z

    if-nez v0, :cond_5

    .line 116
    return-void

    .line 118
    :cond_5
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/content/Context;

    move-result-object v0

    .line 119
    .local v0, "systemUiContext":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 120
    .local v1, "systemUiConfig":Landroid/content/res/Configuration;
    if-eqz p1, :cond_25

    .line 121
    invoke-virtual {v1}, Landroid/content/res/Configuration;->getScreenType()I

    move-result v2

    if-nez v2, :cond_33

    .line 123
    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v2, p0, Lcom/android/server/display/LocalDisplayAdapterImpl;->mInternalScreenConfiguration:Landroid/content/res/Configuration;

    goto :goto_33

    .line 125
    :cond_25
    invoke-virtual {v1}, Landroid/content/res/Configuration;->getScreenType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_33

    .line 127
    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v2, p0, Lcom/android/server/display/LocalDisplayAdapterImpl;->mExternalScreenConfiguration:Landroid/content/res/Configuration;

    .line 129
    :cond_33
    :goto_33
    return-void
.end method

.method public updateScreenEffectIfNeeded(IZ)V
    .registers 5
    .param p1, "state"  # I
    .param p2, "isFirstDisplay"  # Z

    .line 66
    sget-boolean v0, Lcom/android/server/display/LocalDisplayAdapterImpl;->mIsDualRearDevice:Z

    if-nez v0, :cond_f

    const-string/jumbo v0, "star"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_f
    if-eqz p2, :cond_18

    .line 67
    :cond_11
    invoke-static {}, Lcom/android/server/display/DisplayFeatureManagerServiceStub;->getInstance()Lcom/android/server/display/DisplayFeatureManagerServiceStub;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/display/DisplayFeatureManagerServiceStub;->updateScreenEffect(I)V

    .line 69
    :cond_18
    return-void
.end method
