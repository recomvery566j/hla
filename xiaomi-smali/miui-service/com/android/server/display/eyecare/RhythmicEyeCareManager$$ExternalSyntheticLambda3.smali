# classes.dex

.class public final synthetic Lcom/android/server/display/eyecare/RhythmicEyeCareManager$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    check-cast p1, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$UserScreenData;

    invoke-static {p1}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->lambda$getAverageWakeUpTime$2(Lcom/android/server/display/eyecare/RhythmicEyeCareManager$UserScreenData;)Lcom/android/server/display/eyecare/RhythmicEyeCareManager$TimeData;

    move-result-object p1

    return-object p1
.end method
