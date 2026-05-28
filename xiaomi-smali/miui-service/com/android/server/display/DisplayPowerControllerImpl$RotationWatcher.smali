# classes.dex

.class Lcom/android/server/display/DisplayPowerControllerImpl$RotationWatcher;
.super Landroid/view/IRotationWatcher$Stub;
.source "DisplayPowerControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RotationWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayPowerControllerImpl;


# direct methods
.method private constructor <init>(Lcom/android/server/display/DisplayPowerControllerImpl;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 2968
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerControllerImpl$RotationWatcher;->this$0:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-direct {p0}, Landroid/view/IRotationWatcher$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/DisplayPowerControllerImpl;Lcom/android/server/display/DisplayPowerControllerImpl-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerControllerImpl$RotationWatcher;-><init>(Lcom/android/server/display/DisplayPowerControllerImpl;)V

    return-void
.end method


# virtual methods
.method public onRotationChanged(I)V
    .registers 5
    .param p1, "rotation"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2972
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl$RotationWatcher;->this$0:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerControllerImpl;->-$$Nest$fgetmHandler(Lcom/android/server/display/DisplayPowerControllerImpl;)Lcom/android/server/display/DisplayPowerControllerImpl$DisplayPowerControllerImplHandler;

    move-result-object v0

    const/4 v1, 0x7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2973
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2974
    return-void
.end method
