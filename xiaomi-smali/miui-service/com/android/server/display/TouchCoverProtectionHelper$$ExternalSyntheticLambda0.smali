# classes.dex

.class public final synthetic Lcom/android/server/display/TouchCoverProtectionHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/TouchCoverProtectionHelper;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/TouchCoverProtectionHelper;Z)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/TouchCoverProtectionHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/TouchCoverProtectionHelper;

    iput-boolean p2, p0, Lcom/android/server/display/TouchCoverProtectionHelper$$ExternalSyntheticLambda0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/server/display/TouchCoverProtectionHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/TouchCoverProtectionHelper;

    iget-boolean v1, p0, Lcom/android/server/display/TouchCoverProtectionHelper$$ExternalSyntheticLambda0;->f$1:Z

    invoke-static {v0, v1}, Lcom/android/server/display/TouchCoverProtectionHelper;->$r8$lambda$qp1pZffbUop6Sysnyk9jyjNSZgc(Lcom/android/server/display/TouchCoverProtectionHelper;Z)V

    return-void
.end method
