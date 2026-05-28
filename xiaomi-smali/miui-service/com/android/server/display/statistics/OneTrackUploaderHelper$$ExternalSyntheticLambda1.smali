# classes.dex

.class public final synthetic Lcom/android/server/display/statistics/OneTrackUploaderHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Intent;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/statistics/OneTrackUploaderHelper$$ExternalSyntheticLambda1;->f$0:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/android/server/display/statistics/OneTrackUploaderHelper$$ExternalSyntheticLambda1;->f$0:Landroid/content/Intent;

    invoke-static {v0, p1, p2}, Lcom/android/server/display/statistics/OneTrackUploaderHelper;->lambda$reportAggregatedEventsToServer$1(Landroid/content/Intent;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
