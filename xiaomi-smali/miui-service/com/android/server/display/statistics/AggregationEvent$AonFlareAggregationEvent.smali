# classes.dex

.class public Lcom/android/server/display/statistics/AggregationEvent$AonFlareAggregationEvent;
.super Lcom/android/server/display/statistics/AggregationEvent;
.source "AggregationEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/statistics/AggregationEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AonFlareAggregationEvent"
.end annotation


# static fields
.field public static final EVENT_FLARE_MANUAL_ADJUST_TIMES:Ljava/lang/String; = "flare_manual_adjust_times"

.field public static final EVENT_FLARE_SCENE_CHECK_TIMES:Ljava/lang/String; = "flare_scene_check_times"

.field public static final EVENT_FLARE_SUPPRESS_DARKEN_HOUR:Ljava/lang/String; = "flare_suppress_darken_hour"

.field public static final EVENT_FLARE_SUPPRESS_DARKEN_LUX_SPAN:Ljava/lang/String; = "flare_suppress_darken_lux_span"

.field public static final EVENT_FLARE_USER_RESET_BRIGHTNESS_MODE_TIMES:Ljava/lang/String; = "flare_user_reset_brightness_mode_times"

.field public static final KEY_FLARE_NOT_SUPPRESS_DARKEN_MANUAL_ADJUST_DECREASE_TIMES:Ljava/lang/String; = "3"

.field public static final KEY_FLARE_NOT_SUPPRESS_DARKEN_MANUAL_ADJUST_INCREASE_TIMES:Ljava/lang/String; = "4"

.field public static final KEY_FLARE_NOT_SUPPRESS_DARKEN_USER_RESET_BRIGHTNESS_MODE_TIMES:Ljava/lang/String; = "2"

.field public static final KEY_FLARE_SUPPRESS_DARKEN_MANUAL_ADJUST_DECREASE_TIMES:Ljava/lang/String; = "1"

.field public static final KEY_FLARE_SUPPRESS_DARKEN_MANUAL_ADJUST_INCREASE_TIMES:Ljava/lang/String; = "2"

.field public static final KEY_FLARE_SUPPRESS_DARKEN_USER_RESET_BRIGHTNESS_MODE_TIMES:Ljava/lang/String; = "1"

.field public static final KEY_IN_FLARE_SCENE_TIMES:Ljava/lang/String; = "1"

.field public static final KEY_NOT_IN_FLARE_SCENE_TIMES:Ljava/lang/String; = "2"

.field public static final KEY_NOT_REPORT_IN_TIME_TIMES:Ljava/lang/String; = "3"


# instance fields
.field private mAonFlareQuotaEvents:Ljava/util/Map;
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

    .line 318
    invoke-direct {p0}, Lcom/android/server/display/statistics/AggregationEvent;-><init>()V

    .line 347
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/statistics/AggregationEvent$AonFlareAggregationEvent;->mAonFlareQuotaEvents:Ljava/util/Map;

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

    .line 361
    const/4 v0, 0x0

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

    .line 356
    iget-object v0, p0, Lcom/android/server/display/statistics/AggregationEvent$AonFlareAggregationEvent;->mAonFlareQuotaEvents:Ljava/util/Map;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 351
    iget-object v0, p0, Lcom/android/server/display/statistics/AggregationEvent$AonFlareAggregationEvent;->mAonFlareQuotaEvents:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
