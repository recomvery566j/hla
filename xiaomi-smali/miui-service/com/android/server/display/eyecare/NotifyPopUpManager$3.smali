# classes.dex

.class Lcom/android/server/display/eyecare/NotifyPopUpManager$3;
.super Landroid/app/IProcessObserver$Stub;
.source "NotifyPopUpManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/eyecare/NotifyPopUpManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/eyecare/NotifyPopUpManager;


# direct methods
.method public static synthetic $r8$lambda$-RUKxc4ccQA0n7p74sULiMXRp3w(Lcom/android/server/display/eyecare/NotifyPopUpManager$3;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/eyecare/NotifyPopUpManager$3;->lambda$onProcessDied$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$GGx2dFBtgOoT0z0x9ymkWoMfj9w(Lcom/android/server/display/eyecare/NotifyPopUpManager$3;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/eyecare/NotifyPopUpManager$3;->lambda$onForegroundActivitiesChanged$0()V

    return-void
.end method

.method constructor <init>(Lcom/android/server/display/eyecare/NotifyPopUpManager;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/display/eyecare/NotifyPopUpManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 326
    iput-object p1, p0, Lcom/android/server/display/eyecare/NotifyPopUpManager$3;->this$0:Lcom/android/server/display/eyecare/NotifyPopUpManager;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method

.method private synthetic lambda$onForegroundActivitiesChanged$0()V
    .registers 4

    .line 334
    iget-object v0, p0, Lcom/android/server/display/eyecare/NotifyPopUpManager$3;->this$0:Lcom/android/server/display/eyecare/NotifyPopUpManager;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/android/server/display/eyecare/NotifyPopUpManager;->-$$Nest$mupdateState(Lcom/android/server/display/eyecare/NotifyPopUpManager;ZI)V

    return-void
.end method

.method private synthetic lambda$onProcessDied$1()V
    .registers 4

    .line 346
    iget-object v0, p0, Lcom/android/server/display/eyecare/NotifyPopUpManager$3;->this$0:Lcom/android/server/display/eyecare/NotifyPopUpManager;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lcom/android/server/display/eyecare/NotifyPopUpManager;->-$$Nest$mupdateState(Lcom/android/server/display/eyecare/NotifyPopUpManager;ZI)V

    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .registers 6
    .param p1, "pid"  # I
    .param p2, "uid"  # I
    .param p3, "foregroundActivities"  # Z

    .line 334
    iget-object v0, p0, Lcom/android/server/display/eyecare/NotifyPopUpManager$3;->this$0:Lcom/android/server/display/eyecare/NotifyPopUpManager;

    invoke-static {v0}, Lcom/android/server/display/eyecare/NotifyPopUpManager;->-$$Nest$fgetmHandler(Lcom/android/server/display/eyecare/NotifyPopUpManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/eyecare/NotifyPopUpManager$3$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/display/eyecare/NotifyPopUpManager$3$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/eyecare/NotifyPopUpManager$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 335
    return-void
.end method

.method public onForegroundServicesChanged(III)V
    .registers 4
    .param p1, "pid"  # I
    .param p2, "uid"  # I
    .param p3, "serviceTypes"  # I

    .line 342
    return-void
.end method

.method public onProcessDied(II)V
    .registers 5
    .param p1, "pid"  # I
    .param p2, "uid"  # I

    .line 346
    iget-object v0, p0, Lcom/android/server/display/eyecare/NotifyPopUpManager$3;->this$0:Lcom/android/server/display/eyecare/NotifyPopUpManager;

    invoke-static {v0}, Lcom/android/server/display/eyecare/NotifyPopUpManager;->-$$Nest$fgetmHandler(Lcom/android/server/display/eyecare/NotifyPopUpManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/eyecare/NotifyPopUpManager$3$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/display/eyecare/NotifyPopUpManager$3$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/eyecare/NotifyPopUpManager$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 347
    return-void
.end method

.method public onProcessStarted(IIILjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "pid"  # I
    .param p2, "processUid"  # I
    .param p3, "packageUid"  # I
    .param p4, "packageName"  # Ljava/lang/String;
    .param p5, "processName"  # Ljava/lang/String;

    .line 330
    return-void
.end method
