# classes.dex

.class final Lcom/android/server/display/DisplayPowerControllerImpl$DisplayPowerControllerImplHandler;
.super Landroid/os/Handler;
.source "DisplayPowerControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DisplayPowerControllerImplHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayPowerControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayPowerControllerImpl;Landroid/os/Looper;)V
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

    .line 1986
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerControllerImpl$DisplayPowerControllerImplHandler;->this$0:Lcom/android/server/display/DisplayPowerControllerImpl;

    .line 1987
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 1988
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"  # Landroid/os/Message;

    .line 1992
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const-string v2, "DisplayPowerControllerImpl"

    packed-switch v0, :pswitch_data_d4

    goto/16 :goto_d3

    .line 2000
    :pswitch_a  #0xa
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl$DisplayPowerControllerImplHandler;->this$0:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "current_gray_scale_for_ipa"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/display/DisplayPowerControllerImpl;->-$$Nest$msetCurrentGrayScaleForIPA(Lcom/android/server/display/DisplayPowerControllerImpl;F)V

    .line 2001
    goto/16 :goto_d3

    .line 2028
    :pswitch_1b  #0x9
    const-string v0, "Wait screen off animator timeout. Skip waiting"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2029
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl$DisplayPowerControllerImplHandler;->this$0:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-static {v0, v1}, Lcom/android/server/display/DisplayPowerControllerImpl;->-$$Nest$fputmStopWaitingScreenOffAnimator(Lcom/android/server/display/DisplayPowerControllerImpl;Z)V

    .line 2030
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl$DisplayPowerControllerImplHandler;->this$0:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerControllerImpl;->-$$Nest$fgetmDisplayPowerController(Lcom/android/server/display/DisplayPowerControllerImpl;)Lcom/android/server/display/DisplayPowerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerController;->updateBrightness()V

    .line 2031
    goto/16 :goto_d3

    .line 2022
    :pswitch_30  #0x8
    const-string v0, "Wait screen off animator complete"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2023
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl$DisplayPowerControllerImplHandler;->this$0:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-static {v0, v1}, Lcom/android/server/display/DisplayPowerControllerImpl;->-$$Nest$fputmStopWaitingScreenOffAnimator(Lcom/android/server/display/DisplayPowerControllerImpl;Z)V

    .line 2024
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl$DisplayPowerControllerImplHandler;->this$0:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerControllerImpl;->-$$Nest$fgetmHandler(Lcom/android/server/display/DisplayPowerControllerImpl;)Lcom/android/server/display/DisplayPowerControllerImpl$DisplayPowerControllerImplHandler;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerControllerImpl$DisplayPowerControllerImplHandler;->removeMessages(I)V

    .line 2025
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl$DisplayPowerControllerImplHandler;->this$0:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerControllerImpl;->-$$Nest$fgetmDisplayPowerController(Lcom/android/server/display/DisplayPowerControllerImpl;)Lcom/android/server/display/DisplayPowerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerController;->updateBrightness()V

    .line 2026
    goto/16 :goto_d3

    .line 2016
    :pswitch_50  #0x7
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl$DisplayPowerControllerImplHandler;->this$0:Lcom/android/server/display/DisplayPowerControllerImpl;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/display/DisplayPowerControllerImpl;->-$$Nest$fputmOrientation(Lcom/android/server/display/DisplayPowerControllerImpl;I)V

    .line 2017
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl$DisplayPowerControllerImplHandler;->this$0:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerControllerImpl;->-$$Nest$fgetmCbmController(Lcom/android/server/display/DisplayPowerControllerImpl;)Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;

    move-result-object v0

    if-eqz v0, :cond_d3

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl$DisplayPowerControllerImplHandler;->this$0:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerControllerImpl;->-$$Nest$fgetmAutoBrightnessEnable(Lcom/android/server/display/DisplayPowerControllerImpl;)Z

    move-result v0

    if-eqz v0, :cond_d3

    .line 2018
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl$DisplayPowerControllerImplHandler;->this$0:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerControllerImpl;->-$$Nest$fgetmCbmController(Lcom/android/server/display/DisplayPowerControllerImpl;)Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl$DisplayPowerControllerImplHandler;->this$0:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerControllerImpl;->-$$Nest$fgetmForegroundAppPackageName(Lcom/android/server/display/DisplayPowerControllerImpl;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl$DisplayPowerControllerImplHandler;->this$0:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-static {v2}, Lcom/android/server/display/DisplayPowerControllerImpl;->-$$Nest$fgetmOrientation(Lcom/android/server/display/DisplayPowerControllerImpl;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->updateCustomSceneState(Ljava/lang/String;I)V

    goto :goto_d3

    .line 1997
    :pswitch_83  #0x6
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl$DisplayPowerControllerImplHandler;->this$0:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "current_gray_scale"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/display/DisplayPowerControllerImpl;->-$$Nest$msetCurrentGrayScale(Lcom/android/server/display/DisplayPowerControllerImpl;F)V

    .line 1998
    goto :goto_d3

    .line 2013
    :pswitch_93  #0x5
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl$DisplayPowerControllerImplHandler;->this$0:Lcom/android/server/display/DisplayPowerControllerImpl;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/display/DisplayPowerControllerImpl;->-$$Nest$mupdateThermalBrightness(Lcom/android/server/display/DisplayPowerControllerImpl;F)V

    .line 2014
    goto :goto_d3

    .line 2006
    :pswitch_a5  #0x4
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl$DisplayPowerControllerImplHandler;->this$0:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerControllerImpl;->-$$Nest$mupdateForegroundApp(Lcom/android/server/display/DisplayPowerControllerImpl;)V

    .line 2007
    goto :goto_d3

    .line 2003
    :pswitch_ab  #0x3
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl$DisplayPowerControllerImplHandler;->this$0:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerControllerImpl;->-$$Nest$mupdateForegroundAppSync(Lcom/android/server/display/DisplayPowerControllerImpl;)V

    .line 2004
    goto :goto_d3

    .line 2009
    :pswitch_b1  #0x2
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl$DisplayPowerControllerImplHandler;->this$0:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "dolby_version_state"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/display/DisplayPowerControllerImpl;->-$$Nest$mupdateDolbyBrightnessIfNeeded(Lcom/android/server/display/DisplayPowerControllerImpl;Z)V

    .line 2011
    goto :goto_d3

    .line 1994
    :pswitch_c2  #0x1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl$DisplayPowerControllerImplHandler;->this$0:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "gray_scale"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/display/DisplayPowerControllerImpl;->-$$Nest$msetGrayScale(Lcom/android/server/display/DisplayPowerControllerImpl;F)V

    .line 1995
    nop

    .line 2035
    :cond_d3
    :goto_d3
    return-void

    :pswitch_data_d4
    .packed-switch 0x1
        :pswitch_c2  #00000001
        :pswitch_b1  #00000002
        :pswitch_ab  #00000003
        :pswitch_a5  #00000004
        :pswitch_93  #00000005
        :pswitch_83  #00000006
        :pswitch_50  #00000007
        :pswitch_30  #00000008
        :pswitch_1b  #00000009
        :pswitch_a  #0000000a
    .end packed-switch
.end method
