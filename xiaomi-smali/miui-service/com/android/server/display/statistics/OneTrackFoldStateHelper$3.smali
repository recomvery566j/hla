# classes.dex

.class Lcom/android/server/display/statistics/OneTrackFoldStateHelper$3;
.super Lmiui/process/IForegroundWindowListener$Stub;
.source "OneTrackFoldStateHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/statistics/OneTrackFoldStateHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/statistics/OneTrackFoldStateHelper;


# direct methods
.method constructor <init>(Lcom/android/server/display/statistics/OneTrackFoldStateHelper;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/display/statistics/OneTrackFoldStateHelper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 232
    iput-object p1, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper$3;->this$0:Lcom/android/server/display/statistics/OneTrackFoldStateHelper;

    invoke-direct {p0}, Lmiui/process/IForegroundWindowListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundWindowChanged(Lmiui/process/ForegroundInfo;)V
    .registers 4
    .param p1, "foregroundInfo"  # Lmiui/process/ForegroundInfo;

    .line 235
    invoke-static {}, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onForegroundWindowChanged: pkgName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneTrackFoldStateHelper"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_21
    iget-object v0, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper$3;->this$0:Lcom/android/server/display/statistics/OneTrackFoldStateHelper;

    invoke-static {v0}, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->-$$Nest$fgetmHandler(Lcom/android/server/display/statistics/OneTrackFoldStateHelper;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 240
    iget-object v0, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper$3;->this$0:Lcom/android/server/display/statistics/OneTrackFoldStateHelper;

    invoke-static {v0}, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->-$$Nest$fgetmHandler(Lcom/android/server/display/statistics/OneTrackFoldStateHelper;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 241
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper$3;->this$0:Lcom/android/server/display/statistics/OneTrackFoldStateHelper;

    invoke-static {v1}, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->-$$Nest$fgetmHandler(Lcom/android/server/display/statistics/OneTrackFoldStateHelper;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 242
    return-void
.end method
