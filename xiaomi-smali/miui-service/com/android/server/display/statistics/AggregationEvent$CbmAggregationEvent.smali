# classes.dex

.class public Lcom/android/server/display/statistics/AggregationEvent$CbmAggregationEvent;
.super Lcom/android/server/display/statistics/AggregationEvent;
.source "AggregationEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/statistics/AggregationEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CbmAggregationEvent"
.end annotation


# static fields
.field protected static final EVENT_CUSTOM_BRIGHTNESS_ADJUST:Ljava/lang/String; = "custom_brightness_adj"

.field protected static final EVENT_CUSTOM_BRIGHTNESS_USAGE:Ljava/lang/String; = "custom_brightness_usage"

.field protected static final EVENT_INDIVIDUAL_MODEL_PREDICT:Ljava/lang/String; = "individual_model_predict"

.field protected static final EVENT_INDIVIDUAL_MODEL_TRAIN:Ljava/lang/String; = "individual_model_train"

.field protected static final KEY_CURRENT_INDIVIDUAL_MODEL_MAE:Ljava/lang/String; = "cur_train_mae"

.field protected static final KEY_CURRENT_INDIVIDUAL_MODEL_MAPE:Ljava/lang/String; = "cur_train_mape"

.field private static final KEY_CUSTOM_CURVE_AUTO_BRIGHTNESS_ADJUST:Ljava/lang/String; = "custom_curve_auto_brt_adj"

.field private static final KEY_CUSTOM_CURVE_AUTO_BRIGHTNESS_MANUAL_ADJUST:Ljava/lang/String; = "custom_curve_auto_brt_manual_adj"

.field private static final KEY_CUSTOM_CURVE_DURATION:Ljava/lang/String; = "custom_curve_duration"

.field private static final KEY_DEFAULT_AUTO_BRIGHTNESS_ADJUST:Ljava/lang/String; = "default_auto_brt_adj"

.field private static final KEY_DEFAULT_AUTO_BRIGHTNESS_MANUAL_ADJUST:Ljava/lang/String; = "default_auto_brt_manual_adj"

.field private static final KEY_DEFAULT_AUTO_DURATION:Ljava/lang/String; = "default_auto_duration"

.field private static final KEY_INDIVIDUAL_MODEL_AUTO_BRIGHTNESS_ADJUST:Ljava/lang/String; = "model_auto_brt_adj"

.field private static final KEY_INDIVIDUAL_MODEL_AUTO_BRIGHTNESS_MANUAL_ADJUST:Ljava/lang/String; = "model_auto_brt_manual_adj"

.field private static final KEY_INDIVIDUAL_MODEL_DURATION:Ljava/lang/String; = "model_duration"

.field protected static final KEY_INDIVIDUAL_MODEL_PREDICT_AVERAGE_DURATION:Ljava/lang/String; = "model_predict_average_duration"

.field protected static final KEY_INDIVIDUAL_MODEL_PREDICT_TIMEOUT_COUNT:Ljava/lang/String; = "model_predict_timeout_count"

.field protected static final KEY_INDIVIDUAL_MODEL_TRAIN_COUNT:Ljava/lang/String; = "model_train_count"

.field protected static final KEY_INDIVIDUAL_MODEL_TRAIN_INDICATORS:Ljava/lang/String; = "model_train_indicators"

.field protected static final KEY_INDIVIDUAL_MODEL_TRAIN_LOSS:Ljava/lang/String; = "train_loss"

.field protected static final KEY_INDIVIDUAL_MODEL_TRAIN_SAMPLE_NUM:Ljava/lang/String; = "sample_num"

.field protected static final KEY_INDIVIDUAL_MODEL_TRAIN_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field protected static final KEY_INDIVIDUAL_MODEL_VALIDATION_FAIL_COUNT:Ljava/lang/String; = "model_validation_fail_count"

.field protected static final KEY_INDIVIDUAL_MODEL_VALIDATION_SUCCESS_COUNT:Ljava/lang/String; = "model_validation_success_count"

.field protected static final KEY_PREVIOUS_INDIVIDUAL_MODEL_MAE:Ljava/lang/String; = "pre_train_mae"

.field protected static final KEY_PREVIOUS_INDIVIDUAL_MODEL_MAPE:Ljava/lang/String; = "pre_train_mape"


# instance fields
.field private final mCbmCacheDataMap:Ljava/util/Map;
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

.field private final mCbmQuotaEvents:Ljava/util/Map;
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

    .line 201
    invoke-direct {p0}, Lcom/android/server/display/statistics/AggregationEvent;-><init>()V

    .line 258
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/statistics/AggregationEvent$CbmAggregationEvent;->mCbmQuotaEvents:Ljava/util/Map;

    .line 260
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/statistics/AggregationEvent$CbmAggregationEvent;->mCbmCacheDataMap:Ljava/util/Map;

    return-void
.end method

.method public static getCbmAutoAdjustQuotaName(IZ)Ljava/lang/String;
    .registers 3
    .param p0, "cbmState"  # I
    .param p1, "isManuallySet"  # Z

    .line 279
    packed-switch p0, :pswitch_data_20

    .line 290
    if-eqz p1, :cond_1c

    const-string v0, "default_auto_brt_manual_adj"

    goto :goto_1e

    .line 285
    :pswitch_8  #0x2
    if-eqz p1, :cond_e

    const-string/jumbo v0, "model_auto_brt_manual_adj"

    goto :goto_11

    .line 286
    :cond_e
    const-string/jumbo v0, "model_auto_brt_adj"

    :goto_11
    nop

    .line 287
    .local v0, "name":Ljava/lang/String;
    goto :goto_1f

    .line 281
    .end local v0  # "name":Ljava/lang/String;
    :pswitch_13  #0x1
    if-eqz p1, :cond_18

    const-string v0, "custom_curve_auto_brt_manual_adj"

    goto :goto_1a

    .line 282
    :cond_18
    const-string v0, "custom_curve_auto_brt_adj"

    :goto_1a
    nop

    .line 283
    .restart local v0  # "name":Ljava/lang/String;
    goto :goto_1f

    .line 291
    .end local v0  # "name":Ljava/lang/String;
    :cond_1c
    const-string v0, "default_auto_brt_adj"

    :goto_1e
    nop

    .line 294
    .restart local v0  # "name":Ljava/lang/String;
    :goto_1f
    return-object v0

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_13  #00000001
        :pswitch_8  #00000002
    .end packed-switch
.end method

.method public static getCbmBrtUsageQuotaName(I)Ljava/lang/String;
    .registers 2
    .param p0, "cbmState"  # I

    .line 299
    packed-switch p0, :pswitch_data_e

    .line 308
    const-string v0, "default_auto_duration"

    .local v0, "name":Ljava/lang/String;
    goto :goto_d

    .line 304
    .end local v0  # "name":Ljava/lang/String;
    :pswitch_6  #0x2
    const-string/jumbo v0, "model_duration"

    .line 305
    .restart local v0  # "name":Ljava/lang/String;
    goto :goto_d

    .line 301
    .end local v0  # "name":Ljava/lang/String;
    :pswitch_a  #0x1
    const-string v0, "custom_curve_duration"

    .line 302
    .restart local v0  # "name":Ljava/lang/String;
    nop

    .line 311
    :goto_d
    return-object v0

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_a  #00000001
        :pswitch_6  #00000002
    .end packed-switch
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

    .line 274
    iget-object v0, p0, Lcom/android/server/display/statistics/AggregationEvent$CbmAggregationEvent;->mCbmCacheDataMap:Ljava/util/Map;

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

    .line 269
    iget-object v0, p0, Lcom/android/server/display/statistics/AggregationEvent$CbmAggregationEvent;->mCbmQuotaEvents:Ljava/util/Map;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 264
    iget-object v0, p0, Lcom/android/server/display/statistics/AggregationEvent$CbmAggregationEvent;->mCbmQuotaEvents:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
