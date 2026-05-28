# classes.dex

.class Lcom/android/server/display/DisplayFeatureManagerService$LocalService;
.super Lcom/android/server/display/DisplayFeatureManagerInternal;
.source "DisplayFeatureManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayFeatureManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LocalService"
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

    .line 1979
    iput-object p1, p0, Lcom/android/server/display/DisplayFeatureManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-direct {p0}, Lcom/android/server/display/DisplayFeatureManagerInternal;-><init>()V

    return-void
.end method


# virtual methods
.method public onEarlyInteractivityChange(Z)V
    .registers 3
    .param p1, "interactive"  # Z

    .line 2020
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$fgetmRhythmicEyeCareManager(Lcom/android/server/display/DisplayFeatureManagerService;)Lcom/android/server/display/eyecare/RhythmicEyeCareManager;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 2021
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$fgetmRhythmicEyeCareManager(Lcom/android/server/display/DisplayFeatureManagerService;)Lcom/android/server/display/eyecare/RhythmicEyeCareManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->onEarlyInteractivityChange(Z)V

    .line 2023
    :cond_11
    return-void
.end method

.method public setVideoInformation(IZFIIFLandroid/os/IBinder;)V
    .registers 16
    .param p1, "pid"  # I
    .param p2, "bulletChatStatus"  # Z
    .param p3, "frameRate"  # F
    .param p4, "width"  # I
    .param p5, "height"  # I
    .param p6, "compressionRatio"  # F
    .param p7, "token"  # Landroid/os/IBinder;

    .line 2006
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    .end local p1  # "pid":I
    .end local p2  # "bulletChatStatus":Z
    .end local p3  # "frameRate":F
    .end local p4  # "width":I
    .end local p5  # "height":I
    .end local p6  # "compressionRatio":F
    .end local p7  # "token":Landroid/os/IBinder;
    .local v1, "pid":I
    .local v2, "bulletChatStatus":Z
    .local v3, "frameRate":F
    .local v4, "width":I
    .local v5, "height":I
    .local v6, "compressionRatio":F
    .local v7, "token":Landroid/os/IBinder;
    invoke-static/range {v0 .. v7}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$mupdateVideoInformationIfNeeded(Lcom/android/server/display/DisplayFeatureManagerService;IZFIIFLandroid/os/IBinder;)V

    .line 2008
    return-void
.end method

.method public updateBCBCState(I)V
    .registers 4
    .param p1, "state"  # I

    .line 2000
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    const/16 v1, 0x12

    invoke-static {v0, v1, p1}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$msetScreenEffect(Lcom/android/server/display/DisplayFeatureManagerService;II)V

    .line 2001
    return-void
.end method

.method public updateDozeBrightness(JI)V
    .registers 5
    .param p1, "physicalDisplayId"  # J
    .param p3, "brightness"  # I

    .line 1995
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/display/DisplayFeatureManagerService;->setDozeBrightness(JI)V

    .line 1996
    return-void
.end method

.method public updateFullAodState(II)V
    .registers 4
    .param p1, "DisplayId"  # I
    .param p2, "state"  # I

    .line 2032
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$msetFullAodState(Lcom/android/server/display/DisplayFeatureManagerService;II)V

    .line 2033
    return-void
.end method

.method public updateRhythmicAppCategoryList(Ljava/util/List;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2012
    .local p1, "imageAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "readAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$fgetmRhythmicEyeCareManager(Lcom/android/server/display/DisplayFeatureManagerService;)Lcom/android/server/display/eyecare/RhythmicEyeCareManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->updateRhythmicAppCategoryList(Ljava/util/List;Ljava/util/List;)V

    .line 2013
    invoke-static {}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$sfgetIS_GREEN_MOUNTAIN_EYECARE_V3()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2014
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$fgetmNotifyPopUpManager(Lcom/android/server/display/DisplayFeatureManagerService;)Lcom/android/server/display/eyecare/NotifyPopUpManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/display/eyecare/NotifyPopUpManager;->updateAllReadAppList(Ljava/util/List;)V

    .line 2015
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$fgetmEffectScopeManager(Lcom/android/server/display/DisplayFeatureManagerService;)Lcom/android/server/display/eyecare/EffectScopeManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/display/eyecare/EffectScopeManager;->updateAllReadAppList(Ljava/util/List;)V

    .line 2017
    :cond_21
    return-void
.end method

.method public updateScreenEffect(I)V
    .registers 5
    .param p1, "state"  # I

    .line 1982
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$fgetmDisplayState(Lcom/android/server/display/DisplayFeatureManagerService;)I

    move-result v0

    .line 1983
    .local v0, "oldState":I
    iget-object v1, p0, Lcom/android/server/display/DisplayFeatureManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v1, p1}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$fputmDisplayState(Lcom/android/server/display/DisplayFeatureManagerService;I)V

    .line 1984
    sget-boolean v1, Lmiui/os/DeviceFeature;->PERSIST_SCREEN_EFFECT:Z

    if-nez v1, :cond_23

    .line 1985
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1a

    if-eq p1, v0, :cond_1a

    .line 1987
    iget-object v1, p0, Lcom/android/server/display/DisplayFeatureManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$msetScreenEffectColor(Lcom/android/server/display/DisplayFeatureManagerService;Z)V

    .line 1989
    :cond_1a
    iget-object v1, p0, Lcom/android/server/display/DisplayFeatureManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$fgetmRhythmicEyeCareManager(Lcom/android/server/display/DisplayFeatureManagerService;)Lcom/android/server/display/eyecare/RhythmicEyeCareManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->notifyScreenStateChanged(I)V

    .line 1991
    :cond_23
    return-void
.end method

.method public updateScreenGrayscaleState(I)V
    .registers 4
    .param p1, "state"  # I

    .line 2027
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    const/16 v1, 0x38

    invoke-static {v0, v1, p1}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$msetScreenEffect(Lcom/android/server/display/DisplayFeatureManagerService;II)V

    .line 2028
    return-void
.end method
