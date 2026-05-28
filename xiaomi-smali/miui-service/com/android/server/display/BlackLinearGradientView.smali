# classes.dex

.class Lcom/android/server/display/BlackLinearGradientView;
.super Landroid/view/View;
.source "BlackLinearGradientView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/BlackLinearGradientView$BlackLinearGradient;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "BlackLinearGradientView"


# instance fields
.field private final DEFAULT_COLOR:I

.field mBlackLinearGradient:Lcom/android/server/display/BlackLinearGradientView$BlackLinearGradient;

.field private mEndColor:I

.field private mPaint:Landroid/graphics/Paint;

.field private mRectF:Landroid/graphics/RectF;

.field private mStartColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"  # Landroid/content/Context;

    .line 28
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 17
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/android/server/display/BlackLinearGradientView;->DEFAULT_COLOR:I

    .line 19
    iput v0, p0, Lcom/android/server/display/BlackLinearGradientView;->mStartColor:I

    .line 20
    iput v0, p0, Lcom/android/server/display/BlackLinearGradientView;->mEndColor:I

    .line 29
    invoke-direct {p0}, Lcom/android/server/display/BlackLinearGradientView;->initPaint()V

    .line 30
    return-void
.end method

.method private initPaint()V
    .registers 5

    .line 33
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/BlackLinearGradientView;->mPaint:Landroid/graphics/Paint;

    .line 34
    iget-object v0, p0, Lcom/android/server/display/BlackLinearGradientView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 35
    iget-object v0, p0, Lcom/android/server/display/BlackLinearGradientView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 36
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/android/server/display/BlackLinearGradientView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/android/server/display/BlackLinearGradientView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/server/display/BlackLinearGradientView;->mRectF:Landroid/graphics/RectF;

    .line 37
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 4
    .param p1, "canvas"  # Landroid/graphics/Canvas;

    .line 56
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 57
    iget-object v0, p0, Lcom/android/server/display/BlackLinearGradientView;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/server/display/BlackLinearGradientView;->mBlackLinearGradient:Lcom/android/server/display/BlackLinearGradientView$BlackLinearGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 58
    iget-object v0, p0, Lcom/android/server/display/BlackLinearGradientView;->mRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/server/display/BlackLinearGradientView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 59
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 14
    .param p1, "width"  # I
    .param p2, "height"  # I
    .param p3, "oldWidth"  # I
    .param p4, "oldHeight"  # I

    .line 41
    invoke-super/range {p0 .. p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 43
    new-instance v0, Landroid/graphics/RectF;

    int-to-float v2, p1

    int-to-float v3, p2

    const/4 v4, 0x0

    invoke-direct {v0, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/server/display/BlackLinearGradientView;->mRectF:Landroid/graphics/RectF;

    .line 44
    new-instance v0, Lcom/android/server/display/BlackLinearGradientView$BlackLinearGradient;

    int-to-float v5, p2

    const/high16 v2, -0x1000000

    filled-new-array {v2, v2}, [I

    move-result-object v6

    const/4 v2, 0x2

    new-array v7, v2, [F

    fill-array-data v7, :array_28

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/server/display/BlackLinearGradientView$BlackLinearGradient;-><init>(Lcom/android/server/display/BlackLinearGradientView;FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/android/server/display/BlackLinearGradientView;->mBlackLinearGradient:Lcom/android/server/display/BlackLinearGradientView$BlackLinearGradient;

    .line 52
    return-void

    nop

    :array_28
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public setLinearGradientColor([I)V
    .registers 3
    .param p1, "colors"  # [I

    .line 62
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_a

    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/BlackLinearGradientView;->setLinearGradientColor([I[F)V

    .line 63
    return-void

    :array_a
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public setLinearGradientColor([I[F)V
    .registers 13
    .param p1, "colors"  # [I
    .param p2, "positions"  # [F

    .line 66
    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2c

    array-length v0, p2

    if-ge v0, v1, :cond_b

    move-object v2, p0

    move-object v7, p1

    move-object v8, p2

    goto :goto_2f

    .line 70
    :cond_b
    const/4 v0, 0x0

    aget v0, p1, v0

    iput v0, p0, Lcom/android/server/display/BlackLinearGradientView;->mStartColor:I

    .line 71
    const/4 v0, 0x1

    aget v0, p1, v0

    iput v0, p0, Lcom/android/server/display/BlackLinearGradientView;->mEndColor:I

    .line 73
    new-instance v1, Lcom/android/server/display/BlackLinearGradientView$BlackLinearGradient;

    iget-object v0, p0, Lcom/android/server/display/BlackLinearGradientView;->mRectF:Landroid/graphics/RectF;

    iget v6, v0, Landroid/graphics/RectF;->bottom:F

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    move-object v7, p1

    move-object v8, p2

    .end local p1  # "colors":[I
    .end local p2  # "positions":[F
    .local v7, "colors":[I
    .local v8, "positions":[F
    invoke-direct/range {v1 .. v9}, Lcom/android/server/display/BlackLinearGradientView$BlackLinearGradient;-><init>(Lcom/android/server/display/BlackLinearGradientView;FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v1, v2, Lcom/android/server/display/BlackLinearGradientView;->mBlackLinearGradient:Lcom/android/server/display/BlackLinearGradientView$BlackLinearGradient;

    .line 77
    invoke-virtual {p0}, Lcom/android/server/display/BlackLinearGradientView;->postInvalidate()V

    .line 81
    return-void

    .line 66
    .end local v7  # "colors":[I
    .end local v8  # "positions":[F
    .restart local p1  # "colors":[I
    .restart local p2  # "positions":[F
    :cond_2c
    move-object v2, p0

    move-object v7, p1

    move-object v8, p2

    .line 67
    .end local p1  # "colors":[I
    .end local p2  # "positions":[F
    .restart local v7  # "colors":[I
    .restart local v8  # "positions":[F
    :goto_2f
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LinearGradientView{ mStartColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/display/BlackLinearGradientView;->mStartColor:I

    .line 86
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%08x"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mEndColor="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/BlackLinearGradientView;->mEndColor:I

    .line 87
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRectF="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/BlackLinearGradientView;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    return-object v0
.end method
