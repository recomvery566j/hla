# classes.dex

.class public Lcom/android/server/display/statistics/OneTrackUploaderHelper;
.super Ljava/lang/Object;
.source "OneTrackUploaderHelper.java"


# static fields
.field public static final ADVANCED_BRIGHTNESS_AGGREGATION_EVENT_NAME:Ljava/lang/String; = "advanced_brightness_aggregation"

.field public static final ADVANCED_EVENT_NAME:Ljava/lang/String; = "advanced_brightness"

.field public static final AON_FLARE_AGGREGATION_EVENT_NAME:Ljava/lang/String; = "aon_flare_aggregation"

.field private static final BRIGHTNESS_EVENT_APP_ID:Ljava/lang/String; = "31000000084"

.field public static final BRIGHTNESS_EVENT_NAME:Ljava/lang/String; = "brightness"

.field public static final BRIGHTNESS_QUOTA_AGGREGATION_EVENT_NAME:Ljava/lang/String; = "brightness_quota_aggregation"

.field public static final CUSTOM_BRIGHTNESS_AGGREGATION_EVENT_NAME:Ljava/lang/String; = "custom_brightness_aggregation"

.field private static final DEVICE_REGION:Ljava/lang/String;

.field private static final FLAG_NON_ANONYMOUS:I = 0x2

.field private static final FLAG_NOT_LIMITED_BY_USER_EXPERIENCE_PLAN:I = 0x1

.field private static final GLOBAL_BRIGHTNESS_EVENT_APP_ID:Ljava/lang/String; = "31000402000"

.field public static final IS_INTERNATIONAL_BUILD:Z

.field private static final KEY_ACC_VALUES:Ljava/lang/String; = "acc_values"

.field private static final KEY_ACTUAL_NIT:Ljava/lang/String; = "actual_nit"

.field private static final KEY_AFFECT_FACTOR_FLAG:Ljava/lang/String; = "affect_factor_flag"

.field private static final KEY_ALL_STATS_ENTRIES:Ljava/lang/String; = "all_stats_entries"

.field private static final KEY_AMBIENT_LUX:Ljava/lang/String; = "ambient_lux"

.field private static final KEY_AMBIENT_LUX_SPAN:Ljava/lang/String; = "ambient_lux_span"

.field private static final KEY_ASSIST_AMBIENT_LUX:Ljava/lang/String; = "assist_ambient_lux"

.field private static final KEY_AUTO_BRIGHTNESS_ANIMATION_DURATION:Ljava/lang/String; = "auto_brightness_animation_duration"

.field private static final KEY_BRIGHTNESS_CHANGED_STATUS:Ljava/lang/String; = "brightness_changed_state"

.field private static final KEY_BRIGHTNESS_RESTRICTED_ENABLE:Ljava/lang/String; = "brightness_restricted_enable"

.field private static final KEY_CURRENT_ANIMATE_VALUE:Ljava/lang/String; = "current_animate_value"

.field private static final KEY_CURRENT_USER_ID:Ljava/lang/String; = "current_user_id"

.field private static final KEY_DEFAULT_SPLINE_ERROR:Ljava/lang/String; = "default_spline_error"

.field private static final KEY_DISPLAY_GRAY_SCALE:Ljava/lang/String; = "display_gray_scale"

.field private static final KEY_EVENT_TYPE:Ljava/lang/String; = "type"

.field private static final KEY_EXP_ID:Ljava/lang/String; = "exp_id"

.field private static final KEY_EXTRA:Ljava/lang/String; = "extra"

.field private static final KEY_HDR_LAYER_ENABLE:Ljava/lang/String; = "hdr_layer_enable"

.field private static final KEY_IS_DEFAULT_CONFIG:Ljava/lang/String; = "is_default_config"

.field private static final KEY_IS_USE_LIGHT_FOV_OPTIMIZATION:Ljava/lang/String; = "is_use_light_fov_optimization"

.field private static final KEY_LAST_ASSIST_AMBIENT_LUX:Ljava/lang/String; = "last_assist_ambient_lux"

.field private static final KEY_LAST_MAIN_AMBIENT_LUX:Ljava/lang/String; = "last_main_ambient_lux"

.field private static final KEY_LONG_TERM_MODEL_SPLINE_ERROR:Ljava/lang/String; = "long_term_model_spline_error"

.field private static final KEY_LOW_POWER_MODE_FLAG:Ljava/lang/String; = "low_power_mode_flag"

.field private static final KEY_MAIN_AMBIENT_LUX:Ljava/lang/String; = "main_ambient_lux"

.field private static final KEY_ORIENTATION:Ljava/lang/String; = "orientation"

.field private static final KEY_ORIGINAL_NIT:Ljava/lang/String; = "original_nit"

.field private static final KEY_PREVIOUS_BRIGHTNESS:Ljava/lang/String; = "previous_brightness"

.field private static final KEY_PREVIOUS_BRIGHTNESS_SPAN:Ljava/lang/String; = "previous_brightness_span"

.field private static final KEY_SCREEN_BRIGHTNESS:Ljava/lang/String; = "screen_brightness"

.field private static final KEY_SCREEN_BRIGHTNESS_SPAN:Ljava/lang/String; = "screen_brightness_span"

.field private static final KEY_TARGET_ANIMATE_VALUE:Ljava/lang/String; = "target_animate_value"

.field private static final KEY_TIME_STAMP:Ljava/lang/String; = "time_stamp"

.field private static final KEY_TOP_PACKAGE:Ljava/lang/String; = "top_package"

.field private static final KEY_USER_BRIGHTNESS:Ljava/lang/String; = "user_brightness"

.field private static final KEY_USER_DATA_POINT:Ljava/lang/String; = "user_data_point"

.field private static final ONE_TRACK_ACTION:Ljava/lang/String; = "onetrack.action.TRACK_EVENT"

.field private static final PRIVATE_KEY_ID:Ljava/lang/String; = "29131b2dfb0955239023dee1bfa6ce97a543880a"

.field private static final PROJECT_ID:Ljava/lang/String; = "display-427003"

.field public static final THERMAL_AGGREGATION_EVENT_NAME:Ljava/lang/String; = "thermal_aggregation"

.field private static final TOPIC:Ljava/lang/String; = "ot_31000402000"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 65
    const-string/jumbo v0, "ro.miui.region"

    const-string v1, "CN"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/statistics/OneTrackUploaderHelper;->DEVICE_REGION:Ljava/lang/String;

    .line 68
    nop

    .line 69
    const-string/jumbo v0, "ro.product.mod_device"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_global"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/statistics/OneTrackUploaderHelper;->IS_INTERNATIONAL_BUILD:Z

    .line 68
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getBrightnessEventIntent(Landroid/content/Context;)Landroid/content/Intent;
    .registers 5
    .param p0, "context"  # Landroid/content/Context;

    .line 256
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "onetrack.action.TRACK_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 257
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.miui.analytics"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 258
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PACKAGE"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 259
    const-string v2, "APP_ID"

    const-string v3, "31000000084"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    return-object v0
.end method

.method private static getEventName(Ljava/lang/Integer;)Ljava/lang/String;
    .registers 3
    .param p0, "key"  # Ljava/lang/Integer;

    .line 227
    const/4 v0, 0x0

    .line 228
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_1c

    goto :goto_1b

    .line 242
    :pswitch_9  #0x4
    const-string/jumbo v0, "sunlight_adj_times"

    .line 243
    goto :goto_1b

    .line 239
    :pswitch_d  #0x3
    const-string/jumbo v0, "window_adj_times"

    .line 240
    goto :goto_1b

    .line 236
    :pswitch_11  #0x2
    const-string v0, "auto_manual_adj_times"

    .line 237
    goto :goto_1b

    .line 233
    :pswitch_14  #0x1
    const-string v0, "auto_adj_times"

    .line 234
    goto :goto_1b

    .line 230
    :pswitch_17  #0x0
    const-string/jumbo v0, "manual_adj_times"

    .line 231
    nop

    .line 247
    :goto_1b
    return-object v0

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_17  #00000000
        :pswitch_14  #00000001
        :pswitch_11  #00000002
        :pswitch_d  #00000003
        :pswitch_9  #00000004
    .end packed-switch
.end method

.method static synthetic lambda$reportAggregatedEventsToServer$0(Landroid/content/Intent;Ljava/lang/String;Lcom/android/server/display/statistics/AggregationEvent;)V
    .registers 4
    .param p0, "intent"  # Landroid/content/Intent;
    .param p1, "key"  # Ljava/lang/String;
    .param p2, "value"  # Lcom/android/server/display/statistics/AggregationEvent;

    .line 92
    invoke-virtual {p2}, Lcom/android/server/display/statistics/AggregationEvent;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    return-void
.end method

.method static synthetic lambda$reportAggregatedEventsToServer$1(Landroid/content/Intent;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .param p0, "intent"  # Landroid/content/Intent;
    .param p1, "key"  # Ljava/lang/Object;
    .param p2, "value"  # Ljava/lang/Object;

    .line 99
    if-eqz p1, :cond_11

    if-eqz p2, :cond_11

    .line 100
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Lcom/android/server/display/statistics/OneTrackUploaderHelper;->getEventName(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 102
    :cond_11
    return-void
.end method

.method public static reportAggregatedEventsToServer(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;I)V
    .registers 8
    .param p0, "context"  # Landroid/content/Context;
    .param p2, "eventName"  # Ljava/lang/String;
    .param p3, "expId"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/display/statistics/AggregationEvent;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 85
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/display/statistics/AggregationEvent;>;"
    sget-object v0, Lcom/android/server/display/statistics/OneTrackUploaderHelper;->DEVICE_REGION:Ljava/lang/String;

    const-string v1, "IN"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_49

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_11

    goto :goto_49

    .line 88
    :cond_11
    invoke-static {p0}, Lcom/android/server/display/statistics/OneTrackUploaderHelper;->getBrightnessEventIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 89
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "EVENT_NAME"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    const-string v1, "exp_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 91
    new-instance v1, Lcom/android/server/display/statistics/OneTrackUploaderHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/server/display/statistics/OneTrackUploaderHelper$$ExternalSyntheticLambda0;-><init>(Landroid/content/Intent;)V

    invoke-interface {p1, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 94
    const-string v1, "brightness_quota_aggregation"

    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 95
    const-string v1, "brightness_adj_times"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/statistics/AggregationEvent;

    .line 96
    .local v1, "event":Lcom/android/server/display/statistics/AggregationEvent;
    if-eqz v1, :cond_45

    .line 97
    invoke-virtual {v1}, Lcom/android/server/display/statistics/AggregationEvent;->getQuotaEvents()Ljava/util/Map;

    move-result-object v2

    .line 98
    .local v2, "quotaEvents":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    new-instance v3, Lcom/android/server/display/statistics/OneTrackUploaderHelper$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0}, Lcom/android/server/display/statistics/OneTrackUploaderHelper$$ExternalSyntheticLambda1;-><init>(Landroid/content/Intent;)V

    invoke-interface {v2, v3}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 105
    .end local v1  # "event":Lcom/android/server/display/statistics/AggregationEvent;
    .end local v2  # "quotaEvents":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_45
    invoke-static {p0, v0}, Lcom/android/server/display/statistics/OneTrackUploaderHelper;->startService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 106
    return-void

    .line 86
    .end local v0  # "intent":Landroid/content/Intent;
    :cond_49
    :goto_49
    return-void
.end method

.method public static reportAggregatedEventsToServerGlobal(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V
    .registers 7
    .param p0, "context"  # Landroid/content/Context;
    .param p2, "eventName"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/display/statistics/AggregationEvent;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 110
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/display/statistics/AggregationEvent;>;"
    sget-boolean v0, Lcom/android/server/display/statistics/OneTrackUploaderHelper;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_83

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_83

    .line 111
    const-string v0, "brightness_quota_aggregation"

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_83

    const-string/jumbo v0, "switch_stats"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    goto :goto_83

    .line 116
    :cond_1c
    :try_start_1c
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "onetrack.action.TRACK_EVENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 117
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.miui.analytics"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    const-string v2, "APP_ID"

    const-string v3, "31000402000"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    const-string v2, "EVENT_NAME"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    const-string v2, "PACKAGE"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    const-string v2, "PROJECT_ID"

    const-string v3, "display-427003"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    const-string v2, "TOPIC"

    const-string/jumbo v3, "ot_31000402000"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    const-string v2, "PRIVATE_KEY_ID"

    const-string v3, "29131b2dfb0955239023dee1bfa6ce97a543880a"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/statistics/AggregationEvent;

    invoke-virtual {v2}, Lcom/android/server/display/statistics/AggregationEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    invoke-static {p0, v1}, Lcom/android/server/display/statistics/OneTrackUploaderHelper;->startService(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_64} :catch_65

    .line 129
    .end local v1  # "intent":Landroid/content/Intent;
    goto :goto_82

    .line 127
    :catch_65
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to upload global brightness event! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BrightnessDataProcessor"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .end local v0  # "e":Ljava/lang/Exception;
    :goto_82
    return-void

    .line 112
    :cond_83
    :goto_83
    return-void
.end method

.method public static reportToOneTrack(Landroid/content/Context;Lcom/android/server/display/statistics/AdvancedEvent;)V
    .registers 4
    .param p0, "context"  # Landroid/content/Context;
    .param p1, "event"  # Lcom/android/server/display/statistics/AdvancedEvent;

    .line 142
    sget-object v0, Lcom/android/server/display/statistics/OneTrackUploaderHelper;->DEVICE_REGION:Ljava/lang/String;

    const-string v1, "IN"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 143
    return-void

    .line 145
    :cond_b
    invoke-static {p0}, Lcom/android/server/display/statistics/OneTrackUploaderHelper;->getBrightnessEventIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 146
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {v0, p1}, Lcom/android/server/display/statistics/OneTrackUploaderHelper;->updateAdvancedEventIntent(Landroid/content/Intent;Lcom/android/server/display/statistics/AdvancedEvent;)V

    .line 147
    invoke-static {p0, v0}, Lcom/android/server/display/statistics/OneTrackUploaderHelper;->startService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 148
    return-void
.end method

.method public static reportToOneTrack(Landroid/content/Context;Lcom/android/server/display/statistics/BrightnessEvent;)V
    .registers 4
    .param p0, "context"  # Landroid/content/Context;
    .param p1, "event"  # Lcom/android/server/display/statistics/BrightnessEvent;

    .line 133
    sget-object v0, Lcom/android/server/display/statistics/OneTrackUploaderHelper;->DEVICE_REGION:Ljava/lang/String;

    const-string v1, "IN"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 134
    return-void

    .line 136
    :cond_b
    invoke-static {p0}, Lcom/android/server/display/statistics/OneTrackUploaderHelper;->getBrightnessEventIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 137
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {v0, p1}, Lcom/android/server/display/statistics/OneTrackUploaderHelper;->updateBrightnessEventIntent(Landroid/content/Intent;Lcom/android/server/display/statistics/BrightnessEvent;)V

    .line 138
    invoke-static {p0, v0}, Lcom/android/server/display/statistics/OneTrackUploaderHelper;->startService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 139
    return-void
.end method

.method private static startService(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p0, "context"  # Landroid/content/Context;
    .param p1, "intent"  # Landroid/content/Intent;

    .line 157
    sget-boolean v0, Lcom/android/server/display/statistics/OneTrackUploaderHelper;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_8

    .line 158
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 161
    :cond_8
    :try_start_8
    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_e

    .line 165
    goto :goto_2b

    .line 162
    :catch_e
    move-exception v0

    .line 163
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to upload brightness event! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 164
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 163
    const-string v2, "BrightnessDataProcessor"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    .end local v0  # "e":Ljava/lang/Exception;
    :goto_2b
    return-void
.end method

.method public static updateAdvancedEventIntent(Landroid/content/Intent;Lcom/android/server/display/statistics/AdvancedEvent;)V
    .registers 6
    .param p0, "intent"  # Landroid/content/Intent;
    .param p1, "event"  # Lcom/android/server/display/statistics/AdvancedEvent;

    .line 212
    const-string v0, "EVENT_NAME"

    const-string v1, "advanced_brightness"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 213
    invoke-virtual {p1}, Lcom/android/server/display/statistics/AdvancedEvent;->getEventType()I

    move-result v1

    const-string/jumbo v2, "type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 214
    invoke-virtual {p1}, Lcom/android/server/display/statistics/AdvancedEvent;->getAutoBrightnessAnimationDuration()F

    move-result v1

    const-string v2, "auto_brightness_animation_duration"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    move-result-object v0

    .line 215
    invoke-virtual {p1}, Lcom/android/server/display/statistics/AdvancedEvent;->getCurrentAnimateValue()I

    move-result v1

    const-string v2, "current_animate_value"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 216
    invoke-virtual {p1}, Lcom/android/server/display/statistics/AdvancedEvent;->getTargetAnimateValue()I

    move-result v1

    const-string/jumbo v2, "target_animate_value"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 217
    invoke-virtual {p1}, Lcom/android/server/display/statistics/AdvancedEvent;->getUserBrightness()I

    move-result v1

    const-string/jumbo v2, "user_brightness"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 218
    invoke-virtual {p1}, Lcom/android/server/display/statistics/AdvancedEvent;->getLongTermModelSplineError()F

    move-result v1

    const-string/jumbo v2, "long_term_model_spline_error"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    move-result-object v0

    .line 219
    invoke-virtual {p1}, Lcom/android/server/display/statistics/AdvancedEvent;->getDefaultSplineError()F

    move-result v1

    const-string v2, "default_spline_error"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    move-result-object v0

    .line 220
    invoke-virtual {p1}, Lcom/android/server/display/statistics/AdvancedEvent;->getBrightnessChangedState()I

    move-result v1

    const-string v2, "brightness_changed_state"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 221
    invoke-virtual {p1}, Lcom/android/server/display/statistics/AdvancedEvent;->getExtra()Ljava/lang/String;

    move-result-object v1

    const-string v2, "extra"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 222
    invoke-virtual {p1}, Lcom/android/server/display/statistics/AdvancedEvent;->getTimeStamp()J

    move-result-wide v1

    const-string/jumbo v3, "time_stamp"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    .line 223
    invoke-virtual {p1}, Lcom/android/server/display/statistics/AdvancedEvent;->getBrightnessRestrictedEnable()Z

    move-result v1

    const-string v2, "brightness_restricted_enable"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 224
    return-void
.end method

.method public static updateBrightnessEventIntent(Landroid/content/Intent;Lcom/android/server/display/statistics/BrightnessEvent;)V
    .registers 6
    .param p0, "intent"  # Landroid/content/Intent;
    .param p1, "event"  # Lcom/android/server/display/statistics/BrightnessEvent;

    .line 174
    const-string v0, "EVENT_NAME"

    const-string v1, "brightness"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 175
    invoke-virtual {p1}, Lcom/android/server/display/statistics/BrightnessEvent;->getEventType()I

    move-result v1

    const-string/jumbo v2, "type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 176
    invoke-virtual {p1}, Lcom/android/server/display/statistics/BrightnessEvent;->getAmbientLux()F

    move-result v1

    const-string v2, "ambient_lux"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    move-result-object v0

    .line 177
    invoke-virtual {p1}, Lcom/android/server/display/statistics/BrightnessEvent;->getScreenBrightness()F

    move-result v1

    const-string/jumbo v2, "screen_brightness"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    move-result-object v0

    .line 178
    invoke-virtual {p1}, Lcom/android/server/display/statistics/BrightnessEvent;->getOrientation()I

    move-result v1

    const-string/jumbo v2, "orientation"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 179
    invoke-virtual {p1}, Lcom/android/server/display/statistics/BrightnessEvent;->getForegroundPackage()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "top_package"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 180
    invoke-virtual {p1}, Lcom/android/server/display/statistics/BrightnessEvent;->getTimeStamp()J

    move-result-wide v1

    const-string/jumbo v3, "time_stamp"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    .line 181
    invoke-virtual {p1}, Lcom/android/server/display/statistics/BrightnessEvent;->getExtra()Ljava/lang/String;

    move-result-object v1

    const-string v2, "extra"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 182
    invoke-virtual {p1}, Lcom/android/server/display/statistics/BrightnessEvent;->getPreviousBrightness()F

    move-result v1

    const-string/jumbo v2, "previous_brightness"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    move-result-object v0

    .line 183
    invoke-virtual {p1}, Lcom/android/server/display/statistics/BrightnessEvent;->isDefaultConfig()Z

    move-result v1

    const-string/jumbo v2, "is_default_config"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 184
    invoke-virtual {p1}, Lcom/android/server/display/statistics/BrightnessEvent;->getUserDataPoint()F

    move-result v1

    const-string/jumbo v2, "user_data_point"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    move-result-object v0

    .line 185
    invoke-virtual {p1}, Lcom/android/server/display/statistics/BrightnessEvent;->getLowPowerModeFlag()Z

    move-result v1

    const-string/jumbo v2, "low_power_mode_flag"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 186
    invoke-virtual {p1}, Lcom/android/server/display/statistics/BrightnessEvent;->getUserId()I

    move-result v1

    const-string v2, "current_user_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 187
    invoke-virtual {p1}, Lcom/android/server/display/statistics/BrightnessEvent;->getSwitchStats()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "all_stats_entries"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 188
    invoke-virtual {p1}, Lcom/android/server/display/statistics/BrightnessEvent;->getAffectFactorFlag()I

    move-result v1

    const-string v2, "affect_factor_flag"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 189
    invoke-virtual {p1}, Lcom/android/server/display/statistics/BrightnessEvent;->getCurBrightnessSpanIndex()I

    move-result v1

    const-string/jumbo v2, "screen_brightness_span"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 190
    invoke-virtual {p1}, Lcom/android/server/display/statistics/BrightnessEvent;->getPreBrightnessSpanIndex()I

    move-result v1

    const-string/jumbo v2, "previous_brightness_span"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 191
    invoke-virtual {p1}, Lcom/android/server/display/statistics/BrightnessEvent;->getLuxSpanIndex()I

    move-result v1

    const-string v2, "ambient_lux_span"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 192
    invoke-virtual {p1}, Lcom/android/server/display/statistics/BrightnessEvent;->getDisplayGrayScale()F

    move-result v1

    const-string v2, "display_gray_scale"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    move-result-object v0

    .line 193
    invoke-virtual {p1}, Lcom/android/server/display/statistics/BrightnessEvent;->getActualNit()F

    move-result v1

    const-string v2, "actual_nit"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    move-result-object v0

    .line 194
    invoke-virtual {p1}, Lcom/android/server/display/statistics/BrightnessEvent;->getOriginalNit()F

    move-result v1

    const-string/jumbo v2, "original_nit"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    move-result-object v0

    .line 195
    invoke-virtual {p1}, Lcom/android/server/display/statistics/BrightnessEvent;->getHdrLayerEnable()Z

    move-result v1

    const-string/jumbo v2, "hdr_layer_enable"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 196
    invoke-virtual {p1}, Lcom/android/server/display/statistics/BrightnessEvent;->getBrightnessRestrictedEnable()Z

    move-result v1

    const-string v2, "brightness_restricted_enable"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 197
    invoke-virtual {p1}, Lcom/android/server/display/statistics/BrightnessEvent;->getMainAmbientLux()F

    move-result v1

    const-string/jumbo v2, "main_ambient_lux"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    move-result-object v0

    .line 198
    invoke-virtual {p1}, Lcom/android/server/display/statistics/BrightnessEvent;->getAssistAmbientLux()F

    move-result v1

    const-string v2, "assist_ambient_lux"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    move-result-object v0

    .line 199
    invoke-virtual {p1}, Lcom/android/server/display/statistics/BrightnessEvent;->getLastMainAmbientLux()F

    move-result v1

    const-string/jumbo v2, "last_main_ambient_lux"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    move-result-object v0

    .line 200
    invoke-virtual {p1}, Lcom/android/server/display/statistics/BrightnessEvent;->getLastAssistAmbientLux()F

    move-result v1

    const-string/jumbo v2, "last_assist_ambient_lux"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    move-result-object v0

    .line 201
    invoke-virtual {p1}, Lcom/android/server/display/statistics/BrightnessEvent;->getAccValues()[F

    move-result-object v1

    const-string v2, "acc_values"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[F)Landroid/content/Intent;

    move-result-object v0

    .line 202
    invoke-virtual {p1}, Lcom/android/server/display/statistics/BrightnessEvent;->getIsUseLightFovOptimization()Z

    move-result v1

    const-string/jumbo v2, "is_use_light_fov_optimization"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 203
    invoke-virtual {p1}, Lcom/android/server/display/statistics/BrightnessEvent;->getExpId()I

    move-result v1

    const-string v2, "exp_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 204
    return-void
.end method
