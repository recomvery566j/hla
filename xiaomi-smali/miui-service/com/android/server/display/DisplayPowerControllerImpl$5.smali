# classes.dex

.class Lcom/android/server/display/DisplayPowerControllerImpl$5;
.super Ljava/lang/Object;
.source "DisplayPowerControllerImpl.java"

# interfaces
.implements Lcom/android/server/display/AutomaticBrightnessControllerImpl$CloudControllerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerControllerImpl;
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

    .line 2644
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerControllerImpl$5;->this$0:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isAutoBrightnessStatisticsEventEnable()Z
    .registers 2

    .line 2647
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl$5;->this$0:Lcom/android/server/display/DisplayPowerControllerImpl;

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerControllerImpl;->mMiuiDisplayCloudController:Lcom/android/server/display/MiuiDisplayCloudController;

    if-eqz v0, :cond_f

    .line 2648
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl$5;->this$0:Lcom/android/server/display/DisplayPowerControllerImpl;

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerControllerImpl;->mMiuiDisplayCloudController:Lcom/android/server/display/MiuiDisplayCloudController;

    invoke-virtual {v0}, Lcom/android/server/display/MiuiDisplayCloudController;->isAutoBrightnessStatisticsEventEnable()Z

    move-result v0

    return v0

    .line 2650
    :cond_f
    const/4 v0, 0x0

    return v0
.end method
