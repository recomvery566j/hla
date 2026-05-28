# classes.dex

.class public final synthetic Lcom/android/server/display/aiautobrt/CbmStateTracker$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CbmStateTracker$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;

    invoke-virtual {v0}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->customCurveConditionsSatisfied()V

    return-void
.end method
