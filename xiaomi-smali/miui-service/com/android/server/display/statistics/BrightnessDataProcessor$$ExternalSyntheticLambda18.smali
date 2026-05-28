# classes.dex

.class public final synthetic Lcom/android/server/display/statistics/BrightnessDataProcessor$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/statistics/BrightnessDataProcessor;

.field public final synthetic f$1:F

.field public final synthetic f$2:F

.field public final synthetic f$3:I

.field public final synthetic f$4:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/statistics/BrightnessDataProcessor;FFIF)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$$ExternalSyntheticLambda18;->f$0:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    iput p2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$$ExternalSyntheticLambda18;->f$1:F

    iput p3, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$$ExternalSyntheticLambda18;->f$2:F

    iput p4, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$$ExternalSyntheticLambda18;->f$3:I

    iput p5, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$$ExternalSyntheticLambda18;->f$4:F

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 0
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$$ExternalSyntheticLambda18;->f$0:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    iget v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$$ExternalSyntheticLambda18;->f$1:F

    iget v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$$ExternalSyntheticLambda18;->f$2:F

    iget v3, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$$ExternalSyntheticLambda18;->f$3:I

    iget v4, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$$ExternalSyntheticLambda18;->f$4:F

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->$r8$lambda$eKFUvXj2uJU7qVml6gTGqRLN3WM(Lcom/android/server/display/statistics/BrightnessDataProcessor;FFIF)V

    return-void
.end method
