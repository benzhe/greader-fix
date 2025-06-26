.class public final enum Luk0;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Luk0;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum f:Luk0;

.field public static final enum g:Luk0;

.field public static final enum h:Luk0;

.field public static final enum i:Luk0;

.field public static final synthetic j:[Luk0;


# instance fields
.field public final e:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Luk0;

    const-string v1, "BEGIN_TO_RENDER"

    const/4 v2, 0x0

    const-string v3, "beginToRender"

    invoke-direct {v0, v1, v2, v3}, Luk0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Luk0;->f:Luk0;

    .line 2
    new-instance v1, Luk0;

    const-string v3, "DEFINED_BY_JAVASCRIPT"

    const/4 v4, 0x1

    const-string v5, "definedByJavascript"

    invoke-direct {v1, v3, v4, v5}, Luk0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Luk0;->g:Luk0;

    .line 3
    new-instance v3, Luk0;

    const-string v5, "ONE_PIXEL"

    const/4 v6, 0x2

    const-string v7, "onePixel"

    invoke-direct {v3, v5, v6, v7}, Luk0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Luk0;->h:Luk0;

    .line 4
    new-instance v5, Luk0;

    const-string v7, "UNSPECIFIED"

    const/4 v8, 0x3

    const-string v9, "unspecified"

    invoke-direct {v5, v7, v8, v9}, Luk0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Luk0;->i:Luk0;

    const/4 v7, 0x4

    new-array v7, v7, [Luk0;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Luk0;->j:[Luk0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Luk0;->e:Ljava/lang/String;

    return-void
.end method

.method public static values()[Luk0;
    .locals 1

    .line 1
    sget-object v0, Luk0;->j:[Luk0;

    invoke-virtual {v0}, [Luk0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Luk0;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Luk0;->e:Ljava/lang/String;

    return-object v0
.end method
