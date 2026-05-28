# classes.dex

.class Lcom/android/server/display/eyecare/RhythmicEyeCareManager$3;
.super Landroid/app/TaskStackListener;
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
.method public static synthetic $r8$lambda$5Nrz86BXdsG7sR_sOMRZkb-EfyA(Lcom/android/server/display/eyecare/RhythmicEyeCareManager$3;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$3;->lambda$onTaskStackChanged$0()V

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

    .line 121
    iput-object p1, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$3;->this$0:Lcom/android/server/display/eyecare/RhythmicEyeCareManager;

    invoke-direct {p0}, Landroid/app/TaskStackListener;-><init>()V

    return-void
.end method

.method private synthetic lambda$onTaskStackChanged$0()V
    .registers 3

    .line 124
    iget-object v0, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$3;->this$0:Lcom/android/server/display/eyecare/RhythmicEyeCareManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->-$$Nest$mupdateState(Lcom/android/server/display/eyecare/RhythmicEyeCareManager;Z)V

    return-void
.end method


# virtual methods
.method public onTaskStackChanged()V
    .registers 3

    .line 124
    iget-object v0, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$3;->this$0:Lcom/android/server/display/eyecare/RhythmicEyeCareManager;

    invoke-static {v0}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->-$$Nest$fgetmHandler(Lcom/android/server/display/eyecare/RhythmicEyeCareManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$3$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$3$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/eyecare/RhythmicEyeCareManager$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 125
    return-void
.end method
