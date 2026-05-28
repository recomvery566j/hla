# classes.dex

.class public Lcom/android/server/display/statistics/AggregationEvent$ThermalAggregationEvent;
.super Lcom/android/server/display/statistics/AggregationEvent;
.source "AggregationEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/statistics/AggregationEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThermalAggregationEvent"
.end annotation


# static fields
.field public static final EVENT_THERMAL_AVERAGE_TEMPERATURE:Ljava/lang/String; = "thermal_average_temperature"

.field public static final EVENT_THERMAL_BRIGHTNESS_RESTRICTED_ADJUST_HIGH_TIMES:Ljava/lang/String; = "thermal_brightness_restricted_adj_high_times"

.field public static final EVENT_THERMAL_BRIGHTNESS_RESTRICTED_USAGE:Ljava/lang/String; = "thermal_brightness_restricted_usage"

.field public static final EVENT_THERMAL_DETAIL_RESTRICTED_USAGE:Ljava/lang/String; = "thermal_detail_restricted_usage"

.field public static final EVENT_THERMAL_DETAIL_UNRESTRICTED_USAGE:Ljava/lang/String; = "thermal_detail_unrestricted_usage"

.field public static final EVENT_THERMAL_OUTDOOR_USAGE:Ljava/lang/String; = "thermal_outdoor_usage"

.field public static final EVENT_THERMAL_USAGE:Ljava/lang/String; = "thermal_usage"

.field public static final KEY_AVERAGE_VALUE:Ljava/lang/String; = "average"

.field public static final KEY_RESTRICTED_USAGE_VALUE:Ljava/lang/String; = "restricted_usage"

.field public static final KEY_UNRESTRICTED_USAGE_VALUE:Ljava/lang/String; = "unrestricted_usage"


# instance fields
.field private mThermalCacheDataMap:Ljava/util/Map;
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

.field private mThermalQuotaEvents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 156
    invoke-direct {p0}, Lcom/android/server/display/statistics/AggregationEvent;-><init>()V

    .line 178
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/statistics/AggregationEvent$ThermalAggregationEvent;->mThermalQuotaEvents:Ljava/util/Map;

    .line 179
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/statistics/AggregationEvent$ThermalAggregationEvent;->mThermalCacheDataMap:Ljava/util/Map;

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

    .line 193
    iget-object v0, p0, Lcom/android/server/display/statistics/AggregationEvent$ThermalAggregationEvent;->mThermalCacheDataMap:Ljava/util/Map;

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

    .line 188
    iget-object v0, p0, Lcom/android/server/display/statistics/AggregationEvent$ThermalAggregationEvent;->mThermalQuotaEvents:Ljava/util/Map;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 183
    iget-object v0, p0, Lcom/android/server/display/statistics/AggregationEvent$ThermalAggregationEvent;->mThermalQuotaEvents:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
