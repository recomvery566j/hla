# classes.dex

.class public Lcom/android/server/display/statistics/AggregationEvent$AdvancedAggregationEvent;
.super Lcom/android/server/display/statistics/AggregationEvent;
.source "AggregationEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/statistics/AggregationEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdvancedAggregationEvent"
.end annotation


# static fields
.field public static final EVENT_INTERRUPT_ANIMATION_TIMES:Ljava/lang/String; = "interrupt_animation_times"

.field public static final EVENT_RESET_BRIGHTNESS_MODE_TIMES:Ljava/lang/String; = "reset_brightness_mode_times"

.field public static final KEY_INTERRUPT_TIMES:Ljava/lang/String; = "interrupt_times"

.field public static final KEY_RESET_TIMES:Ljava/lang/String; = "reset_times"


# instance fields
.field private mAdvancedQuotaEvents:Ljava/util/Map;
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

    .line 127
    invoke-direct {p0}, Lcom/android/server/display/statistics/AggregationEvent;-><init>()V

    .line 138
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/statistics/AggregationEvent$AdvancedAggregationEvent;->mAdvancedQuotaEvents:Ljava/util/Map;

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

    .line 152
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

    .line 147
    iget-object v0, p0, Lcom/android/server/display/statistics/AggregationEvent$AdvancedAggregationEvent;->mAdvancedQuotaEvents:Ljava/util/Map;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 142
    iget-object v0, p0, Lcom/android/server/display/statistics/AggregationEvent$AdvancedAggregationEvent;->mAdvancedQuotaEvents:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
