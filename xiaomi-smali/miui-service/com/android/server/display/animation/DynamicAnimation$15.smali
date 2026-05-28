# classes.dex

.class Lcom/android/server/display/animation/DynamicAnimation$15;
.super Lcom/android/server/display/animation/FloatPropertyCompat;
.source "DynamicAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/animation/DynamicAnimation;-><init>(Lcom/android/server/display/animation/FloatValueHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$floatValueHolder:Lcom/android/server/display/animation/FloatValueHolder;


# direct methods
.method constructor <init>(Lcom/android/server/display/animation/DynamicAnimation;Ljava/lang/String;Lcom/android/server/display/animation/FloatValueHolder;)V
    .registers 4
    .param p1, "this$0"  # Lcom/android/server/display/animation/DynamicAnimation;
    .param p2, "name"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 333
    .local p0, "this":Lcom/android/server/display/animation/DynamicAnimation$15;, "Lcom/android/server/display/animation/DynamicAnimation$15;"
    iput-object p3, p0, Lcom/android/server/display/animation/DynamicAnimation$15;->val$floatValueHolder:Lcom/android/server/display/animation/FloatValueHolder;

    invoke-direct {p0, p2}, Lcom/android/server/display/animation/FloatPropertyCompat;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getValue(Ljava/lang/Object;)F
    .registers 3
    .param p1, "object"  # Ljava/lang/Object;

    .line 336
    .local p0, "this":Lcom/android/server/display/animation/DynamicAnimation$15;, "Lcom/android/server/display/animation/DynamicAnimation$15;"
    iget-object v0, p0, Lcom/android/server/display/animation/DynamicAnimation$15;->val$floatValueHolder:Lcom/android/server/display/animation/FloatValueHolder;

    invoke-virtual {v0}, Lcom/android/server/display/animation/FloatValueHolder;->getValue()F

    move-result v0

    return v0
.end method

.method public setValue(Ljava/lang/Object;F)V
    .registers 4
    .param p1, "object"  # Ljava/lang/Object;
    .param p2, "value"  # F

    .line 341
    .local p0, "this":Lcom/android/server/display/animation/DynamicAnimation$15;, "Lcom/android/server/display/animation/DynamicAnimation$15;"
    iget-object v0, p0, Lcom/android/server/display/animation/DynamicAnimation$15;->val$floatValueHolder:Lcom/android/server/display/animation/FloatValueHolder;

    invoke-virtual {v0, p2}, Lcom/android/server/display/animation/FloatValueHolder;->setValue(F)V

    .line 342
    return-void
.end method
