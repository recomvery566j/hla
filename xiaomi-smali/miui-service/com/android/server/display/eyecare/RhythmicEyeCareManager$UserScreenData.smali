# classes.dex

.class Lcom/android/server/display/eyecare/RhythmicEyeCareManager$UserScreenData;
.super Ljava/lang/Object;
.source "RhythmicEyeCareManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/eyecare/RhythmicEyeCareManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UserScreenData"
.end annotation


# instance fields
.field firstScreenOnTime:Lcom/android/server/display/eyecare/RhythmicEyeCareManager$TimeData;

.field lastScreenOffTime:Lcom/android/server/display/eyecare/RhythmicEyeCareManager$TimeData;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/eyecare/RhythmicEyeCareManager-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$UserScreenData;-><init>()V

    return-void
.end method
