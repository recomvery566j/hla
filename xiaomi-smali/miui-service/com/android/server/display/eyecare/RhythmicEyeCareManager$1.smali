# classes.dex

.class Lcom/android/server/display/eyecare/RhythmicEyeCareManager$1;
.super Ljava/lang/Object;
.source "RhythmicEyeCareManager.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


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
.method public static synthetic $r8$lambda$I9T_cZWvNE3nPgDUHgFZlDVCeZQ(Lcom/android/server/display/eyecare/RhythmicEyeCareManager$1;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$1;->lambda$onAlarm$0()V

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

    .line 94
    iput-object p1, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$1;->this$0:Lcom/android/server/display/eyecare/RhythmicEyeCareManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onAlarm$0()V
    .registers 3

    .line 97
    iget-object v0, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$1;->this$0:Lcom/android/server/display/eyecare/RhythmicEyeCareManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->-$$Nest$mupdateState(Lcom/android/server/display/eyecare/RhythmicEyeCareManager;Z)V

    return-void
.end method


# virtual methods
.method public onAlarm()V
    .registers 4

    .line 97
    iget-object v0, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$1;->this$0:Lcom/android/server/display/eyecare/RhythmicEyeCareManager;

    invoke-static {v0}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->-$$Nest$fgetmHandler(Lcom/android/server/display/eyecare/RhythmicEyeCareManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/eyecare/RhythmicEyeCareManager$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 98
    iget-object v0, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$1;->this$0:Lcom/android/server/display/eyecare/RhythmicEyeCareManager;

    iget-object v1, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$1;->this$0:Lcom/android/server/display/eyecare/RhythmicEyeCareManager;

    invoke-static {v1}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->-$$Nest$fgetmAlarmIndex(Lcom/android/server/display/eyecare/RhythmicEyeCareManager;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$1;->this$0:Lcom/android/server/display/eyecare/RhythmicEyeCareManager;

    invoke-static {v2}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->-$$Nest$fgetmAlarmTimePoints(Lcom/android/server/display/eyecare/RhythmicEyeCareManager;)[I

    move-result-object v2

    array-length v2, v2

    rem-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->-$$Nest$fputmAlarmIndex(Lcom/android/server/display/eyecare/RhythmicEyeCareManager;I)V

    .line 99
    iget-object v0, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$1;->this$0:Lcom/android/server/display/eyecare/RhythmicEyeCareManager;

    invoke-static {v0}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->-$$Nest$msetAlarm(Lcom/android/server/display/eyecare/RhythmicEyeCareManager;)V

    .line 100
    return-void
.end method
