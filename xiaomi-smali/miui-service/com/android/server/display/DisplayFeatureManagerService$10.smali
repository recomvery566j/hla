# classes.dex

.class Lcom/android/server/display/DisplayFeatureManagerService$10;
.super Lmiui/hardware/display/aidl/IDisplayFeatureCallback$Stub;
.source "DisplayFeatureManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/DisplayFeatureManagerService;->onBootPhase(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayFeatureManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayFeatureManagerService;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/display/DisplayFeatureManagerService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 515
    iput-object p1, p0, Lcom/android/server/display/DisplayFeatureManagerService$10;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-direct {p0}, Lmiui/hardware/display/aidl/IDisplayFeatureCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs displayfeatureInfoChanged(I[Ljava/lang/Object;)V
    .registers 4
    .param p1, "caseId"  # I
    .param p2, "params"  # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 519
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService$10;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$mhandleDisplayFeatureInfoChanged(Lcom/android/server/display/DisplayFeatureManagerService;I[Ljava/lang/Object;)V

    .line 520
    return-void
.end method
