# classes.dex

.class Lcom/android/server/display/eyecare/RhythmicEyeCareManager$5;
.super Landroid/app/IProcessObserver$Stub;
.source "RhythmicEyeCareManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/eyecare/RhythmicEyeCareManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/eyecare/RhythmicEyeCareManager;


# direct methods
.method public static synthetic $r8$lambda$XRlK5yK82deYJy3cfxDE2bRZQa4(Lcom/android/server/display/eyecare/RhythmicEyeCareManager$5;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$5;->lambda$onForegroundActivitiesChanged$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$o7doiStHnv97eBv3gpLvU2wSe_g(Lcom/android/server/display/eyecare/RhythmicEyeCareManager$5;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$5;->lambda$onProcessDied$1()V

    return-void
.end method

.method constructor <init>(Lcom/android/server/display/eyecare/RhythmicEyeCareManager;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/display/eyecare/RhythmicEyeCareManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 138
    iput-object p1, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$5;->this$0:Lcom/android/server/display/eyecare/RhythmicEyeCareManager;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method

.method private synthetic lambda$onForegroundActivitiesChanged$0()V
    .registers 3

    .line 147
    iget-object v0, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$5;->this$0:Lcom/android/server/display/eyecare/RhythmicEyeCareManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->-$$Nest$mupdateState(Lcom/android/server/display/eyecare/RhythmicEyeCareManager;Z)V

    return-void
.end method

.method private synthetic lambda$onProcessDied$1()V
    .registers 3

    .line 159
    iget-object v0, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$5;->this$0:Lcom/android/server/display/eyecare/RhythmicEyeCareManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->-$$Nest$mupdateState(Lcom/android/server/display/eyecare/RhythmicEyeCareManager;Z)V

    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .registers 6
    .param p1, "pid"  # I
    .param p2, "uid"  # I
    .param p3, "foregroundActivities"  # Z

    .line 147
    iget-object v0, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$5;->this$0:Lcom/android/server/display/eyecare/RhythmicEyeCareManager;

    invoke-static {v0}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->-$$Nest$fgetmHandler(Lcom/android/server/display/eyecare/RhythmicEyeCareManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$5$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$5$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/eyecare/RhythmicEyeCareManager$5;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 148
    return-void
.end method

.method public onForegroundServicesChanged(III)V
    .registers 4
    .param p1, "pid"  # I
    .param p2, "uid"  # I
    .param p3, "serviceTypes"  # I

    .line 155
    return-void
.end method

.method public onProcessDied(II)V
    .registers 5
    .param p1, "pid"  # I
    .param p2, "uid"  # I

    .line 159
    iget-object v0, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$5;->this$0:Lcom/android/server/display/eyecare/RhythmicEyeCareManager;

    invoke-static {v0}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->-$$Nest$fgetmHandler(Lcom/android/server/display/eyecare/RhythmicEyeCareManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$5$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$5$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/eyecare/RhythmicEyeCareManager$5;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 160
    return-void
.end method

.method public onProcessStarted(IIILjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "pid"  # I
    .param p2, "processUid"  # I
    .param p3, "packageUid"  # I
    .param p4, "packageName"  # Ljava/lang/String;
    .param p5, "processName"  # Ljava/lang/String;

    .line 143
    return-void
.end method
