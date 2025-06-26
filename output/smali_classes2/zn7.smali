.class public final enum Lzn7;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lzn7;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final enum f:Lzn7;

.field public static final synthetic g:[Lzn7;


# instance fields
.field public final e:I


# direct methods
.method public static constructor <clinit>()V
    .locals 14

    const/4 v0, 0x7

    new-array v0, v0, [Lzn7;

    new-instance v7, Lzn7;

    const-string v2, "IGNORE_CASE"

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x2

    move-object v1, v7

    .line 1
    invoke-direct/range {v1 .. v6}, Lzn7;-><init>(Ljava/lang/String;IIII)V

    sput-object v7, Lzn7;->f:Lzn7;

    const/4 v1, 0x0

    aput-object v7, v0, v1

    new-instance v1, Lzn7;

    const-string v9, "MULTILINE"

    const/4 v10, 0x1

    const/16 v11, 0x8

    const/4 v12, 0x0

    const/4 v13, 0x2

    move-object v8, v1

    .line 2
    invoke-direct/range {v8 .. v13}, Lzn7;-><init>(Ljava/lang/String;IIII)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lzn7;

    const-string v4, "LITERAL"

    const/4 v5, 0x2

    const/16 v6, 0x10

    const/4 v7, 0x0

    const/4 v8, 0x2

    move-object v3, v1

    .line 3
    invoke-direct/range {v3 .. v8}, Lzn7;-><init>(Ljava/lang/String;IIII)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lzn7;

    const-string v4, "UNIX_LINES"

    const/4 v5, 0x3

    const/4 v6, 0x1

    move-object v3, v1

    .line 4
    invoke-direct/range {v3 .. v8}, Lzn7;-><init>(Ljava/lang/String;IIII)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lzn7;

    const-string v4, "COMMENTS"

    const/4 v5, 0x4

    const/4 v6, 0x4

    move-object v3, v1

    .line 5
    invoke-direct/range {v3 .. v8}, Lzn7;-><init>(Ljava/lang/String;IIII)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lzn7;

    const-string v4, "DOT_MATCHES_ALL"

    const/4 v5, 0x5

    const/16 v6, 0x20

    move-object v3, v1

    .line 6
    invoke-direct/range {v3 .. v8}, Lzn7;-><init>(Ljava/lang/String;IIII)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lzn7;

    const-string v4, "CANON_EQ"

    const/4 v5, 0x6

    const/16 v6, 0x80

    move-object v3, v1

    .line 7
    invoke-direct/range {v3 .. v8}, Lzn7;-><init>(Ljava/lang/String;IIII)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lzn7;->g:[Lzn7;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIII)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lzn7;->e:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lzn7;
    .locals 1

    const-class v0, Lzn7;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lzn7;

    return-object p0
.end method

.method public static values()[Lzn7;
    .locals 1

    sget-object v0, Lzn7;->g:[Lzn7;

    invoke-virtual {v0}, [Lzn7;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lzn7;

    return-object v0
.end method
