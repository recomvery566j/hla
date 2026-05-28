# classes.dex

.class Lcom/android/server/display/mode/DisplayModeDirectorImpl$DisplayModeDirectorEntry;
.super Ljava/lang/Object;
.source "DisplayModeDirectorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/mode/DisplayModeDirectorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DisplayModeDirectorEntry"
.end annotation


# instance fields
.field private desiredDisplayModeSpecs:Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

.field private displayId:I

.field final synthetic this$0:Lcom/android/server/display/mode/DisplayModeDirectorImpl;

.field private timesTamp:J

.field private votes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/display/mode/Vote;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fputdesiredDisplayModeSpecs(Lcom/android/server/display/mode/DisplayModeDirectorImpl$DisplayModeDirectorEntry;Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl$DisplayModeDirectorEntry;->desiredDisplayModeSpecs:Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputdisplayId(Lcom/android/server/display/mode/DisplayModeDirectorImpl$DisplayModeDirectorEntry;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl$DisplayModeDirectorEntry;->displayId:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtimesTamp(Lcom/android/server/display/mode/DisplayModeDirectorImpl$DisplayModeDirectorEntry;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl$DisplayModeDirectorEntry;->timesTamp:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputvotes(Lcom/android/server/display/mode/DisplayModeDirectorImpl$DisplayModeDirectorEntry;Landroid/util/SparseArray;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl$DisplayModeDirectorEntry;->votes:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/mode/DisplayModeDirectorImpl;ILcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;Landroid/util/SparseArray;)V
    .registers 7
    .param p1, "this$0"  # Lcom/android/server/display/mode/DisplayModeDirectorImpl;
    .param p2, "displayId"  # I
    .param p3, "desiredDisplayModeSpecs"  # Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/display/mode/Vote;",
            ">;)V"
        }
    .end annotation

    .line 278
    .local p4, "votes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/mode/Vote;>;"
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl$DisplayModeDirectorEntry;->this$0:Lcom/android/server/display/mode/DisplayModeDirectorImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl$DisplayModeDirectorEntry;->timesTamp:J

    .line 280
    iput p2, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl$DisplayModeDirectorEntry;->displayId:I

    .line 281
    iput-object p3, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl$DisplayModeDirectorEntry;->desiredDisplayModeSpecs:Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    .line 282
    iput-object p4, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl$DisplayModeDirectorEntry;->votes:Landroid/util/SparseArray;

    .line 283
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 7

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 287
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl$DisplayModeDirectorEntry;->this$0:Lcom/android/server/display/mode/DisplayModeDirectorImpl;

    invoke-static {v2}, Lcom/android/server/display/mode/DisplayModeDirectorImpl;->-$$Nest$fgetmDateFormat(Lcom/android/server/display/mode/DisplayModeDirectorImpl;)Ljava/text/SimpleDateFormat;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl$DisplayModeDirectorEntry;->timesTamp:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  Display "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl$DisplayModeDirectorEntry;->displayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDesiredDisplayModeSpecs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl$DisplayModeDirectorEntry;->desiredDisplayModeSpecs:Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    const-string v1, "  mVotes:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    const/16 v1, 0x1b

    .local v1, "p":I
    :goto_5c
    if-ltz v1, :cond_94

    .line 293
    iget-object v3, p0, Lcom/android/server/display/mode/DisplayModeDirectorImpl$DisplayModeDirectorEntry;->votes:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/mode/Vote;

    .line 294
    .local v3, "vote":Lcom/android/server/display/mode/Vote;
    if-nez v3, :cond_69

    .line 295
    goto :goto_91

    .line 297
    :cond_69
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "      "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/android/server/display/mode/Vote;->priorityToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .end local v3  # "vote":Lcom/android/server/display/mode/Vote;
    :goto_91
    add-int/lit8 v1, v1, -0x1

    goto :goto_5c

    .line 300
    .end local v1  # "p":I
    :cond_94
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
