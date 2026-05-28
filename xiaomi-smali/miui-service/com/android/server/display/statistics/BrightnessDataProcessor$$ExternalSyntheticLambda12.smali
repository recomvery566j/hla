# classes.dex

.class public final synthetic Lcom/android/server/display/statistics/BrightnessDataProcessor$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/statistics/BrightnessDataProcessor;

.field public final synthetic f$1:Z

.field public final synthetic f$2:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/statistics/BrightnessDataProcessor;ZF)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$$ExternalSyntheticLambda12;->f$0:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    iput-boolean p2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$$ExternalSyntheticLambda12;->f$1:Z

    iput p3, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$$ExternalSyntheticLambda12;->f$2:F

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$$ExternalSyntheticLambda12;->f$0:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    iget-boolean v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$$ExternalSyntheticLambda12;->f$1:Z

    iget v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$$ExternalSyntheticLambda12;->f$2:F

    invoke-static {v0, v1, v2}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->$r8$lambda$OyMxh1-pv5DKB3AzB24MV3ucgxI(Lcom/android/server/display/statistics/BrightnessDataProcessor;ZF)V

    return-void
.end method
