# classes.dex

.class public Lcom/android/server/display/aiautobrt/config/PackageInfo;
.super Ljava/lang/Object;
.source "PackageInfo.java"


# instance fields
.field private cateId:Ljava/lang/Integer;

.field private name:Ljava/lang/String;

.field private top:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/aiautobrt/config/PackageInfo;
    .registers 5
    .param p0, "_parser"  # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    .line 60
    new-instance v0, Lcom/android/server/display/aiautobrt/config/PackageInfo;

    invoke-direct {v0}, Lcom/android/server/display/aiautobrt/config/PackageInfo;-><init>()V

    .line 61
    .local v0, "_instance":Lcom/android/server/display/aiautobrt/config/PackageInfo;
    const/4 v1, 0x0

    .line 62
    .local v1, "_raw":Ljava/lang/String;
    const-string/jumbo v2, "name"

    const/4 v3, 0x0

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 63
    if-eqz v1, :cond_14

    .line 64
    move-object v2, v1

    .line 65
    .local v2, "_value":Ljava/lang/String;
    invoke-virtual {v0, v2}, Lcom/android/server/display/aiautobrt/config/PackageInfo;->setName(Ljava/lang/String;)V

    .line 67
    .end local v2  # "_value":Ljava/lang/String;
    :cond_14
    const-string v2, "cateId"

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 68
    if-eqz v1, :cond_23

    .line 69
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 70
    .local v2, "_value":I
    invoke-virtual {v0, v2}, Lcom/android/server/display/aiautobrt/config/PackageInfo;->setCateId(I)V

    .line 72
    .end local v2  # "_value":I
    :cond_23
    const-string/jumbo v2, "top"

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 73
    if-eqz v1, :cond_33

    .line 74
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 75
    .local v2, "_value":Z
    invoke-virtual {v0, v2}, Lcom/android/server/display/aiautobrt/config/PackageInfo;->setTop(Z)V

    .line 77
    .end local v2  # "_value":Z
    :cond_33
    invoke-static {p0}, Lcom/android/server/display/aiautobrt/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 78
    return-object v0
.end method


# virtual methods
.method public getCateId()I
    .registers 2

    .line 24
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/config/PackageInfo;->cateId:Ljava/lang/Integer;

    if-nez v0, :cond_6

    .line 25
    const/4 v0, 0x0

    return v0

    .line 27
    :cond_6
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/config/PackageInfo;->cateId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 9
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/config/PackageInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method hasCateId()Z
    .registers 2

    .line 31
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/config/PackageInfo;->cateId:Ljava/lang/Integer;

    if-nez v0, :cond_6

    .line 32
    const/4 v0, 0x0

    return v0

    .line 34
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method hasName()Z
    .registers 2

    .line 13
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/config/PackageInfo;->name:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 14
    const/4 v0, 0x0

    return v0

    .line 16
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method hasTop()Z
    .registers 2

    .line 49
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/config/PackageInfo;->top:Ljava/lang/Boolean;

    if-nez v0, :cond_6

    .line 50
    const/4 v0, 0x0

    return v0

    .line 52
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method public isTop()Z
    .registers 2

    .line 42
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/config/PackageInfo;->top:Ljava/lang/Boolean;

    if-nez v0, :cond_6

    .line 43
    const/4 v0, 0x0

    return v0

    .line 45
    :cond_6
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/config/PackageInfo;->top:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public setCateId(I)V
    .registers 3
    .param p1, "cateId"  # I

    .line 38
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/aiautobrt/config/PackageInfo;->cateId:Ljava/lang/Integer;

    .line 39
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"  # Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lcom/android/server/display/aiautobrt/config/PackageInfo;->name:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public setTop(Z)V
    .registers 3
    .param p1, "top"  # Z

    .line 56
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/aiautobrt/config/PackageInfo;->top:Ljava/lang/Boolean;

    .line 57
    return-void
.end method
