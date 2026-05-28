# classes.dex

.class Lcom/android/server/display/eyecare/NotifyPopUpManager$2;
.super Landroid/app/TaskStackListener;
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
.method public static synthetic $r8$lambda$5XA7ePuEPitL6OHwNjJXttY1eLk(Lcom/android/server/display/eyecare/NotifyPopUpManager$2;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/eyecare/NotifyPopUpManager$2;->lambda$onTaskStackChanged$0()V

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

    .line 319
    iput-object p1, p0, Lcom/android/server/display/eyecare/NotifyPopUpManager$2;->this$0:Lcom/android/server/display/eyecare/NotifyPopUpManager;

    invoke-direct {p0}, Landroid/app/TaskStackListener;-><init>()V

    return-void
.end method

.method private synthetic lambda$onTaskStackChanged$0()V
    .registers 4

    .line 322
    iget-object v0, p0, Lcom/android/server/display/eyecare/NotifyPopUpManager$2;->this$0:Lcom/android/server/display/eyecare/NotifyPopUpManager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/server/display/eyecare/NotifyPopUpManager;->-$$Nest$mupdateState(Lcom/android/server/display/eyecare/NotifyPopUpManager;ZI)V

    return-void
.end method


# virtual methods
.method public onTaskStackChanged()V
    .registers 3

    .line 322
    iget-object v0, p0, Lcom/android/server/display/eyecare/NotifyPopUpManager$2;->this$0:Lcom/android/server/display/eyecare/NotifyPopUpManager;

    invoke-static {v0}, Lcom/android/server/display/eyecare/NotifyPopUpManager;->-$$Nest$fgetmHandler(Lcom/android/server/display/eyecare/NotifyPopUpManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/eyecare/NotifyPopUpManager$2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/display/eyecare/NotifyPopUpManager$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/eyecare/NotifyPopUpManager$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 323
    return-void
.end method
