.class public final enum Lorg/apache/commons/text/lookup/DefaultStringLookup;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/text/lookup/DefaultStringLookup;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/text/lookup/DefaultStringLookup;

.field public static final enum BASE64_DECODER:Lorg/apache/commons/text/lookup/DefaultStringLookup;

.field public static final enum BASE64_ENCODER:Lorg/apache/commons/text/lookup/DefaultStringLookup;

.field public static final enum CONST:Lorg/apache/commons/text/lookup/DefaultStringLookup;

.field public static final enum DATE:Lorg/apache/commons/text/lookup/DefaultStringLookup;

.field public static final enum DNS:Lorg/apache/commons/text/lookup/DefaultStringLookup;

.field public static final enum ENVIRONMENT:Lorg/apache/commons/text/lookup/DefaultStringLookup;

.field public static final enum FILE:Lorg/apache/commons/text/lookup/DefaultStringLookup;

.field public static final enum JAVA:Lorg/apache/commons/text/lookup/DefaultStringLookup;

.field public static final enum LOCAL_HOST:Lorg/apache/commons/text/lookup/DefaultStringLookup;

.field public static final enum PROPERTIES:Lorg/apache/commons/text/lookup/DefaultStringLookup;

.field public static final enum RESOURCE_BUNDLE:Lorg/apache/commons/text/lookup/DefaultStringLookup;

.field public static final enum SCRIPT:Lorg/apache/commons/text/lookup/DefaultStringLookup;

.field public static final enum SYSTEM_PROPERTIES:Lorg/apache/commons/text/lookup/DefaultStringLookup;

.field public static final enum URL:Lorg/apache/commons/text/lookup/DefaultStringLookup;

.field public static final enum URL_DECODER:Lorg/apache/commons/text/lookup/DefaultStringLookup;

.field public static final enum URL_ENCODER:Lorg/apache/commons/text/lookup/DefaultStringLookup;

.field public static final enum XML:Lorg/apache/commons/text/lookup/DefaultStringLookup;


# instance fields
.field private final key:Ljava/lang/String;

.field private final lookup:Lorg/apache/commons/text/lookup/StringLookup;


# direct methods
.method public static constructor <clinit>()V
    .locals 21

    .line 1
    new-instance v0, Lorg/apache/commons/text/lookup/DefaultStringLookup;

    sget-object v1, Lorg/apache/commons/text/lookup/StringLookupFactory;->INSTANCE:Lorg/apache/commons/text/lookup/StringLookupFactory;

    invoke-virtual {v1}, Lorg/apache/commons/text/lookup/StringLookupFactory;->base64DecoderStringLookup()Lorg/apache/commons/text/lookup/StringLookup;

    move-result-object v2

    const-string v3, "BASE64_DECODER"

    const/4 v4, 0x0

    const-string v5, "base64Decoder"

    invoke-direct {v0, v3, v4, v5, v2}, Lorg/apache/commons/text/lookup/DefaultStringLookup;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/commons/text/lookup/StringLookup;)V

    sput-object v0, Lorg/apache/commons/text/lookup/DefaultStringLookup;->BASE64_DECODER:Lorg/apache/commons/text/lookup/DefaultStringLookup;

    .line 2
    new-instance v2, Lorg/apache/commons/text/lookup/DefaultStringLookup;

    invoke-virtual {v1}, Lorg/apache/commons/text/lookup/StringLookupFactory;->base64EncoderStringLookup()Lorg/apache/commons/text/lookup/StringLookup;

    move-result-object v3

    const-string v5, "BASE64_ENCODER"

    const/4 v6, 0x1

    const-string v7, "base64Encoder"

    invoke-direct {v2, v5, v6, v7, v3}, Lorg/apache/commons/text/lookup/DefaultStringLookup;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/commons/text/lookup/StringLookup;)V

    sput-object v2, Lorg/apache/commons/text/lookup/DefaultStringLookup;->BASE64_ENCODER:Lorg/apache/commons/text/lookup/DefaultStringLookup;

    .line 3
    new-instance v3, Lorg/apache/commons/text/lookup/DefaultStringLookup;

    invoke-virtual {v1}, Lorg/apache/commons/text/lookup/StringLookupFactory;->constantStringLookup()Lorg/apache/commons/text/lookup/StringLookup;

    move-result-object v5

    const-string v7, "CONST"

    const/4 v8, 0x2

    const-string v9, "const"

    invoke-direct {v3, v7, v8, v9, v5}, Lorg/apache/commons/text/lookup/DefaultStringLookup;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/commons/text/lookup/StringLookup;)V

    sput-object v3, Lorg/apache/commons/text/lookup/DefaultStringLookup;->CONST:Lorg/apache/commons/text/lookup/DefaultStringLookup;

    .line 4
    new-instance v5, Lorg/apache/commons/text/lookup/DefaultStringLookup;

    invoke-virtual {v1}, Lorg/apache/commons/text/lookup/StringLookupFactory;->dateStringLookup()Lorg/apache/commons/text/lookup/StringLookup;

    move-result-object v7

    const-string v9, "DATE"

    const/4 v10, 0x3

    const-string v11, "date"

    invoke-direct {v5, v9, v10, v11, v7}, Lorg/apache/commons/text/lookup/DefaultStringLookup;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/commons/text/lookup/StringLookup;)V

    sput-object v5, Lorg/apache/commons/text/lookup/DefaultStringLookup;->DATE:Lorg/apache/commons/text/lookup/DefaultStringLookup;

    .line 5
    new-instance v7, Lorg/apache/commons/text/lookup/DefaultStringLookup;

    invoke-virtual {v1}, Lorg/apache/commons/text/lookup/StringLookupFactory;->dnsStringLookup()Lorg/apache/commons/text/lookup/StringLookup;

    move-result-object v9

    const-string v11, "DNS"

    const/4 v12, 0x4

    const-string v13, "dns"

    invoke-direct {v7, v11, v12, v13, v9}, Lorg/apache/commons/text/lookup/DefaultStringLookup;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/commons/text/lookup/StringLookup;)V

    sput-object v7, Lorg/apache/commons/text/lookup/DefaultStringLookup;->DNS:Lorg/apache/commons/text/lookup/DefaultStringLookup;

    .line 6
    new-instance v9, Lorg/apache/commons/text/lookup/DefaultStringLookup;

    invoke-virtual {v1}, Lorg/apache/commons/text/lookup/StringLookupFactory;->environmentVariableStringLookup()Lorg/apache/commons/text/lookup/StringLookup;

    move-result-object v11

    const-string v13, "ENVIRONMENT"

    const/4 v14, 0x5

    const-string v15, "env"

    invoke-direct {v9, v13, v14, v15, v11}, Lorg/apache/commons/text/lookup/DefaultStringLookup;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/commons/text/lookup/StringLookup;)V

    sput-object v9, Lorg/apache/commons/text/lookup/DefaultStringLookup;->ENVIRONMENT:Lorg/apache/commons/text/lookup/DefaultStringLookup;

    .line 7
    new-instance v11, Lorg/apache/commons/text/lookup/DefaultStringLookup;

    invoke-virtual {v1}, Lorg/apache/commons/text/lookup/StringLookupFactory;->fileStringLookup()Lorg/apache/commons/text/lookup/StringLookup;

    move-result-object v13

    const-string v15, "FILE"

    const/4 v14, 0x6

    const-string v12, "file"

    invoke-direct {v11, v15, v14, v12, v13}, Lorg/apache/commons/text/lookup/DefaultStringLookup;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/commons/text/lookup/StringLookup;)V

    sput-object v11, Lorg/apache/commons/text/lookup/DefaultStringLookup;->FILE:Lorg/apache/commons/text/lookup/DefaultStringLookup;

    .line 8
    new-instance v12, Lorg/apache/commons/text/lookup/DefaultStringLookup;

    invoke-virtual {v1}, Lorg/apache/commons/text/lookup/StringLookupFactory;->javaPlatformStringLookup()Lorg/apache/commons/text/lookup/StringLookup;

    move-result-object v13

    const-string v15, "JAVA"

    const/4 v14, 0x7

    const-string v10, "java"

    invoke-direct {v12, v15, v14, v10, v13}, Lorg/apache/commons/text/lookup/DefaultStringLookup;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/commons/text/lookup/StringLookup;)V

    sput-object v12, Lorg/apache/commons/text/lookup/DefaultStringLookup;->JAVA:Lorg/apache/commons/text/lookup/DefaultStringLookup;

    .line 9
    new-instance v10, Lorg/apache/commons/text/lookup/DefaultStringLookup;

    invoke-virtual {v1}, Lorg/apache/commons/text/lookup/StringLookupFactory;->localHostStringLookup()Lorg/apache/commons/text/lookup/StringLookup;

    move-result-object v13

    const-string v15, "LOCAL_HOST"

    const/16 v14, 0x8

    const-string v8, "localhost"

    invoke-direct {v10, v15, v14, v8, v13}, Lorg/apache/commons/text/lookup/DefaultStringLookup;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/commons/text/lookup/StringLookup;)V

    sput-object v10, Lorg/apache/commons/text/lookup/DefaultStringLookup;->LOCAL_HOST:Lorg/apache/commons/text/lookup/DefaultStringLookup;

    .line 10
    new-instance v8, Lorg/apache/commons/text/lookup/DefaultStringLookup;

    invoke-virtual {v1}, Lorg/apache/commons/text/lookup/StringLookupFactory;->propertiesStringLookup()Lorg/apache/commons/text/lookup/StringLookup;

    move-result-object v13

    const-string v15, "PROPERTIES"

    const/16 v14, 0x9

    const-string v6, "properties"

    invoke-direct {v8, v15, v14, v6, v13}, Lorg/apache/commons/text/lookup/DefaultStringLookup;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/commons/text/lookup/StringLookup;)V

    sput-object v8, Lorg/apache/commons/text/lookup/DefaultStringLookup;->PROPERTIES:Lorg/apache/commons/text/lookup/DefaultStringLookup;

    .line 11
    new-instance v6, Lorg/apache/commons/text/lookup/DefaultStringLookup;

    invoke-virtual {v1}, Lorg/apache/commons/text/lookup/StringLookupFactory;->resourceBundleStringLookup()Lorg/apache/commons/text/lookup/StringLookup;

    move-result-object v13

    const-string v15, "RESOURCE_BUNDLE"

    const/16 v14, 0xa

    const-string v4, "resourceBundle"

    invoke-direct {v6, v15, v14, v4, v13}, Lorg/apache/commons/text/lookup/DefaultStringLookup;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/commons/text/lookup/StringLookup;)V

    sput-object v6, Lorg/apache/commons/text/lookup/DefaultStringLookup;->RESOURCE_BUNDLE:Lorg/apache/commons/text/lookup/DefaultStringLookup;

    .line 12
    new-instance v4, Lorg/apache/commons/text/lookup/DefaultStringLookup;

    invoke-virtual {v1}, Lorg/apache/commons/text/lookup/StringLookupFactory;->scriptStringLookup()Lorg/apache/commons/text/lookup/StringLookup;

    move-result-object v13

    const-string v15, "SCRIPT"

    const/16 v14, 0xb

    move-object/from16 v16, v6

    const-string v6, "script"

    invoke-direct {v4, v15, v14, v6, v13}, Lorg/apache/commons/text/lookup/DefaultStringLookup;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/commons/text/lookup/StringLookup;)V

    sput-object v4, Lorg/apache/commons/text/lookup/DefaultStringLookup;->SCRIPT:Lorg/apache/commons/text/lookup/DefaultStringLookup;

    .line 13
    new-instance v6, Lorg/apache/commons/text/lookup/DefaultStringLookup;

    invoke-virtual {v1}, Lorg/apache/commons/text/lookup/StringLookupFactory;->systemPropertyStringLookup()Lorg/apache/commons/text/lookup/StringLookup;

    move-result-object v13

    const-string v15, "SYSTEM_PROPERTIES"

    const/16 v14, 0xc

    move-object/from16 v17, v4

    const-string v4, "sys"

    invoke-direct {v6, v15, v14, v4, v13}, Lorg/apache/commons/text/lookup/DefaultStringLookup;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/commons/text/lookup/StringLookup;)V

    sput-object v6, Lorg/apache/commons/text/lookup/DefaultStringLookup;->SYSTEM_PROPERTIES:Lorg/apache/commons/text/lookup/DefaultStringLookup;

    .line 14
    new-instance v4, Lorg/apache/commons/text/lookup/DefaultStringLookup;

    invoke-virtual {v1}, Lorg/apache/commons/text/lookup/StringLookupFactory;->urlStringLookup()Lorg/apache/commons/text/lookup/StringLookup;

    move-result-object v13

    const-string v15, "URL"

    const/16 v14, 0xd

    move-object/from16 v18, v6

    const-string v6, "url"

    invoke-direct {v4, v15, v14, v6, v13}, Lorg/apache/commons/text/lookup/DefaultStringLookup;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/commons/text/lookup/StringLookup;)V

    sput-object v4, Lorg/apache/commons/text/lookup/DefaultStringLookup;->URL:Lorg/apache/commons/text/lookup/DefaultStringLookup;

    .line 15
    new-instance v6, Lorg/apache/commons/text/lookup/DefaultStringLookup;

    invoke-virtual {v1}, Lorg/apache/commons/text/lookup/StringLookupFactory;->urlDecoderStringLookup()Lorg/apache/commons/text/lookup/StringLookup;

    move-result-object v13

    const-string v15, "URL_DECODER"

    const/16 v14, 0xe

    move-object/from16 v19, v4

    const-string v4, "urlDecoder"

    invoke-direct {v6, v15, v14, v4, v13}, Lorg/apache/commons/text/lookup/DefaultStringLookup;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/commons/text/lookup/StringLookup;)V

    sput-object v6, Lorg/apache/commons/text/lookup/DefaultStringLookup;->URL_DECODER:Lorg/apache/commons/text/lookup/DefaultStringLookup;

    .line 16
    new-instance v4, Lorg/apache/commons/text/lookup/DefaultStringLookup;

    invoke-virtual {v1}, Lorg/apache/commons/text/lookup/StringLookupFactory;->urlEncoderStringLookup()Lorg/apache/commons/text/lookup/StringLookup;

    move-result-object v13

    const-string v15, "URL_ENCODER"

    const/16 v14, 0xf

    move-object/from16 v20, v6

    const-string v6, "urlEncoder"

    invoke-direct {v4, v15, v14, v6, v13}, Lorg/apache/commons/text/lookup/DefaultStringLookup;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/commons/text/lookup/StringLookup;)V

    sput-object v4, Lorg/apache/commons/text/lookup/DefaultStringLookup;->URL_ENCODER:Lorg/apache/commons/text/lookup/DefaultStringLookup;

    .line 17
    new-instance v6, Lorg/apache/commons/text/lookup/DefaultStringLookup;

    invoke-virtual {v1}, Lorg/apache/commons/text/lookup/StringLookupFactory;->xmlStringLookup()Lorg/apache/commons/text/lookup/StringLookup;

    move-result-object v1

    const-string v13, "XML"

    const/16 v15, 0x10

    const-string v14, "xml"

    invoke-direct {v6, v13, v15, v14, v1}, Lorg/apache/commons/text/lookup/DefaultStringLookup;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/commons/text/lookup/StringLookup;)V

    sput-object v6, Lorg/apache/commons/text/lookup/DefaultStringLookup;->XML:Lorg/apache/commons/text/lookup/DefaultStringLookup;

    const/16 v1, 0x11

    new-array v1, v1, [Lorg/apache/commons/text/lookup/DefaultStringLookup;

    const/4 v13, 0x0

    aput-object v0, v1, v13

    const/4 v0, 0x1

    aput-object v2, v1, v0

    const/4 v0, 0x2

    aput-object v3, v1, v0

    const/4 v0, 0x3

    aput-object v5, v1, v0

    const/4 v0, 0x4

    aput-object v7, v1, v0

    const/4 v0, 0x5

    aput-object v9, v1, v0

    const/4 v0, 0x6

    aput-object v11, v1, v0

    const/4 v0, 0x7

    aput-object v12, v1, v0

    const/16 v0, 0x8

    aput-object v10, v1, v0

    const/16 v0, 0x9

    aput-object v8, v1, v0

    const/16 v0, 0xa

    aput-object v16, v1, v0

    const/16 v0, 0xb

    aput-object v17, v1, v0

    const/16 v0, 0xc

    aput-object v18, v1, v0

    const/16 v0, 0xd

    aput-object v19, v1, v0

    const/16 v0, 0xe

    aput-object v20, v1, v0

    const/16 v0, 0xf

    aput-object v4, v1, v0

    aput-object v6, v1, v15

    .line 18
    sput-object v1, Lorg/apache/commons/text/lookup/DefaultStringLookup;->$VALUES:[Lorg/apache/commons/text/lookup/DefaultStringLookup;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/commons/text/lookup/StringLookup;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/commons/text/lookup/StringLookup;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lorg/apache/commons/text/lookup/DefaultStringLookup;->key:Ljava/lang/String;

    .line 3
    iput-object p4, p0, Lorg/apache/commons/text/lookup/DefaultStringLookup;->lookup:Lorg/apache/commons/text/lookup/StringLookup;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/text/lookup/DefaultStringLookup;
    .locals 1

    .line 1
    const-class v0, Lorg/apache/commons/text/lookup/DefaultStringLookup;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/text/lookup/DefaultStringLookup;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/text/lookup/DefaultStringLookup;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/text/lookup/DefaultStringLookup;->$VALUES:[Lorg/apache/commons/text/lookup/DefaultStringLookup;

    invoke-virtual {v0}, [Lorg/apache/commons/text/lookup/DefaultStringLookup;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/text/lookup/DefaultStringLookup;

    return-object v0
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/text/lookup/DefaultStringLookup;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getStringLookup()Lorg/apache/commons/text/lookup/StringLookup;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/text/lookup/DefaultStringLookup;->lookup:Lorg/apache/commons/text/lookup/StringLookup;

    return-object v0
.end method
