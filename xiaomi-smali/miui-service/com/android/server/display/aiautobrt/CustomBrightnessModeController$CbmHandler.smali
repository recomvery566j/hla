# classes.dex

.class final Lcom/android/server/display/aiautobrt/CustomBrightnessModeController$CbmHandler;
.super Landroid/os/Handler;
.source "CustomBrightnessModeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CbmHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;Landroid/os/Looper;)V
    .registers 4
    .param p2, "looper"  # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1058
    iput-object p1, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController$CbmHandler;->this$0:Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;

    .line 1059
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 1060
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"  # Landroid/os/Message;

    .line 1063
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_22

    goto :goto_21

    .line 1065
    :pswitch_6  #0x1
    const-string v0, "CbmController"

    const-string v1, "Predict timeout."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController$CbmHandler;->this$0:Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->-$$Nest$mupdateAutoBrightness(Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;F)V

    .line 1068
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController$CbmHandler;->this$0:Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;

    invoke-static {v0}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->-$$Nest$fgetmBrightnessDataProcessor(Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;)Lcom/android/server/display/statistics/BrightnessDataProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->aggregateModelPredictTimeoutTimes()V

    .line 1071
    :goto_21
    return-void

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_6  #00000001
    .end packed-switch
.end method
