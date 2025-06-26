.class public final enum Lxo;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lxo;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum g:Lxo;

.field public static final enum h:Lxo;

.field public static final enum i:Lxo;

.field public static final enum j:Lxo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum k:Lxo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum l:Lxo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum m:Lxo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum n:Lxo;

.field public static final enum o:Lxo;

.field public static final enum p:Lxo;

.field public static final synthetic q:[Lxo;


# instance fields
.field public final e:Z

.field public final f:I


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lxo;

    const-string v1, "AUTO_CLOSE_TARGET"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lxo;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lxo;->g:Lxo;

    .line 2
    new-instance v1, Lxo;

    const-string v4, "AUTO_CLOSE_JSON_CONTENT"

    invoke-direct {v1, v4, v3, v3}, Lxo;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lxo;->h:Lxo;

    .line 3
    new-instance v4, Lxo;

    const-string v5, "FLUSH_PASSED_TO_STREAM"

    const/4 v6, 0x2

    invoke-direct {v4, v5, v6, v3}, Lxo;-><init>(Ljava/lang/String;IZ)V

    sput-object v4, Lxo;->i:Lxo;

    .line 4
    new-instance v5, Lxo;

    const-string v7, "QUOTE_FIELD_NAMES"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v3}, Lxo;-><init>(Ljava/lang/String;IZ)V

    sput-object v5, Lxo;->j:Lxo;

    .line 5
    new-instance v7, Lxo;

    const-string v9, "QUOTE_NON_NUMERIC_NUMBERS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v3}, Lxo;-><init>(Ljava/lang/String;IZ)V

    sput-object v7, Lxo;->k:Lxo;

    .line 6
    new-instance v9, Lxo;

    const-string v11, "ESCAPE_NON_ASCII"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v2}, Lxo;-><init>(Ljava/lang/String;IZ)V

    sput-object v9, Lxo;->l:Lxo;

    .line 7
    new-instance v11, Lxo;

    const-string v13, "WRITE_NUMBERS_AS_STRINGS"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v2}, Lxo;-><init>(Ljava/lang/String;IZ)V

    sput-object v11, Lxo;->m:Lxo;

    .line 8
    new-instance v13, Lxo;

    const-string v15, "WRITE_BIGDECIMAL_AS_PLAIN"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v2}, Lxo;-><init>(Ljava/lang/String;IZ)V

    sput-object v13, Lxo;->n:Lxo;

    .line 9
    new-instance v15, Lxo;

    const-string v14, "STRICT_DUPLICATE_DETECTION"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v2}, Lxo;-><init>(Ljava/lang/String;IZ)V

    sput-object v15, Lxo;->o:Lxo;

    .line 10
    new-instance v14, Lxo;

    const-string v12, "IGNORE_UNKNOWN"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v2}, Lxo;-><init>(Ljava/lang/String;IZ)V

    sput-object v14, Lxo;->p:Lxo;

    const/16 v12, 0xa

    new-array v12, v12, [Lxo;

    aput-object v0, v12, v2

    aput-object v1, v12, v3

    aput-object v4, v12, v6

    aput-object v5, v12, v8

    const/4 v0, 0x4

    aput-object v7, v12, v0

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    const/4 v0, 0x7

    aput-object v13, v12, v0

    const/16 v0, 0x8

    aput-object v15, v12, v0

    aput-object v14, v12, v10

    .line 11
    sput-object v12, Lxo;->q:[Lxo;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-boolean p3, p0, Lxo;->e:Z

    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 p2, 0x1

    shl-int p1, p2, p1

    iput p1, p0, Lxo;->f:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lxo;
    .locals 1

    .line 1
    const-class v0, Lxo;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lxo;

    return-object p0
.end method

.method public static values()[Lxo;
    .locals 1

    .line 1
    sget-object v0, Lxo;->q:[Lxo;

    invoke-virtual {v0}, [Lxo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lxo;

    return-object v0
.end method
