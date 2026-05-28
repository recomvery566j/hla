# classes.dex

.class Lcom/android/server/display/DisplayManagerServiceImpl$VideoDecoderInfo;
.super Ljava/lang/Object;
.source "DisplayManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayManagerServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoDecoderInfo"
.end annotation


# instance fields
.field private decoderName:Ljava/lang/String;

.field private fps:I


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayManagerServiceImpl;Ljava/lang/String;I)V
    .registers 4
    .param p2, "decoderName"  # Ljava/lang/String;
    .param p3, "fps"  # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    iput-object p2, p0, Lcom/android/server/display/DisplayManagerServiceImpl$VideoDecoderInfo;->decoderName:Ljava/lang/String;

    .line 256
    iput p3, p0, Lcom/android/server/display/DisplayManagerServiceImpl$VideoDecoderInfo;->fps:I

    .line 257
    return-void
.end method


# virtual methods
.method public getDecoderName()Ljava/lang/String;
    .registers 2

    .line 260
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl$VideoDecoderInfo;->decoderName:Ljava/lang/String;

    return-object v0
.end method

.method public getFps()I
    .registers 2

    .line 263
    iget v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl$VideoDecoderInfo;->fps:I

    return v0
.end method

.method public setFps(I)V
    .registers 2
    .param p1, "fps"  # I

    .line 266
    iput p1, p0, Lcom/android/server/display/DisplayManagerServiceImpl$VideoDecoderInfo;->fps:I

    .line 267
    return-void
.end method
