# classes.dex

.class Lcom/android/server/display/eyecare/RhythmicEyeCareManager$2;
.super Landroid/content/BroadcastReceiver;
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
.method public static synthetic $r8$lambda$4qlxQp6wd4KtkiPuGDkLUyjvqbw(Lcom/android/server/display/eyecare/RhythmicEyeCareManager$2;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$2;->lambda$onReceive$0()V

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

    .line 103
    iput-object p1, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$2;->this$0:Lcom/android/server/display/eyecare/RhythmicEyeCareManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private synthetic lambda$onReceive$0()V
    .registers 3

    .line 114
    iget-object v0, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$2;->this$0:Lcom/android/server/display/eyecare/RhythmicEyeCareManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->-$$Nest$mupdateState(Lcom/android/server/display/eyecare/RhythmicEyeCareManager;Z)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "intent"  # Landroid/content/Intent;

    .line 106
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "action":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->-$$Nest$sfgetmIsEnabled()Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 108
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 109
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 110
    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 111
    :cond_22
    iget-object v1, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$2;->this$0:Lcom/android/server/display/eyecare/RhythmicEyeCareManager;

    invoke-static {v1}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->-$$Nest$fgetmOnAlarmListener(Lcom/android/server/display/eyecare/RhythmicEyeCareManager;)Landroid/app/AlarmManager$OnAlarmListener;

    move-result-object v1

    if-eqz v1, :cond_39

    .line 112
    iget-object v1, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$2;->this$0:Lcom/android/server/display/eyecare/RhythmicEyeCareManager;

    invoke-static {v1}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->-$$Nest$fgetmAlarmManager(Lcom/android/server/display/eyecare/RhythmicEyeCareManager;)Landroid/app/AlarmManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$2;->this$0:Lcom/android/server/display/eyecare/RhythmicEyeCareManager;

    invoke-static {v2}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->-$$Nest$fgetmOnAlarmListener(Lcom/android/server/display/eyecare/RhythmicEyeCareManager;)Landroid/app/AlarmManager$OnAlarmListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 114
    :cond_39
    iget-object v1, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$2;->this$0:Lcom/android/server/display/eyecare/RhythmicEyeCareManager;

    invoke-static {v1}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->-$$Nest$fgetmHandler(Lcom/android/server/display/eyecare/RhythmicEyeCareManager;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$2$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/eyecare/RhythmicEyeCareManager$2;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 115
    iget-object v1, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$2;->this$0:Lcom/android/server/display/eyecare/RhythmicEyeCareManager;

    invoke-static {v1}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->-$$Nest$mscheduleRhythmicAlarm(Lcom/android/server/display/eyecare/RhythmicEyeCareManager;)V

    .line 118
    :cond_4c
    return-void
.end method
