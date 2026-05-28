# classes.dex

.class public interface abstract Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine$EngineCallback;
.super Ljava/lang/Object;
.source "IndividualBrightnessEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "EngineCallback"
.end annotation


# virtual methods
.method public abstract onAbTestExperimentUpdated(II)V
.end method

.method public abstract onExperimentUpdated(IZ)V
.end method

.method public abstract onPredictFinished(FIF)V
.end method

.method public abstract onTrainIndicatorsFinished(Lcom/xiaomi/aiautobrt/IndividualTrainEvent;)V
.end method

.method public abstract onValidatedBrightness(F)V
.end method

.method public abstract validateModelMonotonicity()V
.end method
