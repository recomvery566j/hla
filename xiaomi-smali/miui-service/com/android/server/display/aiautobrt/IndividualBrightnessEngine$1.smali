# classes.dex

.class Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine$1;
.super Lcom/xiaomi/aiautobrt/IIndividualCallback$Stub;
.source "IndividualBrightnessEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;


# direct methods
.method public static synthetic $r8$lambda$1f5wfok4Z23vy4YfCLEIE81s9Xw(Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine$1;Lcom/xiaomi/aiautobrt/IndividualTrainEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine$1;->lambda$onTrainIndicatorsFinished$3(Lcom/xiaomi/aiautobrt/IndividualTrainEvent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EYaAoQDTeyq33zD77JgeuxYkkps(Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine$1;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine$1;->lambda$onAbTestExperimentUpdated$4(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$b-q4VBujuwbilVBcVi5a-jJPPhk(Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine$1;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine$1;->lambda$onTrainFinished$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$jWxK0HuOsx3gasKSuSm72Qv5hLo(Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine$1;IZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine$1;->lambda$onUpdateExperiment$2(IZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$zUsPZoSLcxBCS-42Ftik9PdEeqA(Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine$1;F)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine$1;->lambda$onPredictFinished$1(F)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 173
    iput-object p1, p0, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine$1;->this$0:Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;

    invoke-direct {p0}, Lcom/xiaomi/aiautobrt/IIndividualCallback$Stub;-><init>()V

    return-void
.end method

.method private synthetic lambda$onAbTestExperimentUpdated$4(II)V
    .registers 4
    .param p1, "expId"  # I
    .param p2, "flag"  # I

    .line 216
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine$1;->this$0:Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;

    invoke-static {v0}, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;->-$$Nest$fgetmEngineCallback(Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;)Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine$EngineCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine$EngineCallback;->onAbTestExperimentUpdated(II)V

    return-void
.end method

.method private synthetic lambda$onPredictFinished$1(F)V
    .registers 3
    .param p1, "brightness"  # F

    .line 189
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine$1;->this$0:Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;

    invoke-static {v0}, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;->-$$Nest$fgetmEngineCallback(Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;)Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine$EngineCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine$EngineCallback;->onValidatedBrightness(F)V

    return-void
.end method

.method private synthetic lambda$onTrainFinished$0()V
    .registers 3

    .line 178
    const-string v0, "CbmController-IndividualEngine"

    const-string v1, "Model train is finished."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine$1;->this$0:Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;->-$$Nest$fputmModelValidationInProgress(Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;Z)V

    .line 180
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine$1;->this$0:Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;

    invoke-static {v0}, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;->-$$Nest$fgetmEngineCallback(Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;)Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine$EngineCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine$EngineCallback;->validateModelMonotonicity()V

    .line 181
    return-void
.end method

.method private synthetic lambda$onTrainIndicatorsFinished$3(Lcom/xiaomi/aiautobrt/IndividualTrainEvent;)V
    .registers 3
    .param p1, "event"  # Lcom/xiaomi/aiautobrt/IndividualTrainEvent;

    .line 205
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine$1;->this$0:Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;

    invoke-static {v0}, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;->-$$Nest$fgetmEngineCallback(Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;)Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine$EngineCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine$EngineCallback;->onTrainIndicatorsFinished(Lcom/xiaomi/aiautobrt/IndividualTrainEvent;)V

    return-void
.end method

.method private synthetic lambda$onUpdateExperiment$2(IZ)V
    .registers 4
    .param p1, "expId"  # I
    .param p2, "enable"  # Z

    .line 195
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine$1;->this$0:Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;

    invoke-static {v0}, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;->-$$Nest$fgetmEngineCallback(Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;)Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine$EngineCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine$EngineCallback;->onExperimentUpdated(IZ)V

    return-void
.end method


# virtual methods
.method public onAbTestExperimentUpdated(II)V
    .registers 5
    .param p1, "expId"  # I
    .param p2, "flag"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine$1;->this$0:Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;

    invoke-static {v0}, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;->-$$Nest$fgetmHandler(Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine$1$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine$1$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine$1;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 217
    return-void
.end method

.method public onPredictFinished(FFF)V
    .registers 6
    .param p1, "lux"  # F
    .param p2, "appId"  # F
    .param p3, "brightness"  # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine$1;->this$0:Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;

    invoke-static {v0}, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;->-$$Nest$fgetmModelValidationInProgress(Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 189
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine$1;->this$0:Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;

    invoke-static {v0}, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;->-$$Nest$fgetmBgHandler(Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p3}, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine$1$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine$1;F)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 191
    :cond_16
    return-void
.end method

.method public onTrainFinished()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine$1;->this$0:Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;

    invoke-static {v0}, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;->-$$Nest$fgetmBgHandler(Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine$1$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine$1$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 182
    return-void
.end method

.method public onTrainIndicatorsFinished(Lcom/xiaomi/aiautobrt/IndividualTrainEvent;)V
    .registers 4
    .param p1, "event"  # Lcom/xiaomi/aiautobrt/IndividualTrainEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 205
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine$1;->this$0:Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;

    invoke-static {v0}, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;->-$$Nest$fgetmBgHandler(Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine$1;Lcom/xiaomi/aiautobrt/IndividualTrainEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 206
    return-void
.end method

.method public onUpdateExperiment(IZ)V
    .registers 5
    .param p1, "expId"  # I
    .param p2, "enable"  # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine$1;->this$0:Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;

    invoke-static {v0}, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;->-$$Nest$fgetmHandler(Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine$1$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine$1$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/display/aiautobrt/IndividualBrightnessEngine$1;IZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 196
    return-void
.end method
