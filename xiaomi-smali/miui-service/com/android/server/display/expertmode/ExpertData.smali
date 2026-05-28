# classes.dex

.class public Lcom/android/server/display/expertmode/ExpertData;
.super Ljava/lang/Object;
.source "ExpertData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/expertmode/ExpertData$Cookie;
    }
.end annotation


# static fields
.field public static final COLOR_B:Ljava/lang/String; = "color_b"

.field public static final COLOR_G:Ljava/lang/String; = "color_g"

.field public static final COLOR_GAMUT:Ljava/lang/String; = "color_gamut"

.field public static final COLOR_HUE:Ljava/lang/String; = "color_hue"

.field public static final COLOR_R:Ljava/lang/String; = "color_r"

.field public static final COLOR_SATURATION:Ljava/lang/String; = "color_saturation"

.field public static final COLOR_VALUE:Ljava/lang/String; = "color_value"

.field public static final CONTRAST_RATIO:Ljava/lang/String; = "contrast_ratio"

.field public static final COOKIE_SET_NUM:I = 0x9

.field public static final DEFAULT_EXPERT_COLOR_CONTRAST:I

.field public static final DEFAULT_EXPERT_COLOR_GAMMA:I

.field public static final DEFAULT_EXPERT_COLOR_GAMUT:I

.field public static final DEFAULT_EXPERT_COLOR_HUE:I

.field public static final DEFAULT_EXPERT_COLOR_RGB:I

.field public static final DEFAULT_EXPERT_COLOR_SATURATION:I

.field public static final DEFAULT_EXPERT_COLOR_VALUE:I

.field public static final GAMMA:Ljava/lang/String; = "gamma"

.field public static final PROVIDER_KEY:Ljava/lang/String; = "expert_data"

.field public static final SUPPORT_DISPLAY_EXPERT_MODE:Z

.field private static final TAG:Ljava/lang/String; = "ExpertData"


# instance fields
.field private colorB:I

.field private colorG:I

.field private colorGamut:I

.field private colorHue:I

.field private colorR:I

.field private colorSaturation:I

.field private colorValue:I

.field private contrastRatio:I

.field private gamma:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 27
    const-string/jumbo v0, "support_display_expert_mode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/expertmode/ExpertData;->SUPPORT_DISPLAY_EXPERT_MODE:Z

    .line 31
    const-string v0, "expert_gamut_default"

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/display/expertmode/ExpertData;->DEFAULT_EXPERT_COLOR_GAMUT:I

    .line 35
    const-string v0, "expert_RGB_default"

    const/16 v2, 0xff

    invoke-static {v0, v2}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/display/expertmode/ExpertData;->DEFAULT_EXPERT_COLOR_RGB:I

    .line 39
    const-string v0, "expert_hue_default"

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/display/expertmode/ExpertData;->DEFAULT_EXPERT_COLOR_HUE:I

    .line 43
    const-string v0, "expert_saturation_default"

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/display/expertmode/ExpertData;->DEFAULT_EXPERT_COLOR_SATURATION:I

    .line 47
    const-string v0, "expert_value_default"

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/display/expertmode/ExpertData;->DEFAULT_EXPERT_COLOR_VALUE:I

    .line 51
    const-string v0, "expert_contrast_default"

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/display/expertmode/ExpertData;->DEFAULT_EXPERT_COLOR_CONTRAST:I

    .line 55
    const-string v0, "expert_gamma_default"

    const/16 v1, 0xdc

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/display/expertmode/ExpertData;->DEFAULT_EXPERT_COLOR_GAMMA:I

    return-void
.end method

.method public constructor <init>(IIIIIIIII)V
    .registers 10
    .param p1, "colorGamut"  # I
    .param p2, "colorR"  # I
    .param p3, "colorG"  # I
    .param p4, "colorB"  # I
    .param p5, "colorHue"  # I
    .param p6, "colorSaturation"  # I
    .param p7, "colorValue"  # I
    .param p8, "contrastRatio"  # I
    .param p9, "gamma"  # I

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iput p1, p0, Lcom/android/server/display/expertmode/ExpertData;->colorGamut:I

    .line 162
    iput p2, p0, Lcom/android/server/display/expertmode/ExpertData;->colorR:I

    .line 163
    iput p3, p0, Lcom/android/server/display/expertmode/ExpertData;->colorG:I

    .line 164
    iput p4, p0, Lcom/android/server/display/expertmode/ExpertData;->colorB:I

    .line 165
    iput p5, p0, Lcom/android/server/display/expertmode/ExpertData;->colorHue:I

    .line 166
    iput p6, p0, Lcom/android/server/display/expertmode/ExpertData;->colorSaturation:I

    .line 167
    iput p7, p0, Lcom/android/server/display/expertmode/ExpertData;->colorValue:I

    .line 168
    iput p8, p0, Lcom/android/server/display/expertmode/ExpertData;->contrastRatio:I

    .line 169
    iput p9, p0, Lcom/android/server/display/expertmode/ExpertData;->gamma:I

    .line 170
    return-void
.end method

.method public static createFromJson(Lorg/json/JSONObject;)Lcom/android/server/display/expertmode/ExpertData;
    .registers 11
    .param p0, "data"  # Lorg/json/JSONObject;

    .line 213
    :try_start_0
    new-instance v0, Lcom/android/server/display/expertmode/ExpertData;

    const-string v1, "color_gamut"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "color_r"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "color_g"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "color_b"

    .line 214
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "color_hue"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "color_saturation"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string v7, "color_value"

    .line 215
    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string v8, "contrast_ratio"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    const-string/jumbo v9, "gamma"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-direct/range {v0 .. v9}, Lcom/android/server/display/expertmode/ExpertData;-><init>(IIIIIIIII)V
    :try_end_3c
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_3c} :catch_3d

    .line 213
    return-object v0

    .line 216
    :catch_3d
    move-exception v0

    .line 217
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "ExpertData"

    const-string v2, "createFromJson failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 220
    .end local v0  # "e":Lorg/json/JSONException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getDefaultValue()Lcom/android/server/display/expertmode/ExpertData;
    .registers 10

    .line 59
    new-instance v0, Lcom/android/server/display/expertmode/ExpertData;

    sget v1, Lcom/android/server/display/expertmode/ExpertData;->DEFAULT_EXPERT_COLOR_GAMUT:I

    sget v2, Lcom/android/server/display/expertmode/ExpertData;->DEFAULT_EXPERT_COLOR_RGB:I

    sget v3, Lcom/android/server/display/expertmode/ExpertData;->DEFAULT_EXPERT_COLOR_RGB:I

    sget v4, Lcom/android/server/display/expertmode/ExpertData;->DEFAULT_EXPERT_COLOR_RGB:I

    sget v5, Lcom/android/server/display/expertmode/ExpertData;->DEFAULT_EXPERT_COLOR_HUE:I

    sget v6, Lcom/android/server/display/expertmode/ExpertData;->DEFAULT_EXPERT_COLOR_SATURATION:I

    sget v7, Lcom/android/server/display/expertmode/ExpertData;->DEFAULT_EXPERT_COLOR_VALUE:I

    sget v8, Lcom/android/server/display/expertmode/ExpertData;->DEFAULT_EXPERT_COLOR_CONTRAST:I

    sget v9, Lcom/android/server/display/expertmode/ExpertData;->DEFAULT_EXPERT_COLOR_GAMMA:I

    invoke-direct/range {v0 .. v9}, Lcom/android/server/display/expertmode/ExpertData;-><init>(IIIIIIIII)V

    return-object v0
.end method

.method public static getFromDatabase(Landroid/content/Context;)Lcom/android/server/display/expertmode/ExpertData;
    .registers 6
    .param p0, "context"  # Landroid/content/Context;

    .line 195
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "expert_data"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, "data":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_13

    .line 198
    return-object v2

    .line 202
    :cond_13
    :try_start_13
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/server/display/expertmode/ExpertData;->createFromJson(Lorg/json/JSONObject;)Lcom/android/server/display/expertmode/ExpertData;

    move-result-object v1
    :try_end_1c
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_1c} :catch_1d

    return-object v1

    .line 203
    :catch_1d
    move-exception v1

    .line 204
    .local v1, "e":Lorg/json/JSONException;
    const-string v3, "ExpertData"

    const-string/jumbo v4, "getFromDatabase failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 207
    .end local v1  # "e":Lorg/json/JSONException;
    return-object v2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"  # Ljava/lang/Object;

    .line 128
    move-object v0, p1

    check-cast v0, Lcom/android/server/display/expertmode/ExpertData;

    .line 129
    .local v0, "data":Lcom/android/server/display/expertmode/ExpertData;
    iget v1, p0, Lcom/android/server/display/expertmode/ExpertData;->colorGamut:I

    iget v2, v0, Lcom/android/server/display/expertmode/ExpertData;->colorGamut:I

    if-ne v1, v2, :cond_3b

    iget v1, p0, Lcom/android/server/display/expertmode/ExpertData;->colorR:I

    iget v2, v0, Lcom/android/server/display/expertmode/ExpertData;->colorR:I

    if-ne v1, v2, :cond_3b

    iget v1, p0, Lcom/android/server/display/expertmode/ExpertData;->colorG:I

    iget v2, v0, Lcom/android/server/display/expertmode/ExpertData;->colorG:I

    if-ne v1, v2, :cond_3b

    iget v1, p0, Lcom/android/server/display/expertmode/ExpertData;->colorB:I

    iget v2, v0, Lcom/android/server/display/expertmode/ExpertData;->colorB:I

    if-ne v1, v2, :cond_3b

    iget v1, p0, Lcom/android/server/display/expertmode/ExpertData;->colorHue:I

    iget v2, v0, Lcom/android/server/display/expertmode/ExpertData;->colorHue:I

    if-ne v1, v2, :cond_3b

    iget v1, p0, Lcom/android/server/display/expertmode/ExpertData;->colorSaturation:I

    iget v2, v0, Lcom/android/server/display/expertmode/ExpertData;->colorSaturation:I

    if-ne v1, v2, :cond_3b

    iget v1, p0, Lcom/android/server/display/expertmode/ExpertData;->colorValue:I

    iget v2, v0, Lcom/android/server/display/expertmode/ExpertData;->colorValue:I

    if-ne v1, v2, :cond_3b

    iget v1, p0, Lcom/android/server/display/expertmode/ExpertData;->contrastRatio:I

    iget v2, v0, Lcom/android/server/display/expertmode/ExpertData;->contrastRatio:I

    if-ne v1, v2, :cond_3b

    iget v1, p0, Lcom/android/server/display/expertmode/ExpertData;->gamma:I

    iget v2, v0, Lcom/android/server/display/expertmode/ExpertData;->gamma:I

    if-ne v1, v2, :cond_3b

    const/4 v1, 0x1

    goto :goto_3c

    :cond_3b
    const/4 v1, 0x0

    :goto_3c
    return v1
.end method

.method public getByCookie(I)I
    .registers 4
    .param p1, "cookie"  # I

    .line 100
    packed-switch p1, :pswitch_data_28

    .line 120
    const-string v0, "ExpertData"

    const-string/jumbo v1, "getByCookie cookie illegal"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const/4 v0, 0x0

    return v0

    .line 118
    :pswitch_d  #0x8
    iget v0, p0, Lcom/android/server/display/expertmode/ExpertData;->gamma:I

    return v0

    .line 116
    :pswitch_10  #0x7
    iget v0, p0, Lcom/android/server/display/expertmode/ExpertData;->contrastRatio:I

    return v0

    .line 114
    :pswitch_13  #0x6
    iget v0, p0, Lcom/android/server/display/expertmode/ExpertData;->colorValue:I

    return v0

    .line 112
    :pswitch_16  #0x5
    iget v0, p0, Lcom/android/server/display/expertmode/ExpertData;->colorSaturation:I

    return v0

    .line 110
    :pswitch_19  #0x4
    iget v0, p0, Lcom/android/server/display/expertmode/ExpertData;->colorHue:I

    return v0

    .line 108
    :pswitch_1c  #0x3
    iget v0, p0, Lcom/android/server/display/expertmode/ExpertData;->colorB:I

    return v0

    .line 106
    :pswitch_1f  #0x2
    iget v0, p0, Lcom/android/server/display/expertmode/ExpertData;->colorG:I

    return v0

    .line 104
    :pswitch_22  #0x1
    iget v0, p0, Lcom/android/server/display/expertmode/ExpertData;->colorR:I

    return v0

    .line 102
    :pswitch_25  #0x0
    iget v0, p0, Lcom/android/server/display/expertmode/ExpertData;->colorGamut:I

    return v0

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_25  #00000000
        :pswitch_22  #00000001
        :pswitch_1f  #00000002
        :pswitch_1c  #00000003
        :pswitch_19  #00000004
        :pswitch_16  #00000005
        :pswitch_13  #00000006
        :pswitch_10  #00000007
        :pswitch_d  #00000008
    .end packed-switch
.end method

.method public toJson()Lorg/json/JSONObject;
    .registers 4

    .line 173
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 175
    .local v0, "jsonObject":Lorg/json/JSONObject;
    :try_start_5
    const-string v1, "color_gamut"

    iget v2, p0, Lcom/android/server/display/expertmode/ExpertData;->colorGamut:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 177
    const-string v1, "color_r"

    iget v2, p0, Lcom/android/server/display/expertmode/ExpertData;->colorR:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 178
    const-string v1, "color_g"

    iget v2, p0, Lcom/android/server/display/expertmode/ExpertData;->colorG:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 179
    const-string v1, "color_b"

    iget v2, p0, Lcom/android/server/display/expertmode/ExpertData;->colorB:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 181
    const-string v1, "color_hue"

    iget v2, p0, Lcom/android/server/display/expertmode/ExpertData;->colorHue:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 182
    const-string v1, "color_saturation"

    iget v2, p0, Lcom/android/server/display/expertmode/ExpertData;->colorSaturation:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 183
    const-string v1, "color_value"

    iget v2, p0, Lcom/android/server/display/expertmode/ExpertData;->colorValue:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 185
    const-string v1, "contrast_ratio"

    iget v2, p0, Lcom/android/server/display/expertmode/ExpertData;->contrastRatio:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 186
    const-string/jumbo v1, "gamma"

    iget v2, p0, Lcom/android/server/display/expertmode/ExpertData;->gamma:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_45
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_45} :catch_46

    .line 189
    goto :goto_4a

    .line 187
    :catch_46
    move-exception v1

    .line 188
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 190
    .end local v1  # "e":Lorg/json/JSONException;
    :goto_4a
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ExpertData{colorGamut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/expertmode/ExpertData;->colorGamut:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", colorR="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/expertmode/ExpertData;->colorR:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", colorG="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/expertmode/ExpertData;->colorG:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", colorB="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/expertmode/ExpertData;->colorB:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", colorHue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/expertmode/ExpertData;->colorHue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", colorSaturation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/expertmode/ExpertData;->colorSaturation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", colorValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/expertmode/ExpertData;->colorValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", contrastRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/expertmode/ExpertData;->contrastRatio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gamma="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/expertmode/ExpertData;->gamma:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
