# classes.dex

.class public abstract Lcom/android/server/display/statistics/AggregationEvent;
.super Ljava/lang/Object;
.source "AggregationEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/statistics/AggregationEvent$AonFlareAggregationEvent;,
        Lcom/android/server/display/statistics/AggregationEvent$CbmAggregationEvent;,
        Lcom/android/server/display/statistics/AggregationEvent$ThermalAggregationEvent;,
        Lcom/android/server/display/statistics/AggregationEvent$AdvancedAggregationEvent;,
        Lcom/android/server/display/statistics/AggregationEvent$BrightnessAggregationEvent;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getCacheDataMap()Ljava/util/Map;
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
.end method

.method public abstract getQuotaEvents()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract toString()Ljava/lang/String;
.end method
