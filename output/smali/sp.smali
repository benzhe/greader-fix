.class public final enum Lsp;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lsp;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final enum f:Lsp;

.field public static final enum g:Lsp;

.field public static final enum h:Lsp;

.field public static final enum i:Lsp;

.field public static final enum j:Lsp;

.field public static final enum k:Lsp;

.field public static final enum l:Lsp;

.field public static final enum m:Lsp;

.field public static final enum n:Lsp;

.field public static final enum o:Lsp;

.field public static final enum p:Lsp;

.field public static final synthetic q:[Lsp;


# instance fields
.field public final e:Lap$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lsp;

    sget-object v1, Lap$a;->h:Lap$a;

    const-string v2, "ALLOW_JAVA_COMMENTS"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v3, v1}, Lsp;-><init>(Ljava/lang/String;IZLap$a;)V

    sput-object v0, Lsp;->f:Lsp;

    .line 2
    new-instance v1, Lsp;

    sget-object v2, Lap$a;->i:Lap$a;

    const-string v4, "ALLOW_YAML_COMMENTS"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v3, v2}, Lsp;-><init>(Ljava/lang/String;IZLap$a;)V

    sput-object v1, Lsp;->g:Lsp;

    .line 3
    new-instance v2, Lsp;

    sget-object v4, Lap$a;->k:Lap$a;

    const-string v6, "ALLOW_SINGLE_QUOTES"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v3, v4}, Lsp;-><init>(Ljava/lang/String;IZLap$a;)V

    sput-object v2, Lsp;->h:Lsp;

    .line 4
    new-instance v4, Lsp;

    sget-object v6, Lap$a;->j:Lap$a;

    const-string v8, "ALLOW_UNQUOTED_FIELD_NAMES"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v3, v6}, Lsp;-><init>(Ljava/lang/String;IZLap$a;)V

    sput-object v4, Lsp;->i:Lsp;

    .line 5
    new-instance v6, Lsp;

    sget-object v8, Lap$a;->l:Lap$a;

    const-string v10, "ALLOW_UNESCAPED_CONTROL_CHARS"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v3, v8}, Lsp;-><init>(Ljava/lang/String;IZLap$a;)V

    sput-object v6, Lsp;->j:Lsp;

    .line 6
    new-instance v8, Lsp;

    sget-object v10, Lap$a;->m:Lap$a;

    const-string v12, "ALLOW_BACKSLASH_ESCAPING_ANY_CHARACTER"

    const/4 v13, 0x5

    invoke-direct {v8, v12, v13, v3, v10}, Lsp;-><init>(Ljava/lang/String;IZLap$a;)V

    sput-object v8, Lsp;->k:Lsp;

    .line 7
    new-instance v10, Lsp;

    sget-object v12, Lap$a;->n:Lap$a;

    const-string v14, "ALLOW_LEADING_ZEROS_FOR_NUMBERS"

    const/4 v15, 0x6

    invoke-direct {v10, v14, v15, v3, v12}, Lsp;-><init>(Ljava/lang/String;IZLap$a;)V

    sput-object v10, Lsp;->l:Lsp;

    .line 8
    new-instance v12, Lsp;

    sget-object v14, Lap$a;->o:Lap$a;

    const-string v15, "ALLOW_LEADING_DECIMAL_POINT_FOR_NUMBERS"

    const/4 v13, 0x7

    invoke-direct {v12, v15, v13, v3, v14}, Lsp;-><init>(Ljava/lang/String;IZLap$a;)V

    sput-object v12, Lsp;->m:Lsp;

    .line 9
    new-instance v14, Lsp;

    sget-object v15, Lap$a;->p:Lap$a;

    const-string v13, "ALLOW_NON_NUMERIC_NUMBERS"

    const/16 v11, 0x8

    invoke-direct {v14, v13, v11, v3, v15}, Lsp;-><init>(Ljava/lang/String;IZLap$a;)V

    sput-object v14, Lsp;->n:Lsp;

    .line 10
    new-instance v13, Lsp;

    sget-object v15, Lap$a;->q:Lap$a;

    const-string v11, "ALLOW_MISSING_VALUES"

    const/16 v9, 0x9

    invoke-direct {v13, v11, v9, v3, v15}, Lsp;-><init>(Ljava/lang/String;IZLap$a;)V

    sput-object v13, Lsp;->o:Lsp;

    .line 11
    new-instance v11, Lsp;

    sget-object v15, Lap$a;->r:Lap$a;

    const-string v9, "ALLOW_TRAILING_COMMA"

    const/16 v7, 0xa

    invoke-direct {v11, v9, v7, v3, v15}, Lsp;-><init>(Ljava/lang/String;IZLap$a;)V

    sput-object v11, Lsp;->p:Lsp;

    const/16 v9, 0xb

    new-array v9, v9, [Lsp;

    aput-object v0, v9, v3

    aput-object v1, v9, v5

    const/4 v0, 0x2

    aput-object v2, v9, v0

    const/4 v0, 0x3

    aput-object v4, v9, v0

    const/4 v0, 0x4

    aput-object v6, v9, v0

    const/4 v0, 0x5

    aput-object v8, v9, v0

    const/4 v0, 0x6

    aput-object v10, v9, v0

    const/4 v0, 0x7

    aput-object v12, v9, v0

    const/16 v0, 0x8

    aput-object v14, v9, v0

    const/16 v0, 0x9

    aput-object v13, v9, v0

    aput-object v11, v9, v7

    .line 12
    sput-object v9, Lsp;->q:[Lsp;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZLap$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lap$a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 3
    iput-object p4, p0, Lsp;->e:Lap$a;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lsp;
    .locals 1

    .line 1
    const-class v0, Lsp;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lsp;

    return-object p0
.end method

.method public static values()[Lsp;
    .locals 1

    .line 1
    sget-object v0, Lsp;->q:[Lsp;

    invoke-virtual {v0}, [Lsp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsp;

    return-object v0
.end method
