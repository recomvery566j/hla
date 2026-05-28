# classes.dex

.class public final synthetic Lcom/android/server/display/DisplayManagerServiceImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/DisplayManagerServiceImpl;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/DisplayManagerServiceImpl;Ljava/util/List;Ljava/util/List;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/DisplayManagerServiceImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/display/DisplayManagerServiceImpl;

    iput-object p2, p0, Lcom/android/server/display/DisplayManagerServiceImpl$$ExternalSyntheticLambda1;->f$1:Ljava/util/List;

    iput-object p3, p0, Lcom/android/server/display/DisplayManagerServiceImpl$$ExternalSyntheticLambda1;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/display/DisplayManagerServiceImpl;

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerServiceImpl$$ExternalSyntheticLambda1;->f$1:Ljava/util/List;

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerServiceImpl$$ExternalSyntheticLambda1;->f$2:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/android/server/display/DisplayManagerServiceImpl;->$r8$lambda$9hXacZoKAIFRLE2gAUk4PZaUCRI(Lcom/android/server/display/DisplayManagerServiceImpl;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
