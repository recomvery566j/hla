# classes.dex

.class Lcom/android/server/display/statistics/BrightnessDataProcessor$RotationWatcher;
.super Landroid/view/IRotationWatcher$Stub;
.source "BrightnessDataProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/statistics/BrightnessDataProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RotationWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/statistics/BrightnessDataProcessor;


# direct methods
.method constructor <init>(Lcom/android/server/display/statistics/BrightnessDataProcessor;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/display/statistics/BrightnessDataProcessor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1786
    iput-object p1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$RotationWatcher;->this$0:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    invoke-direct {p0}, Landroid/view/IRotationWatcher$Stub;-><init>()V

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

    .line 1790
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$RotationWatcher;->this$0:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    invoke-static {v0}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->-$$Nest$fgetmBackgroundHandler(Lcom/android/server/display/statistics/BrightnessDataProcessor;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1791
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1792
    return-void
.end method
