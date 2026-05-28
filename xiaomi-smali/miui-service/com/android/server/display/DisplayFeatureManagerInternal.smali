# classes.dex

.class public abstract Lcom/android/server/display/DisplayFeatureManagerInternal;
.super Ljava/lang/Object;
.source "DisplayFeatureManagerInternal.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onEarlyInteractivityChange(Z)V
.end method

.method public abstract setVideoInformation(IZFIIFLandroid/os/IBinder;)V
.end method

.method public abstract updateBCBCState(I)V
.end method

.method public abstract updateDozeBrightness(JI)V
.end method

.method public abstract updateFullAodState(II)V
.end method

.method public abstract updateRhythmicAppCategoryList(Ljava/util/List;Ljava/util/List;)V
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
.end method

.method public abstract updateScreenEffect(I)V
.end method

.method public abstract updateScreenGrayscaleState(I)V
.end method
