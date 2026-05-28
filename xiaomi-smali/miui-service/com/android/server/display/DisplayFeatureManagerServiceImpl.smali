# classes.dex

.class public Lcom/android/server/display/DisplayFeatureManagerServiceImpl;
.super Ljava/lang/Object;
.source "DisplayFeatureManagerServiceImpl.java"

# interfaces
.implements Lcom/android/server/display/DisplayFeatureManagerServiceStub;


# static fields
.field private static final TAG:Ljava/lang/String; = "DisplayFeatureManagerServiceImpl"


# instance fields
.field private mDisplayFeatureInternal:Lcom/android/server/display/DisplayFeatureManagerInternal;

.field private mIsFullAod:[Z

.field private final mIsIndependentRear:Z

.field private physicalDisplayIds:[J


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-static {}, Lmiui/util/MiuiMultiDisplayTypeInfo;->isIndependentRearDevice()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayFeatureManagerServiceImpl;->mIsIndependentRear:Z

    return-void
.end method


# virtual methods
.method public init(Lcom/android/server/display/DisplayFeatureManagerInternal;)V
    .registers 2
    .param p1, "displayFeatureInternal"  # Lcom/android/server/display/DisplayFeatureManagerInternal;

    .line 20
    iput-object p1, p0, Lcom/android/server/display/DisplayFeatureManagerServiceImpl;->mDisplayFeatureInternal:Lcom/android/server/display/DisplayFeatureManagerInternal;

    .line 21
    return-void
.end method

.method public initIsFullAod()V
    .registers 2

    .line 24
    invoke-static {}, Lcom/android/server/display/DisplayControl;->getPhysicalDisplayIds()[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerServiceImpl;->physicalDisplayIds:[J

    .line 25
    iget-boolean v0, p0, Lcom/android/server/display/DisplayFeatureManagerServiceImpl;->mIsIndependentRear:Z

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerServiceImpl;->physicalDisplayIds:[J

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerServiceImpl;->physicalDisplayIds:[J

    array-length v0, v0

    if-nez v0, :cond_14

    goto :goto_1c

    .line 28
    :cond_14
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerServiceImpl;->physicalDisplayIds:[J

    array-length v0, v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerServiceImpl;->mIsFullAod:[Z

    goto :goto_21

    .line 26
    :cond_1c
    :goto_1c
    const/4 v0, 0x1

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerServiceImpl;->mIsFullAod:[Z

    .line 30
    :goto_21
    return-void
.end method

.method public isFullAodState(I)Z
    .registers 4
    .param p1, "displayId"  # I

    .line 91
    iget-boolean v0, p0, Lcom/android/server/display/DisplayFeatureManagerServiceImpl;->mIsIndependentRear:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerServiceImpl;->mIsFullAod:[Z

    array-length v0, v0

    if-ge p1, v0, :cond_11

    if-gez p1, :cond_c

    goto :goto_11

    .line 94
    :cond_c
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerServiceImpl;->mIsFullAod:[Z

    aget-boolean v0, v0, p1

    return v0

    .line 92
    :cond_11
    :goto_11
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerServiceImpl;->mIsFullAod:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    return v0
.end method

.method public onEarlyInteractivityChange(Z)V
    .registers 3
    .param p1, "interactive"  # Z

    .line 99
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerServiceImpl;->mDisplayFeatureInternal:Lcom/android/server/display/DisplayFeatureManagerInternal;

    if-eqz v0, :cond_9

    .line 100
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerServiceImpl;->mDisplayFeatureInternal:Lcom/android/server/display/DisplayFeatureManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayFeatureManagerInternal;->onEarlyInteractivityChange(Z)V

    .line 102
    :cond_9
    return-void
.end method

.method public setVideoInformation(IZFIIFLandroid/os/IBinder;)V
    .registers 17
    .param p1, "pid"  # I
    .param p2, "bulletChatStatus"  # Z
    .param p3, "frameRate"  # F
    .param p4, "width"  # I
    .param p5, "height"  # I
    .param p6, "compressionRatio"  # F
    .param p7, "token"  # Landroid/os/IBinder;

    .line 56
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerServiceImpl;->mDisplayFeatureInternal:Lcom/android/server/display/DisplayFeatureManagerInternal;

    if-eqz v0, :cond_11

    .line 57
    iget-object v1, p0, Lcom/android/server/display/DisplayFeatureManagerServiceImpl;->mDisplayFeatureInternal:Lcom/android/server/display/DisplayFeatureManagerInternal;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/display/DisplayFeatureManagerInternal;->setVideoInformation(IZFIIFLandroid/os/IBinder;)V

    .line 60
    :cond_11
    return-void
.end method

.method public updateBCBCState(I)V
    .registers 3
    .param p1, "state"  # I

    .line 48
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerServiceImpl;->mDisplayFeatureInternal:Lcom/android/server/display/DisplayFeatureManagerInternal;

    if-eqz v0, :cond_9

    .line 49
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerServiceImpl;->mDisplayFeatureInternal:Lcom/android/server/display/DisplayFeatureManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayFeatureManagerInternal;->updateBCBCState(I)V

    .line 51
    :cond_9
    return-void
.end method

.method public updateDozeBrightness(JI)V
    .registers 5
    .param p1, "physicalDisplayId"  # J
    .param p3, "brightness"  # I

    .line 41
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerServiceImpl;->mDisplayFeatureInternal:Lcom/android/server/display/DisplayFeatureManagerInternal;

    if-eqz v0, :cond_9

    .line 42
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerServiceImpl;->mDisplayFeatureInternal:Lcom/android/server/display/DisplayFeatureManagerInternal;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/display/DisplayFeatureManagerInternal;->updateDozeBrightness(JI)V

    .line 44
    :cond_9
    return-void
.end method

.method public updateFullAodState(IZ)V
    .registers 6
    .param p1, "displayId"  # I
    .param p2, "state"  # Z

    .line 76
    iget-boolean v0, p0, Lcom/android/server/display/DisplayFeatureManagerServiceImpl;->mIsIndependentRear:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerServiceImpl;->mIsFullAod:[Z

    array-length v0, v0

    if-ge p1, v0, :cond_11

    if-gez p1, :cond_c

    goto :goto_11

    .line 79
    :cond_c
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerServiceImpl;->mIsFullAod:[Z

    aput-boolean p2, v0, p1

    goto :goto_16

    .line 77
    :cond_11
    :goto_11
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerServiceImpl;->mIsFullAod:[Z

    const/4 v1, 0x0

    aput-boolean p2, v0, v1

    .line 81
    :goto_16
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerServiceImpl;->mDisplayFeatureInternal:Lcom/android/server/display/DisplayFeatureManagerInternal;

    if-eqz v0, :cond_1f

    .line 82
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerServiceImpl;->mDisplayFeatureInternal:Lcom/android/server/display/DisplayFeatureManagerInternal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/DisplayFeatureManagerInternal;->updateFullAodState(II)V

    .line 84
    :cond_1f
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_20
    iget-object v1, p0, Lcom/android/server/display/DisplayFeatureManagerServiceImpl;->mIsFullAod:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_4e

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Display["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] mIsFullAod = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/DisplayFeatureManagerServiceImpl;->mIsFullAod:[Z

    aget-boolean v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DisplayFeatureManagerServiceImpl"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 87
    .end local v0  # "i":I
    :cond_4e
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

    .line 63
    .local p1, "imageAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "readAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerServiceImpl;->mDisplayFeatureInternal:Lcom/android/server/display/DisplayFeatureManagerInternal;

    if-eqz v0, :cond_9

    .line 64
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerServiceImpl;->mDisplayFeatureInternal:Lcom/android/server/display/DisplayFeatureManagerInternal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/DisplayFeatureManagerInternal;->updateRhythmicAppCategoryList(Ljava/util/List;Ljava/util/List;)V

    .line 66
    :cond_9
    return-void
.end method

.method public updateScreenEffect(I)V
    .registers 3
    .param p1, "state"  # I

    .line 34
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerServiceImpl;->mDisplayFeatureInternal:Lcom/android/server/display/DisplayFeatureManagerInternal;

    if-eqz v0, :cond_9

    .line 35
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerServiceImpl;->mDisplayFeatureInternal:Lcom/android/server/display/DisplayFeatureManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayFeatureManagerInternal;->updateScreenEffect(I)V

    .line 37
    :cond_9
    return-void
.end method

.method public updateScreenGrayscaleState(I)V
    .registers 3
    .param p1, "state"  # I

    .line 70
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerServiceImpl;->mDisplayFeatureInternal:Lcom/android/server/display/DisplayFeatureManagerInternal;

    if-eqz v0, :cond_9

    .line 71
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerServiceImpl;->mDisplayFeatureInternal:Lcom/android/server/display/DisplayFeatureManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayFeatureManagerInternal;->updateScreenGrayscaleState(I)V

    .line 73
    :cond_9
    return-void
.end method
