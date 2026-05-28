# classes.dex

.class Lcom/android/server/display/statistics/OneTrackFoldStateHelper$1;
.super Ljava/util/ArrayList;
.source "OneTrackFoldStateHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/statistics/OneTrackFoldStateHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/statistics/OneTrackFoldStateHelper;


# direct methods
.method constructor <init>(Lcom/android/server/display/statistics/OneTrackFoldStateHelper;)V
    .registers 3
    .param p1, "this$0"  # Lcom/android/server/display/statistics/OneTrackFoldStateHelper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 126
    iput-object p1, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper$1;->this$0:Lcom/android/server/display/statistics/OneTrackFoldStateHelper;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 128
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/display/statistics/OneTrackFoldStateHelper$1;->add(Ljava/lang/Object;)Z

    .line 129
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/display/statistics/OneTrackFoldStateHelper$1;->add(Ljava/lang/Object;)Z

    .line 130
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/display/statistics/OneTrackFoldStateHelper$1;->add(Ljava/lang/Object;)Z

    .line 131
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/display/statistics/OneTrackFoldStateHelper$1;->add(Ljava/lang/Object;)Z

    .line 132
    return-void
.end method
