# classes.dex

.class public Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;
.super Ljava/lang/Object;
.source "DozeBrightnessStrategyImpl.java"

# interfaces
.implements Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyStub;
.implements Lcom/android/server/display/DozeAutoBrightnessController$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl$SettingsObserver;
    }
.end annotation


# static fields
.field private static final ALWAYS_ON:I = 0x1

.field private static final DOZE_HBM_NIT_DEFAULT:F = 60.0f

.field private static final DOZE_LBM_NIT_DEFAULT:F = 5.0f

.field private static final DOZE_WAKE_LOCK_TAG:Ljava/lang/String; = "dream:doze"

.field private static final FULL_AOD:I = 0x1

.field public static final IS_DUAL_REAR_DEVICE:Z

.field private static final IS_SPECIAL_LOCALIZED_AOD:Z

.field private static final KEY_FULL_SCREEN_AOD_MODE:Ljava/lang/String; = "full_screen_aod_on"

.field private static final REAR_DOZE_ALWAYS_ON:Ljava/lang/String; = "rear_doze_always_on"

.field private static final SUPPORT_MULTIPLE_AOD_BRIGHTNESS:Z

.field private static final TAG:Ljava/lang/String; = "DozeBrightnessStrategyImpl"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDisplayFeatureManagerServiceImpl:Lcom/android/server/display/DisplayFeatureManagerServiceImpl;

.field private mDisplayId:I

.field private mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

.field private mDozeAutoBrightnessController:Lcom/android/server/display/DozeAutoBrightnessController;

.field private mDrawWakeLock:Landroid/os/PowerManager$WakeLock;

.field private volatile mIsFullAod:Z

.field private volatile mIsFullAodForBrightness:Z

.field private mMaxDozeBrightnessFloat:F

.field private mMinDozeBrightnessFloat:F

.field private mPowerManager:Landroid/os/PowerManager;

.field private mScreenBrightnessRangeMinimum:F

.field private mSettingsObserver:Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl$SettingsObserver;

.field private mSubAlwaysOnByDefault:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmDisplayId(Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;)I
    .registers 1

    iget p0, p0, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;->mDisplayId:I

    return p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 32
    nop

    .line 33
    const-string/jumbo v0, "ro.vendor.aod.brightness.cust"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;->SUPPORT_MULTIPLE_AOD_BRIGHTNESS:Z

    .line 37
    const-string/jumbo v0, "support_special_localized_aod_brightness"

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;->IS_SPECIAL_LOCALIZED_AOD:Z

    .line 63
    invoke-static {}, Lmiui/util/MiuiMultiDisplayTypeInfo;->isIndependentRearDevice()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;->IS_DUAL_REAR_DEVICE:Z

    .line 62
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private registerSettingsObserver()V
    .registers 6

    .line 137
    iget-object v0, p0, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110270

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;->mSubAlwaysOnByDefault:Z

    .line 140
    sget-boolean v0, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;->IS_DUAL_REAR_DEVICE:Z

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2d

    iget v0, p0, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;->mDisplayId:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2d

    .line 141
    iget-object v0, p0, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 142
    const-string/jumbo v3, "rear_doze_always_on"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;->mSettingsObserver:Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl$SettingsObserver;

    .line 141
    invoke-virtual {v0, v3, v2, v4, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_4f

    .line 145
    :cond_2d
    iget-object v0, p0, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 146
    const-string v3, "full_screen_aod_on"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;->mSettingsObserver:Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl$SettingsObserver;

    .line 145
    invoke-virtual {v0, v3, v2, v4, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 148
    iget-object v0, p0, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 149
    const-string v3, "doze_always_on"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;->mSettingsObserver:Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl$SettingsObserver;

    .line 148
    invoke-virtual {v0, v3, v2, v4, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 152
    :goto_4f
    iget v0, p0, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;->mDisplayId:I

    invoke-virtual {p0, v0}, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;->updateAodMode(I)V

    .line 153
    return-void
.end method


# virtual methods
.method public clampDozeBrightness(F)F
    .registers 4
    .param p1, "dozeBrightness"  # F

    .line 182
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 183
    return p1

    .line 186
    :cond_7
    move v0, p1

    .line 187
    .local v0, "newDozeBrightness":F
    sget-boolean v1, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;->SUPPORT_MULTIPLE_AOD_BRIGHTNESS:Z

    if-nez v1, :cond_1b

    iget-boolean v1, p0, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;->mIsFullAod:Z

    if-nez v1, :cond_1b

    .line 188
    iget v1, p0, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;->mScreenBrightnessRangeMinimum:F

    cmpl-float v1, p1, v1

    if-lez v1, :cond_19

    .line 189
    iget v0, p0, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;->mMaxDozeBrightnessFloat:F

    goto :goto_1b

    .line 191
    :cond_19
    iget v0, p0, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;->mMinDozeBrightnessFloat:F

    .line 194
    :cond_1b
    :goto_1b
    return v0
.end method

.method public getAodScreenBrightness()F
    .registers 2

    .line 81
    iget-object v0, p0, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;->mDozeAutoBrightnessController:Lcom/android/server/display/DozeAutoBrightnessController;

    invoke-virtual {v0}, Lcom/android/server/display/DozeAutoBrightnessController;->getDozeBrightness()F

    move-result v0

    return v0
.end method

.method public getDozeBrightnessThreshold(Z)[F
    .registers 6
    .param p1, "state"  # Z

    .line 202
    iget-boolean v0, p0, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;->mIsFullAod:Z

    if-eqz v0, :cond_d

    if-nez p1, :cond_d

    .line 203
    iget-object v0, p0, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;->mDozeAutoBrightnessController:Lcom/android/server/display/DozeAutoBrightnessController;

    invoke-virtual {v0}, Lcom/android/server/display/DozeAutoBrightnessController;->getDozeAutoBrightnessThreshold()[F

    move-result-object v0

    return-object v0

    .line 205
    :cond_d
    iget v0, p0, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;->mMaxDozeBrightnessFloat:F

    iget v1, p0, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;->mMinDozeBrightnessFloat:F

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    aput v1, v2, v0

    return-object v2
.end method

.method public getFullAodState()Z
    .registers 2

    .line 86
    iget-boolean v0, p0, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;->mIsFullAod:Z

    return v0
.end method

.method public getFullAodStateForBrightness()Z
    .registers 2

    .line 90
    iget-boolean v0, p0, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;->mIsFullAodForBrightness:Z

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 219
    const-string v0, "DozeBrightnessStrategyImpl"

    return-object v0
.end method

.method public init(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayPowerControllerImpl;Lcom/android/server/display/DisplayFeatureManagerServiceImpl;ILcom/android/server/display/DisplayDeviceConfig;F)V
    .registers 15
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "handler"  # Landroid/os/Handler;
    .param p3, "displayController"  # Lcom/android/server/display/DisplayPowerControllerImpl;
    .param p4, "displayFeatureManagerService"  # Lcom/android/server/display/DisplayFeatureManagerServiceImpl;
    .param p5, "displayId"  # I
    .param p6, "config"  # Lcom/android/server/display/DisplayDeviceConfig;
    .param p7, "brightnessMinimum"  # F

    .line 116
    iget-object v0, p0, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;->mDozeAutoBrightnessController:Lcom/android/server/display/DozeAutoBrightnessController;

    if-eqz v0, :cond_9

    .line 117
    iget-object v0, p0, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;->mDozeAutoBrightnessController:Lcom/android/server/display/DozeAutoBrightnessController;

    invoke-virtual {v0}, Lcom/android/server/display/DozeAutoBrightnessController;->stop()V

    .line 119
    :cond_9
    iput-object p1, p0, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;->mContext:Landroid/content/Context;

    .line 120
    iput p5, p0, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;->mDisplayId:I

    .line 121
    new-instance v0, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl$SettingsObserver;

    invoke-direct {v0, p0, p2}, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl$SettingsObserver;-><init>(Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;->mSettingsObserver:Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl$SettingsObserver;

    .line 122
    iput-object p3, p0, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    .line 123
    new-instance v1, Lcom/android/server/display/DozeAutoBrightnessController;

    .line 124
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v6, p0, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    move-object v5, p0

    move-object v2, p1

    move-object v4, p6

    .end local p1  # "context":Landroid/content/Context;
    .end local p6  # "config":Lcom/android/server/display/DisplayDeviceConfig;
    .local v2, "context":Landroid/content/Context;
    .local v4, "config":Lcom/android/server/display/DisplayDeviceConfig;
    invoke-direct/range {v1 .. v6}, Lcom/android/server/display/DozeAutoBrightnessController;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/display/DisplayDeviceConfig;Lcom/android/server/display/DozeAutoBrightnessController$Callback;Lcom/android/server/display/DisplayPowerControllerImpl;)V

    iput-object v1, v5, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;->mDozeAutoBrightnessController:Lcom/android/server/display/DozeAutoBrightnessController;

    .line 125
    iput-object p4, v5, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;->mDisplayFeatureManagerServiceImpl:Lcom/android/server/display/DisplayFeatureManagerServiceImpl;

    .line 126
    iput p7, v5, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;->mScreenBrightnessRangeMinimum:F

    .line 127
    const/high16 p1, 0x42700000  # 60.0f

    invoke-virtual {v4, p1}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessFromNit(F)F

    move-result p1

    iput p1, v5, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;->mMaxDozeBrightnessFloat:F

    .line 128
    const/high16 p1, 0x40a00000  # 5.0f

    invoke-virtual {v4, p1}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessFromNit(F)F

    move-result p1

    iput p1, v5, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;->mMinDozeBrightnessFloat:F

    .line 129
    iget-object p1, v5, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;->mDrawWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez p1, :cond_48

    .line 130
    const-class p1, Landroid/os/PowerManager;

    invoke-virtual {v2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, v5, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;->mPowerManager:Landroid/os/PowerManager;

    .line 132
    :cond_48
    invoke-direct {p0}, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;->registerSettingsObserver()V

    .line 133
    return-void
.end method

.method public isSynergyMode()Z
    .registers 4

    .line 94
    iget-object v0, p0, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "synergy_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    move v2, v1

    :cond_12
    return v2
.end method

.method public setDozeBrightnessState(ZZ)V
    .registers 7
    .param p1, "enable"  # Z
    .param p2, "isDimming"  # Z

    .line 100
    iget-object v0, p0, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;->mDozeAutoBrightnessController:Lcom/android/server/display/DozeAutoBrightnessController;

    if-eqz v0, :cond_41

    .line 101
    iget-object v0, p0, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    if-eqz v0, :cond_41

    .line 102
    iget-object v0, p0, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerControllerImpl;->getDisplayType()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_40

    iget-object v0, p0, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    .line 103
    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerControllerImpl;->getDisplayType()I

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_40

    .line 106
    :cond_1a
    iget-object v0, p0, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;->mDozeAutoBrightnessController:Lcom/android/server/display/DozeAutoBrightnessController;

    iget-boolean v1, p0, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;->mIsFullAod:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_23

    move v1, p2

    goto :goto_24

    :cond_23
    move v1, v2

    :goto_24
    invoke-virtual {v0, v1}, Lcom/android/server/display/DozeAutoBrightnessController;->setDimmingStateToDoze(Z)V

    .line 107
    iget-object v0, p0, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;->mDozeAutoBrightnessController:Lcom/android/server/display/DozeAutoBrightnessController;

    iget-boolean v1, p0, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;->mIsFullAod:Z

    if-eqz v1, :cond_2f

    move v1, p1

    goto :goto_30

    :cond_2f
    move v1, v2

    :goto_30
    invoke-virtual {v0, v1}, Lcom/android/server/display/DozeAutoBrightnessController;->setLightSensorEnabled(Z)V

    .line 108
    iget-object v0, p0, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    iget-boolean v1, p0, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;->mIsFullAod:Z

    iget-boolean v3, p0, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;->mIsFullAod:Z

    if-eqz v3, :cond_3c

    move v2, p1

    :cond_3c
    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/DisplayPowerControllerImpl;->notifyFullAodState(ZZ)V

    goto :goto_41

    .line 104
    :cond_40
    :goto_40
    return-void

    .line 111
    :cond_41
    :goto_41
    return-void
.end method

.method public stop()V
    .registers 3

    .line 210
    iget-object v0, p0, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;->mSettingsObserver:Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl$SettingsObserver;

    if-eqz v0, :cond_f

    .line 211
    iget-object v0, p0, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;->mSettingsObserver:Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl$SettingsObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 213
    :cond_f
    iget-object v0, p0, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;->mDozeAutoBrightnessController:Lcom/android/server/display/DozeAutoBrightnessController;

    if-eqz v0, :cond_18

    .line 214
    iget-object v0, p0, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;->mDozeAutoBrightnessController:Lcom/android/server/display/DozeAutoBrightnessController;

    invoke-virtual {v0}, Lcom/android/server/display/DozeAutoBrightnessController;->stop()V

    .line 216
    :cond_18
    return-void
.end method

.method public updateAodMode(I)V
    .registers 8
    .param p1, "displayId"  # I

    .line 158
    sget-boolean v0, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;->IS_DUAL_REAR_DEVICE:Z

    const/4 v1, -0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1d

    if-ne p1, v3, :cond_1d

    .line 159
    iget-object v0, p0, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 160
    iget-boolean v4, p0, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;->mSubAlwaysOnByDefault:Z

    .line 159
    const-string/jumbo v5, "rear_doze_always_on"

    invoke-static {v0, v5, v4, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v3, :cond_1b

    move v2, v3

    .line 161
    .local v2, "state":Z
    :cond_1b
    move v0, v2

    .local v0, "stateForBrightness":Z
    goto :goto_51

    .line 163
    .end local v0  # "stateForBrightness":Z
    .end local v2  # "state":Z
    :cond_1d
    iget-object v0, p0, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "full_screen_aod_on"

    invoke-static {v0, v4, v2, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v3, :cond_2d

    move v0, v3

    goto :goto_2e

    :cond_2d
    move v0, v2

    .line 165
    .local v0, "fullAodState":Z
    :goto_2e
    iget-object v4, p0, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "doze_always_on"

    invoke-static {v4, v5, v2, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v3, :cond_3e

    move v1, v3

    goto :goto_3f

    :cond_3e
    move v1, v2

    .line 167
    .local v1, "alwaysOnState":Z
    :goto_3f
    if-eqz v1, :cond_49

    if-nez v0, :cond_47

    sget-boolean v4, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;->IS_SPECIAL_LOCALIZED_AOD:Z

    if-eqz v4, :cond_49

    :cond_47
    move v4, v3

    goto :goto_4a

    :cond_49
    move v4, v2

    .line 168
    .local v4, "state":Z
    :goto_4a
    if-eqz v1, :cond_4f

    if-eqz v0, :cond_4f

    move v2, v3

    :cond_4f
    move v0, v2

    move v2, v4

    .line 171
    .end local v1  # "alwaysOnState":Z
    .end local v4  # "state":Z
    .local v0, "stateForBrightness":Z
    .restart local v2  # "state":Z
    :goto_51
    iget-boolean v1, p0, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;->mIsFullAod:Z

    if-eq v1, v2, :cond_60

    iget-object v1, p0, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;->mDisplayFeatureManagerServiceImpl:Lcom/android/server/display/DisplayFeatureManagerServiceImpl;

    if-eqz v1, :cond_60

    .line 172
    iput-boolean v2, p0, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;->mIsFullAod:Z

    .line 173
    iget-object v1, p0, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;->mDisplayFeatureManagerServiceImpl:Lcom/android/server/display/DisplayFeatureManagerServiceImpl;

    invoke-virtual {v1, p1, v2}, Lcom/android/server/display/DisplayFeatureManagerServiceImpl;->updateFullAodState(IZ)V

    .line 176
    :cond_60
    iget-boolean v1, p0, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;->mIsFullAodForBrightness:Z

    if-eq v1, v0, :cond_66

    .line 177
    iput-boolean v0, p0, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;->mIsFullAodForBrightness:Z

    .line 179
    :cond_66
    return-void
.end method

.method public updateBrightness(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)Lcom/android/server/display/DisplayBrightnessState;
    .registers 5
    .param p1, "displayPowerRequest"  # Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 69
    iget-boolean v0, p0, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;->mIsFullAod:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_14

    .line 70
    iget-object v0, p0, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;->mDozeAutoBrightnessController:Lcom/android/server/display/DozeAutoBrightnessController;

    .line 71
    invoke-virtual {v0}, Lcom/android/server/display/DozeAutoBrightnessController;->getDozeBrightness()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;->getName()Ljava/lang/String;

    move-result-object v2

    .line 70
    invoke-static {v1, v0, v2}, Lcom/android/server/display/brightness/BrightnessUtils;->constructDisplayBrightnessState(IFLjava/lang/String;)Lcom/android/server/display/DisplayBrightnessState;

    move-result-object v0

    return-object v0

    .line 73
    :cond_14
    iget v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenBrightness:F

    .line 74
    invoke-virtual {p0, v0}, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;->clampDozeBrightness(F)F

    move-result v0

    .line 75
    invoke-virtual {p0}, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;->getName()Ljava/lang/String;

    move-result-object v2

    .line 73
    invoke-static {v1, v0, v2}, Lcom/android/server/display/brightness/BrightnessUtils;->constructDisplayBrightnessState(IFLjava/lang/String;)Lcom/android/server/display/DisplayBrightnessState;

    move-result-object v0

    return-object v0
.end method

.method public updateBrightness()V
    .registers 5

    .line 224
    iget-object v0, p0, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;->mDrawWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_16

    .line 225
    iget-object v0, p0, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "dream:doze"

    iget v2, p0, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;->mDisplayId:I

    const/16 v3, 0x80

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;I)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;->mDrawWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 227
    :cond_16
    iget-object v0, p0, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;->mDrawWakeLock:Landroid/os/PowerManager$WakeLock;

    const-string v1, "DozeBrightnessStrategyImpl"

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;->mDozeAutoBrightnessController:Lcom/android/server/display/DozeAutoBrightnessController;

    invoke-virtual {v0}, Lcom/android/server/display/DozeAutoBrightnessController;->isFirstBrightness()Z

    move-result v0

    if-nez v0, :cond_31

    .line 228
    const-string v0, "acquire mDrawWakeLock"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v0, p0, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;->mDrawWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v1, 0x78

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    goto :goto_3d

    .line 231
    :cond_31
    const-string/jumbo v0, "mDrawWakeLock = null or mIsFirstBrightness"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v0, p0, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;->mDozeAutoBrightnessController:Lcom/android/server/display/DozeAutoBrightnessController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/display/DozeAutoBrightnessController;->setFirstBrightness(Z)V

    .line 234
    :goto_3d
    iget-object v0, p0, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerControllerImpl;->updateBrightness()V

    .line 235
    return-void
.end method

.method public updateNormalBrightness(F)V
    .registers 3
    .param p1, "brightness"  # F

    .line 258
    iget-object v0, p0, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;->mDozeAutoBrightnessController:Lcom/android/server/display/DozeAutoBrightnessController;

    if-eqz v0, :cond_9

    .line 259
    iget-object v0, p0, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl;->mDozeAutoBrightnessController:Lcom/android/server/display/DozeAutoBrightnessController;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DozeAutoBrightnessController;->updateNormalBrightness(F)V

    .line 261
    :cond_9
    return-void
.end method
