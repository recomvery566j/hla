# classes.dex

.class public Lcom/android/server/display/MiuiDisplayCloudController;
.super Ljava/lang/Object;
.source "MiuiDisplayCloudController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/MiuiDisplayCloudController$Callback;,
        Lcom/android/server/display/MiuiDisplayCloudController$Observer;,
        Lcom/android/server/display/MiuiDisplayCloudController$CloudListener;
    }
.end annotation


# static fields
.field private static final APP_CATEGORY_CONFIG:Ljava/lang/String; = "app-category-config"

.field private static final AUTO_BRIGHTNESS_STATISTICS_EVENT_ENABLE:Ljava/lang/String; = "automatic_brightness_statistics_event_enable"

.field private static final AUTO_BRIGHTNESS_STATISTICS_EVENT_MODULE_NAME:Ljava/lang/String; = "AutomaticBrightnessStatisticsEvent"

.field private static final BCBC_APP_CONFIG:Ljava/lang/String; = "bcbc_app_config"

.field private static final BCBC_FEATURE_MODULE_NAME:Ljava/lang/String; = "BCBCFeature"

.field private static final BRIGHTNESS_CURVE_OPTIMIZE_POLICY_DISABLE:Ljava/lang/String; = "brightness_curve_optimize_policy_disable"

.field private static final BRIGHTNESS_CURVE_OPTIMIZE_POLICY_MODULE_NAME:Ljava/lang/String; = "BrightnessCurveOptimizePolicy"

.field private static final BRIGHTNESS_STATISTICS_EVENTS_ENABLE:Ljava/lang/String; = "brightness_statistics_events_enable"

.field private static final BRIGHTNESS_STATISTICS_EVENTS_NAME:Ljava/lang/String; = "brightnessStatisticsEvents"

.field public static final CLOUD_BACKUP_DIR_NAME:Ljava/lang/String; = "displayconfig"

.field private static final CLOUD_BACKUP_FILE_ATTRIBUTE_ENABLE:Ljava/lang/String; = "enabled"

.field private static final CLOUD_BACKUP_FILE_ATTRIBUTE_ITEM:Ljava/lang/String; = "item"

.field private static final CLOUD_BACKUP_FILE_ATTRIBUTE_PACKAGE:Ljava/lang/String; = "package"

.field private static final CLOUD_BACKUP_FILE_ATTRIBUTE_VALUE:Ljava/lang/String; = "value"

.field private static final CLOUD_BACKUP_FILE_AUTO_BRIGHTNESS_STATISTICS_EVENT_ENABLE:Ljava/lang/String; = "automatic-brightness-statistics-event-enable"

.field private static final CLOUD_BACKUP_FILE_AUTO_BRIGHTNESS_STATISTICS_EVENT_ENABLE_TAG:Ljava/lang/String; = "automatic_brightness_statistics_event_enable"

.field private static final CLOUD_BACKUP_FILE_BCBC_TAG:Ljava/lang/String; = "bcbc"

.field private static final CLOUD_BACKUP_FILE_BCBC_TAG_APP:Ljava/lang/String; = "bcbc-app"

.field private static final CLOUD_BACKUP_FILE_BRIGHTNESS_CURVE_OPTIMIZE_POLICY_DISABLE:Ljava/lang/String; = "brightness-curve-optimize-policy-disable"

.field private static final CLOUD_BACKUP_FILE_BRIGHTNESS_CURVE_OPTIMIZE_POLICY_TAG:Ljava/lang/String; = "brightness_curve_optimize_policy_disable"

.field private static final CLOUD_BACKUP_FILE_BRIGHTNESS_STATISTICS_EVENTS_ENABLE:Ljava/lang/String; = "brightness-statistics-events-enable"

.field private static final CLOUD_BACKUP_FILE_BRIGHTNESS_STATISTICS_EVENTS_TAG:Ljava/lang/String; = "brightness_statistics_events"

.field private static final CLOUD_BACKUP_FILE_CATEGORY_TAG_GAME:Ljava/lang/String; = "game-category"

.field private static final CLOUD_BACKUP_FILE_CATEGORY_TAG_IMAGE:Ljava/lang/String; = "image-category"

.field private static final CLOUD_BACKUP_FILE_CATEGORY_TAG_MAP:Ljava/lang/String; = "map-category"

.field private static final CLOUD_BACKUP_FILE_CATEGORY_TAG_READER:Ljava/lang/String; = "reader-category"

.field private static final CLOUD_BACKUP_FILE_CATEGORY_TAG_UNDEFINED:Ljava/lang/String; = "undefined-category"

.field private static final CLOUD_BACKUP_FILE_CATEGORY_TAG_VIDEO:Ljava/lang/String; = "video-category"

.field private static final CLOUD_BACKUP_FILE_CONTACTLESS_GESTURE_COMPONENTS_TAG:Ljava/lang/String; = "gesture_component"

.field private static final CLOUD_BACKUP_FILE_CONTACTLESS_GESTURE_TAG:Ljava/lang/String; = "contactless_gesture"

.field private static final CLOUD_BACKUP_FILE_CUSTOM_CURVE_DISABLE:Ljava/lang/String; = "custom-curve-disable"

.field private static final CLOUD_BACKUP_FILE_CUSTOM_CURVE_TAG:Ljava/lang/String; = "custom_curve"

.field private static final CLOUD_BACKUP_FILE_DISABLE_RESET_SHORT_TERM_MODEL:Ljava/lang/String; = "disable-reset-short-term-model"

.field private static final CLOUD_BACKUP_FILE_DISABLE_RESET_SHORT_TERM_MODEL_TAG:Ljava/lang/String; = "disable_reset_short_term_model"

.field private static final CLOUD_BACKUP_FILE_INDIVIDUAL_MODEL_DISABLE:Ljava/lang/String; = "individual-model-disable"

.field private static final CLOUD_BACKUP_FILE_INDIVIDUAL_MODEL_TAG:Ljava/lang/String; = "individual_model"

.field private static final CLOUD_BACKUP_FILE_MANUAL_BOOST_APP_ENABLE:Ljava/lang/String; = "manual-boost-app-enable"

.field private static final CLOUD_BACKUP_FILE_MANUAL_BOOST_DISABLE_APP_LIST:Ljava/lang/String; = "manual-boost-disable-app-list"

.field private static final CLOUD_BACKUP_FILE_MANUAL_BOOST_DISABLE_APP_TAG:Ljava/lang/String; = "manual_boost_disable_app"

.field private static final CLOUD_BACKUP_FILE_NAME:Ljava/lang/String; = "display_cloud_backup.xml"

.field private static final CLOUD_BACKUP_FILE_OVERRIDE_BRIGHTNESS_POLICY_ENABLE:Ljava/lang/String; = "override-brightness-policy-enable"

.field private static final CLOUD_BACKUP_FILE_OVERRIDE_BRIGHTNESS_POLICY_TAG:Ljava/lang/String; = "override_brightness_policy_enable"

.field private static final CLOUD_BACKUP_FILE_RESET_SHORT_TERM_MODEL_POLICY_DISABLE:Ljava/lang/String; = "reset-short-term-model-policy-disable"

.field private static final CLOUD_BACKUP_FILE_RESET_SHORT_TERM_MODEL_POLICY_TAG:Ljava/lang/String; = "reset_short_term_model_policy_disable"

.field private static final CLOUD_BACKUP_FILE_RESOLUTION_SWITCH_TAG:Ljava/lang/String; = "resolution_switch"

.field private static final CLOUD_BACKUP_FILE_RESOLUTION_SWITCH_TAG_PROCESS_BLACK:Ljava/lang/String; = "resolution_switch_process_black"

.field private static final CLOUD_BACKUP_FILE_RESOLUTION_SWITCH_TAG_PROCESS_PROTECT:Ljava/lang/String; = "resolution_switch_process_protect"

.field private static final CLOUD_BACKUP_FILE_RHYTHMIC_APP_CATEGORY_TAG:Ljava/lang/String; = "rhythmic_app_category"

.field private static final CLOUD_BACKUP_FILE_RHYTHMIC_APP_CATEGORY_TAG_IMAGE:Ljava/lang/String; = "rhythmic_app_category_image"

.field private static final CLOUD_BACKUP_FILE_RHYTHMIC_APP_CATEGORY_TAG_READ:Ljava/lang/String; = "rhythmic_app_category_read"

.field private static final CLOUD_BACKUP_FILE_RHYTHMIC_APP_CATEGORY_TAG_READ_V3:Ljava/lang/String; = "rhythmic_app_category_read_v3"

.field private static final CLOUD_BACKUP_FILE_ROOT_ELEMENT:Ljava/lang/String; = "display-config"

.field private static final CLOUD_BACKUP_FILE_SHORT_TERM_MODEL_ENABLE:Ljava/lang/String; = "short-term-model-enabled"

.field private static final CLOUD_BACKUP_FILE_SHORT_TERM_MODEL_TAG:Ljava/lang/String; = "short-term"

.field private static final CLOUD_BACKUP_FILE_THERMAL_BRIGHTNESS:Ljava/lang/String; = "cloud_multi_factor_thermal_brightness_control.xml"

.field private static final CLOUD_BACKUP_FILE_THRESHOLD_SUNLIGHT_NIT_VALUE:Ljava/lang/String; = "threshold-sunlight-nit-value"

.field private static final CLOUD_BACKUP_FILE_THRESHOLD_SUNLIGHT_NIT_VALUE_TAG:Ljava/lang/String; = "threshold_sunlight_nit_value"

.field private static final CLOUD_BACKUP_FILE_TOUCH_COVER_PROTECTION_GAME_TAG:Ljava/lang/String; = "touch_cover_protection_game"

.field private static final CLOUD_BACKUP_FILE_TOUCH_COVER_PROTECTION_GAME_TAG_APP:Ljava/lang/String; = "touch_cover_protection_game_app"

.field private static final CLOUD_BAKUP_FILE_TEMPERATURE_GAP_TAG:Ljava/lang/String; = "temperature_gap"

.field private static final CLOUD_BAKUP_FILE_TEMPERATURE_GAP_VALUE:Ljava/lang/String; = "temperature-gap-value"

.field public static final CLOUD_EVENTS_APP_CATEGORY:J = 0x8L

.field public static final CLOUD_EVENTS_BRIGHTNESS_STATS:J = 0x1L

.field public static final CLOUD_EVENTS_CUSTOM_CURVE:J = 0x10L

.field public static final CLOUD_EVENTS_INDIVIDUAL_MODEL:J = 0x20L

.field public static final CLOUD_EVENTS_TEMPERATURE_GAP:J = 0x4L

.field public static final CLOUD_EVENTS_THERMAL_CONTROL:J = 0x2L

.field private static final CLOUD_FILE_APP_CATEGORY_CONFIG:Ljava/lang/String; = "cloud_app_brightness_category.xml"

.field private static final CLOUD_THRESHOLD_SUNLIGHT_NIT:Ljava/lang/String; = "threshold_sunlight_nit"

.field private static final CONTACTLESS_GESTURE_COMPONENTS:Ljava/lang/String; = "gestureComponents"

.field private static final CONTACTLESS_GESTURE_MODULE_NAME:Ljava/lang/String; = "ContactlessGestureFeature"

.field private static final CUSTOM_CURVE_DISABLE:Ljava/lang/String; = "custom_curve_disable"

.field private static final CUSTOM_CURVE_DISABLE_MODULE_NAME:Ljava/lang/String; = "CustomCurveDisable"

.field private static final DEBUG:Z

.field private static final DISABLE_RESET_SHORT_TERM_MODEL:Ljava/lang/String; = "disable_reset_short_term_model"

.field private static final DISABLE_RESET_SHORT_TERM_MODEL_MODULE_NAME:Ljava/lang/String; = "DisableResetShortTermModel"

.field private static final INDIVIDUAL_APP_CATEGORY_CONFIG_MODULE_NAME:Ljava/lang/String; = "IndividualAppCategoryConfig"

.field private static final INDIVIDUAL_MODEL_DISABLE:Ljava/lang/String; = "individual_model_disable"

.field private static final INDIVIDUAL_MODEL_DISABLE_MODULE_NAME:Ljava/lang/String; = "IndividualModelDisable"

.field private static final IS_GREEN_MOUNTAIN_EYECARE_V3:Z

.field private static final MANUAL_BOOST_APP_ENABLE:Ljava/lang/String; = "manual_boost_app_enable"

.field private static final MANUAL_BOOST_APP_ENABLE_MODULE_NAME:Ljava/lang/String; = "ManualBoostAppEnable"

.field private static final MANUAL_BOOST_DISABLE_APP_LIST:Ljava/lang/String; = "manual_boost_disable_app_list"

.field private static final MANUAL_BOOST_DISABLE_APP_MODULE_NAME:Ljava/lang/String; = "ManualBoostDisableAppList"

.field private static final MAX_CLOUD_BACKUP_FILE_SIZE:J = 0x19000L

.field private static final OVERRIDE_BRIGHTNESS_POLICY_ENABLE:Ljava/lang/String; = "override_brightness_policy_enable"

.field private static final OVERRIDE_BRIGHTNESS_POLICY_MODULE_NAME:Ljava/lang/String; = "overrideBrightnessPolicy"

.field private static final PROCESS_RESOLUTION_SWITCH_BLACK_LIST:Ljava/lang/String; = "process_resolution_switch_black_list"

.field private static final PROCESS_RESOLUTION_SWITCH_LIST:Ljava/lang/String; = "process_resolution_switch_list"

.field private static final PROCESS_RESOLUTION_SWITCH_PROTECT_LIST:Ljava/lang/String; = "process_resolution_switch_protect_list"

.field private static final RESET_SHORT_TERM_MODEL_POLICY_DISABLE:Ljava/lang/String; = "reset_short_term_model_policy_disable"

.field private static final RESET_SHORT_TERM_MODEL_POLICY_MODULE_NAME:Ljava/lang/String; = "ResetShortTermModelPolicy"

.field private static final RESOLUTION_SWITCH_PROCESS_LIST_BACKUP_FILE:Ljava/lang/String; = "resolution_switch_process_list_backup.xml"

.field private static final RESOLUTION_SWITCH_PROCESS_LIST_MODEULE_NAME:Ljava/lang/String; = "resolutionSwitchProcessList"

.field private static final RHYTHMIC_APP_CATEGORY_IMAGE_LIST:Ljava/lang/String; = "rhythmic_app_category_image_list"

.field private static final RHYTHMIC_APP_CATEGORY_LIST_BACKUP_FILE:Ljava/lang/String; = "rhythmic_app_category_list_backup.xml"

.field private static final RHYTHMIC_APP_CATEGORY_LIST_MODULE_NAME:Ljava/lang/String; = "rhythmicAppCategoryList"

.field private static final RHYTHMIC_APP_CATEGORY_LIST_NAME:Ljava/lang/String; = "rhythmic_app_category_list"

.field private static final RHYTHMIC_APP_CATEGORY_READ_LIST:Ljava/lang/String; = "rhythmic_app_category_read_list"

.field private static final RHYTHMIC_APP_CATEGORY_READ_LIST_V3:Ljava/lang/String; = "rhythmic_app_category_read_list_v3"

.field private static final SHORT_TERM_MODEL_APP_CONFIG:Ljava/lang/String; = "short_term_model_app_config"

.field private static final SHORT_TERM_MODEL_ENABLE:Ljava/lang/String; = "short_term_model_enable"

.field private static final SHORT_TERM_MODEL_GAME_APP_LIST:Ljava/lang/String; = "short_term_model_game_app_list"

.field private static final SHORT_TERM_MODEL_GLOBAL_APP_LIST:Ljava/lang/String; = "short_term_model_global_app_list"

.field private static final SHORT_TERM_MODEL_IMAGE_APP_LIST:Ljava/lang/String; = "short_term_model_image_app_list"

.field private static final SHORT_TERM_MODEL_MAP_APP_LIST:Ljava/lang/String; = "short_term_model_map_app_list"

.field private static final SHORT_TERM_MODEL_MODULE_NAME:Ljava/lang/String; = "shortTermModel"

.field private static final SHORT_TERM_MODEL_READER_APP_LIST:Ljava/lang/String; = "short_term_model_reader_app_list"

.field private static final SHORT_TERM_MODEL_VIDEO_APP_LIST:Ljava/lang/String; = "short_term_model_video_app_list"

.field private static final SHORT_TREM_MODEL_APP_MODULE_NAME:Ljava/lang/String; = "shortTermModelAppList"

.field private static final TAG:Ljava/lang/String; = "MiuiDisplayCloudController"

.field public static final TEMPERATURE_GAP_MODULE_NAME:Ljava/lang/String; = "TemperatureGap"

.field private static final TEMPERATURE_GAP_VALUE:Ljava/lang/String; = "temperature_gap_value"

.field private static final TEMPERATURE_GAP_VALUE_DEFAULT:F = 0.5f

.field private static final THRESHOLD_SUNLIGHT_NIT_DEFAULT:F = 160.0f

.field private static final THRESHOLD_SUNLIGHT_NIT_MODULE_NAME:Ljava/lang/String; = "thresholdSunlightNit"

.field private static final TOUCH_COVER_PROTECTION_GAME_APP_LIST:Ljava/lang/String; = "touch_cover_protection_game_app_list"

.field private static final TOUCH_COVER_PROTECTION_GAME_MODE:Ljava/lang/String; = "TouchCoverProtectionGameMode"

.field private static final delay:J = 0xea60L


# instance fields
.field private mAppCategoryConfigCloudFile:Landroid/util/AtomicFile;

.field private mAutoBrightnessStatisticsEventEnable:Z

.field private mBCBCAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBrightnessCurveOptimizePolicyDisable:Z

.field private mBrightnessStatsEventsEnable:Z

.field private mCallback:Lcom/android/server/display/MiuiDisplayCloudController$Callback;

.field private mCloudEventsData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mCloudEventsSummary:J

.field private mCloudListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/display/MiuiDisplayCloudController$CloudListener;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCustomCurveDisable:Z

.field private mDisableResetShortTermModel:Z

.field private mFile:Landroid/util/AtomicFile;

.field private mGestureComponents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mIndividualModelDisable:Z

.field private mManualBoostAppEnable:Z

.field private mManualBoostDisableAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/display/MiuiDisplayCloudController$Observer;",
            ">;"
        }
    .end annotation
.end field

.field private mOverrideBrightnessPolicyEnable:Z

.field private mResetShortTermModelPolicyDisable:Z

.field private mResolutionSwitchProcessBlackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mResolutionSwitchProcessProtectList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRhythmicImageAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRhythmicReadAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRhythmicReadAppList_V3:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mShortTermModelAppMapper:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mShortTermModelCloudAppCategoryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mShortTermModelEnable:Z

.field private mShortTermModelGameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mShortTermModelGlobalList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mShortTermModelImageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mShortTermModelMapList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mShortTermModelReaderList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mShortTermModelVideoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTemperatureGap:F

.field private mThermalBrightnessCloudFile:Landroid/util/AtomicFile;

.field private mThresholdSunlightNit:F

.field private mTofManagerInternal:Lcom/android/server/tof/TofManagerInternal;

.field private mTouchCoverProtectionGameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$Zm58MGTipbL93ymzsNBZFSrbBGg(Lcom/android/server/display/MiuiDisplayCloudController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/MiuiDisplayCloudController;->lambda$reSyncLocalBackupFromCloud$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$vfRAZsNGkd2qtTl7qGtlG3s29vg(Lcom/android/server/display/MiuiDisplayCloudController;Lcom/android/server/display/MiuiDisplayCloudController$CloudListener;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/MiuiDisplayCloudController;->lambda$updateDataFromCloudControl$1(Lcom/android/server/display/MiuiDisplayCloudController$CloudListener;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msyncLocalBackupFromCloud(Lcom/android/server/display/MiuiDisplayCloudController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/MiuiDisplayCloudController;->syncLocalBackupFromCloud()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateDataFromCloudControl(Lcom/android/server/display/MiuiDisplayCloudController;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/MiuiDisplayCloudController;->updateDataFromCloudControl()Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 64
    const-string v0, "debug.miui.display.cloud.dbg"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_c

    move v0, v2

    goto :goto_d

    :cond_c
    move v0, v1

    :goto_d
    sput-boolean v0, Lcom/android/server/display/MiuiDisplayCloudController;->DEBUG:Z

    .line 141
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x110b004b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1e

    move v1, v2

    :cond_1e
    sput-boolean v1, Lcom/android/server/display/MiuiDisplayCloudController;->IS_GREEN_MOUNTAIN_EYECARE_V3:Z

    .line 140
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Lcom/android/server/display/MiuiDisplayCloudController$Callback;Landroid/content/Context;)V
    .registers 5
    .param p1, "looper"  # Landroid/os/Looper;
    .param p2, "callback"  # Lcom/android/server/display/MiuiDisplayCloudController$Callback;
    .param p3, "context"  # Landroid/content/Context;

    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mRhythmicReadAppList_V3:Ljava/util/List;

    .line 178
    const/high16 v0, 0x3f000000  # 0.5f

    iput v0, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mTemperatureGap:F

    .line 187
    const/high16 v0, 0x43200000  # 160.0f

    iput v0, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mThresholdSunlightNit:F

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mShortTermModelGameList:Ljava/util/List;

    .line 203
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mShortTermModelVideoList:Ljava/util/List;

    .line 204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mShortTermModelMapList:Ljava/util/List;

    .line 205
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mShortTermModelImageList:Ljava/util/List;

    .line 206
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mShortTermModelReaderList:Ljava/util/List;

    .line 207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mShortTermModelGlobalList:Ljava/util/List;

    .line 209
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mShortTermModelAppMapper:Ljava/util/Map;

    .line 210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mShortTermModelCloudAppCategoryList:Ljava/util/List;

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mBCBCAppList:Ljava/util/List;

    .line 212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mTouchCoverProtectionGameList:Ljava/util/List;

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mManualBoostDisableAppList:Ljava/util/List;

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mObservers:Ljava/util/ArrayList;

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mCloudListeners:Ljava/util/List;

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mResolutionSwitchProcessProtectList:Ljava/util/List;

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mResolutionSwitchProcessBlackList:Ljava/util/List;

    .line 226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mRhythmicImageAppList:Ljava/util/List;

    .line 227
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mRhythmicReadAppList:Ljava/util/List;

    .line 229
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mGestureComponents:Ljava/util/List;

    .line 312
    iput-object p3, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mContext:Landroid/content/Context;

    .line 313
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mHandler:Landroid/os/Handler;

    .line 314
    iput-object p2, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mCallback:Lcom/android/server/display/MiuiDisplayCloudController$Callback;

    .line 315
    invoke-direct {p0}, Lcom/android/server/display/MiuiDisplayCloudController;->initialization()V

    .line 316
    invoke-direct {p0}, Lcom/android/server/display/MiuiDisplayCloudController;->registerMiuiBrightnessCloudDataObserver()V

    .line 317
    return-void
.end method

.method private getFile(Ljava/lang/String;)Landroid/util/AtomicFile;
    .registers 6
    .param p1, "fileName"  # Ljava/lang/String;

    .line 1039
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "displayconfig"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method private getFileLength()J
    .registers 3

    .line 1047
    iget-object v0, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mFile:Landroid/util/AtomicFile;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->exists()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1048
    iget-object v0, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0

    .line 1050
    :cond_17
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method private initialization()V
    .registers 6

    .line 325
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mCloudEventsData:Ljava/util/Map;

    .line 327
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mShortTermModelEnable:Z

    .line 329
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    const/4 v1, 0x6

    if-ge v0, v1, :cond_1f

    .line 330
    iget-object v1, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mShortTermModelAppMapper:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 333
    .end local v0  # "i":I
    :cond_1f
    iget-object v0, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mShortTermModelCloudAppCategoryList:Ljava/util/List;

    const-string/jumbo v1, "short_term_model_game_app_list"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    iget-object v0, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mShortTermModelCloudAppCategoryList:Ljava/util/List;

    const-string/jumbo v1, "short_term_model_video_app_list"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    iget-object v0, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mShortTermModelCloudAppCategoryList:Ljava/util/List;

    const-string/jumbo v1, "short_term_model_map_app_list"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    iget-object v0, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mShortTermModelCloudAppCategoryList:Ljava/util/List;

    const-string/jumbo v1, "short_term_model_image_app_list"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    iget-object v0, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mShortTermModelCloudAppCategoryList:Ljava/util/List;

    const-string/jumbo v1, "short_term_model_reader_app_list"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    iget-object v0, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mShortTermModelCloudAppCategoryList:Ljava/util/List;

    const-string/jumbo v1, "short_term_model_global_app_list"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    const-string v0, "display_cloud_backup.xml"

    invoke-direct {p0, v0}, Lcom/android/server/display/MiuiDisplayCloudController;->getFile(Ljava/lang/String;)Landroid/util/AtomicFile;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mFile:Landroid/util/AtomicFile;

    .line 342
    invoke-direct {p0}, Lcom/android/server/display/MiuiDisplayCloudController;->getFileLength()J

    move-result-wide v0

    .line 343
    .local v0, "fileLength":J
    const-wide/32 v2, 0x19000

    cmp-long v2, v0, v2

    if-lez v2, :cond_88

    .line 344
    const-string v2, "Cloud backup file size is too large, delete it."

    const-string v3, "MiuiDisplayCloudController"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fileLength = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iget-object v2, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->delete()V

    .line 348
    invoke-direct {p0}, Lcom/android/server/display/MiuiDisplayCloudController;->reSyncLocalBackupFromCloud()V

    goto :goto_8b

    .line 351
    :cond_88
    invoke-direct {p0}, Lcom/android/server/display/MiuiDisplayCloudController;->loadLocalCloudBackup()V

    .line 354
    :goto_8b
    return-void
.end method

.method private synthetic lambda$reSyncLocalBackupFromCloud$0()V
    .registers 2

    .line 362
    invoke-direct {p0}, Lcom/android/server/display/MiuiDisplayCloudController;->updateDataFromCloudControl()Z

    move-result v0

    .line 363
    .local v0, "changed":Z
    if-eqz v0, :cond_9

    .line 364
    invoke-direct {p0}, Lcom/android/server/display/MiuiDisplayCloudController;->syncLocalBackupFromCloud()V

    .line 366
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/display/MiuiDisplayCloudController;->notifyAllObservers()V

    .line 367
    return-void
.end method

.method private synthetic lambda$updateDataFromCloudControl$1(Lcom/android/server/display/MiuiDisplayCloudController$CloudListener;)V
    .registers 5
    .param p1, "l"  # Lcom/android/server/display/MiuiDisplayCloudController$CloudListener;

    .line 971
    iget-wide v0, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mCloudEventsSummary:J

    iget-object v2, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mCloudEventsData:Ljava/util/Map;

    invoke-interface {p1, v0, v1, v2}, Lcom/android/server/display/MiuiDisplayCloudController$CloudListener;->onCloudUpdated(JLjava/util/Map;)V

    .line 972
    return-void
.end method

.method private loadLocalCloudBackup()V
    .registers 6

    .line 980
    iget-object v0, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mFile:Landroid/util/AtomicFile;

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->exists()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 981
    const/4 v0, 0x0

    .line 983
    .local v0, "inputStream":Ljava/io/FileInputStream;
    :try_start_d
    iget-object v1, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1

    move-object v0, v1

    .line 984
    invoke-direct {p0, v0}, Lcom/android/server/display/MiuiDisplayCloudController;->readCloudDataFromXml(Ljava/io/InputStream;)V

    .line 986
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/display/MiuiDisplayCloudController;->saveShortTermModelAppComponent(Lorg/json/JSONObject;)V

    .line 987
    invoke-virtual {p0}, Lcom/android/server/display/MiuiDisplayCloudController;->notifyAllObservers()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_1e} :catch_25
    .catchall {:try_start_d .. :try_end_1e} :catchall_23

    .line 992
    nop

    :goto_1f
    invoke-static {v0}, Lmiui/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 993
    goto :goto_45

    .line 992
    :catchall_23
    move-exception v1

    goto :goto_46

    .line 988
    :catch_25
    move-exception v1

    .line 989
    .local v1, "e":Ljava/io/IOException;
    :try_start_26
    iget-object v2, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->delete()V

    .line 990
    const-string v2, "MiuiDisplayCloudController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to read local cloud backup"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catchall {:try_start_26 .. :try_end_43} :catchall_23

    .line 992
    nop

    .end local v1  # "e":Ljava/io/IOException;
    goto :goto_1f

    .line 994
    .end local v0  # "inputStream":Ljava/io/FileInputStream;
    :goto_45
    goto :goto_50

    .line 992
    .restart local v0  # "inputStream":Ljava/io/FileInputStream;
    :goto_46
    invoke-static {v0}, Lmiui/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 993
    throw v1

    .line 995
    .end local v0  # "inputStream":Ljava/io/FileInputStream;
    :cond_4a
    invoke-direct {p0}, Lcom/android/server/display/MiuiDisplayCloudController;->loadResolutionSwitchBackUpFileFromXml()V

    .line 996
    invoke-direct {p0}, Lcom/android/server/display/MiuiDisplayCloudController;->loadRhythmicAppCategoryBackUpFileFromXml()V

    .line 998
    :goto_50
    return-void
.end method

.method private loadResolutionSwitchBackUpFileFromXml()V
    .registers 7

    .line 1017
    const/4 v0, 0x0

    .line 1018
    .local v0, "inputStream":Ljava/io/FileInputStream;
    new-instance v1, Landroid/util/AtomicFile;

    .line 1019
    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "etc/displayconfig"

    const-string/jumbo v4, "resolution_switch_process_list_backup.xml"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    .line 1018
    invoke-static {v2, v3}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 1022
    .local v1, "file":Landroid/util/AtomicFile;
    :try_start_17
    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    move-object v0, v2

    .line 1023
    invoke-direct {p0, v0}, Lcom/android/server/display/MiuiDisplayCloudController;->loadResolutionSwitchListFromXml(Ljava/io/InputStream;)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1f} :catch_26
    .catchall {:try_start_17 .. :try_end_1f} :catchall_24

    .line 1028
    nop

    :goto_20
    invoke-static {v0}, Lmiui/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 1029
    goto :goto_44

    .line 1028
    :catchall_24
    move-exception v2

    goto :goto_45

    .line 1024
    :catch_26
    move-exception v2

    .line 1025
    .local v2, "e":Ljava/io/IOException;
    :try_start_27
    invoke-virtual {v1}, Landroid/util/AtomicFile;->delete()V

    .line 1026
    const-string v3, "MiuiDisplayCloudController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to read local cloud backup"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catchall {:try_start_27 .. :try_end_42} :catchall_24

    .line 1028
    nop

    .end local v2  # "e":Ljava/io/IOException;
    goto :goto_20

    .line 1030
    :goto_44
    return-void

    .line 1028
    :goto_45
    invoke-static {v0}, Lmiui/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 1029
    throw v2
.end method

.method private loadResolutionSwitchListFromXml(Ljava/io/InputStream;)V
    .registers 10
    .param p1, "stream"  # Ljava/io/InputStream;

    .line 845
    const-string v0, "MiuiDisplayCloudController"

    :try_start_2
    const-string v1, "Start loading resolution switch process list from xml."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    invoke-static {p1}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v1

    .line 849
    .local v1, "parser":Lcom/android/modules/utils/TypedXmlPullParser;
    const/4 v2, 0x0

    .line 850
    .local v2, "currentTag":I
    :cond_c
    :goto_c
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v3

    move v4, v3

    .local v4, "type":I
    const/4 v5, 0x1

    if-eq v3, v5, :cond_6b

    .line 851
    const/4 v3, 0x4

    if-eq v4, v3, :cond_c

    const/4 v3, 0x3

    if-ne v4, v3, :cond_1b

    .line 852
    goto :goto_c

    .line 854
    :cond_1b
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 855
    .local v3, "tag":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v6

    const/4 v7, 0x2

    sparse-switch v6, :sswitch_data_88

    :cond_27
    goto :goto_49

    :sswitch_28
    const-string/jumbo v6, "resolution_switch_process_black"

    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_27

    move v6, v5

    goto :goto_4a

    :sswitch_33
    const-string/jumbo v6, "item"

    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_27

    move v6, v7

    goto :goto_4a

    :sswitch_3e
    const-string/jumbo v6, "resolution_switch_process_protect"

    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_27

    const/4 v6, 0x0

    goto :goto_4a

    :goto_49
    const/4 v6, -0x1

    :goto_4a
    packed-switch v6, :pswitch_data_96

    goto :goto_6a

    .line 863
    :pswitch_4e  #0x2
    if-ne v2, v5, :cond_5a

    .line 864
    iget-object v5, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mResolutionSwitchProcessProtectList:Ljava/util/List;

    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6a

    .line 865
    :cond_5a
    if-ne v2, v7, :cond_6a

    .line 866
    iget-object v5, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mResolutionSwitchProcessBlackList:Ljava/util/List;

    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6a

    .line 860
    :pswitch_66  #0x1
    const/4 v2, 0x2

    .line 861
    goto :goto_6a

    .line 857
    :pswitch_68  #0x0
    const/4 v2, 0x1

    .line 858
    nop

    .line 872
    .end local v3  # "tag":Ljava/lang/String;
    :cond_6a
    :goto_6a
    goto :goto_c

    .line 873
    :cond_6b
    invoke-direct {p0}, Lcom/android/server/display/MiuiDisplayCloudController;->notifyResolutionSwitchListChanged()V
    :try_end_6e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_6e} :catch_6f
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_6e} :catch_6f

    .line 876
    .end local v1  # "parser":Lcom/android/modules/utils/TypedXmlPullParser;
    .end local v2  # "currentTag":I
    .end local v4  # "type":I
    goto :goto_86

    .line 874
    :catch_6f
    move-exception v1

    .line 875
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse local cloud backup file"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    .end local v1  # "e":Ljava/lang/Exception;
    :goto_86
    return-void

    nop

    :sswitch_data_88
    .sparse-switch
        -0x5da4b919 -> :sswitch_3e
        0x317b13 -> :sswitch_33
        0x40eb2617 -> :sswitch_28
    .end sparse-switch

    :pswitch_data_96
    .packed-switch 0x0
        :pswitch_68  #00000000
        :pswitch_66  #00000001
        :pswitch_4e  #00000002
    .end packed-switch
.end method

.method private loadRhythmicAppCategoryBackUpFileFromXml()V
    .registers 7

    .line 1001
    const/4 v0, 0x0

    .line 1002
    .local v0, "inputStream":Ljava/io/FileInputStream;
    new-instance v1, Landroid/util/AtomicFile;

    .line 1003
    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "etc/displayconfig"

    const-string/jumbo v4, "rhythmic_app_category_list_backup.xml"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    .line 1002
    invoke-static {v2, v3}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 1006
    .local v1, "file":Landroid/util/AtomicFile;
    :try_start_17
    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    move-object v0, v2

    .line 1007
    invoke-direct {p0, v0}, Lcom/android/server/display/MiuiDisplayCloudController;->loadRhythmicAppCategoryListFromXml(Ljava/io/InputStream;)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1f} :catch_26
    .catchall {:try_start_17 .. :try_end_1f} :catchall_24

    .line 1012
    nop

    :goto_20
    invoke-static {v0}, Lmiui/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 1013
    goto :goto_44

    .line 1012
    :catchall_24
    move-exception v2

    goto :goto_45

    .line 1008
    :catch_26
    move-exception v2

    .line 1009
    .local v2, "e":Ljava/io/IOException;
    :try_start_27
    invoke-virtual {v1}, Landroid/util/AtomicFile;->delete()V

    .line 1010
    const-string v3, "MiuiDisplayCloudController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to read local cloud backup"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catchall {:try_start_27 .. :try_end_42} :catchall_24

    .line 1012
    nop

    .end local v2  # "e":Ljava/io/IOException;
    goto :goto_20

    .line 1014
    :goto_44
    return-void

    .line 1012
    :goto_45
    invoke-static {v0}, Lmiui/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 1013
    throw v2
.end method

.method private loadRhythmicAppCategoryListFromXml(Ljava/io/InputStream;)V
    .registers 11
    .param p1, "stream"  # Ljava/io/InputStream;

    .line 885
    const-string v0, "MiuiDisplayCloudController"

    :try_start_2
    const-string v1, "Start loading app category list from xml."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    invoke-static {p1}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v1

    .line 889
    .local v1, "parser":Lcom/android/modules/utils/TypedXmlPullParser;
    const/4 v2, 0x0

    .line 890
    .local v2, "currentTag":I
    :cond_c
    :goto_c
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v3

    move v4, v3

    .local v4, "type":I
    const/4 v5, 0x1

    if-eq v3, v5, :cond_88

    .line 891
    const/4 v3, 0x4

    if-eq v4, v3, :cond_c

    const/4 v3, 0x3

    if-ne v4, v3, :cond_1b

    .line 892
    goto :goto_c

    .line 894
    :cond_1b
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 895
    .local v6, "tag":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v7

    const/4 v8, 0x2

    sparse-switch v7, :sswitch_data_bc

    :cond_27
    goto :goto_54

    :sswitch_28
    const-string/jumbo v7, "rhythmic_app_category_read"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_27

    move v7, v5

    goto :goto_55

    :sswitch_33
    const-string/jumbo v7, "rhythmic_app_category_read_v3"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_27

    move v7, v8

    goto :goto_55

    :sswitch_3e
    const-string/jumbo v7, "item"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_27

    move v7, v3

    goto :goto_55

    :sswitch_49
    const-string/jumbo v7, "rhythmic_app_category_image"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_27

    const/4 v7, 0x0

    goto :goto_55

    :goto_54
    const/4 v7, -0x1

    :goto_55
    packed-switch v7, :pswitch_data_ce

    goto :goto_87

    .line 906
    :pswitch_59  #0x3
    if-ne v2, v5, :cond_65

    .line 907
    iget-object v3, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mRhythmicImageAppList:Ljava/util/List;

    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_87

    .line 908
    :cond_65
    if-ne v2, v8, :cond_71

    .line 909
    iget-object v3, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mRhythmicReadAppList:Ljava/util/List;

    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_87

    .line 910
    :cond_71
    if-ne v2, v3, :cond_87

    sget-boolean v3, Lcom/android/server/display/MiuiDisplayCloudController;->IS_GREEN_MOUNTAIN_EYECARE_V3:Z

    if-eqz v3, :cond_87

    .line 911
    iget-object v3, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mRhythmicReadAppList_V3:Ljava/util/List;

    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_87

    .line 903
    :pswitch_81  #0x2
    const/4 v2, 0x3

    .line 904
    goto :goto_87

    .line 900
    :pswitch_83  #0x1
    const/4 v2, 0x2

    .line 901
    goto :goto_87

    .line 897
    :pswitch_85  #0x0
    const/4 v2, 0x1

    .line 898
    nop

    .line 917
    .end local v6  # "tag":Ljava/lang/String;
    :cond_87
    :goto_87
    goto :goto_c

    .line 918
    :cond_88
    sget-boolean v3, Lcom/android/server/display/MiuiDisplayCloudController;->IS_GREEN_MOUNTAIN_EYECARE_V3:Z

    if-eqz v3, :cond_a0

    iget-object v3, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mRhythmicReadAppList_V3:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_a0

    .line 919
    iget-object v3, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mRhythmicReadAppList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 920
    iget-object v3, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mRhythmicReadAppList:Ljava/util/List;

    iget-object v5, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mRhythmicReadAppList_V3:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 922
    :cond_a0
    invoke-direct {p0}, Lcom/android/server/display/MiuiDisplayCloudController;->notifyRhythmicAppCategoryListChanged()V
    :try_end_a3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_a3} :catch_a4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_a3} :catch_a4

    .line 925
    .end local v1  # "parser":Lcom/android/modules/utils/TypedXmlPullParser;
    .end local v2  # "currentTag":I
    .end local v4  # "type":I
    goto :goto_bb

    .line 923
    :catch_a4
    move-exception v1

    .line 924
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse local cloud backup file"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    .end local v1  # "e":Ljava/lang/Exception;
    :goto_bb
    return-void

    :sswitch_data_bc
    .sparse-switch
        -0x530f2ad9 -> :sswitch_49
        0x317b13 -> :sswitch_3e
        0x2801292 -> :sswitch_33
        0x3724844a -> :sswitch_28
    .end sparse-switch

    :pswitch_data_ce
    .packed-switch 0x0
        :pswitch_85  #00000000
        :pswitch_83  #00000001
        :pswitch_81  #00000002
        :pswitch_59  #00000003
    .end packed-switch
.end method

.method private notifyContactlessGestureConfigChanged()V
    .registers 3

    .line 1657
    const-class v0, Lcom/android/server/tof/TofManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tof/TofManagerInternal;

    iput-object v0, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mTofManagerInternal:Lcom/android/server/tof/TofManagerInternal;

    .line 1658
    const-string v0, "MiuiDisplayCloudController"

    const-string/jumbo v1, "notifyContactlessGestureConfigChanged"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1659
    iget-object v0, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mTofManagerInternal:Lcom/android/server/tof/TofManagerInternal;

    if-eqz v0, :cond_1d

    .line 1660
    iget-object v0, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mTofManagerInternal:Lcom/android/server/tof/TofManagerInternal;

    iget-object v1, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mGestureComponents:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/server/tof/TofManagerInternal;->updateGestureAppConfig(Ljava/util/List;)V

    .line 1662
    :cond_1d
    return-void
.end method

.method private notifyResolutionSwitchListChanged()V
    .registers 4

    .line 1427
    invoke-static {}, Lcom/android/server/display/DisplayManagerServiceStub;->getInstance()Lcom/android/server/display/DisplayManagerServiceStub;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mResolutionSwitchProcessProtectList:Ljava/util/List;

    iget-object v2, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mResolutionSwitchProcessBlackList:Ljava/util/List;

    .line 1428
    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/DisplayManagerServiceStub;->updateResolutionSwitchList(Ljava/util/List;Ljava/util/List;)V

    .line 1430
    return-void
.end method

.method private notifyRhythmicAppCategoryListChanged()V
    .registers 4

    .line 1698
    invoke-static {}, Lcom/android/server/display/DisplayManagerServiceStub;->getInstance()Lcom/android/server/display/DisplayManagerServiceStub;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mRhythmicImageAppList:Ljava/util/List;

    iget-object v2, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mRhythmicReadAppList:Ljava/util/List;

    .line 1699
    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/DisplayManagerServiceStub;->updateRhythmicAppCategoryList(Ljava/util/List;Ljava/util/List;)V

    .line 1700
    return-void
.end method

.method private reSyncLocalBackupFromCloud()V
    .registers 5

    .line 360
    const-string v0, "MiuiDisplayCloudController"

    const-string v1, "Start reSyncLocalBackupFromCloud, delay 60s."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/MiuiDisplayCloudController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/display/MiuiDisplayCloudController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/MiuiDisplayCloudController;)V

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 368
    return-void
.end method

.method private readCloudDataFromXml(Ljava/io/InputStream;)V
    .registers 13
    .param p1, "stream"  # Ljava/io/InputStream;

    .line 699
    const-string v0, "MiuiDisplayCloudController"

    :try_start_2
    const-string v1, "Start reading cloud data from xml."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    invoke-static {p1}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v1

    .line 702
    .local v1, "parser":Lcom/android/modules/utils/TypedXmlPullParser;
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mCloudEventsSummary:J

    .line 703
    iget-object v2, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mCloudEventsData:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 704
    :cond_14
    :goto_14
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v2, v4, :cond_271

    .line 705
    const/4 v2, 0x3

    if-eq v3, v2, :cond_14

    const/4 v5, 0x4

    if-ne v3, v5, :cond_23

    .line 706
    goto :goto_14

    .line 708
    :cond_23
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 709
    .local v6, "tag":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v7

    const/4 v8, 0x0

    sparse-switch v7, :sswitch_data_29a

    :cond_2f
    goto/16 :goto_16b

    :sswitch_31
    const-string/jumbo v2, "image-category"

    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    move v4, v5

    goto/16 :goto_16c

    :sswitch_3d
    const-string/jumbo v2, "individual-model-disable"

    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    const/16 v4, 0x16

    goto/16 :goto_16c

    :sswitch_4a
    const-string/jumbo v2, "undefined-category"

    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    const/4 v4, 0x6

    goto/16 :goto_16c

    :sswitch_56
    const-string v2, "automatic-brightness-statistics-event-enable"

    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    const/16 v4, 0xb

    goto/16 :goto_16c

    :sswitch_62
    const-string v2, "disable-reset-short-term-model"

    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    const/16 v4, 0xc

    goto/16 :goto_16c

    :sswitch_6e
    const-string/jumbo v2, "override-brightness-policy-enable"

    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    const/16 v4, 0xa

    goto/16 :goto_16c

    :sswitch_7b
    const-string/jumbo v2, "resolution_switch_process_black"

    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    const/16 v4, 0x9

    goto/16 :goto_16c

    :sswitch_88
    const-string/jumbo v2, "rhythmic_app_category_read"

    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    const/16 v4, 0x12

    goto/16 :goto_16c

    :sswitch_95
    const-string/jumbo v2, "reader-category"

    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    const/4 v4, 0x5

    goto/16 :goto_16c

    :sswitch_a1
    const-string/jumbo v2, "manual-boost-disable-app-list"

    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    const/16 v4, 0x10

    goto/16 :goto_16c

    :sswitch_ae
    const-string v2, "custom-curve-disable"

    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    const/16 v4, 0x17

    goto/16 :goto_16c

    :sswitch_ba
    const-string/jumbo v2, "reset-short-term-model-policy-disable"

    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    const/16 v4, 0x19

    goto/16 :goto_16c

    :sswitch_c7
    const-string v2, "brightness-statistics-events-enable"

    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    const/16 v4, 0x13

    goto/16 :goto_16c

    :sswitch_d3
    const-string/jumbo v2, "temperature-gap-value"

    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    const/16 v4, 0x15

    goto/16 :goto_16c

    :sswitch_e0
    const-string v2, "bcbc-app"

    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    const/4 v4, 0x7

    goto/16 :goto_16c

    :sswitch_eb
    const-string v2, "brightness-curve-optimize-policy-disable"

    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    const/16 v4, 0x18

    goto/16 :goto_16c

    :sswitch_f7
    const-string/jumbo v2, "touch_cover_protection_game_app"

    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    const/16 v4, 0xd

    goto/16 :goto_16c

    :sswitch_104
    const-string/jumbo v2, "manual-boost-app-enable"

    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    const/16 v4, 0x11

    goto :goto_16c

    :sswitch_110
    const-string/jumbo v2, "threshold-sunlight-nit-value"

    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    const/16 v4, 0x14

    goto :goto_16c

    :sswitch_11c
    const-string/jumbo v2, "game-category"

    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    goto :goto_16c

    :sswitch_126
    const-string/jumbo v2, "video-category"

    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    const/4 v4, 0x2

    goto :goto_16c

    :sswitch_131
    const-string/jumbo v2, "rhythmic_app_category_image"

    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    const/16 v4, 0xe

    goto :goto_16c

    :sswitch_13d
    const-string/jumbo v2, "gesture_component"

    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    const/16 v4, 0xf

    goto :goto_16c

    :sswitch_149
    const-string/jumbo v4, "map-category"

    invoke-virtual {v6, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    move v4, v2

    goto :goto_16c

    :sswitch_154
    const-string/jumbo v2, "resolution_switch_process_protect"

    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    const/16 v4, 0x8

    goto :goto_16c

    :sswitch_160
    const-string/jumbo v2, "short-term-model-enabled"

    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_167
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_167} :catch_281
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_167} :catch_281

    if-eqz v2, :cond_2f

    move v4, v8

    goto :goto_16c

    :goto_16b
    const/4 v4, -0x1

    :goto_16c
    const-string/jumbo v2, "value"

    const-string/jumbo v5, "item"

    const-string/jumbo v7, "package"

    const-string v9, "enabled"

    const/4 v10, 0x0

    packed-switch v4, :pswitch_data_304

    goto/16 :goto_26f

    .line 823
    :pswitch_17d  #0x19
    :try_start_17d
    invoke-interface {v1, v10, v9, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mResetShortTermModelPolicyDisable:Z

    .line 825
    goto/16 :goto_26f

    .line 819
    :pswitch_185  #0x18
    invoke-interface {v1, v10, v9, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mBrightnessCurveOptimizePolicyDisable:Z

    .line 821
    goto/16 :goto_26f

    .line 812
    :pswitch_18d  #0x17
    invoke-interface {v1, v10, v9, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mCustomCurveDisable:Z

    .line 814
    iget-boolean v2, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mCustomCurveDisable:Z

    if-eqz v2, :cond_26f

    .line 815
    iget-wide v4, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mCloudEventsSummary:J

    const-wide/16 v7, 0x10

    or-long/2addr v4, v7

    iput-wide v4, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mCloudEventsSummary:J

    goto/16 :goto_26f

    .line 805
    :pswitch_1a0  #0x16
    invoke-interface {v1, v10, v9, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mIndividualModelDisable:Z

    .line 807
    iget-boolean v2, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mIndividualModelDisable:Z

    if-eqz v2, :cond_26f

    .line 808
    iget-wide v4, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mCloudEventsSummary:J

    const-wide/16 v7, 0x20

    or-long/2addr v4, v7

    iput-wide v4, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mCloudEventsSummary:J

    goto/16 :goto_26f

    .line 799
    :pswitch_1b3  #0x15
    const/high16 v4, 0x3f000000  # 0.5f

    invoke-interface {v1, v10, v2, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v2

    iput v2, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mTemperatureGap:F

    .line 801
    iget-wide v4, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mCloudEventsSummary:J

    const-wide/16 v7, 0x4

    or-long/2addr v4, v7

    iput-wide v4, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mCloudEventsSummary:J

    .line 802
    iget-object v2, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mCloudEventsData:Ljava/util/Map;

    const-string v4, "TemperatureGap"

    iget v5, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mTemperatureGap:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 803
    goto/16 :goto_26f

    .line 794
    :pswitch_1d1  #0x14
    const/high16 v4, 0x43200000  # 160.0f

    invoke-interface {v1, v10, v2, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v2

    iput v2, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mThresholdSunlightNit:F

    .line 796
    iget-object v2, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mCallback:Lcom/android/server/display/MiuiDisplayCloudController$Callback;

    iget v4, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mThresholdSunlightNit:F

    invoke-interface {v2, v4}, Lcom/android/server/display/MiuiDisplayCloudController$Callback;->notifyThresholdSunlightNitChanged(F)V

    .line 797
    goto/16 :goto_26f

    .line 787
    :pswitch_1e2  #0x13
    invoke-interface {v1, v10, v9, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mBrightnessStatsEventsEnable:Z

    .line 789
    iget-boolean v2, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mBrightnessStatsEventsEnable:Z

    if-eqz v2, :cond_26f

    .line 790
    iget-wide v4, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mCloudEventsSummary:J

    const-wide/16 v7, 0x1

    or-long/2addr v4, v7

    iput-wide v4, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mCloudEventsSummary:J

    goto/16 :goto_26f

    .line 783
    :pswitch_1f5  #0x12
    iget-object v2, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mRhythmicReadAppList:Ljava/util/List;

    invoke-direct {p0, v1, v5, v2}, Lcom/android/server/display/MiuiDisplayCloudController;->saveAppListFromXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Ljava/util/List;)V

    .line 785
    goto/16 :goto_26f

    .line 779
    :pswitch_1fc  #0x11
    invoke-interface {v1, v10, v9, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mManualBoostAppEnable:Z

    .line 781
    goto/16 :goto_26f

    .line 775
    :pswitch_204  #0x10
    iget-object v2, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mManualBoostDisableAppList:Ljava/util/List;

    invoke-direct {p0, v1, v7, v2}, Lcom/android/server/display/MiuiDisplayCloudController;->saveAppListFromXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Ljava/util/List;)V

    .line 777
    goto/16 :goto_26f

    .line 771
    :pswitch_20b  #0xf
    iget-object v2, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mGestureComponents:Ljava/util/List;

    invoke-direct {p0, v1, v7, v2}, Lcom/android/server/display/MiuiDisplayCloudController;->saveAppListFromXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Ljava/util/List;)V

    .line 773
    goto :goto_26f

    .line 767
    :pswitch_211  #0xe
    iget-object v2, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mRhythmicImageAppList:Ljava/util/List;

    invoke-direct {p0, v1, v5, v2}, Lcom/android/server/display/MiuiDisplayCloudController;->saveAppListFromXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Ljava/util/List;)V

    .line 769
    goto :goto_26f

    .line 763
    :pswitch_217  #0xd
    iget-object v2, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mTouchCoverProtectionGameList:Ljava/util/List;

    invoke-direct {p0, v1, v7, v2}, Lcom/android/server/display/MiuiDisplayCloudController;->saveAppListFromXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Ljava/util/List;)V

    .line 765
    goto :goto_26f

    .line 759
    :pswitch_21d  #0xc
    invoke-interface {v1, v10, v9, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mDisableResetShortTermModel:Z

    .line 761
    goto :goto_26f

    .line 755
    :pswitch_224  #0xb
    invoke-interface {v1, v10, v9, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mAutoBrightnessStatisticsEventEnable:Z

    .line 757
    goto :goto_26f

    .line 751
    :pswitch_22b  #0xa
    invoke-interface {v1, v10, v9, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mOverrideBrightnessPolicyEnable:Z

    .line 753
    goto :goto_26f

    .line 747
    :pswitch_232  #0x9
    iget-object v2, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mResolutionSwitchProcessBlackList:Ljava/util/List;

    invoke-direct {p0, v1, v5, v2}, Lcom/android/server/display/MiuiDisplayCloudController;->saveAppListFromXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Ljava/util/List;)V

    .line 749
    goto :goto_26f

    .line 743
    :pswitch_238  #0x8
    iget-object v2, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mResolutionSwitchProcessProtectList:Ljava/util/List;

    invoke-direct {p0, v1, v5, v2}, Lcom/android/server/display/MiuiDisplayCloudController;->saveAppListFromXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Ljava/util/List;)V

    .line 745
    goto :goto_26f

    .line 739
    :pswitch_23e  #0x7
    iget-object v2, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mBCBCAppList:Ljava/util/List;

    invoke-direct {p0, v1, v7, v2}, Lcom/android/server/display/MiuiDisplayCloudController;->saveAppListFromXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Ljava/util/List;)V

    .line 741
    goto :goto_26f

    .line 735
    :pswitch_244  #0x6
    iget-object v2, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mShortTermModelGlobalList:Ljava/util/List;

    invoke-direct {p0, v1, v7, v2}, Lcom/android/server/display/MiuiDisplayCloudController;->saveAppListFromXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Ljava/util/List;)V

    .line 737
    goto :goto_26f

    .line 731
    :pswitch_24a  #0x5
    iget-object v2, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mShortTermModelReaderList:Ljava/util/List;

    invoke-direct {p0, v1, v7, v2}, Lcom/android/server/display/MiuiDisplayCloudController;->saveAppListFromXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Ljava/util/List;)V

    .line 733
    goto :goto_26f

    .line 727
    :pswitch_250  #0x4
    iget-object v2, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mShortTermModelImageList:Ljava/util/List;

    invoke-direct {p0, v1, v7, v2}, Lcom/android/server/display/MiuiDisplayCloudController;->saveAppListFromXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Ljava/util/List;)V

    .line 729
    goto :goto_26f

    .line 723
    :pswitch_256  #0x3
    iget-object v2, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mShortTermModelMapList:Ljava/util/List;

    invoke-direct {p0, v1, v7, v2}, Lcom/android/server/display/MiuiDisplayCloudController;->saveAppListFromXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Ljava/util/List;)V

    .line 725
    goto :goto_26f

    .line 719
    :pswitch_25c  #0x2
    iget-object v2, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mShortTermModelVideoList:Ljava/util/List;

    invoke-direct {p0, v1, v7, v2}, Lcom/android/server/display/MiuiDisplayCloudController;->saveAppListFromXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Ljava/util/List;)V

    .line 721
    goto :goto_26f

    .line 715
    :pswitch_262  #0x1
    iget-object v2, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mShortTermModelGameList:Ljava/util/List;

    invoke-direct {p0, v1, v7, v2}, Lcom/android/server/display/MiuiDisplayCloudController;->saveAppListFromXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Ljava/util/List;)V

    .line 717
    goto :goto_26f

    .line 711
    :pswitch_268  #0x0
    invoke-interface {v1, v10, v9, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mShortTermModelEnable:Z

    .line 713
    nop

    .line 829
    .end local v6  # "tag":Ljava/lang/String;
    :cond_26f
    :goto_26f
    goto/16 :goto_14

    .line 830
    :cond_271
    const-string/jumbo v2, "read cloud data from xml done."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    invoke-direct {p0}, Lcom/android/server/display/MiuiDisplayCloudController;->notifyResolutionSwitchListChanged()V

    .line 832
    invoke-direct {p0}, Lcom/android/server/display/MiuiDisplayCloudController;->notifyRhythmicAppCategoryListChanged()V

    .line 833
    invoke-direct {p0}, Lcom/android/server/display/MiuiDisplayCloudController;->notifyContactlessGestureConfigChanged()V
    :try_end_280
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_17d .. :try_end_280} :catch_281
    .catch Ljava/io/IOException; {:try_start_17d .. :try_end_280} :catch_281

    .line 836
    .end local v1  # "parser":Lcom/android/modules/utils/TypedXmlPullParser;
    .end local v3  # "type":I
    goto :goto_298

    .line 834
    :catch_281
    move-exception v1

    .line 835
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse local cloud backup file"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    .end local v1  # "e":Ljava/lang/Exception;
    :goto_298
    return-void

    nop

    :sswitch_data_29a
    .sparse-switch
        -0x6ea54613 -> :sswitch_160
        -0x5da4b919 -> :sswitch_154
        -0x5b891db1 -> :sswitch_149
        -0x5602d279 -> :sswitch_13d
        -0x530f2ad9 -> :sswitch_131
        -0x5185f9f0 -> :sswitch_126
        -0x4594bb87 -> :sswitch_11c
        -0x3ea26e64 -> :sswitch_110
        -0x3486c9c0 -> :sswitch_104
        -0x2911228e -> :sswitch_f7
        -0x1cb94d1d -> :sswitch_eb
        -0x19fff5ea -> :sswitch_e0
        -0x11b05d5f -> :sswitch_d3
        -0x1174fc77 -> :sswitch_c7
        -0x5f7135d -> :sswitch_ba
        -0xa1b552 -> :sswitch_ae
        0xdd390e0 -> :sswitch_a1
        0x1b3912c8 -> :sswitch_95
        0x3724844a -> :sswitch_88
        0x40eb2617 -> :sswitch_7b
        0x466e54e3 -> :sswitch_6e
        0x4cf72dbc -> :sswitch_62
        0x6a02e1e6 -> :sswitch_56
        0x6e9b58db -> :sswitch_4a
        0x710adc10 -> :sswitch_3d
        0x7818ed30 -> :sswitch_31
    .end sparse-switch

    :pswitch_data_304
    .packed-switch 0x0
        :pswitch_268  #00000000
        :pswitch_262  #00000001
        :pswitch_25c  #00000002
        :pswitch_256  #00000003
        :pswitch_250  #00000004
        :pswitch_24a  #00000005
        :pswitch_244  #00000006
        :pswitch_23e  #00000007
        :pswitch_238  #00000008
        :pswitch_232  #00000009
        :pswitch_22b  #0000000a
        :pswitch_224  #0000000b
        :pswitch_21d  #0000000c
        :pswitch_217  #0000000d
        :pswitch_211  #0000000e
        :pswitch_20b  #0000000f
        :pswitch_204  #00000010
        :pswitch_1fc  #00000011
        :pswitch_1f5  #00000012
        :pswitch_1e2  #00000013
        :pswitch_1d1  #00000014
        :pswitch_1b3  #00000015
        :pswitch_1a0  #00000016
        :pswitch_18d  #00000017
        :pswitch_185  #00000018
        :pswitch_17d  #00000019
    .end packed-switch
.end method

.method private registerMiuiBrightnessCloudDataObserver()V
    .registers 5

    .line 374
    iget-object v0, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 375
    invoke-static {}, Landroid/provider/MiuiSettings$SettingsCloudData;->getCloudDataNotifyUri()Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/display/MiuiDisplayCloudController$1;

    iget-object v3, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/display/MiuiDisplayCloudController$1;-><init>(Lcom/android/server/display/MiuiDisplayCloudController;Landroid/os/Handler;)V

    .line 374
    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 388
    return-void
.end method

.method private saveAppListFromXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Ljava/util/List;)V
    .registers 6
    .param p1, "parser"  # Lcom/android/modules/utils/TypedXmlPullParser;
    .param p2, "attribute"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/modules/utils/TypedXmlPullParser;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 936
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 937
    invoke-interface {p1, v0, p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 939
    :cond_e
    return-void
.end method

.method private saveObjectAsListIfNeeded(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;)V
    .registers 8
    .param p1, "jsonObject"  # Lorg/json/JSONObject;
    .param p2, "str"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1226
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_2d

    if-nez p3, :cond_5

    goto :goto_2d

    .line 1229
    :cond_5
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 1230
    .local v0, "appArray":Lorg/json/JSONArray;
    if-eqz v0, :cond_25

    .line 1231
    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 1232
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_24

    .line 1233
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v2

    .line 1234
    .local v2, "obj":Ljava/lang/Object;
    if-eqz v2, :cond_21

    .line 1235
    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1232
    .end local v2  # "obj":Ljava/lang/Object;
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .end local v1  # "i":I
    :cond_24
    goto :goto_2c

    .line 1239
    :cond_25
    const-string v1, "MiuiDisplayCloudController"

    const-string v2, "Such category apps are removed."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    :goto_2c
    return-void

    .line 1227
    .end local v0  # "appArray":Lorg/json/JSONArray;
    :cond_2d
    :goto_2d
    return-void
.end method

.method private saveShortTermModelAppComponent(Lorg/json/JSONObject;)V
    .registers 11
    .param p1, "jsonObject"  # Lorg/json/JSONObject;

    .line 1180
    iget-object v0, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mShortTermModelCloudAppCategoryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_cf

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1181
    .local v1, "str":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    sparse-switch v2, :sswitch_data_d0

    :cond_1f
    goto :goto_62

    :sswitch_20
    const-string/jumbo v2, "short_term_model_global_app_list"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    move v2, v4

    goto :goto_63

    :sswitch_2b
    const-string/jumbo v2, "short_term_model_image_app_list"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    move v2, v6

    goto :goto_63

    :sswitch_36
    const-string/jumbo v2, "short_term_model_reader_app_list"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    move v2, v5

    goto :goto_63

    :sswitch_41
    const-string/jumbo v2, "short_term_model_map_app_list"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    move v2, v7

    goto :goto_63

    :sswitch_4c
    const-string/jumbo v2, "short_term_model_video_app_list"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    move v2, v8

    goto :goto_63

    :sswitch_57
    const-string/jumbo v2, "short_term_model_game_app_list"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    move v2, v3

    goto :goto_63

    :goto_62
    const/4 v2, -0x1

    :goto_63
    packed-switch v2, :pswitch_data_ea

    goto :goto_cd

    .line 1208
    :pswitch_67  #0x5
    iget-object v2, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mShortTermModelGlobalList:Ljava/util/List;

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/display/MiuiDisplayCloudController;->saveObjectAsListIfNeeded(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;)V

    .line 1209
    iget-object v2, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mShortTermModelAppMapper:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mShortTermModelGlobalList:Ljava/util/List;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1211
    goto :goto_cd

    .line 1203
    :pswitch_78  #0x4
    iget-object v2, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mShortTermModelReaderList:Ljava/util/List;

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/display/MiuiDisplayCloudController;->saveObjectAsListIfNeeded(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;)V

    .line 1204
    iget-object v2, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mShortTermModelAppMapper:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mShortTermModelReaderList:Ljava/util/List;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1206
    goto :goto_cd

    .line 1198
    :pswitch_89  #0x3
    iget-object v2, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mShortTermModelImageList:Ljava/util/List;

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/display/MiuiDisplayCloudController;->saveObjectAsListIfNeeded(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;)V

    .line 1199
    iget-object v2, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mShortTermModelAppMapper:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mShortTermModelImageList:Ljava/util/List;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1201
    goto :goto_cd

    .line 1193
    :pswitch_9a  #0x2
    iget-object v2, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mShortTermModelMapList:Ljava/util/List;

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/display/MiuiDisplayCloudController;->saveObjectAsListIfNeeded(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;)V

    .line 1194
    iget-object v2, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mShortTermModelAppMapper:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mShortTermModelMapList:Ljava/util/List;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1196
    goto :goto_cd

    .line 1188
    :pswitch_ab  #0x1
    iget-object v2, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mShortTermModelVideoList:Ljava/util/List;

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/display/MiuiDisplayCloudController;->saveObjectAsListIfNeeded(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;)V

    .line 1189
    iget-object v2, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mShortTermModelAppMapper:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mShortTermModelVideoList:Ljava/util/List;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1191
    goto :goto_cd

    .line 1183
    :pswitch_bc  #0x0
    iget-object v2, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mShortTermModelGameList:Ljava/util/List;

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/display/MiuiDisplayCloudController;->saveObjectAsListIfNeeded(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;)V

    .line 1184
    iget-object v2, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mShortTermModelAppMapper:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mShortTermModelGameList:Ljava/util/List;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1186
    nop

    .line 1215
    .end local v1  # "str":Ljava/lang/String;
    :goto_cd
    goto/16 :goto_6

    .line 1216
    :cond_cf
    return-void

    :sswitch_data_d0
    .sparse-switch
        -0x6ae4e6dd -> :sswitch_57
        -0x64b6c4fa -> :sswitch_4c
        -0x6066af3b -> :sswitch_41
        0x39d4f0f2 -> :sswitch_36
        0x64e82226 -> :sswitch_2b
        0x78f38212 -> :sswitch_20
    .end sparse-switch

    :pswitch_data_ea
    .packed-switch 0x0
        :pswitch_bc  #00000000
        :pswitch_ab  #00000001
        :pswitch_9a  #00000002
        :pswitch_89  #00000003
        :pswitch_78  #00000004
        :pswitch_67  #00000005
    .end packed-switch
.end method

.method private syncLocalBackupFromCloud()V
    .registers 26

    .line 432
    move-object/from16 v1, p0

    const-string/jumbo v0, "reset_short_term_model_policy_disable"

    const-string v8, "brightness_curve_optimize_policy_disable"

    const-string v9, "custom_curve"

    const-string/jumbo v10, "individual_model"

    const-string/jumbo v11, "temperature_gap"

    const-string/jumbo v12, "threshold_sunlight_nit_value"

    const-string v13, "contactless_gesture"

    const-string/jumbo v14, "rhythmic_app_category"

    const-string/jumbo v15, "touch_cover_protection_game"

    const-string/jumbo v2, "override_brightness_policy_enable"

    const-string/jumbo v3, "resolution_switch"

    const-string v4, "bcbc"

    const-string v5, "display-config"

    const-string v6, "MiuiDisplayCloudController"

    const-string/jumbo v7, "manual_boost_disable_app"

    move-object/from16 v16, v2

    iget-object v2, v1, Lcom/android/server/display/MiuiDisplayCloudController;->mFile:Landroid/util/AtomicFile;

    if-nez v2, :cond_30

    .line 433
    return-void

    .line 435
    :cond_30
    const/4 v2, 0x0

    .line 437
    .local v2, "outputStream":Ljava/io/FileOutputStream;
    move-object/from16 v17, v2

    .end local v2  # "outputStream":Ljava/io/FileOutputStream;
    .local v17, "outputStream":Ljava/io/FileOutputStream;
    :try_start_33
    const-string v2, "Start syncing local backup from cloud."

    invoke-static {v6, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    iget-object v2, v1, Lcom/android/server/display/MiuiDisplayCloudController;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_3e} :catch_1e3

    .line 439
    .end local v17  # "outputStream":Ljava/io/FileOutputStream;
    .restart local v2  # "outputStream":Ljava/io/FileOutputStream;
    :try_start_3e
    invoke-static {v2}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v17
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_42} :catch_1df

    move-object/from16 v18, v17

    .line 440
    .local v18, "out":Lcom/android/modules/utils/TypedXmlSerializer;
    move-object/from16 v17, v2

    .end local v2  # "outputStream":Ljava/io/FileOutputStream;
    .restart local v17  # "outputStream":Ljava/io/FileOutputStream;
    const/16 v19, 0x1

    :try_start_48
    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v20, v0

    const/4 v0, 0x0

    move-object/from16 v21, v3

    move-object/from16 v3, v18

    .end local v18  # "out":Lcom/android/modules/utils/TypedXmlSerializer;
    .local v3, "out":Lcom/android/modules/utils/TypedXmlSerializer;
    invoke-interface {v3, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 441
    const-string/jumbo v2, "http://xmlpull.org/v1/doc/features.html#indent-output"

    move/from16 v0, v19

    invoke-interface {v3, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 442
    const/4 v0, 0x0

    invoke-interface {v3, v0, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 455
    invoke-interface {v3, v0, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 456
    iget-object v2, v1, Lcom/android/server/display/MiuiDisplayCloudController;->mFile:Landroid/util/AtomicFile;

    move-object v0, v5

    iget-object v5, v1, Lcom/android/server/display/MiuiDisplayCloudController;->mBCBCAppList:Ljava/util/List;
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_6a} :catch_1da

    move-object/from16 v19, v6

    :try_start_6c
    const-string/jumbo v6, "package"

    move-object/from16 v22, v7

    const-string v7, "bcbc-app"
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_73} :catch_1d4

    move-object/from16 v24, v0

    move-object/from16 v23, v19

    move-object/from16 v0, v22

    move-object/from16 v19, v9

    move-object/from16 v9, v21

    move-object/from16 v21, v10

    move-object/from16 v10, v16

    move-object/from16 v16, v8

    move-object v8, v4

    move-object v4, v3

    move-object/from16 v3, v17

    .end local v17  # "outputStream":Ljava/io/FileOutputStream;
    .local v3, "outputStream":Ljava/io/FileOutputStream;
    .local v4, "out":Lcom/android/modules/utils/TypedXmlSerializer;
    :try_start_87
    invoke-direct/range {v1 .. v7}, Lcom/android/server/display/MiuiDisplayCloudController;->writeElementOfAppListToXml(Landroid/util/AtomicFile;Ljava/io/FileOutputStream;Lcom/android/modules/utils/TypedXmlSerializer;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    const/4 v2, 0x0

    invoke-interface {v4, v2, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 461
    invoke-interface {v4, v2, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 462
    iget-object v2, v1, Lcom/android/server/display/MiuiDisplayCloudController;->mFile:Landroid/util/AtomicFile;

    iget-object v5, v1, Lcom/android/server/display/MiuiDisplayCloudController;->mResolutionSwitchProcessProtectList:Ljava/util/List;

    const-string/jumbo v6, "item"

    const-string/jumbo v7, "resolution_switch_process_protect"

    invoke-direct/range {v1 .. v7}, Lcom/android/server/display/MiuiDisplayCloudController;->writeElementOfAppListToXml(Landroid/util/AtomicFile;Ljava/io/FileOutputStream;Lcom/android/modules/utils/TypedXmlSerializer;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    iget-object v2, v1, Lcom/android/server/display/MiuiDisplayCloudController;->mFile:Landroid/util/AtomicFile;

    iget-object v5, v1, Lcom/android/server/display/MiuiDisplayCloudController;->mResolutionSwitchProcessBlackList:Ljava/util/List;

    const-string/jumbo v6, "item"

    const-string/jumbo v7, "resolution_switch_process_black"

    invoke-direct/range {v1 .. v7}, Lcom/android/server/display/MiuiDisplayCloudController;->writeElementOfAppListToXml(Landroid/util/AtomicFile;Ljava/io/FileOutputStream;Lcom/android/modules/utils/TypedXmlSerializer;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    const/4 v2, 0x0

    invoke-interface {v4, v2, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 478
    invoke-interface {v4, v2, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 479
    iget-object v2, v1, Lcom/android/server/display/MiuiDisplayCloudController;->mFile:Landroid/util/AtomicFile;

    const-string v5, "enabled"

    const-string/jumbo v6, "override-brightness-policy-enable"

    iget-boolean v7, v1, Lcom/android/server/display/MiuiDisplayCloudController;->mOverrideBrightnessPolicyEnable:Z

    invoke-direct/range {v1 .. v7}, Lcom/android/server/display/MiuiDisplayCloudController;->writeFeatureEnableToXml(Landroid/util/AtomicFile;Ljava/io/FileOutputStream;Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 481
    const/4 v2, 0x0

    invoke-interface {v4, v2, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 502
    invoke-interface {v4, v2, v15}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 503
    iget-object v2, v1, Lcom/android/server/display/MiuiDisplayCloudController;->mFile:Landroid/util/AtomicFile;

    iget-object v5, v1, Lcom/android/server/display/MiuiDisplayCloudController;->mTouchCoverProtectionGameList:Ljava/util/List;

    const-string/jumbo v6, "package"

    const-string/jumbo v7, "touch_cover_protection_game_app"

    invoke-direct/range {v1 .. v7}, Lcom/android/server/display/MiuiDisplayCloudController;->writeElementOfAppListToXml(Landroid/util/AtomicFile;Ljava/io/FileOutputStream;Lcom/android/modules/utils/TypedXmlSerializer;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    const/4 v2, 0x0

    invoke-interface {v4, v2, v15}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 508
    invoke-interface {v4, v2, v14}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 509
    iget-object v2, v1, Lcom/android/server/display/MiuiDisplayCloudController;->mFile:Landroid/util/AtomicFile;

    iget-object v5, v1, Lcom/android/server/display/MiuiDisplayCloudController;->mRhythmicImageAppList:Ljava/util/List;

    const-string/jumbo v6, "item"

    const-string/jumbo v7, "rhythmic_app_category_image"

    invoke-direct/range {v1 .. v7}, Lcom/android/server/display/MiuiDisplayCloudController;->writeElementOfAppListToXml(Landroid/util/AtomicFile;Ljava/io/FileOutputStream;Lcom/android/modules/utils/TypedXmlSerializer;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    iget-object v2, v1, Lcom/android/server/display/MiuiDisplayCloudController;->mFile:Landroid/util/AtomicFile;

    iget-object v5, v1, Lcom/android/server/display/MiuiDisplayCloudController;->mRhythmicReadAppList:Ljava/util/List;

    const-string/jumbo v6, "item"

    const-string/jumbo v7, "rhythmic_app_category_read"

    invoke-direct/range {v1 .. v7}, Lcom/android/server/display/MiuiDisplayCloudController;->writeElementOfAppListToXml(Landroid/util/AtomicFile;Ljava/io/FileOutputStream;Lcom/android/modules/utils/TypedXmlSerializer;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    const/4 v2, 0x0

    invoke-interface {v4, v2, v14}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 516
    invoke-interface {v4, v2, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 517
    iget-object v2, v1, Lcom/android/server/display/MiuiDisplayCloudController;->mFile:Landroid/util/AtomicFile;

    iget-object v5, v1, Lcom/android/server/display/MiuiDisplayCloudController;->mGestureComponents:Ljava/util/List;

    const-string/jumbo v6, "package"

    const-string/jumbo v7, "gesture_component"

    invoke-direct/range {v1 .. v7}, Lcom/android/server/display/MiuiDisplayCloudController;->writeElementOfAppListToXml(Landroid/util/AtomicFile;Ljava/io/FileOutputStream;Lcom/android/modules/utils/TypedXmlSerializer;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    const/4 v2, 0x0

    invoke-interface {v4, v2, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 522
    invoke-interface {v4, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 523
    iget-object v2, v1, Lcom/android/server/display/MiuiDisplayCloudController;->mFile:Landroid/util/AtomicFile;

    const-string v5, "enabled"

    const-string/jumbo v6, "manual-boost-app-enable"

    iget-boolean v7, v1, Lcom/android/server/display/MiuiDisplayCloudController;->mManualBoostAppEnable:Z

    invoke-direct/range {v1 .. v7}, Lcom/android/server/display/MiuiDisplayCloudController;->writeFeatureEnableToXml(Landroid/util/AtomicFile;Ljava/io/FileOutputStream;Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 525
    const/4 v2, 0x0

    invoke-interface {v4, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 528
    invoke-interface {v4, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 529
    iget-object v2, v1, Lcom/android/server/display/MiuiDisplayCloudController;->mFile:Landroid/util/AtomicFile;

    iget-object v5, v1, Lcom/android/server/display/MiuiDisplayCloudController;->mManualBoostDisableAppList:Ljava/util/List;

    const-string/jumbo v6, "package"

    const-string/jumbo v7, "manual-boost-disable-app-list"

    invoke-direct/range {v1 .. v7}, Lcom/android/server/display/MiuiDisplayCloudController;->writeElementOfAppListToXml(Landroid/util/AtomicFile;Ljava/io/FileOutputStream;Lcom/android/modules/utils/TypedXmlSerializer;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    const/4 v2, 0x0

    invoke-interface {v4, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 543
    invoke-interface {v4, v2, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 544
    iget-object v2, v1, Lcom/android/server/display/MiuiDisplayCloudController;->mFile:Landroid/util/AtomicFile;

    const-string/jumbo v5, "value"

    const-string/jumbo v6, "threshold-sunlight-nit-value"

    iget v0, v1, Lcom/android/server/display/MiuiDisplayCloudController;->mThresholdSunlightNit:F

    .line 545
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    .line 544
    invoke-direct/range {v1 .. v7}, Lcom/android/server/display/MiuiDisplayCloudController;->writeFeatureValueToXml(Landroid/util/AtomicFile;Ljava/io/FileOutputStream;Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    .line 546
    const/4 v2, 0x0

    invoke-interface {v4, v2, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 549
    invoke-interface {v4, v2, v11}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 550
    iget-object v2, v1, Lcom/android/server/display/MiuiDisplayCloudController;->mFile:Landroid/util/AtomicFile;

    const-string/jumbo v5, "value"

    const-string/jumbo v6, "temperature-gap-value"

    iget v0, v1, Lcom/android/server/display/MiuiDisplayCloudController;->mTemperatureGap:F

    .line 551
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    .line 550
    invoke-direct/range {v1 .. v7}, Lcom/android/server/display/MiuiDisplayCloudController;->writeFeatureValueToXml(Landroid/util/AtomicFile;Ljava/io/FileOutputStream;Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    .line 552
    const/4 v2, 0x0

    invoke-interface {v4, v2, v11}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 555
    move-object/from16 v0, v21

    invoke-interface {v4, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 556
    iget-object v2, v1, Lcom/android/server/display/MiuiDisplayCloudController;->mFile:Landroid/util/AtomicFile;

    const-string v5, "enabled"

    const-string/jumbo v6, "individual-model-disable"

    iget-boolean v7, v1, Lcom/android/server/display/MiuiDisplayCloudController;->mIndividualModelDisable:Z

    invoke-direct/range {v1 .. v7}, Lcom/android/server/display/MiuiDisplayCloudController;->writeFeatureEnableToXml(Landroid/util/AtomicFile;Ljava/io/FileOutputStream;Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 558
    const/4 v2, 0x0

    invoke-interface {v4, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 561
    move-object/from16 v0, v19

    invoke-interface {v4, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 562
    iget-object v2, v1, Lcom/android/server/display/MiuiDisplayCloudController;->mFile:Landroid/util/AtomicFile;

    const-string v5, "enabled"

    const-string v6, "custom-curve-disable"

    iget-boolean v7, v1, Lcom/android/server/display/MiuiDisplayCloudController;->mCustomCurveDisable:Z

    invoke-direct/range {v1 .. v7}, Lcom/android/server/display/MiuiDisplayCloudController;->writeFeatureEnableToXml(Landroid/util/AtomicFile;Ljava/io/FileOutputStream;Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 564
    const/4 v2, 0x0

    invoke-interface {v4, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 567
    move-object/from16 v0, v16

    invoke-interface {v4, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 568
    iget-object v2, v1, Lcom/android/server/display/MiuiDisplayCloudController;->mFile:Landroid/util/AtomicFile;

    const-string v5, "enabled"

    const-string v6, "brightness_curve_optimize_policy_disable"

    iget-boolean v7, v1, Lcom/android/server/display/MiuiDisplayCloudController;->mBrightnessCurveOptimizePolicyDisable:Z

    invoke-direct/range {v1 .. v7}, Lcom/android/server/display/MiuiDisplayCloudController;->writeFeatureEnableToXml(Landroid/util/AtomicFile;Ljava/io/FileOutputStream;Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 570
    const/4 v2, 0x0

    invoke-interface {v4, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 573
    move-object/from16 v0, v20

    invoke-interface {v4, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 574
    iget-object v2, v1, Lcom/android/server/display/MiuiDisplayCloudController;->mFile:Landroid/util/AtomicFile;

    const-string v5, "enabled"

    const-string/jumbo v6, "reset-short-term-model-policy-disable"

    iget-boolean v7, v1, Lcom/android/server/display/MiuiDisplayCloudController;->mResetShortTermModelPolicyDisable:Z

    invoke-direct/range {v1 .. v7}, Lcom/android/server/display/MiuiDisplayCloudController;->writeFeatureEnableToXml(Landroid/util/AtomicFile;Ljava/io/FileOutputStream;Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 576
    const/4 v2, 0x0

    invoke-interface {v4, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 578
    move-object/from16 v0, v24

    invoke-interface {v4, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 579
    invoke-interface {v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 580
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 581
    iget-object v0, v1, Lcom/android/server/display/MiuiDisplayCloudController;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 582
    const-string/jumbo v0, "sync local backup from cloud done."
    :try_end_1c7
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_1c7} :catch_1d0

    move-object/from16 v2, v23

    :try_start_1c9
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1cc
    .catch Ljava/io/IOException; {:try_start_1c9 .. :try_end_1cc} :catch_1ce

    .line 586
    move-object v2, v3

    .end local v4  # "out":Lcom/android/modules/utils/TypedXmlSerializer;
    goto :goto_203

    .line 583
    :catch_1ce
    move-exception v0

    goto :goto_1e7

    :catch_1d0
    move-exception v0

    move-object/from16 v2, v23

    goto :goto_1e7

    .end local v3  # "outputStream":Ljava/io/FileOutputStream;
    .restart local v17  # "outputStream":Ljava/io/FileOutputStream;
    :catch_1d4
    move-exception v0

    move-object/from16 v3, v17

    move-object/from16 v2, v19

    goto :goto_1de

    :catch_1da
    move-exception v0

    move-object v2, v6

    move-object/from16 v3, v17

    .end local v17  # "outputStream":Ljava/io/FileOutputStream;
    .restart local v3  # "outputStream":Ljava/io/FileOutputStream;
    :goto_1de
    goto :goto_1e7

    .end local v3  # "outputStream":Ljava/io/FileOutputStream;
    .restart local v2  # "outputStream":Ljava/io/FileOutputStream;
    :catch_1df
    move-exception v0

    move-object v3, v2

    move-object v2, v6

    .end local v2  # "outputStream":Ljava/io/FileOutputStream;
    .restart local v3  # "outputStream":Ljava/io/FileOutputStream;
    goto :goto_1e7

    .end local v3  # "outputStream":Ljava/io/FileOutputStream;
    .restart local v17  # "outputStream":Ljava/io/FileOutputStream;
    :catch_1e3
    move-exception v0

    move-object v2, v6

    move-object/from16 v3, v17

    .line 584
    .end local v17  # "outputStream":Ljava/io/FileOutputStream;
    .local v0, "e":Ljava/io/IOException;
    .restart local v3  # "outputStream":Ljava/io/FileOutputStream;
    :goto_1e7
    iget-object v4, v1, Lcom/android/server/display/MiuiDisplayCloudController;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v4, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 585
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to write local backup"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 587
    .end local v0  # "e":Ljava/io/IOException;
    .end local v3  # "outputStream":Ljava/io/FileOutputStream;
    .restart local v2  # "outputStream":Ljava/io/FileOutputStream;
    :goto_203
    return-void
.end method

.method private updateAutoBrightnessStatisticsEventEnableState()Z
    .registers 2

    .line 1115
    sget-boolean v0, Lcom/android/server/display/MiuiDisplayCloudController;->DEBUG:Z

    if-eqz v0, :cond_6

    .line 1117
    const/4 v0, 0x0

    return v0

    .line 1119
    :cond_6
    invoke-direct {p0}, Lcom/android/server/display/MiuiDisplayCloudController;->updateStatisticsAutoBrightnessEventEnable()Z

    move-result v0

    return v0
.end method

.method private updateBCBCAppList()Z
    .registers 7

    .line 1309
    iget-object v0, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mContext:Landroid/content/Context;

    .line 1310
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "BCBCFeature"

    const-string v2, "bcbc_app_config"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/provider/MiuiSettings$SettingsCloudData;->getCloudDataSingle(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;

    move-result-object v0

    .line 1312
    .local v0, "data":Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;
    const-string v1, "MiuiDisplayCloudController"

    if-eqz v0, :cond_49

    invoke-virtual {v0}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->json()Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_49

    .line 1313
    invoke-virtual {v0}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->json()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 1314
    .local v2, "appArray":Lorg/json/JSONArray;
    if-eqz v2, :cond_48

    .line 1315
    iget-object v3, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mBCBCAppList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1316
    const-string v3, "Update BCBC apps."

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2f
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_46

    .line 1318
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v3

    .line 1319
    .local v3, "obj":Ljava/lang/Object;
    if-eqz v3, :cond_43

    .line 1320
    iget-object v4, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mBCBCAppList:Ljava/util/List;

    move-object v5, v3

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1317
    .end local v3  # "obj":Ljava/lang/Object;
    :cond_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    .line 1323
    .end local v1  # "i":I
    :cond_46
    const/4 v1, 0x1

    return v1

    .line 1325
    .end local v2  # "appArray":Lorg/json/JSONArray;
    :cond_48
    goto :goto_4e

    .line 1326
    :cond_49
    const-string v2, "Failed to update BCBC apps from cloud."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    :goto_4e
    return v4
.end method

.method private updateBrightnessCurveOptimizePolicyDisable()Z
    .registers 6

    .line 1893
    iget-object v0, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mContext:Landroid/content/Context;

    .line 1894
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "BrightnessCurveOptimizePolicy"

    const-string v2, "brightness_curve_optimize_policy_disable"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/provider/MiuiSettings$SettingsCloudData;->getCloudDataSingle(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;

    move-result-object v0

    .line 1896
    .local v0, "data":Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;
    if-eqz v0, :cond_24

    invoke-virtual {v0}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->json()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_24

    .line 1897
    invoke-virtual {v0}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->json()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mBrightnessCurveOptimizePolicyDisable:Z

    .line 1899
    const/4 v1, 0x1

    return v1

    .line 1901
    :cond_24
    return v4
.end method

.method private updateBrightnessStatsEventsEnable()Z
    .registers 7

    .line 1457
    iget-object v0, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mContext:Landroid/content/Context;

    .line 1458
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "brightnessStatisticsEvents"

    const-string v2, "brightness_statistics_events_enable"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/provider/MiuiSettings$SettingsCloudData;->getCloudDataSingle(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;

    move-result-object v0

    .line 1460
    .local v0, "data":Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;
    const-string v1, "MiuiDisplayCloudController"

    if-eqz v0, :cond_49

    invoke-virtual {v0}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->json()Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_49

    .line 1461
    invoke-virtual {v0}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->json()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mBrightnessStatsEventsEnable:Z

    .line 1462
    iget-boolean v2, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mBrightnessStatsEventsEnable:Z

    if-eqz v2, :cond_2f

    .line 1463
    iget-wide v2, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mCloudEventsSummary:J

    const-wide/16 v4, 0x1

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mCloudEventsSummary:J

    .line 1465
    :cond_2f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Update brightness statistics events: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mBrightnessStatsEventsEnable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1466
    const/4 v1, 0x1

    return v1

    .line 1468
    :cond_49
    const-string v2, "Failed to update brightness statistics events switch from cloud."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1469
    return v4
.end method

.method private updateContactlessGestureConfig()Z
    .registers 7

    .line 1633
    iget-object v0, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mContext:Landroid/content/Context;

    .line 1634
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ContactlessGestureFeature"

    const-string/jumbo v2, "gestureComponents"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/provider/MiuiSettings$SettingsCloudData;->getCloudDataSingle(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;

    move-result-object v0

    .line 1636
    .local v0, "data":Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;
    const-string v1, "MiuiDisplayCloudController"

    if-eqz v0, :cond_4d

    invoke-virtual {v0}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->json()Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_4d

    .line 1637
    invoke-virtual {v0}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->json()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 1638
    .local v2, "appArray":Lorg/json/JSONArray;
    if-eqz v2, :cond_4c

    .line 1639
    iget-object v3, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mGestureComponents:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1640
    const-string v3, "Update contactless gesture config."

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1641
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_30
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_47

    .line 1642
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v3

    .line 1643
    .local v3, "obj":Ljava/lang/Object;
    if-eqz v3, :cond_44

    .line 1644
    iget-object v4, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mGestureComponents:Ljava/util/List;

    move-object v5, v3

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1641
    .end local v3  # "obj":Ljava/lang/Object;
    :cond_44
    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    .line 1647
    .end local v1  # "i":I
    :cond_47
    invoke-direct {p0}, Lcom/android/server/display/MiuiDisplayCloudController;->notifyContactlessGestureConfigChanged()V

    .line 1648
    const/4 v1, 0x1

    return v1

    .line 1650
    .end local v2  # "appArray":Lorg/json/JSONArray;
    :cond_4c
    goto :goto_52

    .line 1651
    :cond_4d
    const-string v2, "Failed to update contactless gesture config."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1653
    :goto_52
    return v4
.end method

.method private updateCustomBrightnessAppConfig()Z
    .registers 23

    .line 1778
    move-object/from16 v1, p0

    const-string/jumbo v0, "name"

    const-string v2, "MiuiDisplayCloudController"

    iget-object v3, v1, Lcom/android/server/display/MiuiDisplayCloudController;->mContext:Landroid/content/Context;

    .line 1779
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "IndividualAppCategoryConfig"

    const-string v5, "app-category-config"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v3, v4, v5, v6, v7}, Landroid/provider/MiuiSettings$SettingsCloudData;->getCloudDataSingle(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;

    move-result-object v3

    .line 1783
    .local v3, "data":Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;
    if-eqz v3, :cond_100

    invoke-virtual {v3}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->json()Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_100

    .line 1785
    :try_start_1f
    invoke-virtual {v3}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->json()Lorg/json/JSONObject;

    move-result-object v4

    .line 1786
    .local v4, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 1787
    .local v5, "rootObject":Lorg/json/JSONObject;
    new-instance v6, Lcom/android/server/display/aiautobrt/config/AppCategoryConfig;

    invoke-direct {v6}, Lcom/android/server/display/aiautobrt/config/AppCategoryConfig;-><init>()V

    .line 1788
    .local v6, "config":Lcom/android/server/display/aiautobrt/config/AppCategoryConfig;
    invoke-virtual {v6}, Lcom/android/server/display/aiautobrt/config/AppCategoryConfig;->getCategory()Ljava/util/List;

    move-result-object v8

    .line 1789
    .local v8, "categories":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/aiautobrt/config/AppCategory;>;"
    const-string v9, "category"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 1790
    .local v9, "jsonCategoryArray":Lorg/json/JSONArray;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_37
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v10, v11, :cond_b3

    .line 1791
    new-instance v11, Lcom/android/server/display/aiautobrt/config/AppCategory;

    invoke-direct {v11}, Lcom/android/server/display/aiautobrt/config/AppCategory;-><init>()V

    .line 1792
    .local v11, "category":Lcom/android/server/display/aiautobrt/config/AppCategory;
    invoke-virtual {v11}, Lcom/android/server/display/aiautobrt/config/AppCategory;->getPkg()Ljava/util/List;

    move-result-object v12

    .line 1793
    .local v12, "pkgInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/aiautobrt/config/PackageInfo;>;"
    invoke-virtual {v9, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    .line 1794
    .local v13, "categoryItem":Lorg/json/JSONObject;
    const-string/jumbo v14, "id"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 1795
    .local v14, "categoryId":I
    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15
    :try_end_55
    .catch Lorg/json/JSONException; {:try_start_1f .. :try_end_55} :catch_e1

    .line 1796
    .local v15, "categoryName":Ljava/lang/String;
    move/from16 v16, v7

    :try_start_57
    const-string/jumbo v7, "pkg"

    invoke-virtual {v13, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7
    :try_end_5e
    .catch Lorg/json/JSONException; {:try_start_57 .. :try_end_5e} :catch_af

    .line 1797
    .local v7, "pkgArray":Lorg/json/JSONArray;
    const/16 v17, 0x0

    move-object/from16 v18, v3

    move/from16 v3, v17

    .local v3, "j":I
    .local v18, "data":Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;
    :goto_64
    move-object/from16 v17, v5

    .end local v5  # "rootObject":Lorg/json/JSONObject;
    .local v17, "rootObject":Lorg/json/JSONObject;
    :try_start_66
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v3, v5, :cond_96

    .line 1798
    invoke-virtual {v7, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 1799
    .local v5, "jsonPkgInfoItem":Lorg/json/JSONObject;
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v20, v19

    .line 1800
    .local v20, "pkgName":Ljava/lang/String;
    new-instance v19, Lcom/android/server/display/aiautobrt/config/PackageInfo;

    invoke-direct/range {v19 .. v19}, Lcom/android/server/display/aiautobrt/config/PackageInfo;-><init>()V

    move-object/from16 v21, v19

    .line 1801
    .local v21, "pkgInfo":Lcom/android/server/display/aiautobrt/config/PackageInfo;
    move-object/from16 v19, v0

    move-object/from16 v0, v21

    .end local v21  # "pkgInfo":Lcom/android/server/display/aiautobrt/config/PackageInfo;
    .local v0, "pkgInfo":Lcom/android/server/display/aiautobrt/config/PackageInfo;
    invoke-virtual {v0, v14}, Lcom/android/server/display/aiautobrt/config/PackageInfo;->setCateId(I)V

    .line 1802
    move/from16 v21, v3

    move-object/from16 v3, v20

    .end local v20  # "pkgName":Ljava/lang/String;
    .local v3, "pkgName":Ljava/lang/String;
    .local v21, "j":I
    invoke-virtual {v0, v3}, Lcom/android/server/display/aiautobrt/config/PackageInfo;->setName(Ljava/lang/String;)V

    .line 1803
    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1797
    nop

    .end local v0  # "pkgInfo":Lcom/android/server/display/aiautobrt/config/PackageInfo;
    .end local v3  # "pkgName":Ljava/lang/String;
    .end local v5  # "jsonPkgInfoItem":Lorg/json/JSONObject;
    add-int/lit8 v3, v21, 0x1

    move-object/from16 v5, v17

    move-object/from16 v0, v19

    .end local v21  # "j":I
    .local v3, "j":I
    goto :goto_64

    :cond_96
    move-object/from16 v19, v0

    move/from16 v21, v3

    .line 1805
    .end local v3  # "j":I
    invoke-virtual {v11, v14}, Lcom/android/server/display/aiautobrt/config/AppCategory;->setId(I)V

    .line 1806
    invoke-virtual {v11, v15}, Lcom/android/server/display/aiautobrt/config/AppCategory;->setName(Ljava/lang/String;)V

    .line 1807
    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1790
    nop

    .end local v7  # "pkgArray":Lorg/json/JSONArray;
    .end local v11  # "category":Lcom/android/server/display/aiautobrt/config/AppCategory;
    .end local v12  # "pkgInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/aiautobrt/config/PackageInfo;>;"
    .end local v13  # "categoryItem":Lorg/json/JSONObject;
    .end local v14  # "categoryId":I
    .end local v15  # "categoryName":Ljava/lang/String;
    add-int/lit8 v10, v10, 0x1

    move/from16 v7, v16

    move-object/from16 v5, v17

    move-object/from16 v3, v18

    move-object/from16 v0, v19

    goto :goto_37

    .line 1815
    .end local v4  # "jsonObject":Lorg/json/JSONObject;
    .end local v6  # "config":Lcom/android/server/display/aiautobrt/config/AppCategoryConfig;
    .end local v8  # "categories":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/aiautobrt/config/AppCategory;>;"
    .end local v9  # "jsonCategoryArray":Lorg/json/JSONArray;
    .end local v10  # "i":I
    .end local v17  # "rootObject":Lorg/json/JSONObject;
    .end local v18  # "data":Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;
    .local v3, "data":Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;
    :catch_af
    move-exception v0

    move-object/from16 v18, v3

    goto :goto_e6

    .line 1790
    .restart local v4  # "jsonObject":Lorg/json/JSONObject;
    .local v5, "rootObject":Lorg/json/JSONObject;
    .restart local v6  # "config":Lcom/android/server/display/aiautobrt/config/AppCategoryConfig;
    .restart local v8  # "categories":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/aiautobrt/config/AppCategory;>;"
    .restart local v9  # "jsonCategoryArray":Lorg/json/JSONArray;
    .restart local v10  # "i":I
    :cond_b3
    move-object/from16 v18, v3

    move-object/from16 v17, v5

    move/from16 v16, v7

    .line 1809
    .end local v3  # "data":Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;
    .end local v5  # "rootObject":Lorg/json/JSONObject;
    .end local v10  # "i":I
    .restart local v17  # "rootObject":Lorg/json/JSONObject;
    .restart local v18  # "data":Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;
    sget-boolean v0, Lcom/android/server/display/MiuiDisplayCloudController;->DEBUG:Z

    if-eqz v0, :cond_d3

    .line 1810
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Update custom app category config json: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1812
    :cond_d3
    invoke-direct {v1, v6}, Lcom/android/server/display/MiuiDisplayCloudController;->writeAppCategoryConfigToFile(Lcom/android/server/display/aiautobrt/config/AppCategoryConfig;)V

    .line 1813
    iget-wide v10, v1, Lcom/android/server/display/MiuiDisplayCloudController;->mCloudEventsSummary:J

    const-wide/16 v12, 0x8

    or-long/2addr v10, v12

    iput-wide v10, v1, Lcom/android/server/display/MiuiDisplayCloudController;->mCloudEventsSummary:J
    :try_end_dd
    .catch Lorg/json/JSONException; {:try_start_66 .. :try_end_dd} :catch_df

    .line 1814
    const/4 v0, 0x1

    return v0

    .line 1815
    .end local v4  # "jsonObject":Lorg/json/JSONObject;
    .end local v6  # "config":Lcom/android/server/display/aiautobrt/config/AppCategoryConfig;
    .end local v8  # "categories":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/aiautobrt/config/AppCategory;>;"
    .end local v9  # "jsonCategoryArray":Lorg/json/JSONArray;
    .end local v17  # "rootObject":Lorg/json/JSONObject;
    :catch_df
    move-exception v0

    goto :goto_e6

    .end local v18  # "data":Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;
    .restart local v3  # "data":Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;
    :catch_e1
    move-exception v0

    move-object/from16 v18, v3

    move/from16 v16, v7

    .line 1816
    .end local v3  # "data":Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;
    .local v0, "e":Lorg/json/JSONException;
    .restart local v18  # "data":Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;
    :goto_e6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Update  custom app category config exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1817
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_104

    .line 1783
    .end local v0  # "e":Lorg/json/JSONException;
    .end local v18  # "data":Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;
    .restart local v3  # "data":Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;
    :cond_100
    move-object/from16 v18, v3

    move/from16 v16, v7

    .line 1820
    .end local v3  # "data":Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;
    .restart local v18  # "data":Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;
    :goto_104
    return v16
.end method

.method private updateCustomCurveDisable()Z
    .registers 7

    .line 1870
    iget-object v0, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mContext:Landroid/content/Context;

    .line 1871
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "CustomCurveDisable"

    const-string v2, "custom_curve_disable"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/provider/MiuiSettings$SettingsCloudData;->getCloudDataSingle(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;

    move-result-object v0

    .line 1874
    .local v0, "data":Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;
    const-string v1, "MiuiDisplayCloudController"

    if-eqz v0, :cond_49

    invoke-virtual {v0}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->json()Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_49

    .line 1875
    invoke-virtual {v0}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->json()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mCustomCurveDisable:Z

    .line 1876
    iget-boolean v2, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mCustomCurveDisable:Z

    if-eqz v2, :cond_2f

    .line 1877
    iget-wide v2, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mCloudEventsSummary:J

    const-wide/16 v4, 0x10

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mCloudEventsSummary:J

    .line 1879
    :cond_2f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Update custom curve disable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mCustomCurveDisable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1880
    const/4 v1, 0x1

    return v1

    .line 1882
    :cond_49
    const-string v2, "Failed to upload custom curve disable from cloud."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1883
    return v4
.end method

.method private updateDataFromCloudControl()Z
    .registers 4

    .line 948
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mCloudEventsSummary:J

    .line 949
    iget-object v0, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mCloudEventsData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 950
    invoke-direct {p0}, Lcom/android/server/display/MiuiDisplayCloudController;->updateShortTermModelState()Z

    move-result v0

    .line 951
    .local v0, "updated":Z
    invoke-direct {p0}, Lcom/android/server/display/MiuiDisplayCloudController;->updateBCBCAppList()Z

    move-result v1

    or-int/2addr v0, v1

    .line 952
    invoke-direct {p0}, Lcom/android/server/display/MiuiDisplayCloudController;->updateResolutionSwitchList()Z

    move-result v1

    or-int/2addr v0, v1

    .line 953
    invoke-direct {p0}, Lcom/android/server/display/MiuiDisplayCloudController;->updateTouchProtectionGameList()Z

    move-result v1

    or-int/2addr v0, v1

    .line 954
    invoke-direct {p0}, Lcom/android/server/display/MiuiDisplayCloudController;->updateManualBoostDisableAppList()Z

    move-result v1

    or-int/2addr v0, v1

    .line 955
    invoke-direct {p0}, Lcom/android/server/display/MiuiDisplayCloudController;->updateManualBoostAppEnable()Z

    move-result v1

    or-int/2addr v0, v1

    .line 956
    invoke-direct {p0}, Lcom/android/server/display/MiuiDisplayCloudController;->updateOverrideBrightnessPolicyEnable()Z

    move-result v1

    or-int/2addr v0, v1

    .line 957
    invoke-direct {p0}, Lcom/android/server/display/MiuiDisplayCloudController;->updateAutoBrightnessStatisticsEventEnableState()Z

    move-result v1

    or-int/2addr v0, v1

    .line 958
    invoke-direct {p0}, Lcom/android/server/display/MiuiDisplayCloudController;->updateDisableResetShortTermModelState()Z

    move-result v1

    or-int/2addr v0, v1

    .line 959
    invoke-direct {p0}, Lcom/android/server/display/MiuiDisplayCloudController;->updateRhythmicAppCategoryList()Z

    move-result v1

    or-int/2addr v0, v1

    .line 960
    invoke-direct {p0}, Lcom/android/server/display/MiuiDisplayCloudController;->updateContactlessGestureConfig()Z

    move-result v1

    or-int/2addr v0, v1

    .line 961
    invoke-direct {p0}, Lcom/android/server/display/MiuiDisplayCloudController;->updateBrightnessStatsEventsEnable()Z

    move-result v1

    or-int/2addr v0, v1

    .line 962
    invoke-direct {p0}, Lcom/android/server/display/MiuiDisplayCloudController;->updateThermalBrightnessConfig()Z

    move-result v1

    or-int/2addr v0, v1

    .line 963
    invoke-direct {p0}, Lcom/android/server/display/MiuiDisplayCloudController;->updateThresholdSunlightNitValue()Z

    move-result v1

    or-int/2addr v0, v1

    .line 964
    invoke-direct {p0}, Lcom/android/server/display/MiuiDisplayCloudController;->updateTemperatureGap()Z

    move-result v1

    or-int/2addr v0, v1

    .line 965
    invoke-direct {p0}, Lcom/android/server/display/MiuiDisplayCloudController;->updateCustomBrightnessAppConfig()Z

    move-result v1

    or-int/2addr v0, v1

    .line 966
    invoke-direct {p0}, Lcom/android/server/display/MiuiDisplayCloudController;->updateCustomCurveDisable()Z

    move-result v1

    or-int/2addr v0, v1

    .line 967
    invoke-direct {p0}, Lcom/android/server/display/MiuiDisplayCloudController;->updateIndividualModelDisable()Z

    move-result v1

    or-int/2addr v0, v1

    .line 968
    invoke-direct {p0}, Lcom/android/server/display/MiuiDisplayCloudController;->updateBrightnessCurveOptimizePolicyDisable()Z

    move-result v1

    or-int/2addr v0, v1

    .line 969
    invoke-direct {p0}, Lcom/android/server/display/MiuiDisplayCloudController;->updateResetShortTermModelPolicyDisable()Z

    move-result v1

    or-int/2addr v0, v1

    .line 970
    iget-object v1, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mCloudListeners:Ljava/util/List;

    new-instance v2, Lcom/android/server/display/MiuiDisplayCloudController$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/server/display/MiuiDisplayCloudController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/MiuiDisplayCloudController;)V

    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 973
    return v0
.end method

.method private updateDisableResetShortTermModel()Z
    .registers 6

    .line 1160
    iget-object v0, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mContext:Landroid/content/Context;

    .line 1161
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "DisableResetShortTermModel"

    const-string v2, "disable_reset_short_term_model"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/provider/MiuiSettings$SettingsCloudData;->getCloudDataSingle(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;

    move-result-object v0

    .line 1164
    .local v0, "data":Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;
    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->json()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_2b

    .line 1165
    invoke-virtual {v0}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->json()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mDisableResetShortTermModel:Z

    .line 1167
    iget-object v1, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mCallback:Lcom/android/server/display/MiuiDisplayCloudController$Callback;

    iget-boolean v2, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mDisableResetShortTermModel:Z

    invoke-interface {v1, v2}, Lcom/android/server/display/MiuiDisplayCloudController$Callback;->notifyDisableResetShortTermModel(Z)V

    .line 1168
    const/4 v1, 0x1

    return v1

    .line 1170
    :cond_2b
    return v4
.end method

.method private updateDisableResetShortTermModelState()Z
    .registers 2

    .line 1151
    invoke-direct {p0}, Lcom/android/server/display/MiuiDisplayCloudController;->updateDisableResetShortTermModel()Z

    move-result v0

    return v0
.end method

.method private updateIndividualModelDisable()Z
    .registers 7

    .line 1909
    iget-object v0, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mContext:Landroid/content/Context;

    .line 1910
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "IndividualModelDisable"

    const-string/jumbo v2, "individual_model_disable"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/provider/MiuiSettings$SettingsCloudData;->getCloudDataSingle(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;

    move-result-object v0

    .line 1913
    .local v0, "data":Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;
    const-string v1, "MiuiDisplayCloudController"

    if-eqz v0, :cond_4a

    invoke-virtual {v0}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->json()Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_4a

    .line 1914
    invoke-virtual {v0}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->json()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mIndividualModelDisable:Z

    .line 1915
    iget-boolean v2, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mIndividualModelDisable:Z

    if-eqz v2, :cond_30

    .line 1916
    iget-wide v2, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mCloudEventsSummary:J

    const-wide/16 v4, 0x20

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mCloudEventsSummary:J

    .line 1918
    :cond_30
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Update individual model disable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mIndividualModelDisable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1919
    const/4 v1, 0x1

    return v1

    .line 1921
    :cond_4a
    const-string v2, "Failed to upload individual model disable from cloud."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1922
    return v4
.end method

.method private updateManualBoostAppEnable()Z
    .registers 6

    .line 1363
    iget-object v0, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mContext:Landroid/content/Context;

    .line 1364
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ManualBoostAppEnable"

    const-string/jumbo v2, "manual_boost_app_enable"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/provider/MiuiSettings$SettingsCloudData;->getCloudDataSingle(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;

    move-result-object v0

    .line 1366
    .local v0, "data":Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;
    const-string v1, "MiuiDisplayCloudController"

    if-eqz v0, :cond_3f

    invoke-virtual {v0}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->json()Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_3f

    .line 1367
    invoke-virtual {v0}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->json()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mManualBoostAppEnable:Z

    .line 1368
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Update manual boost app enable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mManualBoostAppEnable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    const/4 v1, 0x1

    return v1

    .line 1371
    :cond_3f
    const-string v2, "Failed to update manual boost app enable from cloud."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    return v4
.end method

.method private updateManualBoostDisableAppList()Z
    .registers 7

    .line 1377
    iget-object v0, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mContext:Landroid/content/Context;

    .line 1378
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ManualBoostDisableAppList"

    const-string/jumbo v2, "manual_boost_disable_app_list"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/provider/MiuiSettings$SettingsCloudData;->getCloudDataSingle(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;

    move-result-object v0

    .line 1380
    .local v0, "data":Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;
    const-string v1, "MiuiDisplayCloudController"

    if-eqz v0, :cond_4a

    invoke-virtual {v0}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->json()Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_4a

    .line 1381
    invoke-virtual {v0}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->json()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 1382
    .local v2, "appArray":Lorg/json/JSONArray;
    if-eqz v2, :cond_49

    .line 1383
    iget-object v3, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mManualBoostDisableAppList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1384
    const-string v3, "Update manual brightness boost disable apps."

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_30
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_47

    .line 1386
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v3

    .line 1387
    .local v3, "obj":Ljava/lang/Object;
    if-eqz v3, :cond_44

    .line 1388
    iget-object v4, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mManualBoostDisableAppList:Ljava/util/List;

    move-object v5, v3

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1385
    .end local v3  # "obj":Ljava/lang/Object;
    :cond_44
    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    .line 1391
    .end local v1  # "i":I
    :cond_47
    const/4 v1, 0x1

    return v1

    .line 1393
    .end local v2  # "appArray":Lorg/json/JSONArray;
    :cond_49
    goto :goto_4f

    .line 1394
    :cond_4a
    const-string v2, "Failed to update manual brightness boost disable apps from cloud."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1396
    :goto_4f
    return v4
.end method

.method private updateOverrideBrightnessPolicyEnable()Z
    .registers 6

    .line 1438
    iget-object v0, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mContext:Landroid/content/Context;

    .line 1439
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "overrideBrightnessPolicy"

    const-string/jumbo v2, "override_brightness_policy_enable"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/provider/MiuiSettings$SettingsCloudData;->getCloudDataSingle(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;

    move-result-object v0

    .line 1441
    .local v0, "data":Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;
    const-string v1, "MiuiDisplayCloudController"

    if-eqz v0, :cond_40

    invoke-virtual {v0}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->json()Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_40

    .line 1442
    invoke-virtual {v0}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->json()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mOverrideBrightnessPolicyEnable:Z

    .line 1443
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Update override brightness policy enable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mOverrideBrightnessPolicyEnable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1444
    const/4 v1, 0x1

    return v1

    .line 1446
    :cond_40
    const-string v2, "Failed to update override brightness policy enable from cloud."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    return v4
.end method

.method private updateResetShortTermModelPolicyDisable()Z
    .registers 6

    .line 1927
    iget-object v0, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mContext:Landroid/content/Context;

    .line 1928
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ResetShortTermModelPolicy"

    const-string/jumbo v2, "reset_short_term_model_policy_disable"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/provider/MiuiSettings$SettingsCloudData;->getCloudDataSingle(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;

    move-result-object v0

    .line 1930
    .local v0, "data":Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;
    if-eqz v0, :cond_25

    invoke-virtual {v0}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->json()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_25

    .line 1931
    invoke-virtual {v0}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->json()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mResetShortTermModelPolicyDisable:Z

    .line 1933
    const/4 v1, 0x1

    return v1

    .line 1935
    :cond_25
    return v4
.end method

.method private updateResolutionSwitchList()Z
    .registers 6

    .line 1332
    iget-object v0, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mContext:Landroid/content/Context;

    .line 1333
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "resolutionSwitchProcessList"

    const-string/jumbo v2, "process_resolution_switch_list"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/provider/MiuiSettings$SettingsCloudData;->getCloudDataSingle(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;

    move-result-object v0

    .line 1336
    .local v0, "data":Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;
    const-string v1, "MiuiDisplayCloudController"

    if-eqz v0, :cond_45

    invoke-virtual {v0}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->json()Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_45

    .line 1337
    invoke-virtual {v0}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->json()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 1338
    .local v2, "appArray":Lorg/json/JSONArray;
    if-eqz v2, :cond_44

    .line 1339
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 1340
    .local v3, "jsonObject":Lorg/json/JSONObject;
    const-string v4, "Update Resolution switch list from cloud"

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    const-string/jumbo v1, "process_resolution_switch_protect_list"

    iget-object v4, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mResolutionSwitchProcessProtectList:Ljava/util/List;

    invoke-direct {p0, v3, v1, v4}, Lcom/android/server/display/MiuiDisplayCloudController;->saveObjectAsListIfNeeded(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;)V

    .line 1343
    const-string/jumbo v1, "process_resolution_switch_black_list"

    iget-object v4, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mResolutionSwitchProcessBlackList:Ljava/util/List;

    invoke-direct {p0, v3, v1, v4}, Lcom/android/server/display/MiuiDisplayCloudController;->saveObjectAsListIfNeeded(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;)V

    .line 1345
    invoke-direct {p0}, Lcom/android/server/display/MiuiDisplayCloudController;->notifyResolutionSwitchListChanged()V

    .line 1346
    const/4 v1, 0x1

    return v1

    .line 1348
    .end local v2  # "appArray":Lorg/json/JSONArray;
    .end local v3  # "jsonObject":Lorg/json/JSONObject;
    :cond_44
    goto :goto_4a

    .line 1349
    :cond_45
    const-string v2, "Failed to update Resolution switch list from cloud."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    :goto_4a
    return v4
.end method

.method private updateRhythmicAppCategoryList()Z
    .registers 6

    .line 1668
    iget-object v0, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mContext:Landroid/content/Context;

    .line 1669
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "rhythmicAppCategoryList"

    const-string/jumbo v2, "rhythmic_app_category_list"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/provider/MiuiSettings$SettingsCloudData;->getCloudDataSingle(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;

    move-result-object v0

    .line 1672
    .local v0, "data":Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;
    const-string v1, "MiuiDisplayCloudController"

    if-eqz v0, :cond_65

    invoke-virtual {v0}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->json()Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_65

    .line 1673
    invoke-virtual {v0}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->json()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 1674
    .local v2, "appArray":Lorg/json/JSONArray;
    if-eqz v2, :cond_64

    .line 1675
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 1676
    .local v3, "jsonObject":Lorg/json/JSONObject;
    const-string v4, "Update app category list from cloud"

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1678
    const-string/jumbo v1, "rhythmic_app_category_image_list"

    iget-object v4, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mRhythmicImageAppList:Ljava/util/List;

    invoke-direct {p0, v3, v1, v4}, Lcom/android/server/display/MiuiDisplayCloudController;->saveObjectAsListIfNeeded(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;)V

    .line 1679
    const-string/jumbo v1, "rhythmic_app_category_read_list"

    iget-object v4, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mRhythmicReadAppList:Ljava/util/List;

    invoke-direct {p0, v3, v1, v4}, Lcom/android/server/display/MiuiDisplayCloudController;->saveObjectAsListIfNeeded(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;)V

    .line 1681
    sget-boolean v1, Lcom/android/server/display/MiuiDisplayCloudController;->IS_GREEN_MOUNTAIN_EYECARE_V3:Z

    if-eqz v1, :cond_5f

    .line 1682
    const-string/jumbo v1, "rhythmic_app_category_read_list_v3"

    iget-object v4, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mRhythmicReadAppList_V3:Ljava/util/List;

    invoke-direct {p0, v3, v1, v4}, Lcom/android/server/display/MiuiDisplayCloudController;->saveObjectAsListIfNeeded(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;)V

    .line 1683
    iget-object v1, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mRhythmicReadAppList_V3:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5f

    .line 1684
    iget-object v1, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mRhythmicReadAppList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1685
    iget-object v1, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mRhythmicReadAppList:Ljava/util/List;

    iget-object v4, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mRhythmicReadAppList_V3:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1688
    :cond_5f
    invoke-direct {p0}, Lcom/android/server/display/MiuiDisplayCloudController;->notifyRhythmicAppCategoryListChanged()V

    .line 1689
    const/4 v1, 0x1

    return v1

    .line 1691
    .end local v2  # "appArray":Lorg/json/JSONArray;
    .end local v3  # "jsonObject":Lorg/json/JSONObject;
    :cond_64
    goto :goto_6a

    .line 1692
    :cond_65
    const-string v2, "Failed to update app category list from cloud."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1694
    :goto_6a
    return v4
.end method

.method private updateShortTermModelAppList()Z
    .registers 6

    .line 1073
    iget-object v0, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mContext:Landroid/content/Context;

    .line 1074
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "shortTermModelAppList"

    const-string/jumbo v2, "short_term_model_app_config"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/provider/MiuiSettings$SettingsCloudData;->getCloudDataSingle(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;

    move-result-object v0

    .line 1076
    .local v0, "data":Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;
    const-string v1, "MiuiDisplayCloudController"

    if-eqz v0, :cond_34

    invoke-virtual {v0}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->json()Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_34

    .line 1077
    invoke-virtual {v0}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->json()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 1078
    .local v2, "jsonArray":Lorg/json/JSONArray;
    if-eqz v2, :cond_32

    .line 1079
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 1080
    .local v3, "jsonObject":Lorg/json/JSONObject;
    const-string v4, "Update short term model apps."

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    invoke-direct {p0, v3}, Lcom/android/server/display/MiuiDisplayCloudController;->saveShortTermModelAppComponent(Lorg/json/JSONObject;)V

    .line 1083
    .end local v3  # "jsonObject":Lorg/json/JSONObject;
    :cond_32
    const/4 v1, 0x1

    return v1

    .line 1085
    .end local v2  # "jsonArray":Lorg/json/JSONArray;
    :cond_34
    const-string v2, "Failed to update short term model apps from cloud."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    return v4
.end method

.method private updateShortTermModelEnable()Z
    .registers 6

    .line 1096
    iget-object v0, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mContext:Landroid/content/Context;

    .line 1097
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "shortTermModel"

    const-string/jumbo v2, "short_term_model_enable"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/provider/MiuiSettings$SettingsCloudData;->getCloudDataSingle(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;

    move-result-object v0

    .line 1099
    .local v0, "data":Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;
    const-string v1, "MiuiDisplayCloudController"

    if-eqz v0, :cond_40

    invoke-virtual {v0}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->json()Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_40

    .line 1100
    invoke-virtual {v0}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->json()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mShortTermModelEnable:Z

    .line 1101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Update short term model enable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mShortTermModelEnable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    const/4 v1, 0x1

    return v1

    .line 1104
    :cond_40
    const-string v2, "Failed to update short term model enable from cloud."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    return v4
.end method

.method private updateShortTermModelState()Z
    .registers 3

    .line 1059
    sget-boolean v0, Lcom/android/server/display/MiuiDisplayCloudController;->DEBUG:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 1061
    return v1

    .line 1063
    :cond_6
    invoke-direct {p0}, Lcom/android/server/display/MiuiDisplayCloudController;->updateShortTermModelEnable()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-direct {p0}, Lcom/android/server/display/MiuiDisplayCloudController;->updateShortTermModelAppList()Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v1, 0x1

    :cond_13
    return v1
.end method

.method private updateStatisticsAutoBrightnessEventEnable()Z
    .registers 6

    .line 1129
    iget-object v0, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mContext:Landroid/content/Context;

    .line 1130
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "AutomaticBrightnessStatisticsEvent"

    const-string v2, "automatic_brightness_statistics_event_enable"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/provider/MiuiSettings$SettingsCloudData;->getCloudDataSingle(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;

    move-result-object v0

    .line 1133
    .local v0, "data":Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;
    const-string v1, "MiuiDisplayCloudController"

    if-eqz v0, :cond_3e

    invoke-virtual {v0}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->json()Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_3e

    .line 1134
    invoke-virtual {v0}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->json()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mAutoBrightnessStatisticsEventEnable:Z

    .line 1136
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Update automatic brightness statistics event enable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mAutoBrightnessStatisticsEventEnable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    const/4 v1, 0x1

    return v1

    .line 1140
    :cond_3e
    const-string v2, "Failed to upload automatic brightness statistics event enable from cloud."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    return v4
.end method

.method private updateTemperatureGap()Z
    .registers 10

    .line 1612
    const-string/jumbo v0, "temperature_gap_value"

    const-string v1, "TemperatureGap"

    const-string v2, "MiuiDisplayCloudController"

    const/4 v3, 0x0

    :try_start_8
    iget-object v4, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mContext:Landroid/content/Context;

    .line 1613
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v1, v0, v5, v3}, Landroid/provider/MiuiSettings$SettingsCloudData;->getCloudDataSingle(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;

    move-result-object v4

    .line 1615
    .local v4, "data":Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;
    if-eqz v4, :cond_52

    invoke-virtual {v4}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->json()Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_52

    .line 1616
    invoke-virtual {v4}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->json()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    double-to-float v0, v5

    iput v0, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mTemperatureGap:F

    .line 1617
    iget-wide v5, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mCloudEventsSummary:J

    const-wide/16 v7, 0x4

    or-long/2addr v5, v7

    iput-wide v5, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mCloudEventsSummary:J

    .line 1618
    iget-object v0, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mCloudEventsData:Ljava/util/Map;

    iget v5, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mTemperatureGap:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1619
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update temperature gap : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mTemperatureGap:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_50
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_50} :catch_53

    .line 1620
    const/4 v0, 0x1

    return v0

    .line 1624
    .end local v4  # "data":Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;
    :cond_52
    goto :goto_6a

    .line 1622
    :catch_53
    move-exception v0

    .line 1623
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Update temperature gap exception: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1625
    .end local v0  # "e":Lorg/json/JSONException;
    :goto_6a
    return v3
.end method

.method private updateThermalBrightnessConfig()Z
    .registers 33

    .line 1541
    move-object/from16 v1, p0

    const-string/jumbo v0, "max-exclusive"

    const-string/jumbo v2, "min-inclusive"

    const-string/jumbo v3, "thermal-brightness-config"

    const-string v4, "MiuiDisplayCloudController"

    const/4 v5, 0x0

    :try_start_e
    iget-object v6, v1, Lcom/android/server/display/MiuiDisplayCloudController;->mContext:Landroid/content/Context;

    .line 1542
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "temperature_control"

    const/4 v8, 0x0

    invoke-static {v6, v7, v3, v8, v5}, Landroid/provider/MiuiSettings$SettingsCloudData;->getCloudDataSingle(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;

    move-result-object v6

    .line 1545
    .local v6, "data":Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;
    if-eqz v6, :cond_1a9

    invoke-virtual {v6}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->json()Lorg/json/JSONObject;

    move-result-object v7

    if-eqz v7, :cond_1a9

    .line 1546
    invoke-virtual {v6}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->json()Lorg/json/JSONObject;

    move-result-object v7

    .line 1547
    .local v7, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 1548
    .local v3, "rootObject":Lorg/json/JSONObject;
    new-instance v8, Lcom/android/server/display/thermalbrightnesscondition/config/ThermalBrightnessConfig;

    invoke-direct {v8}, Lcom/android/server/display/thermalbrightnesscondition/config/ThermalBrightnessConfig;-><init>()V

    .line 1549
    .local v8, "config":Lcom/android/server/display/thermalbrightnesscondition/config/ThermalBrightnessConfig;
    invoke-virtual {v8}, Lcom/android/server/display/thermalbrightnesscondition/config/ThermalBrightnessConfig;->getThermalConditionItem()Ljava/util/List;

    move-result-object v9

    .line 1550
    .local v9, "conditions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/thermalbrightnesscondition/config/ThermalConditionItem;>;"
    const-string/jumbo v10, "thermal-condition-item"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 1551
    .local v10, "conditionArray":Lorg/json/JSONArray;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_3d
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v11, v12, :cond_17d

    .line 1552
    new-instance v12, Lcom/android/server/display/thermalbrightnesscondition/config/ThermalConditionItem;

    invoke-direct {v12}, Lcom/android/server/display/thermalbrightnesscondition/config/ThermalConditionItem;-><init>()V

    .line 1553
    .local v12, "condition":Lcom/android/server/display/thermalbrightnesscondition/config/ThermalConditionItem;
    invoke-virtual {v10, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    .line 1554
    .local v13, "item":Lorg/json/JSONObject;
    const-string/jumbo v14, "identifier"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 1555
    .local v14, "identifier":I
    const-string v15, "description"

    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1556
    .local v15, "description":Ljava/lang/String;
    invoke-virtual {v12, v14}, Lcom/android/server/display/thermalbrightnesscondition/config/ThermalConditionItem;->setIdentifier(I)V

    .line 1557
    invoke-virtual {v12, v15}, Lcom/android/server/display/thermalbrightnesscondition/config/ThermalConditionItem;->setDescription(Ljava/lang/String;)V

    .line 1559
    invoke-virtual {v12}, Lcom/android/server/display/thermalbrightnesscondition/config/ThermalConditionItem;->getLuxTemperaturePair()Ljava/util/List;

    move-result-object v16
    :try_end_63
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_63} :catch_1ae

    move-object/from16 v17, v16

    .line 1560
    .local v17, "luxPairList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/thermalbrightnesscondition/config/LuxTemperaturePair;>;"
    move/from16 v16, v5

    :try_start_67
    const-string/jumbo v5, "lux-temperature-pair"

    invoke-virtual {v13, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 1561
    .local v5, "luxPairs":Lorg/json/JSONArray;
    if-eqz v5, :cond_15b

    .line 1562
    const/16 v18, 0x0

    move-object/from16 v19, v3

    move/from16 v3, v18

    .local v3, "j":I
    .local v19, "rootObject":Lorg/json/JSONObject;
    :goto_76
    move-object/from16 v18, v6

    .end local v6  # "data":Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;
    .local v18, "data":Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v3, v6, :cond_14e

    .line 1563
    new-instance v6, Lcom/android/server/display/thermalbrightnesscondition/config/LuxTemperaturePair;

    invoke-direct {v6}, Lcom/android/server/display/thermalbrightnesscondition/config/LuxTemperaturePair;-><init>()V

    .line 1564
    .local v6, "luxPair":Lcom/android/server/display/thermalbrightnesscondition/config/LuxTemperaturePair;
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v20

    move-object/from16 v21, v20

    .line 1565
    .local v21, "luxPairObj":Lorg/json/JSONObject;
    move/from16 v20, v3

    move-object/from16 v3, v21

    .end local v21  # "luxPairObj":Lorg/json/JSONObject;
    .local v3, "luxPairObj":Lorg/json/JSONObject;
    .local v20, "j":I
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v21

    move/from16 v22, v21

    .line 1566
    .local v22, "minLux":F
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v21

    move/from16 v23, v21

    .line 1567
    .local v23, "maxLux":F
    move-object/from16 v21, v5

    move/from16 v5, v22

    .end local v22  # "minLux":F
    .local v5, "minLux":F
    .local v21, "luxPairs":Lorg/json/JSONArray;
    invoke-virtual {v6, v5}, Lcom/android/server/display/thermalbrightnesscondition/config/LuxTemperaturePair;->setMinInclusive(F)V

    .line 1568
    move/from16 v22, v5

    move/from16 v5, v23

    .end local v23  # "maxLux":F
    .local v5, "maxLux":F
    .restart local v22  # "minLux":F
    invoke-virtual {v6, v5}, Lcom/android/server/display/thermalbrightnesscondition/config/LuxTemperaturePair;->setMaxExclusive(F)V

    .line 1570
    nop

    .line 1571
    invoke-virtual {v6}, Lcom/android/server/display/thermalbrightnesscondition/config/LuxTemperaturePair;->getTemperatureBrightnessPair()Ljava/util/List;

    move-result-object v23

    move-object/from16 v24, v23

    .line 1572
    .local v24, "temperaturePairList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/thermalbrightnesscondition/config/TemperatureBrightnessPair;>;"
    move/from16 v23, v5

    .end local v5  # "maxLux":F
    .restart local v23  # "maxLux":F
    const-string/jumbo v5, "temperature-brightness-pair"

    .line 1573
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 1574
    .local v5, "temperaturePairs":Lorg/json/JSONArray;
    if-eqz v5, :cond_12e

    .line 1575
    const/16 v25, 0x0

    move-object/from16 v26, v3

    move/from16 v3, v25

    .local v3, "k":I
    .local v26, "luxPairObj":Lorg/json/JSONObject;
    :goto_c7
    move-object/from16 v25, v10

    .end local v10  # "conditionArray":Lorg/json/JSONArray;
    .local v25, "conditionArray":Lorg/json/JSONArray;
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v3, v10, :cond_125

    .line 1576
    new-instance v10, Lcom/android/server/display/thermalbrightnesscondition/config/TemperatureBrightnessPair;

    invoke-direct {v10}, Lcom/android/server/display/thermalbrightnesscondition/config/TemperatureBrightnessPair;-><init>()V

    .line 1578
    .local v10, "temperaturePair":Lcom/android/server/display/thermalbrightnesscondition/config/TemperatureBrightnessPair;
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v27

    move-object/from16 v28, v27

    .line 1579
    .local v28, "temperaturePairObj":Lorg/json/JSONObject;
    nop

    .line 1580
    move/from16 v27, v3

    move-object/from16 v3, v28

    .end local v28  # "temperaturePairObj":Lorg/json/JSONObject;
    .local v3, "temperaturePairObj":Lorg/json/JSONObject;
    .local v27, "k":I
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 1579
    invoke-static/range {v28 .. v28}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v28

    move/from16 v29, v28

    .line 1581
    .local v29, "minTemperature":F
    nop

    .line 1582
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 1581
    invoke-static/range {v28 .. v28}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v28

    move/from16 v30, v28

    .line 1583
    .local v30, "maxTemperature":F
    move-object/from16 v28, v0

    const-string/jumbo v0, "nit"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 1585
    .local v0, "nit":F
    move-object/from16 v31, v2

    move/from16 v2, v29

    .end local v29  # "minTemperature":F
    .local v2, "minTemperature":F
    invoke-virtual {v10, v2}, Lcom/android/server/display/thermalbrightnesscondition/config/TemperatureBrightnessPair;->setMinInclusive(F)V

    .line 1586
    move/from16 v29, v2

    move/from16 v2, v30

    .end local v30  # "maxTemperature":F
    .local v2, "maxTemperature":F
    .restart local v29  # "minTemperature":F
    invoke-virtual {v10, v2}, Lcom/android/server/display/thermalbrightnesscondition/config/TemperatureBrightnessPair;->setMaxExclusive(F)V

    .line 1587
    invoke-virtual {v10, v0}, Lcom/android/server/display/thermalbrightnesscondition/config/TemperatureBrightnessPair;->setNit(F)V

    .line 1588
    move/from16 v30, v0

    move-object/from16 v0, v24

    .end local v24  # "temperaturePairList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/thermalbrightnesscondition/config/TemperatureBrightnessPair;>;"
    .local v0, "temperaturePairList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/thermalbrightnesscondition/config/TemperatureBrightnessPair;>;"
    .local v30, "nit":F
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1575
    nop

    .end local v2  # "maxTemperature":F
    .end local v3  # "temperaturePairObj":Lorg/json/JSONObject;
    .end local v10  # "temperaturePair":Lcom/android/server/display/thermalbrightnesscondition/config/TemperatureBrightnessPair;
    .end local v29  # "minTemperature":F
    .end local v30  # "nit":F
    add-int/lit8 v3, v27, 0x1

    move-object/from16 v24, v0

    move-object/from16 v10, v25

    move-object/from16 v0, v28

    move-object/from16 v2, v31

    .end local v27  # "k":I
    .local v3, "k":I
    goto :goto_c7

    .end local v0  # "temperaturePairList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/thermalbrightnesscondition/config/TemperatureBrightnessPair;>;"
    .restart local v24  # "temperaturePairList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/thermalbrightnesscondition/config/TemperatureBrightnessPair;>;"
    :cond_125
    move-object/from16 v28, v0

    move-object/from16 v31, v2

    move/from16 v27, v3

    move-object/from16 v0, v24

    .end local v3  # "k":I
    .end local v24  # "temperaturePairList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/thermalbrightnesscondition/config/TemperatureBrightnessPair;>;"
    .restart local v0  # "temperaturePairList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/thermalbrightnesscondition/config/TemperatureBrightnessPair;>;"
    .restart local v27  # "k":I
    goto :goto_138

    .line 1574
    .end local v0  # "temperaturePairList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/thermalbrightnesscondition/config/TemperatureBrightnessPair;>;"
    .end local v25  # "conditionArray":Lorg/json/JSONArray;
    .end local v26  # "luxPairObj":Lorg/json/JSONObject;
    .end local v27  # "k":I
    .local v3, "luxPairObj":Lorg/json/JSONObject;
    .local v10, "conditionArray":Lorg/json/JSONArray;
    .restart local v24  # "temperaturePairList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/thermalbrightnesscondition/config/TemperatureBrightnessPair;>;"
    :cond_12e
    move-object/from16 v28, v0

    move-object/from16 v31, v2

    move-object/from16 v26, v3

    move-object/from16 v25, v10

    move-object/from16 v0, v24

    .line 1591
    .end local v3  # "luxPairObj":Lorg/json/JSONObject;
    .end local v10  # "conditionArray":Lorg/json/JSONArray;
    .end local v24  # "temperaturePairList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/thermalbrightnesscondition/config/TemperatureBrightnessPair;>;"
    .restart local v0  # "temperaturePairList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/thermalbrightnesscondition/config/TemperatureBrightnessPair;>;"
    .restart local v25  # "conditionArray":Lorg/json/JSONArray;
    .restart local v26  # "luxPairObj":Lorg/json/JSONObject;
    :goto_138
    move-object/from16 v2, v17

    .end local v17  # "luxPairList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/thermalbrightnesscondition/config/LuxTemperaturePair;>;"
    .local v2, "luxPairList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/thermalbrightnesscondition/config/LuxTemperaturePair;>;"
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1562
    nop

    .end local v0  # "temperaturePairList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/thermalbrightnesscondition/config/TemperatureBrightnessPair;>;"
    .end local v5  # "temperaturePairs":Lorg/json/JSONArray;
    .end local v6  # "luxPair":Lcom/android/server/display/thermalbrightnesscondition/config/LuxTemperaturePair;
    .end local v22  # "minLux":F
    .end local v23  # "maxLux":F
    .end local v26  # "luxPairObj":Lorg/json/JSONObject;
    add-int/lit8 v3, v20, 0x1

    move-object/from16 v17, v2

    move-object/from16 v6, v18

    move-object/from16 v5, v21

    move-object/from16 v10, v25

    move-object/from16 v0, v28

    move-object/from16 v2, v31

    .end local v20  # "j":I
    .local v3, "j":I
    goto/16 :goto_76

    .end local v2  # "luxPairList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/thermalbrightnesscondition/config/LuxTemperaturePair;>;"
    .end local v21  # "luxPairs":Lorg/json/JSONArray;
    .end local v25  # "conditionArray":Lorg/json/JSONArray;
    .local v5, "luxPairs":Lorg/json/JSONArray;
    .restart local v10  # "conditionArray":Lorg/json/JSONArray;
    .restart local v17  # "luxPairList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/thermalbrightnesscondition/config/LuxTemperaturePair;>;"
    :cond_14e
    move-object/from16 v28, v0

    move-object/from16 v31, v2

    move/from16 v20, v3

    move-object/from16 v21, v5

    move-object/from16 v25, v10

    move-object/from16 v2, v17

    .end local v3  # "j":I
    .end local v5  # "luxPairs":Lorg/json/JSONArray;
    .end local v10  # "conditionArray":Lorg/json/JSONArray;
    .end local v17  # "luxPairList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/thermalbrightnesscondition/config/LuxTemperaturePair;>;"
    .restart local v2  # "luxPairList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/thermalbrightnesscondition/config/LuxTemperaturePair;>;"
    .restart local v20  # "j":I
    .restart local v21  # "luxPairs":Lorg/json/JSONArray;
    .restart local v25  # "conditionArray":Lorg/json/JSONArray;
    goto :goto_169

    .line 1561
    .end local v2  # "luxPairList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/thermalbrightnesscondition/config/LuxTemperaturePair;>;"
    .end local v18  # "data":Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;
    .end local v19  # "rootObject":Lorg/json/JSONObject;
    .end local v20  # "j":I
    .end local v21  # "luxPairs":Lorg/json/JSONArray;
    .end local v25  # "conditionArray":Lorg/json/JSONArray;
    .local v3, "rootObject":Lorg/json/JSONObject;
    .restart local v5  # "luxPairs":Lorg/json/JSONArray;
    .local v6, "data":Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;
    .restart local v10  # "conditionArray":Lorg/json/JSONArray;
    .restart local v17  # "luxPairList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/thermalbrightnesscondition/config/LuxTemperaturePair;>;"
    :cond_15b
    move-object/from16 v28, v0

    move-object/from16 v31, v2

    move-object/from16 v19, v3

    move-object/from16 v21, v5

    move-object/from16 v18, v6

    move-object/from16 v25, v10

    move-object/from16 v2, v17

    .line 1594
    .end local v3  # "rootObject":Lorg/json/JSONObject;
    .end local v5  # "luxPairs":Lorg/json/JSONArray;
    .end local v6  # "data":Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;
    .end local v10  # "conditionArray":Lorg/json/JSONArray;
    .end local v17  # "luxPairList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/thermalbrightnesscondition/config/LuxTemperaturePair;>;"
    .restart local v2  # "luxPairList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/thermalbrightnesscondition/config/LuxTemperaturePair;>;"
    .restart local v18  # "data":Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;
    .restart local v19  # "rootObject":Lorg/json/JSONObject;
    .restart local v21  # "luxPairs":Lorg/json/JSONArray;
    .restart local v25  # "conditionArray":Lorg/json/JSONArray;
    :goto_169
    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1551
    nop

    .end local v2  # "luxPairList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/thermalbrightnesscondition/config/LuxTemperaturePair;>;"
    .end local v12  # "condition":Lcom/android/server/display/thermalbrightnesscondition/config/ThermalConditionItem;
    .end local v13  # "item":Lorg/json/JSONObject;
    .end local v14  # "identifier":I
    .end local v15  # "description":Ljava/lang/String;
    .end local v21  # "luxPairs":Lorg/json/JSONArray;
    add-int/lit8 v11, v11, 0x1

    move/from16 v5, v16

    move-object/from16 v6, v18

    move-object/from16 v3, v19

    move-object/from16 v10, v25

    move-object/from16 v0, v28

    move-object/from16 v2, v31

    goto/16 :goto_3d

    .end local v18  # "data":Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;
    .end local v19  # "rootObject":Lorg/json/JSONObject;
    .end local v25  # "conditionArray":Lorg/json/JSONArray;
    .restart local v3  # "rootObject":Lorg/json/JSONObject;
    .restart local v6  # "data":Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;
    .restart local v10  # "conditionArray":Lorg/json/JSONArray;
    :cond_17d
    move-object/from16 v19, v3

    move/from16 v16, v5

    move-object/from16 v18, v6

    move-object/from16 v25, v10

    .line 1596
    .end local v3  # "rootObject":Lorg/json/JSONObject;
    .end local v6  # "data":Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;
    .end local v10  # "conditionArray":Lorg/json/JSONArray;
    .end local v11  # "i":I
    .restart local v18  # "data":Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;
    .restart local v19  # "rootObject":Lorg/json/JSONObject;
    .restart local v25  # "conditionArray":Lorg/json/JSONArray;
    iget-wide v2, v1, Lcom/android/server/display/MiuiDisplayCloudController;->mCloudEventsSummary:J

    const-wide/16 v5, 0x2

    or-long/2addr v2, v5

    iput-wide v2, v1, Lcom/android/server/display/MiuiDisplayCloudController;->mCloudEventsSummary:J

    .line 1597
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update thermal brightness config json: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1598
    invoke-virtual {v1, v8}, Lcom/android/server/display/MiuiDisplayCloudController;->writeToFile(Lcom/android/server/display/thermalbrightnesscondition/config/ThermalBrightnessConfig;)V
    :try_end_1a5
    .catch Lorg/json/JSONException; {:try_start_67 .. :try_end_1a5} :catch_1a7

    .line 1599
    const/4 v0, 0x1

    return v0

    .line 1601
    .end local v7  # "jsonObject":Lorg/json/JSONObject;
    .end local v8  # "config":Lcom/android/server/display/thermalbrightnesscondition/config/ThermalBrightnessConfig;
    .end local v9  # "conditions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/thermalbrightnesscondition/config/ThermalConditionItem;>;"
    .end local v18  # "data":Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;
    .end local v19  # "rootObject":Lorg/json/JSONObject;
    .end local v25  # "conditionArray":Lorg/json/JSONArray;
    :catch_1a7
    move-exception v0

    goto :goto_1b1

    .line 1545
    .restart local v6  # "data":Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;
    :cond_1a9
    move/from16 v16, v5

    move-object/from16 v18, v6

    .line 1603
    .end local v6  # "data":Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;
    goto :goto_1c7

    .line 1601
    :catch_1ae
    move-exception v0

    move/from16 v16, v5

    .line 1602
    .local v0, "e":Lorg/json/JSONException;
    :goto_1b1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Update thermal brightness config exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1604
    .end local v0  # "e":Lorg/json/JSONException;
    :goto_1c7
    return v16
.end method

.method private updateThresholdSunlightNitValue()Z
    .registers 6

    .line 1479
    iget-object v0, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mContext:Landroid/content/Context;

    .line 1480
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "thresholdSunlightNit"

    const-string/jumbo v2, "threshold_sunlight_nit"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/provider/MiuiSettings$SettingsCloudData;->getCloudDataSingle(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;

    move-result-object v0

    .line 1482
    .local v0, "data":Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;
    const-string v1, "MiuiDisplayCloudController"

    if-eqz v0, :cond_48

    invoke-virtual {v0}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->json()Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_48

    .line 1483
    invoke-virtual {v0}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->json()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mThresholdSunlightNit:F

    .line 1484
    iget-object v2, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mCallback:Lcom/android/server/display/MiuiDisplayCloudController$Callback;

    iget v3, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mThresholdSunlightNit:F

    invoke-interface {v2, v3}, Lcom/android/server/display/MiuiDisplayCloudController$Callback;->notifyThresholdSunlightNitChanged(F)V

    .line 1485
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Update threshold of sunlight mode nit: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mThresholdSunlightNit:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1486
    const/4 v1, 0x1

    return v1

    .line 1488
    :cond_48
    const-string v2, "Failed to update threshold of sunlight mode nit from cloud."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1489
    return v4
.end method

.method private updateTouchProtectionGameList()Z
    .registers 7

    .line 1404
    iget-object v0, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mContext:Landroid/content/Context;

    .line 1405
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "TouchCoverProtectionGameMode"

    const-string/jumbo v2, "touch_cover_protection_game_app_list"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/provider/MiuiSettings$SettingsCloudData;->getCloudDataSingle(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;

    move-result-object v0

    .line 1407
    .local v0, "data":Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;
    const-string v1, "MiuiDisplayCloudController"

    if-eqz v0, :cond_4a

    invoke-virtual {v0}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->json()Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_4a

    .line 1408
    invoke-virtual {v0}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->json()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 1409
    .local v2, "appArray":Lorg/json/JSONArray;
    if-eqz v2, :cond_49

    .line 1410
    iget-object v3, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mTouchCoverProtectionGameList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1411
    const-string v3, "Update game apps."

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1412
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_30
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_47

    .line 1413
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v3

    .line 1414
    .local v3, "obj":Ljava/lang/Object;
    if-eqz v3, :cond_44

    .line 1415
    iget-object v4, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mTouchCoverProtectionGameList:Ljava/util/List;

    move-object v5, v3

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1412
    .end local v3  # "obj":Ljava/lang/Object;
    :cond_44
    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    .line 1418
    .end local v1  # "i":I
    :cond_47
    const/4 v1, 0x1

    return v1

    .line 1420
    .end local v2  # "appArray":Lorg/json/JSONArray;
    :cond_49
    goto :goto_4f

    .line 1421
    :cond_4a
    const-string v2, "Failed to update game apps from cloud."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1423
    :goto_4f
    return v4
.end method

.method private writeAppCategoryConfigToFile(Lcom/android/server/display/aiautobrt/config/AppCategoryConfig;)V
    .registers 20
    .param p1, "config"  # Lcom/android/server/display/aiautobrt/config/AppCategoryConfig;

    .line 1824
    move-object/from16 v1, p0

    const-string/jumbo v0, "pkg"

    const-string/jumbo v2, "name"

    const-string v3, "category"

    const-string v4, "app-category-config"

    iget-object v5, v1, Lcom/android/server/display/MiuiDisplayCloudController;->mAppCategoryConfigCloudFile:Landroid/util/AtomicFile;

    if-nez v5, :cond_18

    .line 1825
    const-string v5, "cloud_app_brightness_category.xml"

    invoke-direct {v1, v5}, Lcom/android/server/display/MiuiDisplayCloudController;->getFile(Ljava/lang/String;)Landroid/util/AtomicFile;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/display/MiuiDisplayCloudController;->mAppCategoryConfigCloudFile:Landroid/util/AtomicFile;

    .line 1827
    :cond_18
    const/4 v5, 0x0

    .line 1829
    .local v5, "outputStream":Ljava/io/FileOutputStream;
    :try_start_19
    iget-object v6, v1, Lcom/android/server/display/MiuiDisplayCloudController;->mAppCategoryConfigCloudFile:Landroid/util/AtomicFile;

    invoke-virtual {v6}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v6

    move-object v5, v6

    .line 1830
    new-instance v6, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v6}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1831
    .local v6, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v7}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1832
    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v6, v9, v8}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1833
    const-string/jumbo v8, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v6, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 1835
    invoke-interface {v6, v9, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1836
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/aiautobrt/config/AppCategoryConfig;->getCategory()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_48
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/display/aiautobrt/config/AppCategory;

    .line 1837
    .local v8, "category":Lcom/android/server/display/aiautobrt/config/AppCategory;
    invoke-interface {v6, v9, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1838
    invoke-virtual {v8}, Lcom/android/server/display/aiautobrt/config/AppCategory;->getId()I

    move-result v10

    .line 1839
    .local v10, "id":I
    invoke-virtual {v8}, Lcom/android/server/display/aiautobrt/config/AppCategory;->getName()Ljava/lang/String;

    move-result-object v11

    .line 1840
    .local v11, "name":Ljava/lang/String;
    const-string/jumbo v12, "id"

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v6, v9, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1841
    invoke-interface {v6, v9, v2, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1843
    invoke-virtual {v8}, Lcom/android/server/display/aiautobrt/config/AppCategory;->getPkg()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_74
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_a5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/display/aiautobrt/config/PackageInfo;

    .line 1844
    .local v13, "appInfo":Lcom/android/server/display/aiautobrt/config/PackageInfo;
    invoke-interface {v6, v9, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1845
    invoke-virtual {v13}, Lcom/android/server/display/aiautobrt/config/PackageInfo;->getCateId()I

    move-result v14

    .line 1846
    .local v14, "cateId":I
    invoke-virtual {v13}, Lcom/android/server/display/aiautobrt/config/PackageInfo;->getName()Ljava/lang/String;

    move-result-object v15

    .line 1848
    .local v15, "pkgName":Ljava/lang/String;
    const-string v9, "cateId"

    move-object/from16 v16, v7

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v17, v8

    const/4 v8, 0x0

    .end local v8  # "category":Lcom/android/server/display/aiautobrt/config/AppCategory;
    .local v17, "category":Lcom/android/server/display/aiautobrt/config/AppCategory;
    invoke-interface {v6, v8, v9, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1849
    invoke-interface {v6, v8, v2, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1851
    invoke-interface {v6, v8, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1852
    move-object/from16 v7, v16

    move-object/from16 v8, v17

    const/4 v9, 0x0

    .end local v13  # "appInfo":Lcom/android/server/display/aiautobrt/config/PackageInfo;
    .end local v14  # "cateId":I
    .end local v15  # "pkgName":Ljava/lang/String;
    goto :goto_74

    .line 1853
    .end local v17  # "category":Lcom/android/server/display/aiautobrt/config/AppCategory;
    .restart local v8  # "category":Lcom/android/server/display/aiautobrt/config/AppCategory;
    :cond_a5
    move-object/from16 v16, v7

    move-object/from16 v17, v8

    .end local v8  # "category":Lcom/android/server/display/aiautobrt/config/AppCategory;
    .restart local v17  # "category":Lcom/android/server/display/aiautobrt/config/AppCategory;
    const/4 v8, 0x0

    invoke-interface {v6, v8, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1854
    move-object/from16 v7, v16

    const/4 v9, 0x0

    .end local v10  # "id":I
    .end local v11  # "name":Ljava/lang/String;
    .end local v17  # "category":Lcom/android/server/display/aiautobrt/config/AppCategory;
    goto :goto_48

    .line 1855
    :cond_b1
    const/4 v8, 0x0

    invoke-interface {v6, v8, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1856
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1857
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    .line 1858
    iget-object v0, v1, Lcom/android/server/display/MiuiDisplayCloudController;->mAppCategoryConfigCloudFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v5}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_c0
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_c0} :catch_c1

    .line 1862
    .end local v6  # "out":Lorg/xmlpull/v1/XmlSerializer;
    goto :goto_ca

    .line 1859
    :catch_c1
    move-exception v0

    .line 1860
    .local v0, "e":Ljava/io/IOException;
    iget-object v2, v1, Lcom/android/server/display/MiuiDisplayCloudController;->mAppCategoryConfigCloudFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v5}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1861
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1863
    .end local v0  # "e":Ljava/io/IOException;
    :goto_ca
    return-void
.end method

.method private writeElementOfAppListToXml(Landroid/util/AtomicFile;Ljava/io/FileOutputStream;Lcom/android/modules/utils/TypedXmlSerializer;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "writeFile"  # Landroid/util/AtomicFile;
    .param p2, "outStream"  # Ljava/io/FileOutputStream;
    .param p3, "out"  # Lcom/android/modules/utils/TypedXmlSerializer;
    .param p5, "attribute"  # Ljava/lang/String;
    .param p6, "tag"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/AtomicFile;",
            "Ljava/io/FileOutputStream;",
            "Lcom/android/modules/utils/TypedXmlSerializer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 681
    .local p4, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 682
    .local v1, "str":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-interface {p3, v2, p6}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 683
    invoke-interface {p3, v2, p5, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 684
    invoke-interface {p3, v2, p6}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1a} :catch_1d

    .line 685
    nop

    .end local v1  # "str":Ljava/lang/String;
    goto :goto_4

    .line 689
    :cond_1c
    goto :goto_39

    .line 686
    :catch_1d
    move-exception v0

    .line 687
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p1, p2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 688
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to write element of app list to xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiuiDisplayCloudController"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    .end local v0  # "e":Ljava/io/IOException;
    :goto_39
    return-void
.end method

.method private writeFeatureEnableToXml(Landroid/util/AtomicFile;Ljava/io/FileOutputStream;Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 10
    .param p1, "writeFile"  # Landroid/util/AtomicFile;
    .param p2, "outStream"  # Ljava/io/FileOutputStream;
    .param p3, "out"  # Lcom/android/modules/utils/TypedXmlSerializer;
    .param p4, "attribute"  # Ljava/lang/String;
    .param p5, "tag"  # Ljava/lang/String;
    .param p6, "enable"  # Z

    .line 603
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p3, v0, p5}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 604
    invoke-interface {p3, v0, p4, p6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 605
    invoke-interface {p3, v0, p5}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_a} :catch_b

    .line 609
    goto :goto_27

    .line 606
    :catch_b
    move-exception v0

    .line 607
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p1, p2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 608
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to write local backup of feature enable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiuiDisplayCloudController"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    .end local v0  # "e":Ljava/io/IOException;
    :goto_27
    return-void
.end method

.method private writeFeatureValueToXml(Landroid/util/AtomicFile;Ljava/io/FileOutputStream;Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V
    .registers 10
    .param p1, "writeFile"  # Landroid/util/AtomicFile;
    .param p2, "outStream"  # Ljava/io/FileOutputStream;
    .param p3, "out"  # Lcom/android/modules/utils/TypedXmlSerializer;
    .param p4, "attribute"  # Ljava/lang/String;
    .param p5, "tag"  # Ljava/lang/String;
    .param p6, "value"  # Ljava/lang/Number;

    .line 619
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p3, v0, p5}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 620
    invoke-virtual {p6}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-interface {p3, v0, p4, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeFloat(Ljava/lang/String;Ljava/lang/String;F)Lorg/xmlpull/v1/XmlSerializer;

    .line 621
    invoke-interface {p3, v0, p5}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_e} :catch_f

    .line 625
    goto :goto_2b

    .line 622
    :catch_f
    move-exception v0

    .line 623
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p1, p2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 624
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to write local backup of value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiuiDisplayCloudController"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    .end local v0  # "e":Ljava/io/IOException;
    :goto_2b
    return-void
.end method

.method private writeShortTermModelAppListToXml(Landroid/util/AtomicFile;Ljava/io/FileOutputStream;Lcom/android/modules/utils/TypedXmlSerializer;)V
    .registers 12
    .param p1, "writeFile"  # Landroid/util/AtomicFile;
    .param p2, "outStream"  # Ljava/io/FileOutputStream;
    .param p3, "out"  # Lcom/android/modules/utils/TypedXmlSerializer;

    .line 635
    const/4 v1, 0x0

    move v7, v1

    .local v7, "category":I
    :goto_2
    const/4 v1, 0x6

    if-ge v7, v1, :cond_6d

    .line 636
    packed-switch v7, :pswitch_data_6e

    goto/16 :goto_6a

    .line 654
    :pswitch_a  #0x5
    iget-object v4, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mShortTermModelReaderList:Ljava/util/List;

    const-string/jumbo v5, "package"

    const-string/jumbo v6, "reader-category"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/display/MiuiDisplayCloudController;->writeElementOfAppListToXml(Landroid/util/AtomicFile;Ljava/io/FileOutputStream;Lcom/android/modules/utils/TypedXmlSerializer;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    goto :goto_6a

    .line 650
    :pswitch_1a  #0x4
    iget-object v4, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mShortTermModelImageList:Ljava/util/List;

    const-string/jumbo v5, "package"

    const-string/jumbo v6, "image-category"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/display/MiuiDisplayCloudController;->writeElementOfAppListToXml(Landroid/util/AtomicFile;Ljava/io/FileOutputStream;Lcom/android/modules/utils/TypedXmlSerializer;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    goto :goto_6a

    .line 646
    :pswitch_2a  #0x3
    iget-object v4, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mShortTermModelMapList:Ljava/util/List;

    const-string/jumbo v5, "package"

    const-string/jumbo v6, "map-category"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/display/MiuiDisplayCloudController;->writeElementOfAppListToXml(Landroid/util/AtomicFile;Ljava/io/FileOutputStream;Lcom/android/modules/utils/TypedXmlSerializer;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    goto :goto_6a

    .line 642
    :pswitch_3a  #0x2
    iget-object v4, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mShortTermModelVideoList:Ljava/util/List;

    const-string/jumbo v5, "package"

    const-string/jumbo v6, "video-category"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/display/MiuiDisplayCloudController;->writeElementOfAppListToXml(Landroid/util/AtomicFile;Ljava/io/FileOutputStream;Lcom/android/modules/utils/TypedXmlSerializer;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    goto :goto_6a

    .line 638
    :pswitch_4a  #0x1
    iget-object v4, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mShortTermModelGameList:Ljava/util/List;

    const-string/jumbo v5, "package"

    const-string/jumbo v6, "game-category"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/display/MiuiDisplayCloudController;->writeElementOfAppListToXml(Landroid/util/AtomicFile;Ljava/io/FileOutputStream;Lcom/android/modules/utils/TypedXmlSerializer;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    goto :goto_6a

    .line 658
    :pswitch_5a  #0x0
    iget-object v4, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mShortTermModelGlobalList:Ljava/util/List;

    const-string/jumbo v5, "package"

    const-string/jumbo v6, "undefined-category"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/display/MiuiDisplayCloudController;->writeElementOfAppListToXml(Landroid/util/AtomicFile;Ljava/io/FileOutputStream;Lcom/android/modules/utils/TypedXmlSerializer;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    nop

    .line 635
    :goto_6a
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 665
    .end local v7  # "category":I
    :cond_6d
    return-void

    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_5a  #00000000
        :pswitch_4a  #00000001
        :pswitch_3a  #00000002
        :pswitch_2a  #00000003
        :pswitch_1a  #00000004
        :pswitch_a  #00000005
    .end packed-switch
.end method

.method private writeTagToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6
    .param p1, "out"  # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "tag"  # Ljava/lang/String;
    .param p3, "value"  # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1753
    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1754
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1755
    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1756
    return-void
.end method


# virtual methods
.method protected addCloudListener(Lcom/android/server/display/MiuiDisplayCloudController$CloudListener;)V
    .registers 5
    .param p1, "listener"  # Lcom/android/server/display/MiuiDisplayCloudController$CloudListener;

    .line 1762
    iget-object v0, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mCloudListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 1763
    iget-object v0, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mCloudListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1764
    iget-wide v0, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mCloudEventsSummary:J

    iget-object v2, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mCloudEventsData:Ljava/util/Map;

    invoke-interface {p1, v0, v1, v2}, Lcom/android/server/display/MiuiDisplayCloudController$CloudListener;->onCloudUpdated(JLjava/util/Map;)V

    .line 1766
    :cond_14
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 1280
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1281
    const-string v0, "MiuiDisplayCloudController Configuration:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mShortTermModelEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mShortTermModelEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mShortTermModelAppMapper="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mShortTermModelAppMapper:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBCBCAppList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mBCBCAppList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mTouchCoverProtectionGameList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mTouchCoverProtectionGameList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mResolutionSwitchProcessProtectList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mResolutionSwitchProcessProtectList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mResolutionSwitchProcessBlackList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mResolutionSwitchProcessBlackList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mRhythmicImageAppList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mRhythmicImageAppList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mRhythmicReadAppList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mRhythmicReadAppList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mGestureComponents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mGestureComponents:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mManualBoostAppEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mManualBoostAppEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mManualBoostDisableAppList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mManualBoostDisableAppList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mOverrideBrightnessPolicyEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mOverrideBrightnessPolicyEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAutoBrightnessStatisticsEventEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mAutoBrightnessStatisticsEventEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDisableResetShortTermModel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mDisableResetShortTermModel:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessStatsEventsEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mBrightnessStatsEventsEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mThresholdSunlightNit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mThresholdSunlightNit:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCustomCurveDisable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mCustomCurveDisable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIndividualModelDisable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mIndividualModelDisable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessCurveOptimizePolicyDisable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mBrightnessCurveOptimizePolicyDisable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mResetShortTermModelPolicyDisable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mResetShortTermModelPolicyDisable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1302
    return-void
.end method

.method protected getBCBCAppList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1305
    iget-object v0, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mBCBCAppList:Ljava/util/List;

    return-object v0
.end method

.method protected getManualBoostDisableAppList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1359
    iget-object v0, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mManualBoostDisableAppList:Ljava/util/List;

    return-object v0
.end method

.method protected getShortTermModelAppMapper()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1276
    iget-object v0, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mShortTermModelAppMapper:Ljava/util/Map;

    return-object v0
.end method

.method protected getTouchCoverProtectionGameList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1400
    iget-object v0, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mTouchCoverProtectionGameList:Ljava/util/List;

    return-object v0
.end method

.method public isAutoBrightnessStatisticsEventEnable()Z
    .registers 2

    .line 1267
    iget-boolean v0, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mAutoBrightnessStatisticsEventEnable:Z

    return v0
.end method

.method isBrightnessCurveOptimizePolicyDisable()Z
    .registers 2

    .line 1944
    iget-boolean v0, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mBrightnessCurveOptimizePolicyDisable:Z

    return v0
.end method

.method protected isManualBoostAppEnable()Z
    .registers 2

    .line 1355
    iget-boolean v0, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mManualBoostAppEnable:Z

    return v0
.end method

.method isOverrideBrightnessPolicyEnable()Z
    .registers 2

    .line 1499
    iget-boolean v0, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mOverrideBrightnessPolicyEnable:Z

    return v0
.end method

.method isResetShortTermModelPolicyDisable()Z
    .registers 2

    .line 1953
    iget-boolean v0, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mResetShortTermModelPolicyDisable:Z

    return v0
.end method

.method protected isShortTermModelEnable()Z
    .registers 2

    .line 1249
    iget-boolean v0, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mShortTermModelEnable:Z

    return v0
.end method

.method public notifyAllObservers()V
    .registers 3

    .line 1531
    iget-object v0, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/MiuiDisplayCloudController$Observer;

    .line 1532
    .local v1, "observer":Lcom/android/server/display/MiuiDisplayCloudController$Observer;
    invoke-interface {v1}, Lcom/android/server/display/MiuiDisplayCloudController$Observer;->update()V

    .line 1533
    .end local v1  # "observer":Lcom/android/server/display/MiuiDisplayCloudController$Observer;
    goto :goto_6

    .line 1534
    :cond_16
    return-void
.end method

.method public registerObserver(Lcom/android/server/display/MiuiDisplayCloudController$Observer;)V
    .registers 3
    .param p1, "observer"  # Lcom/android/server/display/MiuiDisplayCloudController$Observer;

    .line 1519
    const-string/jumbo v0, "observer may not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1520
    iget-object v0, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 1521
    iget-object v0, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1523
    :cond_13
    return-void
.end method

.method public unregisterObserver(Lcom/android/server/display/MiuiDisplayCloudController$Observer;)V
    .registers 3
    .param p1, "observer"  # Lcom/android/server/display/MiuiDisplayCloudController$Observer;

    .line 1526
    const-string/jumbo v0, "observer may not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1527
    iget-object v0, p0, Lcom/android/server/display/MiuiDisplayCloudController;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1528
    return-void
.end method

.method public writeToFile(Lcom/android/server/display/thermalbrightnesscondition/config/ThermalBrightnessConfig;)V
    .registers 26
    .param p1, "config"  # Lcom/android/server/display/thermalbrightnesscondition/config/ThermalBrightnessConfig;

    .line 1703
    move-object/from16 v1, p0

    const-string/jumbo v0, "temperature-brightness-pair"

    const-string/jumbo v2, "max-exclusive"

    const-string/jumbo v3, "min-inclusive"

    const-string/jumbo v4, "lux-temperature-pair"

    const-string/jumbo v5, "thermal-condition-item"

    const-string/jumbo v6, "thermal-brightness-config"

    iget-object v7, v1, Lcom/android/server/display/MiuiDisplayCloudController;->mThermalBrightnessCloudFile:Landroid/util/AtomicFile;

    if-nez v7, :cond_20

    .line 1704
    const-string v7, "cloud_multi_factor_thermal_brightness_control.xml"

    invoke-direct {v1, v7}, Lcom/android/server/display/MiuiDisplayCloudController;->getFile(Ljava/lang/String;)Landroid/util/AtomicFile;

    move-result-object v7

    iput-object v7, v1, Lcom/android/server/display/MiuiDisplayCloudController;->mThermalBrightnessCloudFile:Landroid/util/AtomicFile;

    .line 1706
    :cond_20
    const/4 v7, 0x0

    .line 1708
    .local v7, "outputStream":Ljava/io/FileOutputStream;
    :try_start_21
    iget-object v8, v1, Lcom/android/server/display/MiuiDisplayCloudController;->mThermalBrightnessCloudFile:Landroid/util/AtomicFile;

    invoke-virtual {v8}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v8

    move-object v7, v8

    .line 1709
    new-instance v8, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v8}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1710
    .local v8, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v9}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1711
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v8, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1712
    const-string/jumbo v10, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v8, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 1713
    invoke-interface {v8, v11, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1714
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/thermalbrightnesscondition/config/ThermalBrightnessConfig;->getThermalConditionItem()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_50
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_10b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/display/thermalbrightnesscondition/config/ThermalConditionItem;

    .line 1715
    .local v10, "condition":Lcom/android/server/display/thermalbrightnesscondition/config/ThermalConditionItem;
    invoke-interface {v8, v11, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1716
    invoke-virtual {v10}, Lcom/android/server/display/thermalbrightnesscondition/config/ThermalConditionItem;->getIdentifier()I

    move-result v12

    .line 1717
    .local v12, "identifier":I
    invoke-virtual {v10}, Lcom/android/server/display/thermalbrightnesscondition/config/ThermalConditionItem;->getDescription()Ljava/lang/String;

    move-result-object v13

    .line 1719
    .local v13, "description":Ljava/lang/String;
    const-string/jumbo v14, "identifier"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v1, v8, v14, v15}, Lcom/android/server/display/MiuiDisplayCloudController;->writeTagToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1720
    const-string v14, "description"

    invoke-direct {v1, v8, v14, v13}, Lcom/android/server/display/MiuiDisplayCloudController;->writeTagToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1722
    invoke-virtual {v10}, Lcom/android/server/display/thermalbrightnesscondition/config/ThermalConditionItem;->getLuxTemperaturePair()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_7e
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_fc

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/display/thermalbrightnesscondition/config/LuxTemperaturePair;

    .line 1723
    .local v15, "luxPair":Lcom/android/server/display/thermalbrightnesscondition/config/LuxTemperaturePair;
    invoke-interface {v8, v11, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1724
    invoke-virtual {v15}, Lcom/android/server/display/thermalbrightnesscondition/config/LuxTemperaturePair;->getMinInclusive()F

    move-result v16

    .line 1725
    .local v16, "minLuxInclusive":F
    invoke-virtual {v15}, Lcom/android/server/display/thermalbrightnesscondition/config/LuxTemperaturePair;->getMaxExclusive()F

    move-result v17

    .line 1726
    .local v17, "maxLuxExclusive":F
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-direct {v1, v8, v3, v11}, Lcom/android/server/display/MiuiDisplayCloudController;->writeTagToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1727
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-direct {v1, v8, v2, v11}, Lcom/android/server/display/MiuiDisplayCloudController;->writeTagToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1728
    invoke-virtual {v15}, Lcom/android/server/display/thermalbrightnesscondition/config/LuxTemperaturePair;->getTemperatureBrightnessPair()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_ab
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_ee

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/display/thermalbrightnesscondition/config/TemperatureBrightnessPair;

    .line 1729
    .local v18, "temperaturePair":Lcom/android/server/display/thermalbrightnesscondition/config/TemperatureBrightnessPair;
    move-object/from16 v19, v9

    const/4 v9, 0x0

    invoke-interface {v8, v9, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1730
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/display/thermalbrightnesscondition/config/TemperatureBrightnessPair;->getMinInclusive()F

    move-result v9

    .line 1731
    .local v9, "minTemperatureInclusive":F
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/display/thermalbrightnesscondition/config/TemperatureBrightnessPair;->getMaxExclusive()F

    move-result v20

    .line 1732
    .local v20, "maxTemperatureExclusive":F
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/display/thermalbrightnesscondition/config/TemperatureBrightnessPair;->getNit()F

    move-result v21

    .line 1733
    .local v21, "nit":F
    move/from16 v22, v9

    .end local v9  # "minTemperatureInclusive":F
    .local v22, "minTemperatureInclusive":F
    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-direct {v1, v8, v3, v9}, Lcom/android/server/display/MiuiDisplayCloudController;->writeTagToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1734
    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-direct {v1, v8, v2, v9}, Lcom/android/server/display/MiuiDisplayCloudController;->writeTagToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1735
    const-string/jumbo v9, "nit"

    move-object/from16 v23, v2

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v1, v8, v9, v2}, Lcom/android/server/display/MiuiDisplayCloudController;->writeTagToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1736
    const/4 v9, 0x0

    invoke-interface {v8, v9, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1737
    move-object/from16 v9, v19

    move-object/from16 v2, v23

    .end local v18  # "temperaturePair":Lcom/android/server/display/thermalbrightnesscondition/config/TemperatureBrightnessPair;
    .end local v20  # "maxTemperatureExclusive":F
    .end local v21  # "nit":F
    .end local v22  # "minTemperatureInclusive":F
    goto :goto_ab

    .line 1738
    :cond_ee
    move-object/from16 v23, v2

    move-object/from16 v19, v9

    const/4 v9, 0x0

    invoke-interface {v8, v9, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1739
    move-object/from16 v9, v19

    move-object/from16 v2, v23

    const/4 v11, 0x0

    .end local v15  # "luxPair":Lcom/android/server/display/thermalbrightnesscondition/config/LuxTemperaturePair;
    .end local v16  # "minLuxInclusive":F
    .end local v17  # "maxLuxExclusive":F
    goto :goto_7e

    .line 1740
    :cond_fc
    move-object/from16 v23, v2

    move-object/from16 v19, v9

    const/4 v9, 0x0

    invoke-interface {v8, v9, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1741
    move-object/from16 v9, v19

    move-object/from16 v2, v23

    const/4 v11, 0x0

    .end local v10  # "condition":Lcom/android/server/display/thermalbrightnesscondition/config/ThermalConditionItem;
    .end local v12  # "identifier":I
    .end local v13  # "description":Ljava/lang/String;
    goto/16 :goto_50

    .line 1742
    :cond_10b
    const/4 v9, 0x0

    invoke-interface {v8, v9, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1743
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1744
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->flush()V

    .line 1745
    iget-object v0, v1, Lcom/android/server/display/MiuiDisplayCloudController;->mThermalBrightnessCloudFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v7}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_11a
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_11a} :catch_11b

    .line 1749
    .end local v8  # "out":Lorg/xmlpull/v1/XmlSerializer;
    goto :goto_124

    .line 1746
    :catch_11b
    move-exception v0

    .line 1747
    .local v0, "e":Ljava/io/IOException;
    iget-object v2, v1, Lcom/android/server/display/MiuiDisplayCloudController;->mThermalBrightnessCloudFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v7}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1748
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1750
    .end local v0  # "e":Ljava/io/IOException;
    :goto_124
    return-void
.end method
