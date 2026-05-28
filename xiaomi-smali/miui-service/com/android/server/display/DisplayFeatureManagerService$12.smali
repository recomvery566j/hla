# classes.dex

.class Lcom/android/server/display/DisplayFeatureManagerService$12;
.super Ljava/lang/Object;
.source "DisplayFeatureManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/DisplayFeatureManagerService;->initServiceDeathRecipient()V
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

    .line 931
    iput-object p1, p0, Lcom/android/server/display/DisplayFeatureManagerService$12;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .line 934
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService$12;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$fgetmLock(Lcom/android/server/display/DisplayFeatureManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 935
    :try_start_7
    const-string v1, "DisplayFeatureManagerService"

    const-string v2, "binder service binderDied!"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    iget-object v1, p0, Lcom/android/server/display/DisplayFeatureManagerService$12;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$fputmWrapper(Lcom/android/server/display/DisplayFeatureManagerService;Lcom/android/server/display/DisplayFeatureManagerService$DisplayFeatureManagerWrapper;)V

    .line 937
    monitor-exit v0

    .line 938
    return-void

    .line 937
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_16

    throw v1
.end method
