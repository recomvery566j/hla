# classes.dex

.class Lcom/android/server/display/MiuiDisplayCloudController$1;
.super Landroid/database/ContentObserver;
.source "MiuiDisplayCloudController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/MiuiDisplayCloudController;->registerMiuiBrightnessCloudDataObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/MiuiDisplayCloudController;


# direct methods
.method public static synthetic $r8$lambda$s20YXPjVsTAUpMe3qtQTOgKEkFE(Lcom/android/server/display/MiuiDisplayCloudController$1;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/MiuiDisplayCloudController$1;->lambda$onChange$0()V

    return-void
.end method

.method constructor <init>(Lcom/android/server/display/MiuiDisplayCloudController;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"  # Lcom/android/server/display/MiuiDisplayCloudController;
    .param p2, "handler"  # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 376
    iput-object p1, p0, Lcom/android/server/display/MiuiDisplayCloudController$1;->this$0:Lcom/android/server/display/MiuiDisplayCloudController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method private synthetic lambda$onChange$0()V
    .registers 3

    .line 380
    iget-object v0, p0, Lcom/android/server/display/MiuiDisplayCloudController$1;->this$0:Lcom/android/server/display/MiuiDisplayCloudController;

    invoke-static {v0}, Lcom/android/server/display/MiuiDisplayCloudController;->-$$Nest$mupdateDataFromCloudControl(Lcom/android/server/display/MiuiDisplayCloudController;)Z

    move-result v0

    .line 381
    .local v0, "changed":Z
    if-eqz v0, :cond_d

    .line 382
    iget-object v1, p0, Lcom/android/server/display/MiuiDisplayCloudController$1;->this$0:Lcom/android/server/display/MiuiDisplayCloudController;

    invoke-static {v1}, Lcom/android/server/display/MiuiDisplayCloudController;->-$$Nest$msyncLocalBackupFromCloud(Lcom/android/server/display/MiuiDisplayCloudController;)V

    .line 384
    :cond_d
    iget-object v1, p0, Lcom/android/server/display/MiuiDisplayCloudController$1;->this$0:Lcom/android/server/display/MiuiDisplayCloudController;

    invoke-virtual {v1}, Lcom/android/server/display/MiuiDisplayCloudController;->notifyAllObservers()V

    .line 385
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4
    .param p1, "selfChange"  # Z

    .line 379
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/MiuiDisplayCloudController$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/display/MiuiDisplayCloudController$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/MiuiDisplayCloudController$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 386
    return-void
.end method
