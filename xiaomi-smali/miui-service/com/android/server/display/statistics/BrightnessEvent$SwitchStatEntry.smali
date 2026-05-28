# classes.dex

.class public Lcom/android/server/display/statistics/BrightnessEvent$SwitchStatEntry;
.super Ljava/lang/Object;
.source "BrightnessEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/statistics/BrightnessEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SwitchStatEntry"
.end annotation


# static fields
.field public static final TYPE_BOOLEAN:I = 0x0

.field public static final TYPE_INTEGER:I = 0x1


# instance fields
.field public b_value:Z

.field public i_value:I

.field public key:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>(ILjava/lang/String;I)V
    .registers 6
    .param p1, "type"  # I
    .param p2, "key"  # Ljava/lang/String;
    .param p3, "i_value"  # I

    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 385
    if-eqz p1, :cond_c

    .line 389
    iput p1, p0, Lcom/android/server/display/statistics/BrightnessEvent$SwitchStatEntry;->type:I

    .line 390
    iput-object p2, p0, Lcom/android/server/display/statistics/BrightnessEvent$SwitchStatEntry;->key:Ljava/lang/String;

    .line 391
    iput p3, p0, Lcom/android/server/display/statistics/BrightnessEvent$SwitchStatEntry;->i_value:I

    .line 392
    return-void

    .line 386
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Type and value are incompatible,the expected type is TYPE_INTEGER."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(ILjava/lang/String;Z)V
    .registers 6
    .param p1, "type"  # I
    .param p2, "key"  # Ljava/lang/String;
    .param p3, "b_value"  # Z

    .line 394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 395
    const/4 v0, 0x1

    if-eq p1, v0, :cond_10

    .line 399
    iput p1, p0, Lcom/android/server/display/statistics/BrightnessEvent$SwitchStatEntry;->type:I

    .line 400
    iput-object p2, p0, Lcom/android/server/display/statistics/BrightnessEvent$SwitchStatEntry;->key:Ljava/lang/String;

    .line 401
    iput-boolean p3, p0, Lcom/android/server/display/statistics/BrightnessEvent$SwitchStatEntry;->b_value:Z

    .line 402
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/display/statistics/BrightnessEvent$SwitchStatEntry;->i_value:I

    .line 403
    return-void

    .line 396
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "type and value are incompatible,the expected type is TYPE_BOOLEAN."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{key:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/statistics/BrightnessEvent$SwitchStatEntry;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/statistics/BrightnessEvent$SwitchStatEntry;->type:I

    if-nez v1, :cond_23

    iget-boolean v1, p0, Lcom/android/server/display/statistics/BrightnessEvent$SwitchStatEntry;->b_value:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_29

    :cond_23
    iget v1, p0, Lcom/android/server/display/statistics/BrightnessEvent$SwitchStatEntry;->i_value:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
