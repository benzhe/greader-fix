.class public final enum Lrc6$c$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrc6$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lrc6$c$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum e:Lrc6$c$c;

.field public static final enum f:Lrc6$c$c;

.field public static final enum g:Lrc6$c$c;

.field public static final enum h:Lrc6$c$c;

.field public static final enum i:Lrc6$c$c;

.field public static final enum j:Lrc6$c$c;

.field public static final enum k:Lrc6$c$c;

.field public static final synthetic l:[Lrc6$c$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lrc6$c$c;

    const-string v1, "SET_TO_SERVER_VALUE"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lrc6$c$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lrc6$c$c;->e:Lrc6$c$c;

    .line 2
    new-instance v1, Lrc6$c$c;

    const-string v4, "INCREMENT"

    const/4 v5, 0x1

    const/4 v6, 0x3

    invoke-direct {v1, v4, v5, v6}, Lrc6$c$c;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lrc6$c$c;->f:Lrc6$c$c;

    .line 3
    new-instance v4, Lrc6$c$c;

    const-string v7, "MAXIMUM"

    const/4 v8, 0x4

    invoke-direct {v4, v7, v3, v8}, Lrc6$c$c;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lrc6$c$c;->g:Lrc6$c$c;

    .line 4
    new-instance v7, Lrc6$c$c;

    const-string v9, "MINIMUM"

    const/4 v10, 0x5

    invoke-direct {v7, v9, v6, v10}, Lrc6$c$c;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lrc6$c$c;->h:Lrc6$c$c;

    .line 5
    new-instance v9, Lrc6$c$c;

    const-string v11, "APPEND_MISSING_ELEMENTS"

    const/4 v12, 0x6

    invoke-direct {v9, v11, v8, v12}, Lrc6$c$c;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lrc6$c$c;->i:Lrc6$c$c;

    .line 6
    new-instance v11, Lrc6$c$c;

    const-string v13, "REMOVE_ALL_FROM_ARRAY"

    const/4 v14, 0x7

    invoke-direct {v11, v13, v10, v14}, Lrc6$c$c;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lrc6$c$c;->j:Lrc6$c$c;

    .line 7
    new-instance v13, Lrc6$c$c;

    const-string v15, "TRANSFORMTYPE_NOT_SET"

    invoke-direct {v13, v15, v12, v2}, Lrc6$c$c;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lrc6$c$c;->k:Lrc6$c$c;

    new-array v14, v14, [Lrc6$c$c;

    aput-object v0, v14, v2

    aput-object v1, v14, v5

    aput-object v4, v14, v3

    aput-object v7, v14, v6

    aput-object v9, v14, v8

    aput-object v11, v14, v10

    aput-object v13, v14, v12

    .line 8
    sput-object v14, Lrc6$c$c;->l:[Lrc6$c$c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lrc6$c$c;
    .locals 1

    .line 1
    const-class v0, Lrc6$c$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lrc6$c$c;

    return-object p0
.end method

.method public static values()[Lrc6$c$c;
    .locals 1

    .line 1
    sget-object v0, Lrc6$c$c;->l:[Lrc6$c$c;

    invoke-virtual {v0}, [Lrc6$c$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrc6$c$c;

    return-object v0
.end method
