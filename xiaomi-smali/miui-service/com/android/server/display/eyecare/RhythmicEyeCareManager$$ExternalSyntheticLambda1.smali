# classes.dex

.class public final synthetic Lcom/android/server/display/eyecare/RhythmicEyeCareManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic f$0:Ljava/text/SimpleDateFormat;


# direct methods
.method public synthetic constructor <init>(Ljava/text/SimpleDateFormat;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$$ExternalSyntheticLambda1;->f$0:Ljava/text/SimpleDateFormat;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$$ExternalSyntheticLambda1;->f$0:Ljava/text/SimpleDateFormat;

    check-cast p1, Ljava/util/Map$Entry;

    check-cast p2, Ljava/util/Map$Entry;

    invoke-static {v0, p1, p2}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->lambda$cleanupOldData$4(Ljava/text/SimpleDateFormat;Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I

    move-result p1

    return p1
.end method
