# classes.dex

.class public Lcom/android/server/display/statistics/SwitchStatsHelper;
.super Ljava/lang/Object;
.source "SwitchStatsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/statistics/SwitchStatsHelper$SettingsObserver;
    }
.end annotation


# static fields
.field private static final AI_DISPLAY_MODE:Ljava/lang/String; = "ai_display_mode"

.field private static final BACKGROUND_BLUR_ENABLE:Ljava/lang/String; = "background_blur_enable"

.field private static final BACKGROUND_BLUR_SUPPORTED:Z

.field private static final COLOR_GAMUT_MODE:Ljava/lang/String; = "color_gamut_mode"

.field private static final COOL_COLOR_LEVEL:I = 0x3

.field private static final CUSTOMIZED_COLOR_LEVEL:Ljava/lang/String; = "customized_color_level"

.field public static final DC_BACK_LIGHT_SWITCH:Ljava/lang/String; = "dc_back_light"

.field private static final DEFAULT_COLOR_LEVEL:I = 0x2

.field private static final EXPERT_DATA:Ljava/lang/String; = "expert_data"

.field public static final IS_DUAL_REAR_DEVICE:Z

.field private static final IS_SMART_FPS:Ljava/lang/String; = "is_smart_fps"

.field private static final MIMOTION_PWM_ENABLE:Ljava/lang/String; = "mimotion_pwm_enable"

.field private static final MIMOTION_PWM_SUPPORTED:Z

.field private static final MIUI_SCREEN_COMPAT:Ljava/lang/String; = "miui_screen_compat"

.field private static final REAR_DOZE_ALWAYS_ON:Ljava/lang/String; = "rear_doze_always_on"

.field private static final SCREEN_ENHANCE_ENGINE_GALLERY_AI_MODE_STATUS:Ljava/lang/String; = "screen_enhance_engine_gallery_ai_mode_status"

.field private static final SUPPORT_RESOLUTION_SWITCH:Z

.field private static final SUPPORT_SMART_FPS:Z

.field public static final USER_REFRESH_RATE:Ljava/lang/String; = "user_refresh_rate"

.field private static final WARM_COLOR_LEVEL:I = 0x1

.field private static mInstance:Lcom/android/server/display/statistics/SwitchStatsHelper;

.field private static mScreenResolutionSupported:[I


# instance fields
.field private mAdaptiveSleepEnable:Z

.field private mAiDisplayModeEnable:Z

.field private mAutoBrightnessSettingsEnable:Z

.field private mBackgroundBlurEnable:Z

.field private mBgHandler:Landroid/os/Handler;

.field private mColorGamutMode:I

.field private mContext:Landroid/content/Context;

.field private mDarkModeSettingsEnable:Z

.field private mDcBacklightSettingsEnable:Z

.field private mDozeAlwaysOn:Z

.field private mMimotionPwmEnable:Z

.field private mReadModeSettingsEnable:Z

.field private mRefreshRateFromDeviceFeature:I

.field private mResolver:Landroid/content/ContentResolver;

.field private mScreenColorLevel:I

.field private mScreenCompat:Z

.field private mScreenOptimizeSettingsMode:I

.field private mScreenTrueToneEnable:Z

.field private mSettingsObserver:Lcom/android/server/display/statistics/SwitchStatsHelper$SettingsObserver;

.field private mSmartRefreshRateEnable:Z

.field private mSubAlwaysOnEnabled:Z

.field private mSunlightSettingsEnable:Z

.field private mSupportAdaptiveSleep:Z

.field private mSupportAiDisplayMode:Z

.field private mSupportExpertMode:Z

.field private mSwitchStats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/display/statistics/BrightnessEvent$SwitchStatEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mUserRefreshRate:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmBgHandler(Lcom/android/server/display/statistics/SwitchStatsHelper;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mBgHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhandleSettingsChangeEvent(Lcom/android/server/display/statistics/SwitchStatsHelper;Landroid/net/Uri;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/statistics/SwitchStatsHelper;->handleSettingsChangeEvent(Landroid/net/Uri;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 36
    nop

    .line 37
    const-string/jumbo v0, "support_smart_fps"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/statistics/SwitchStatsHelper;->SUPPORT_SMART_FPS:Z

    .line 39
    nop

    .line 40
    const-string/jumbo v0, "screen_resolution_supported"

    invoke-static {v0}, Lmiui/util/FeatureParser;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    sput-object v0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mScreenResolutionSupported:[I

    .line 41
    sget-object v0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mScreenResolutionSupported:[I

    if-eqz v0, :cond_20

    sget-object v0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mScreenResolutionSupported:[I

    array-length v0, v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_20

    goto :goto_21

    :cond_20
    move v2, v1

    :goto_21
    sput-boolean v2, Lcom/android/server/display/statistics/SwitchStatsHelper;->SUPPORT_RESOLUTION_SWITCH:Z

    .line 50
    const-string/jumbo v0, "persist.sys.background_blur_supported"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/statistics/SwitchStatsHelper;->BACKGROUND_BLUR_SUPPORTED:Z

    .line 54
    const-string/jumbo v0, "ro.display.enable_pwm_switch"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/statistics/SwitchStatsHelper;->MIMOTION_PWM_SUPPORTED:Z

    .line 60
    invoke-static {}, Lmiui/util/MiuiMultiDisplayTypeInfo;->isIndependentRearDevice()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/statistics/SwitchStatsHelper;->IS_DUAL_REAR_DEVICE:Z

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"  # Landroid/content/Context;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mSwitchStats:Ljava/util/ArrayList;

    .line 97
    iput-object p1, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mContext:Landroid/content/Context;

    .line 98
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mBgHandler:Landroid/os/Handler;

    .line 99
    new-instance v0, Lcom/android/server/display/statistics/SwitchStatsHelper$SettingsObserver;

    iget-object v1, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mBgHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/statistics/SwitchStatsHelper$SettingsObserver;-><init>(Lcom/android/server/display/statistics/SwitchStatsHelper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mSettingsObserver:Lcom/android/server/display/statistics/SwitchStatsHelper$SettingsObserver;

    .line 100
    iget-object v0, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mResolver:Landroid/content/ContentResolver;

    .line 101
    invoke-direct {p0}, Lcom/android/server/display/statistics/SwitchStatsHelper;->readConfigFromDeviceFeature()V

    .line 102
    invoke-direct {p0}, Lcom/android/server/display/statistics/SwitchStatsHelper;->loadSmartSwitches()V

    .line 103
    invoke-virtual {p0}, Lcom/android/server/display/statistics/SwitchStatsHelper;->registerSettingsObserver()V

    .line 104
    return-void
.end method

.method private addColorLevelEvent(I)Lcom/android/server/display/statistics/BrightnessEvent$SwitchStatEntry;
    .registers 6
    .param p1, "screenColorLevel"  # I

    .line 501
    const-string v0, "customized_color_level"

    .line 502
    .local v0, "eventName":Ljava/lang/String;
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p1, v1, :cond_1b

    if-eq p1, v2, :cond_1b

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1b

    const/4 v1, -0x1

    if-ne p1, v1, :cond_f

    goto :goto_1b

    .line 509
    :cond_f
    new-instance v1, Lcom/android/server/display/statistics/BrightnessEvent$SwitchStatEntry;

    iget v3, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mScreenColorLevel:I

    invoke-direct {p0, v3}, Lcom/android/server/display/statistics/SwitchStatsHelper;->getColorLevelCode(I)I

    move-result v3

    invoke-direct {v1, v2, v0, v3}, Lcom/android/server/display/statistics/BrightnessEvent$SwitchStatEntry;-><init>(ILjava/lang/String;I)V

    return-object v1

    .line 506
    :cond_1b
    :goto_1b
    const-string/jumbo v0, "screen_color_level"

    .line 507
    new-instance v1, Lcom/android/server/display/statistics/BrightnessEvent$SwitchStatEntry;

    iget v3, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mScreenColorLevel:I

    invoke-direct {v1, v2, v0, v3}, Lcom/android/server/display/statistics/BrightnessEvent$SwitchStatEntry;-><init>(ILjava/lang/String;I)V

    return-object v1
.end method

.method private getColorLevelCode(I)I
    .registers 7
    .param p1, "mScreenColorLevel"  # I

    .line 517
    const v0, 0xffffff

    and-int/2addr v0, p1

    .line 518
    .local v0, "validRGB":I
    shr-int/lit8 v1, v0, 0x10

    .line 519
    .local v1, "value_R":I
    shr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    .line 520
    .local v2, "value_G":I
    and-int/lit16 v3, v0, 0xff

    .line 521
    .local v3, "value_B":I
    if-ne v1, v2, :cond_12

    if-ne v2, v3, :cond_12

    .line 522
    const/4 v4, 0x0

    return v4

    .line 524
    :cond_12
    const/4 v4, 0x3

    if-le v1, v2, :cond_19

    if-le v1, v3, :cond_1c

    const/4 v4, 0x1

    goto :goto_1c

    .line 525
    :cond_19
    if-ge v3, v2, :cond_1c

    const/4 v4, 0x2

    .line 524
    :cond_1c
    :goto_1c
    return v4
.end method

.method private getCurrentCloseLidDisplaySetting()I
    .registers 4

    .line 486
    iget-object v0, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "close_lid_display_setting"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getCurrentRefreshRate()I
    .registers 4

    .line 466
    sget-boolean v0, Lcom/android/server/display/statistics/SwitchStatsHelper;->SUPPORT_SMART_FPS:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mSmartRefreshRateEnable:Z

    if-eqz v0, :cond_b

    .line 468
    const/16 v0, -0x78

    return v0

    .line 470
    :cond_b
    const-string/jumbo v0, "ro.vendor.fps.switch.default"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 471
    .local v0, "defaultFps":Z
    const/4 v1, -0x1

    if-eqz v0, :cond_20

    .line 472
    iget v2, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mUserRefreshRate:I

    if-eq v2, v1, :cond_1d

    iget v1, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mUserRefreshRate:I

    goto :goto_1f

    :cond_1d
    iget v1, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mRefreshRateFromDeviceFeature:I

    :goto_1f
    return v1

    .line 474
    :cond_20
    const-string/jumbo v2, "persist.vendor.dfps.level"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private getCurrentScreenCompat()Z
    .registers 7

    .line 492
    const/4 v0, 0x0

    .line 493
    .local v0, "isQhd":Z
    sget-boolean v1, Lcom/android/server/display/statistics/SwitchStatsHelper;->SUPPORT_RESOLUTION_SWITCH:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1d

    .line 494
    invoke-direct {p0}, Lcom/android/server/display/statistics/SwitchStatsHelper;->getCurrentScreenResolution()I

    move-result v1

    sget-object v4, Lcom/android/server/display/statistics/SwitchStatsHelper;->mScreenResolutionSupported:[I

    aget v4, v4, v3

    sget-object v5, Lcom/android/server/display/statistics/SwitchStatsHelper;->mScreenResolutionSupported:[I

    aget v5, v5, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    if-ne v1, v4, :cond_1b

    move v1, v2

    goto :goto_1c

    :cond_1b
    move v1, v3

    :goto_1c
    move v0, v1

    .line 497
    :cond_1d
    if-eqz v0, :cond_24

    iget-boolean v1, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mScreenCompat:Z

    if-eqz v1, :cond_24

    goto :goto_25

    :cond_24
    move v2, v3

    :goto_25
    return v2
.end method

.method private getCurrentScreenResolution()I
    .registers 4

    .line 478
    const-string/jumbo v0, "persist.sys.miui_resolution"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 479
    .local v0, "screenResolution":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 480
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 482
    :cond_20
    const/16 v1, 0x5a0

    return v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/display/statistics/SwitchStatsHelper;
    .registers 2
    .param p0, "context"  # Landroid/content/Context;

    .line 107
    sget-object v0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mInstance:Lcom/android/server/display/statistics/SwitchStatsHelper;

    if-nez v0, :cond_b

    .line 108
    new-instance v0, Lcom/android/server/display/statistics/SwitchStatsHelper;

    invoke-direct {v0, p0}, Lcom/android/server/display/statistics/SwitchStatsHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mInstance:Lcom/android/server/display/statistics/SwitchStatsHelper;

    .line 110
    :cond_b
    sget-object v0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mInstance:Lcom/android/server/display/statistics/SwitchStatsHelper;

    return-object v0
.end method

.method private handleSettingsChangeEvent(Landroid/net/Uri;)V
    .registers 22
    .param p1, "uri"  # Landroid/net/Uri;

    .line 249
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const-string/jumbo v3, "screen_paper_mode_enabled"

    const-string/jumbo v4, "rear_doze_always_on"

    const-string/jumbo v5, "screen_optimize_mode"

    const-string/jumbo v6, "is_smart_fps"

    const-string/jumbo v7, "ui_night_mode"

    const-string v8, "background_blur_enable"

    const-string/jumbo v9, "screen_color_level"

    const-string v10, "dc_back_light"

    const-string/jumbo v11, "mimotion_pwm_enable"

    const-string v12, "doze_always_on"

    const-string/jumbo v13, "screen_brightness_mode"

    const-string/jumbo v14, "screen_enhance_engine_gallery_ai_mode_status"

    const-string/jumbo v15, "miui_screen_compat"

    move/from16 v16, v2

    const-string/jumbo v2, "screen_true_tone"

    const-string/jumbo v0, "user_refresh_rate"

    move-object/from16 v17, v0

    const-string v0, "adaptive_sleep"

    move-object/from16 v18, v0

    const-string/jumbo v0, "sunlight_mode"

    move-object/from16 v19, v0

    sparse-switch v16, :sswitch_data_272

    move-object/from16 v0, v17

    move-object/from16 v17, v10

    move-object/from16 v10, v18

    move-object/from16 v18, v7

    move-object/from16 v7, v19

    goto/16 :goto_11d

    :sswitch_4e
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_dd

    const/4 v1, 0x5

    goto/16 :goto_da

    :sswitch_57
    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_dd

    const/16 v1, 0x11

    goto/16 :goto_da

    :sswitch_61
    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_dd

    const/4 v1, 0x4

    goto/16 :goto_da

    :sswitch_6a
    const-string v0, "expert_data"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_dd

    const/16 v0, 0xd

    goto/16 :goto_d9

    :sswitch_76
    invoke-virtual {v1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_dd

    const/16 v0, 0x8

    goto :goto_d9

    :sswitch_7f
    invoke-virtual {v1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_dd

    move-object/from16 v0, v17

    const/4 v1, 0x1

    goto/16 :goto_e9

    :sswitch_8a
    invoke-virtual {v1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_dd

    const/16 v0, 0xf

    goto :goto_d9

    :sswitch_93
    invoke-virtual {v1, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_dd

    const/4 v0, 0x6

    goto :goto_d9

    :sswitch_9b
    invoke-virtual {v1, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_dd

    move-object/from16 v0, v17

    const/4 v1, 0x0

    goto :goto_e9

    :sswitch_a5
    invoke-virtual {v1, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_dd

    const/16 v0, 0x10

    goto :goto_d9

    :sswitch_ae
    invoke-virtual {v1, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_dd

    const/16 v0, 0x9

    goto :goto_d9

    :sswitch_b7
    invoke-virtual {v1, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_dd

    const/4 v0, 0x3

    goto :goto_d9

    :sswitch_bf
    invoke-virtual {v1, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_dd

    const/16 v0, 0xe

    goto :goto_d9

    :sswitch_c8
    invoke-virtual {v1, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_dd

    const/16 v0, 0xb

    goto :goto_d9

    :sswitch_d1
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_dd

    const/16 v0, 0xa

    :goto_d9
    move v1, v0

    :goto_da
    move-object/from16 v0, v17

    goto :goto_e9

    :cond_dd
    move-object/from16 v0, v17

    goto :goto_ee

    :sswitch_e0
    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ee

    const/4 v1, 0x7

    :goto_e9
    move-object/from16 v17, v10

    move-object/from16 v10, v18

    goto :goto_101

    :cond_ee
    :goto_ee
    move-object/from16 v17, v10

    move-object/from16 v10, v18

    goto :goto_106

    :sswitch_f3
    move-object/from16 v0, v17

    move-object/from16 v17, v10

    move-object/from16 v10, v18

    invoke-virtual {v1, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_106

    const/16 v1, 0xc

    :goto_101
    move-object/from16 v18, v7

    move-object/from16 v7, v19

    goto :goto_11e

    :cond_106
    :goto_106
    move-object/from16 v18, v7

    move-object/from16 v7, v19

    goto :goto_11d

    :sswitch_10b
    move-object/from16 v0, v17

    move-object/from16 v17, v10

    move-object/from16 v10, v18

    move-object/from16 v18, v7

    move-object/from16 v7, v19

    invoke-virtual {v1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11d

    const/4 v1, 0x2

    goto :goto_11e

    :cond_11d
    :goto_11d
    const/4 v1, -0x1

    :goto_11e
    move/from16 v19, v1

    const/4 v1, -0x2

    packed-switch v19, :pswitch_data_2bc

    move-object/from16 v0, p0

    goto/16 :goto_270

    .line 329
    :pswitch_128  #0x11
    move-object/from16 v7, p0

    iget-object v0, v7, Lcom/android/server/display/statistics/SwitchStatsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v0, v4, v2, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v2, :cond_139

    const/4 v0, 0x1

    goto :goto_13a

    :cond_139
    const/4 v0, 0x0

    :goto_13a
    iput-boolean v0, v7, Lcom/android/server/display/statistics/SwitchStatsHelper;->mSubAlwaysOnEnabled:Z

    .line 331
    move-object v0, v7

    goto/16 :goto_270

    .line 325
    :pswitch_13f  #0x10
    move-object/from16 v7, p0

    iget-object v0, v7, Lcom/android/server/display/statistics/SwitchStatsHelper;->mResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x0

    invoke-static {v0, v11, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_14d

    const/4 v0, 0x1

    goto :goto_14e

    :cond_14d
    const/4 v0, 0x0

    :goto_14e
    iput-boolean v0, v7, Lcom/android/server/display/statistics/SwitchStatsHelper;->mMimotionPwmEnable:Z

    .line 327
    move-object v0, v7

    goto/16 :goto_270

    .line 321
    :pswitch_153  #0xf
    move-object/from16 v7, p0

    iget-object v0, v7, Lcom/android/server/display/statistics/SwitchStatsHelper;->mResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x0

    invoke-static {v0, v8, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_161

    const/4 v0, 0x1

    goto :goto_162

    :cond_161
    const/4 v0, 0x0

    :goto_162
    iput-boolean v0, v7, Lcom/android/server/display/statistics/SwitchStatsHelper;->mBackgroundBlurEnable:Z

    .line 323
    move-object v0, v7

    goto/16 :goto_270

    .line 317
    :pswitch_167  #0xe
    move-object/from16 v7, p0

    iget-object v0, v7, Lcom/android/server/display/statistics/SwitchStatsHelper;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v0, v14, v1}, Landroid/provider/Settings$Global;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v7, Lcom/android/server/display/statistics/SwitchStatsHelper;->mAiDisplayModeEnable:Z

    .line 319
    move-object v0, v7

    goto/16 :goto_270

    .line 314
    :pswitch_17b  #0xd
    move-object/from16 v7, p0

    invoke-direct {v7}, Lcom/android/server/display/statistics/SwitchStatsHelper;->updateColorGamutMode()V

    .line 315
    move-object v0, v7

    goto/16 :goto_270

    .line 310
    :pswitch_183  #0xc
    move-object/from16 v7, p0

    iget-object v0, v7, Lcom/android/server/display/statistics/SwitchStatsHelper;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, -0x1

    invoke-static {v0, v10, v2, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_191

    const/4 v0, 0x1

    goto :goto_192

    :cond_191
    const/4 v0, 0x0

    :goto_192
    iput-boolean v0, v7, Lcom/android/server/display/statistics/SwitchStatsHelper;->mAdaptiveSleepEnable:Z

    .line 312
    move-object v0, v7

    goto/16 :goto_270

    .line 306
    :pswitch_197  #0xb
    move-object/from16 v7, p0

    iget-object v0, v7, Lcom/android/server/display/statistics/SwitchStatsHelper;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, -0x1

    invoke-static {v0, v15, v2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1a5

    const/4 v0, 0x1

    goto :goto_1a6

    :cond_1a5
    const/4 v0, 0x0

    :goto_1a6
    iput-boolean v0, v7, Lcom/android/server/display/statistics/SwitchStatsHelper;->mScreenCompat:Z

    .line 308
    move-object v0, v7

    goto/16 :goto_270

    .line 301
    :pswitch_1ab  #0xa
    move-object/from16 v7, p0

    iget-object v0, v7, Lcom/android/server/display/statistics/SwitchStatsHelper;->mResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1b9

    const/4 v0, 0x1

    goto :goto_1ba

    :cond_1b9
    const/4 v0, 0x0

    :goto_1ba
    iput-boolean v0, v7, Lcom/android/server/display/statistics/SwitchStatsHelper;->mScreenTrueToneEnable:Z

    .line 304
    move-object v0, v7

    goto/16 :goto_270

    .line 297
    :pswitch_1bf  #0x9
    move-object/from16 v7, p0

    iget-object v0, v7, Lcom/android/server/display/statistics/SwitchStatsHelper;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, -0x1

    invoke-static {v0, v12, v2, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1cd

    const/4 v0, 0x1

    goto :goto_1ce

    :cond_1cd
    const/4 v0, 0x0

    :goto_1ce
    iput-boolean v0, v7, Lcom/android/server/display/statistics/SwitchStatsHelper;->mDozeAlwaysOn:Z

    .line 299
    move-object v0, v7

    goto/16 :goto_270

    .line 293
    :pswitch_1d3  #0x8
    move-object/from16 v7, p0

    iget-object v0, v7, Lcom/android/server/display/statistics/SwitchStatsHelper;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, -0x1

    invoke-static {v0, v6, v2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1e1

    const/4 v0, 0x1

    goto :goto_1e2

    :cond_1e1
    const/4 v0, 0x0

    :goto_1e2
    iput-boolean v0, v7, Lcom/android/server/display/statistics/SwitchStatsHelper;->mSmartRefreshRateEnable:Z

    .line 295
    move-object v0, v7

    goto/16 :goto_270

    .line 289
    :pswitch_1e7  #0x7
    move-object/from16 v7, p0

    iget-object v2, v7, Lcom/android/server/display/statistics/SwitchStatsHelper;->mResolver:Landroid/content/ContentResolver;

    const/4 v3, -0x1

    invoke-static {v2, v0, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, v7, Lcom/android/server/display/statistics/SwitchStatsHelper;->mUserRefreshRate:I

    .line 291
    move-object v0, v7

    goto/16 :goto_270

    .line 284
    :pswitch_1f5  #0x6
    const/4 v3, -0x1

    move-object/from16 v7, p0

    iget-object v0, v7, Lcom/android/server/display/statistics/SwitchStatsHelper;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v0, v9, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, v7, Lcom/android/server/display/statistics/SwitchStatsHelper;->mScreenColorLevel:I

    .line 287
    move-object v0, v7

    goto/16 :goto_270

    .line 278
    :pswitch_203  #0x5
    move-object/from16 v7, p0

    iget-object v0, v7, Lcom/android/server/display/statistics/SwitchStatsHelper;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_210

    const/4 v0, 0x1

    goto :goto_211

    :cond_210
    const/4 v0, 0x0

    :goto_211
    iput-boolean v0, v7, Lcom/android/server/display/statistics/SwitchStatsHelper;->mReadModeSettingsEnable:Z

    .line 282
    move-object v0, v7

    goto :goto_270

    .line 271
    :pswitch_215  #0x4
    move-object/from16 v7, p0

    iget-object v0, v7, Lcom/android/server/display/statistics/SwitchStatsHelper;->mResolver:Landroid/content/ContentResolver;

    sget v2, Landroid/provider/MiuiSettings$ScreenEffect;->DEFAULT_SCREEN_OPTIMIZE_MODE:I

    invoke-static {v0, v5, v2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, v7, Lcom/android/server/display/statistics/SwitchStatsHelper;->mScreenOptimizeSettingsMode:I

    .line 275
    invoke-direct {v7}, Lcom/android/server/display/statistics/SwitchStatsHelper;->updateColorGamutMode()V

    .line 276
    move-object v0, v7

    goto :goto_270

    .line 265
    :pswitch_226  #0x3
    move-object/from16 v7, p0

    iget-object v0, v7, Lcom/android/server/display/statistics/SwitchStatsHelper;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    invoke-static {v0, v13, v2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_234

    const/4 v0, 0x1

    goto :goto_235

    :cond_234
    const/4 v0, 0x0

    :goto_235
    iput-boolean v0, v7, Lcom/android/server/display/statistics/SwitchStatsHelper;->mAutoBrightnessSettingsEnable:Z

    .line 269
    move-object v0, v7

    goto :goto_270

    .line 259
    :pswitch_239  #0x2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    invoke-static {v2, v7, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_246

    const/4 v3, 0x1

    :cond_246
    iput-boolean v3, v0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mSunlightSettingsEnable:Z

    .line 263
    goto :goto_270

    .line 255
    :pswitch_249  #0x1
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v4, v18

    const/4 v5, -0x1

    invoke-static {v2, v4, v5, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_259

    const/4 v3, 0x1

    :cond_259
    iput-boolean v3, v0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mDarkModeSettingsEnable:Z

    .line 257
    goto :goto_270

    .line 251
    :pswitch_25c  #0x0
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v4, v17

    const/4 v5, -0x1

    invoke-static {v2, v4, v5, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_26c

    goto :goto_26d

    :cond_26c
    move v2, v3

    :goto_26d
    iput-boolean v2, v0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mDcBacklightSettingsEnable:Z

    .line 253
    nop

    .line 335
    :goto_270
    return-void

    nop

    :sswitch_data_272
    .sparse-switch
        -0x69203588 -> :sswitch_10b
        -0x46cdc832 -> :sswitch_f3
        -0x45a4bc48 -> :sswitch_e0
        -0x4241e690 -> :sswitch_d1
        -0x346f7e1a -> :sswitch_c8
        -0x3086abc3 -> :sswitch_bf
        -0x294f7102 -> :sswitch_b7
        -0x611a9fa -> :sswitch_ae
        0x8317aa9 -> :sswitch_a5
        0x859e77e -> :sswitch_9b
        0x2807b455 -> :sswitch_93
        0x2c525eca -> :sswitch_8a
        0x46be7ff5 -> :sswitch_7f
        0x5bcc609e -> :sswitch_76
        0x7451049f -> :sswitch_6a
        0x74fb4732 -> :sswitch_61
        0x791a6e01 -> :sswitch_57
        0x7e544b2b -> :sswitch_4e
    .end sparse-switch

    :pswitch_data_2bc
    .packed-switch 0x0
        :pswitch_25c  #00000000
        :pswitch_249  #00000001
        :pswitch_239  #00000002
        :pswitch_226  #00000003
        :pswitch_215  #00000004
        :pswitch_203  #00000005
        :pswitch_1f5  #00000006
        :pswitch_1e7  #00000007
        :pswitch_1d3  #00000008
        :pswitch_1bf  #00000009
        :pswitch_1ab  #0000000a
        :pswitch_197  #0000000b
        :pswitch_183  #0000000c
        :pswitch_17b  #0000000d
        :pswitch_167  #0000000e
        :pswitch_153  #0000000f
        :pswitch_13f  #00000010
        :pswitch_128  #00000011
    .end packed-switch
.end method

.method private loadSettings()V
    .registers 9

    .line 181
    iget-object v0, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "dc_back_light"

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_10

    move v0, v4

    goto :goto_11

    :cond_10
    move v0, v1

    :goto_11
    iput-boolean v0, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mDcBacklightSettingsEnable:Z

    .line 183
    iget-object v0, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v5, "ui_night_mode"

    invoke-static {v0, v5, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v5, 0x2

    if-ne v0, v5, :cond_21

    move v0, v4

    goto :goto_22

    :cond_21
    move v0, v1

    :goto_22
    iput-boolean v0, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mDarkModeSettingsEnable:Z

    .line 185
    iget-object v0, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v6, "sunlight_mode"

    invoke-static {v0, v6, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v4, :cond_31

    move v0, v4

    goto :goto_32

    :cond_31
    move v0, v1

    :goto_32
    iput-boolean v0, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mSunlightSettingsEnable:Z

    .line 189
    iget-object v0, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v6, "screen_brightness_mode"

    invoke-static {v0, v6, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v4, :cond_41

    move v0, v4

    goto :goto_42

    :cond_41
    move v0, v1

    :goto_42
    iput-boolean v0, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mAutoBrightnessSettingsEnable:Z

    .line 193
    iget-object v0, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v6, "screen_optimize_mode"

    sget v7, Landroid/provider/MiuiSettings$ScreenEffect;->DEFAULT_SCREEN_OPTIMIZE_MODE:I

    invoke-static {v0, v6, v7, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mScreenOptimizeSettingsMode:I

    .line 197
    iget-object v0, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v6, "screen_paper_mode_enabled"

    invoke-static {v0, v6, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_5e

    move v0, v4

    goto :goto_5f

    :cond_5e
    move v0, v1

    :goto_5f
    iput-boolean v0, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mReadModeSettingsEnable:Z

    .line 201
    iget-object v0, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v6, "screen_color_level"

    invoke-static {v0, v6, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mScreenColorLevel:I

    .line 203
    iget-object v0, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v6, "user_refresh_rate"

    invoke-static {v0, v6, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mUserRefreshRate:I

    .line 205
    iget-object v0, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v6, "is_smart_fps"

    invoke-static {v0, v6, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v4, :cond_84

    move v0, v4

    goto :goto_85

    :cond_84
    move v0, v1

    :goto_85
    iput-boolean v0, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mSmartRefreshRateEnable:Z

    .line 207
    iget-object v0, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "doze_always_on"

    invoke-static {v0, v6, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v4, :cond_93

    move v0, v4

    goto :goto_94

    :cond_93
    move v0, v1

    :goto_94
    iput-boolean v0, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mDozeAlwaysOn:Z

    .line 209
    iget-object v0, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v6, "screen_true_tone"

    invoke-static {v0, v6, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v4, :cond_a3

    move v0, v4

    goto :goto_a4

    :cond_a3
    move v0, v1

    :goto_a4
    iput-boolean v0, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mScreenTrueToneEnable:Z

    .line 212
    iget-object v0, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v6, "miui_screen_compat"

    invoke-static {v0, v6, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v4, :cond_b3

    move v0, v4

    goto :goto_b4

    :cond_b3
    move v0, v1

    :goto_b4
    iput-boolean v0, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mScreenCompat:Z

    .line 214
    iget-object v0, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "adaptive_sleep"

    invoke-static {v0, v6, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v4, :cond_c2

    move v0, v4

    goto :goto_c3

    :cond_c2
    move v0, v1

    :goto_c3
    iput-boolean v0, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mAdaptiveSleepEnable:Z

    .line 216
    invoke-direct {p0}, Lcom/android/server/display/statistics/SwitchStatsHelper;->updateColorGamutMode()V

    .line 217
    iget-object v0, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "screen_enhance_engine_gallery_ai_mode_status"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "true"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mAiDisplayModeEnable:Z

    .line 219
    iget-object v0, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "background_blur_enable"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_e6

    move v0, v4

    goto :goto_e7

    :cond_e6
    move v0, v1

    :goto_e7
    iput-boolean v0, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mBackgroundBlurEnable:Z

    .line 220
    iget-object v0, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "mimotion_pwm_enable"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v5, :cond_f6

    move v0, v4

    goto :goto_f7

    :cond_f6
    move v0, v1

    :goto_f7
    iput-boolean v0, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mMimotionPwmEnable:Z

    .line 221
    sget-boolean v0, Lcom/android/server/display/statistics/SwitchStatsHelper;->IS_DUAL_REAR_DEVICE:Z

    if-eqz v0, :cond_10f

    .line 222
    iget-object v0, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "rear_doze_always_on"

    invoke-static {v0, v2, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v4, :cond_10d

    move v1, v4

    :cond_10d
    iput-boolean v1, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mSubAlwaysOnEnabled:Z

    .line 225
    :cond_10f
    return-void
.end method

.method private loadSmartSwitches()V
    .registers 7

    .line 114
    sget-boolean v0, Lcom/android/server/display/statistics/SwitchStatsHelper;->SUPPORT_SMART_FPS:Z

    const/4 v1, -0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-eqz v0, :cond_21

    .line 115
    iget-object v0, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v5, "is_smart_fps"

    invoke-static {v0, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_15

    move v0, v3

    goto :goto_16

    :cond_15
    move v0, v2

    :goto_16
    iput-boolean v0, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mSmartRefreshRateEnable:Z

    .line 116
    iget-boolean v0, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mSmartRefreshRateEnable:Z

    if-eqz v0, :cond_21

    .line 117
    iget-object v0, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v0, v5, v3, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 120
    :cond_21
    sget-boolean v0, Lcom/android/server/display/statistics/SwitchStatsHelper;->SUPPORT_RESOLUTION_SWITCH:Z

    if-eqz v0, :cond_3c

    .line 121
    iget-object v0, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v5, "miui_screen_compat"

    invoke-static {v0, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_31

    move v2, v3

    :cond_31
    iput-boolean v2, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mScreenCompat:Z

    .line 122
    iget-boolean v0, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mScreenCompat:Z

    if-eqz v0, :cond_3c

    .line 123
    iget-object v0, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v0, v5, v3, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 127
    :cond_3c
    return-void
.end method

.method private readConfigFromDeviceFeature()V
    .registers 3

    .line 240
    iget-object v0, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 241
    const v1, 0x1110015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mSupportAdaptiveSleep:Z

    .line 242
    const-string v0, "defaultFps"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mRefreshRateFromDeviceFeature:I

    .line 243
    const-string/jumbo v0, "support_AI_display"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mSupportAiDisplayMode:Z

    .line 244
    const-string/jumbo v0, "support_display_expert_mode"

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mSupportExpertMode:Z

    .line 246
    return-void
.end method

.method private updateColorGamutMode()V
    .registers 3

    .line 228
    iget v0, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mScreenOptimizeSettingsMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_19

    .line 229
    iget-object v0, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/display/expertmode/ExpertData;->getFromDatabase(Landroid/content/Context;)Lcom/android/server/display/expertmode/ExpertData;

    move-result-object v0

    .line 230
    .local v0, "data":Lcom/android/server/display/expertmode/ExpertData;
    if-nez v0, :cond_11

    .line 231
    invoke-static {}, Lcom/android/server/display/expertmode/ExpertData;->getDefaultValue()Lcom/android/server/display/expertmode/ExpertData;

    move-result-object v0

    .line 233
    :cond_11
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/display/expertmode/ExpertData;->getByCookie(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mColorGamutMode:I

    .line 234
    .end local v0  # "data":Lcom/android/server/display/expertmode/ExpertData;
    goto :goto_1c

    .line 235
    :cond_19
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mColorGamutMode:I

    .line 237
    :goto_1c
    return-void
.end method


# virtual methods
.method public getAllSwitchStats()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/display/statistics/BrightnessEvent$SwitchStatEntry;",
            ">;"
        }
    .end annotation

    .line 362
    invoke-virtual {p0}, Lcom/android/server/display/statistics/SwitchStatsHelper;->updateSwitchStatsValue()V

    .line 363
    iget-object v0, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mSwitchStats:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getScreenOptimizeSettingsMode()I
    .registers 2

    .line 358
    iget v0, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mScreenOptimizeSettingsMode:I

    return v0
.end method

.method public isAutoBrightnessSettingsEnable()Z
    .registers 2

    .line 350
    iget-boolean v0, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mAutoBrightnessSettingsEnable:Z

    return v0
.end method

.method public isDarkModeSettingsEnable()Z
    .registers 2

    .line 346
    iget-boolean v0, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mDarkModeSettingsEnable:Z

    return v0
.end method

.method public isDcBacklightSettingsEnable()Z
    .registers 2

    .line 338
    iget-boolean v0, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mDcBacklightSettingsEnable:Z

    return v0
.end method

.method public isReadModeSettingsEnable()Z
    .registers 2

    .line 354
    iget-boolean v0, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mReadModeSettingsEnable:Z

    return v0
.end method

.method public isSunlightSettingsEnable()Z
    .registers 2

    .line 342
    iget-boolean v0, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mSunlightSettingsEnable:Z

    return v0
.end method

.method protected registerSettingsObserver()V
    .registers 6

    .line 131
    iget-object v0, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "screen_brightness_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mSettingsObserver:Lcom/android/server/display/statistics/SwitchStatsHelper$SettingsObserver;

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 134
    iget-object v0, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "sunlight_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mSettingsObserver:Lcom/android/server/display/statistics/SwitchStatsHelper$SettingsObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 137
    iget-object v0, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "screen_optimize_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mSettingsObserver:Lcom/android/server/display/statistics/SwitchStatsHelper$SettingsObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 140
    iget-object v0, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "dc_back_light"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mSettingsObserver:Lcom/android/server/display/statistics/SwitchStatsHelper$SettingsObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 142
    iget-object v0, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "ui_night_mode"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mSettingsObserver:Lcom/android/server/display/statistics/SwitchStatsHelper$SettingsObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 144
    iget-object v0, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "screen_color_level"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mSettingsObserver:Lcom/android/server/display/statistics/SwitchStatsHelper$SettingsObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 147
    iget-object v0, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "screen_paper_mode_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mSettingsObserver:Lcom/android/server/display/statistics/SwitchStatsHelper$SettingsObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 150
    iget-object v0, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "user_refresh_rate"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mSettingsObserver:Lcom/android/server/display/statistics/SwitchStatsHelper$SettingsObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 152
    iget-object v0, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "is_smart_fps"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mSettingsObserver:Lcom/android/server/display/statistics/SwitchStatsHelper$SettingsObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 154
    iget-object v0, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "doze_always_on"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mSettingsObserver:Lcom/android/server/display/statistics/SwitchStatsHelper$SettingsObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 156
    iget-object v0, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "screen_true_tone"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mSettingsObserver:Lcom/android/server/display/statistics/SwitchStatsHelper$SettingsObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 159
    iget-object v0, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "miui_screen_compat"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mSettingsObserver:Lcom/android/server/display/statistics/SwitchStatsHelper$SettingsObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 161
    iget-object v0, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "adaptive_sleep"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mSettingsObserver:Lcom/android/server/display/statistics/SwitchStatsHelper$SettingsObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 163
    iget-object v0, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "expert_data"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mSettingsObserver:Lcom/android/server/display/statistics/SwitchStatsHelper$SettingsObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 165
    iget-object v0, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mResolver:Landroid/content/ContentResolver;

    .line 166
    const-string/jumbo v1, "screen_enhance_engine_gallery_ai_mode_status"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mSettingsObserver:Lcom/android/server/display/statistics/SwitchStatsHelper$SettingsObserver;

    .line 165
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 168
    iget-object v0, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mResolver:Landroid/content/ContentResolver;

    .line 169
    const-string v1, "background_blur_enable"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mSettingsObserver:Lcom/android/server/display/statistics/SwitchStatsHelper$SettingsObserver;

    .line 168
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 171
    iget-object v0, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mResolver:Landroid/content/ContentResolver;

    .line 172
    const-string/jumbo v1, "mimotion_pwm_enable"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mSettingsObserver:Lcom/android/server/display/statistics/SwitchStatsHelper$SettingsObserver;

    .line 171
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 174
    iget-object v0, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mResolver:Landroid/content/ContentResolver;

    .line 175
    const-string/jumbo v1, "rear_doze_always_on"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mSettingsObserver:Lcom/android/server/display/statistics/SwitchStatsHelper$SettingsObserver;

    .line 174
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 177
    invoke-direct {p0}, Lcom/android/server/display/statistics/SwitchStatsHelper;->loadSettings()V

    .line 178
    return-void
.end method

.method public updateSwitchStatsValue()V
    .registers 7

    .line 367
    iget-object v0, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mSwitchStats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 369
    new-instance v0, Lcom/android/server/display/statistics/BrightnessEvent$SwitchStatEntry;

    const-string/jumbo v1, "screen_brightness_mode"

    iget-boolean v2, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mAutoBrightnessSettingsEnable:Z

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/display/statistics/BrightnessEvent$SwitchStatEntry;-><init>(ILjava/lang/String;Z)V

    .line 371
    .local v0, "statEvent":Lcom/android/server/display/statistics/BrightnessEvent$SwitchStatEntry;
    iget-object v1, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mSwitchStats:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 373
    new-instance v1, Lcom/android/server/display/statistics/BrightnessEvent$SwitchStatEntry;

    const-string v2, "dc_back_light"

    iget-boolean v4, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mDcBacklightSettingsEnable:Z

    invoke-direct {v1, v3, v2, v4}, Lcom/android/server/display/statistics/BrightnessEvent$SwitchStatEntry;-><init>(ILjava/lang/String;Z)V

    .line 375
    .end local v0  # "statEvent":Lcom/android/server/display/statistics/BrightnessEvent$SwitchStatEntry;
    .local v1, "statEvent":Lcom/android/server/display/statistics/BrightnessEvent$SwitchStatEntry;
    iget-object v0, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mSwitchStats:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    new-instance v0, Lcom/android/server/display/statistics/BrightnessEvent$SwitchStatEntry;

    const-string/jumbo v2, "ui_night_mode"

    iget-boolean v4, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mDarkModeSettingsEnable:Z

    invoke-direct {v0, v3, v2, v4}, Lcom/android/server/display/statistics/BrightnessEvent$SwitchStatEntry;-><init>(ILjava/lang/String;Z)V

    .line 379
    .end local v1  # "statEvent":Lcom/android/server/display/statistics/BrightnessEvent$SwitchStatEntry;
    .restart local v0  # "statEvent":Lcom/android/server/display/statistics/BrightnessEvent$SwitchStatEntry;
    iget-object v1, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mSwitchStats:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    new-instance v1, Lcom/android/server/display/statistics/BrightnessEvent$SwitchStatEntry;

    iget-boolean v2, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mSunlightSettingsEnable:Z

    const/4 v4, 0x1

    if-eqz v2, :cond_3f

    iget-boolean v2, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mAutoBrightnessSettingsEnable:Z

    if-nez v2, :cond_3f

    move v2, v4

    goto :goto_40

    :cond_3f
    move v2, v3

    :goto_40
    const-string/jumbo v5, "sunlight_mode"

    invoke-direct {v1, v3, v5, v2}, Lcom/android/server/display/statistics/BrightnessEvent$SwitchStatEntry;-><init>(ILjava/lang/String;Z)V

    .line 384
    .end local v0  # "statEvent":Lcom/android/server/display/statistics/BrightnessEvent$SwitchStatEntry;
    .restart local v1  # "statEvent":Lcom/android/server/display/statistics/BrightnessEvent$SwitchStatEntry;
    iget-object v0, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mSwitchStats:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    new-instance v0, Lcom/android/server/display/statistics/BrightnessEvent$SwitchStatEntry;

    const-string/jumbo v2, "screen_optimize_mode"

    iget v5, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mScreenOptimizeSettingsMode:I

    invoke-direct {v0, v4, v2, v5}, Lcom/android/server/display/statistics/BrightnessEvent$SwitchStatEntry;-><init>(ILjava/lang/String;I)V

    .line 388
    .end local v1  # "statEvent":Lcom/android/server/display/statistics/BrightnessEvent$SwitchStatEntry;
    .restart local v0  # "statEvent":Lcom/android/server/display/statistics/BrightnessEvent$SwitchStatEntry;
    iget-object v1, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mSwitchStats:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    new-instance v1, Lcom/android/server/display/statistics/BrightnessEvent$SwitchStatEntry;

    const-string/jumbo v2, "screen_paper_mode_enabled"

    iget-boolean v5, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mReadModeSettingsEnable:Z

    invoke-direct {v1, v3, v2, v5}, Lcom/android/server/display/statistics/BrightnessEvent$SwitchStatEntry;-><init>(ILjava/lang/String;Z)V

    .line 392
    .end local v0  # "statEvent":Lcom/android/server/display/statistics/BrightnessEvent$SwitchStatEntry;
    .restart local v1  # "statEvent":Lcom/android/server/display/statistics/BrightnessEvent$SwitchStatEntry;
    iget-object v0, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mSwitchStats:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    iget v0, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mScreenColorLevel:I

    invoke-direct {p0, v0}, Lcom/android/server/display/statistics/SwitchStatsHelper;->addColorLevelEvent(I)Lcom/android/server/display/statistics/BrightnessEvent$SwitchStatEntry;

    move-result-object v0

    .line 395
    .end local v1  # "statEvent":Lcom/android/server/display/statistics/BrightnessEvent$SwitchStatEntry;
    .restart local v0  # "statEvent":Lcom/android/server/display/statistics/BrightnessEvent$SwitchStatEntry;
    iget-object v1, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mSwitchStats:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    new-instance v1, Lcom/android/server/display/statistics/BrightnessEvent$SwitchStatEntry;

    .line 399
    invoke-direct {p0}, Lcom/android/server/display/statistics/SwitchStatsHelper;->getCurrentRefreshRate()I

    move-result v2

    const-string v5, "dynamic_refresh_rate"

    invoke-direct {v1, v4, v5, v2}, Lcom/android/server/display/statistics/BrightnessEvent$SwitchStatEntry;-><init>(ILjava/lang/String;I)V

    .line 400
    .end local v0  # "statEvent":Lcom/android/server/display/statistics/BrightnessEvent$SwitchStatEntry;
    .restart local v1  # "statEvent":Lcom/android/server/display/statistics/BrightnessEvent$SwitchStatEntry;
    iget-object v0, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mSwitchStats:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    new-instance v0, Lcom/android/server/display/statistics/BrightnessEvent$SwitchStatEntry;

    const-string v2, "doze_always_on"

    iget-boolean v5, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mDozeAlwaysOn:Z

    invoke-direct {v0, v3, v2, v5}, Lcom/android/server/display/statistics/BrightnessEvent$SwitchStatEntry;-><init>(ILjava/lang/String;Z)V

    .line 404
    .end local v1  # "statEvent":Lcom/android/server/display/statistics/BrightnessEvent$SwitchStatEntry;
    .restart local v0  # "statEvent":Lcom/android/server/display/statistics/BrightnessEvent$SwitchStatEntry;
    iget-object v1, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mSwitchStats:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    new-instance v1, Lcom/android/server/display/statistics/BrightnessEvent$SwitchStatEntry;

    const-string/jumbo v2, "screen_true_tone"

    iget-boolean v5, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mScreenTrueToneEnable:Z

    invoke-direct {v1, v3, v2, v5}, Lcom/android/server/display/statistics/BrightnessEvent$SwitchStatEntry;-><init>(ILjava/lang/String;Z)V

    .line 408
    .end local v0  # "statEvent":Lcom/android/server/display/statistics/BrightnessEvent$SwitchStatEntry;
    .restart local v1  # "statEvent":Lcom/android/server/display/statistics/BrightnessEvent$SwitchStatEntry;
    iget-object v0, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mSwitchStats:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 410
    new-instance v0, Lcom/android/server/display/statistics/BrightnessEvent$SwitchStatEntry;

    .line 411
    invoke-direct {p0}, Lcom/android/server/display/statistics/SwitchStatsHelper;->getCurrentScreenResolution()I

    move-result v2

    const-string/jumbo v5, "screen_resolution"

    invoke-direct {v0, v4, v5, v2}, Lcom/android/server/display/statistics/BrightnessEvent$SwitchStatEntry;-><init>(ILjava/lang/String;I)V

    .line 412
    .end local v1  # "statEvent":Lcom/android/server/display/statistics/BrightnessEvent$SwitchStatEntry;
    .restart local v0  # "statEvent":Lcom/android/server/display/statistics/BrightnessEvent$SwitchStatEntry;
    iget-object v1, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mSwitchStats:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 414
    new-instance v1, Lcom/android/server/display/statistics/BrightnessEvent$SwitchStatEntry;

    .line 415
    invoke-direct {p0}, Lcom/android/server/display/statistics/SwitchStatsHelper;->getCurrentScreenCompat()Z

    move-result v2

    const-string/jumbo v5, "miui_screen_compat"

    invoke-direct {v1, v3, v5, v2}, Lcom/android/server/display/statistics/BrightnessEvent$SwitchStatEntry;-><init>(ILjava/lang/String;Z)V

    .line 416
    .end local v0  # "statEvent":Lcom/android/server/display/statistics/BrightnessEvent$SwitchStatEntry;
    .restart local v1  # "statEvent":Lcom/android/server/display/statistics/BrightnessEvent$SwitchStatEntry;
    iget-object v0, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mSwitchStats:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 418
    iget-boolean v0, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mSupportAdaptiveSleep:Z

    if-eqz v0, :cond_d6

    .line 419
    new-instance v0, Lcom/android/server/display/statistics/BrightnessEvent$SwitchStatEntry;

    const-string v2, "adaptive_sleep"

    iget-boolean v5, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mAdaptiveSleepEnable:Z

    invoke-direct {v0, v3, v2, v5}, Lcom/android/server/display/statistics/BrightnessEvent$SwitchStatEntry;-><init>(ILjava/lang/String;Z)V

    move-object v1, v0

    .line 421
    iget-object v0, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mSwitchStats:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 424
    :cond_d6
    const-string/jumbo v0, "persist.sys.muiltdisplay_type"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_f1

    .line 426
    new-instance v0, Lcom/android/server/display/statistics/BrightnessEvent$SwitchStatEntry;

    .line 428
    invoke-direct {p0}, Lcom/android/server/display/statistics/SwitchStatsHelper;->getCurrentCloseLidDisplaySetting()I

    move-result v2

    const-string v5, "close_lid_display_setting"

    invoke-direct {v0, v4, v5, v2}, Lcom/android/server/display/statistics/BrightnessEvent$SwitchStatEntry;-><init>(ILjava/lang/String;I)V

    move-object v1, v0

    .line 429
    iget-object v0, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mSwitchStats:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    :cond_f1
    iget-boolean v0, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mSupportExpertMode:Z

    if-eqz v0, :cond_104

    .line 434
    new-instance v0, Lcom/android/server/display/statistics/BrightnessEvent$SwitchStatEntry;

    const-string v2, "color_gamut_mode"

    iget v5, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mColorGamutMode:I

    invoke-direct {v0, v4, v2, v5}, Lcom/android/server/display/statistics/BrightnessEvent$SwitchStatEntry;-><init>(ILjava/lang/String;I)V

    move-object v1, v0

    .line 436
    iget-object v0, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mSwitchStats:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 439
    :cond_104
    iget-boolean v0, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mSupportAiDisplayMode:Z

    if-eqz v0, :cond_117

    .line 440
    new-instance v0, Lcom/android/server/display/statistics/BrightnessEvent$SwitchStatEntry;

    const-string v2, "ai_display_mode"

    iget-boolean v4, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mAiDisplayModeEnable:Z

    invoke-direct {v0, v3, v2, v4}, Lcom/android/server/display/statistics/BrightnessEvent$SwitchStatEntry;-><init>(ILjava/lang/String;Z)V

    move-object v1, v0

    .line 442
    iget-object v0, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mSwitchStats:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    :cond_117
    sget-boolean v0, Lcom/android/server/display/statistics/SwitchStatsHelper;->BACKGROUND_BLUR_SUPPORTED:Z

    if-eqz v0, :cond_12a

    .line 447
    new-instance v0, Lcom/android/server/display/statistics/BrightnessEvent$SwitchStatEntry;

    const-string v2, "background_blur_enable"

    iget-boolean v4, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mBackgroundBlurEnable:Z

    invoke-direct {v0, v3, v2, v4}, Lcom/android/server/display/statistics/BrightnessEvent$SwitchStatEntry;-><init>(ILjava/lang/String;Z)V

    move-object v1, v0

    .line 449
    iget-object v0, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mSwitchStats:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 452
    :cond_12a
    sget-boolean v0, Lcom/android/server/display/statistics/SwitchStatsHelper;->MIMOTION_PWM_SUPPORTED:Z

    if-eqz v0, :cond_13e

    .line 453
    new-instance v0, Lcom/android/server/display/statistics/BrightnessEvent$SwitchStatEntry;

    const-string/jumbo v2, "mimotion_pwm_enable"

    iget-boolean v4, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mMimotionPwmEnable:Z

    invoke-direct {v0, v3, v2, v4}, Lcom/android/server/display/statistics/BrightnessEvent$SwitchStatEntry;-><init>(ILjava/lang/String;Z)V

    move-object v1, v0

    .line 455
    iget-object v0, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mSwitchStats:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 458
    :cond_13e
    sget-boolean v0, Lcom/android/server/display/statistics/SwitchStatsHelper;->IS_DUAL_REAR_DEVICE:Z

    if-eqz v0, :cond_152

    .line 459
    new-instance v0, Lcom/android/server/display/statistics/BrightnessEvent$SwitchStatEntry;

    const-string/jumbo v2, "rear_doze_always_on"

    iget-boolean v4, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mSubAlwaysOnEnabled:Z

    invoke-direct {v0, v3, v2, v4}, Lcom/android/server/display/statistics/BrightnessEvent$SwitchStatEntry;-><init>(ILjava/lang/String;Z)V

    move-object v1, v0

    .line 461
    iget-object v0, p0, Lcom/android/server/display/statistics/SwitchStatsHelper;->mSwitchStats:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 463
    :cond_152
    return-void
.end method
