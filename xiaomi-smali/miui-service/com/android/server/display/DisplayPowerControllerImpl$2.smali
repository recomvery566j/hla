# classes.dex

.class Lcom/android/server/display/DisplayPowerControllerImpl$2;
.super Ljava/lang/Object;
.source "DisplayPowerControllerImpl.java"

# interfaces
.implements Lcom/android/server/display/HighBrightnessModeController$HdrStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/DisplayPowerControllerImpl;->init(Lcom/android/server/display/DisplayPowerController;Landroid/content/Context;Landroid/os/Looper;IFFLcom/android/server/display/DisplayDeviceConfig;Lcom/android/server/display/LogicalDisplay;Lcom/android/server/display/HighBrightnessModeController;Lcom/android/server/display/brightness/DisplayBrightnessController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayPowerControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayPowerControllerImpl;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/display/DisplayPowerControllerImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 636
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerControllerImpl$2;->this$0:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHbmModeChanged(II)V
    .registers 5
    .param p1, "newMode"  # I
    .param p2, "oldMode"  # I

    .line 652
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl$2;->this$0:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerControllerImpl;->-$$Nest$fgetmRampRateController(Lcom/android/server/display/DisplayPowerControllerImpl;)Lcom/android/server/display/RampRateController;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 653
    const/4 v0, 0x2

    if-ne p1, v0, :cond_16

    .line 654
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl$2;->this$0:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerControllerImpl;->-$$Nest$fgetmRampRateController(Lcom/android/server/display/DisplayPowerControllerImpl;)Lcom/android/server/display/RampRateController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/display/RampRateController;->addHdrRateModifier(Z)V

    goto :goto_22

    .line 655
    :cond_16
    if-ne p2, v0, :cond_22

    .line 656
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl$2;->this$0:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerControllerImpl;->-$$Nest$fgetmRampRateController(Lcom/android/server/display/DisplayPowerControllerImpl;)Lcom/android/server/display/RampRateController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/display/RampRateController;->addHdrRateModifier(Z)V

    .line 659
    :cond_22
    :goto_22
    return-void
.end method

.method public onHdrStateChanged(ZI)V
    .registers 6
    .param p1, "isHdrLayerPresent"  # Z
    .param p2, "sourceFlags"  # I

    .line 639
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl$2;->this$0:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerControllerImpl;->-$$Nest$fgetmAutoBrightnessEnable(Lcom/android/server/display/DisplayPowerControllerImpl;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 640
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl$2;->this$0:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerControllerImpl;->-$$Nest$mresetBCBCState(Lcom/android/server/display/DisplayPowerControllerImpl;)V

    .line 641
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl$2;->this$0:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerControllerImpl;->-$$Nest$mresetScreenGrayscaleState(Lcom/android/server/display/DisplayPowerControllerImpl;)V

    .line 643
    :cond_12
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl$2;->this$0:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerControllerImpl;->-$$Nest$fgetmThermalBrightnessController(Lcom/android/server/display/DisplayPowerControllerImpl;)Lcom/android/server/display/ThermalBrightnessController;

    move-result-object v0

    if-eqz v0, :cond_4f

    .line 644
    const/high16 v0, 0x100000

    and-int v1, p2, v0

    if-ne v1, v0, :cond_22

    const/4 v0, 0x1

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    .line 645
    .local v0, "isCameraHdr":Z
    :goto_23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isCameraHdr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", sourceFlags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DisplayPowerControllerImpl"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl$2;->this$0:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerControllerImpl;->-$$Nest$fgetmThermalBrightnessController(Lcom/android/server/display/DisplayPowerControllerImpl;)Lcom/android/server/display/ThermalBrightnessController;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/android/server/display/ThermalBrightnessController;->setHdrLayerPresent(ZZ)V

    .line 648
    .end local v0  # "isCameraHdr":Z
    :cond_4f
    return-void
.end method
