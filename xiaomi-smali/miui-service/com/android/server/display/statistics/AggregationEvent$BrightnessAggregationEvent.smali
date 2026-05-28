# classes.dex

.class public Lcom/android/server/display/statistics/AggregationEvent$BrightnessAggregationEvent;
.super Lcom/android/server/display/statistics/AggregationEvent;
.source "AggregationEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/statistics/AggregationEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BrightnessAggregationEvent"
.end annotation


# static fields
.field public static final EVENT_AUTO_ADJUST_TIMES:Ljava/lang/String; = "auto_adj_times"

.field public static final EVENT_AUTO_MANUAL_ADJUST_APP_HIGH_AVG_NITS:Ljava/lang/String; = "auto_manual_adj_app_high_avg_nits"

.field public static final EVENT_AUTO_MANUAL_ADJUST_APP_HIGH_TIMES:Ljava/lang/String; = "auto_manual_adj_high_app_times"

.field public static final EVENT_AUTO_MANUAL_ADJUST_APP_LOW_AVG_NITS:Ljava/lang/String; = "auto_manual_adj_app_low_avg_nits"

.field public static final EVENT_AUTO_MANUAL_ADJUST_APP_LOW_TIMES:Ljava/lang/String; = "auto_manual_adj_low_app_times"

.field public static final EVENT_AUTO_MANUAL_ADJUST_APP_RANKING:Ljava/lang/String; = "auto_manual_adj_app_ranking"

.field public static final EVENT_AUTO_MANUAL_ADJUST_AVG_NITS_LUX_SPAN:Ljava/lang/String; = "auto_manual_adj_avg_nits_lux_span"

.field public static final EVENT_AUTO_MANUAL_ADJUST_DISPLAY_MODE:Ljava/lang/String; = "auto_manual_adj_display_mode"

.field public static final EVENT_AUTO_MANUAL_ADJUST_HIGH_AVG_NITS:Ljava/lang/String; = "auto_manual_adj_high_avg_nits"

.field public static final EVENT_AUTO_MANUAL_ADJUST_HIGH_LUX_SPAN:Ljava/lang/String; = "auto_manual_adj_high_lux_span"

.field public static final EVENT_AUTO_MANUAL_ADJUST_LOW_AVG_NITS:Ljava/lang/String; = "auto_manual_adj_low_avg_nits"

.field public static final EVENT_AUTO_MANUAL_ADJUST_LOW_LUX_SPAN:Ljava/lang/String; = "auto_manual_adj_low_lux_span"

.field public static final EVENT_AUTO_MANUAL_ADJUST_LUX_SPAN:Ljava/lang/String; = "auto_manual_adj_lux_span"

.field public static final EVENT_AUTO_MANUAL_ADJUST_TIMES:Ljava/lang/String; = "auto_manual_adj_times"

.field public static final EVENT_AUTO_RESET_CURVE:Ljava/lang/String; = "auto_reset_curve"

.field public static final EVENT_AVERAGE_BRIGHTNESS:Ljava/lang/String; = "average_brightness"

.field public static final EVENT_BRIGHTNESS_ADJUST_TIMES:Ljava/lang/String; = "brightness_adj_times"

.field public static final EVENT_BRIGHTNESS_USAGE:Ljava/lang/String; = "brightness_usage"

.field public static final EVENT_DISPLAY_ID:Ljava/lang/String; = "display_id"

.field public static final EVENT_FULL_AOD_BRIGHTNESS_SPAN_USAGE:Ljava/lang/String; = "full_aod_brightness_span_usage"

.field public static final EVENT_FULL_AOD_LUX_SPAN_USAGE:Ljava/lang/String; = "full_aod_lux_span_usage"

.field public static final EVENT_HBM_USAGE:Ljava/lang/String; = "hbm_usage"

.field public static final EVENT_HDR_USAGE:Ljava/lang/String; = "hdr_usage"

.field public static final EVENT_HDR_USAGE_APP_USAGE:Ljava/lang/String; = "hdr_usage_app_usage"

.field public static final EVENT_LUX_SPAN_USAGE:Ljava/lang/String; = "lux_span_usage"

.field public static final EVENT_MANUAL_ADJUST_TIMES:Ljava/lang/String; = "manual_adj_times"

.field public static final EVENT_OVERRIDE_ADJUST_APP_RANKING:Ljava/lang/String; = "override_adj_app_ranking"

.field public static final EVENT_OVER_1060NIT_HDR_LONGEST_TIME:Ljava/lang/String; = "over_1060nit_hdr_longest_time"

.field public static final EVENT_OVER_1060NIT_SDR_LONGEST_TIME:Ljava/lang/String; = "over_1060nit_sdr_longest_time"

.field public static final EVENT_OVER_1060NIT_TIMES:Ljava/lang/String; = "over_1060nit_times"

.field public static final EVENT_OVER_1060NIT_USAGE:Ljava/lang/String; = "over_1060nit_usage"

.field public static final EVENT_OVER_20000LUX_TOP5_APP_ALL_USAGE:Ljava/lang/String; = "over_20000lux_top5_app_all_usage"

.field public static final EVENT_OVER_20000LUX_TOP5_APP_SINGLE_LONGEST_USAGE:Ljava/lang/String; = "over_20000lux_top5_app_single_longest_usage"

.field public static final EVENT_OVER_20000LUX_TOP5_APP_TIMES_USAGE:Ljava/lang/String; = "over_20000lux_top5_app_times_usage"

.field public static final EVENT_SUNLIGHT_ADJUST_TIMES:Ljava/lang/String; = "sunlight_adj_times"

.field public static final EVENT_SWITCH_STATS:Ljava/lang/String; = "switch_stats"

.field public static final EVENT_WINDOW_ADJUST_TIMES:Ljava/lang/String; = "window_adj_times"

.field public static final KEY_EVENT_AUTO_RESET_CURVE_DETAILS:Ljava/lang/String; = "event_auto_reset_curve_details"

.field public static final KEY_SWITCH_STATS_DETAILS:Ljava/lang/String; = "switch_stats_details"

.field public static final KEY_USAGE_VALUE:Ljava/lang/String; = "usage_value"

.field public static final RESET_BELOW_DOWN:Ljava/lang/String; = "reset_below_down"

.field public static final RESET_BELOW_UP:Ljava/lang/String; = "reset_below_up"

.field public static final RESET_DEFAULT_DOWN:Ljava/lang/String; = "reset_default_down"

.field public static final RESET_DEFAULT_UP:Ljava/lang/String; = "reset_default_up"

.field public static final RESET_EQUAL_DOWN:Ljava/lang/String; = "reset_equal_down"

.field public static final RESET_EQUAL_UP:Ljava/lang/String; = "reset_equal_up"

.field public static final RESET_OVER_DOWN:Ljava/lang/String; = "reset_over_down"

.field public static final RESET_OVER_UP:Ljava/lang/String; = "reset_over_up"


# instance fields
.field private mBrightnessQuotaEvents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mCacheDataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 23
    invoke-direct {p0}, Lcom/android/server/display/statistics/AggregationEvent;-><init>()V

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/statistics/AggregationEvent$BrightnessAggregationEvent;->mBrightnessQuotaEvents:Ljava/util/Map;

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/statistics/AggregationEvent$BrightnessAggregationEvent;->mCacheDataMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getCacheDataMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/android/server/display/statistics/AggregationEvent$BrightnessAggregationEvent;->mCacheDataMap:Ljava/util/Map;

    return-object v0
.end method

.method public getQuotaEvents()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/android/server/display/statistics/AggregationEvent$BrightnessAggregationEvent;->mBrightnessQuotaEvents:Ljava/util/Map;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 114
    iget-object v0, p0, Lcom/android/server/display/statistics/AggregationEvent$BrightnessAggregationEvent;->mBrightnessQuotaEvents:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
