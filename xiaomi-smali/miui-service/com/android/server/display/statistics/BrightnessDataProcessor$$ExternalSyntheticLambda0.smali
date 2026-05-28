# classes.dex

.class public final synthetic Lcom/android/server/display/statistics/BrightnessDataProcessor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/statistics/BrightnessDataProcessor;

.field public final synthetic f$1:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/statistics/BrightnessDataProcessor;F)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    iput p2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$$ExternalSyntheticLambda0;->f$1:F

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    iget v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$$ExternalSyntheticLambda0;->f$1:F

    invoke-static {v0, v1}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->$r8$lambda$XG6Nyrg7dT0h8UqdBKTqXrN85Bw(Lcom/android/server/display/statistics/BrightnessDataProcessor;F)V

    return-void
.end method
