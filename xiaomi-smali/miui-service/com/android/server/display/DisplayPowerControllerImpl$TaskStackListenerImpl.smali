# classes.dex

.class Lcom/android/server/display/DisplayPowerControllerImpl$TaskStackListenerImpl;
.super Landroid/app/TaskStackListener;
.source "DisplayPowerControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TaskStackListenerImpl"
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

    .line 2173
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerControllerImpl$TaskStackListenerImpl;->this$0:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-direct {p0}, Landroid/app/TaskStackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskStackChanged()V
    .registers 3

    .line 2176
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl$TaskStackListenerImpl;->this$0:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerControllerImpl;->-$$Nest$fgetmHandler(Lcom/android/server/display/DisplayPowerControllerImpl;)Lcom/android/server/display/DisplayPowerControllerImpl$DisplayPowerControllerImplHandler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerControllerImpl$DisplayPowerControllerImplHandler;->removeMessages(I)V

    .line 2177
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl$TaskStackListenerImpl;->this$0:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerControllerImpl;->-$$Nest$fgetmHandler(Lcom/android/server/display/DisplayPowerControllerImpl;)Lcom/android/server/display/DisplayPowerControllerImpl$DisplayPowerControllerImplHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerControllerImpl$DisplayPowerControllerImplHandler;->sendEmptyMessage(I)Z

    .line 2178
    return-void
.end method
