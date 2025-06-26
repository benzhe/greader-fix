.class public final enum Ltn4;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ltn4;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum f:Ltn4;

.field public static final enum g:Ltn4;

.field public static final enum h:Ltn4;

.field public static final enum i:Ltn4;

.field public static final enum j:Ltn4;

.field public static final enum k:Ltn4;

.field public static final enum l:Ltn4;

.field public static final enum m:Ltn4;

.field public static final enum n:Ltn4;

.field public static final synthetic o:[Ltn4;


# instance fields
.field public final e:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Ltn4;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "INT"

    invoke-direct {v0, v3, v1, v2}, Ltn4;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Ltn4;->f:Ltn4;

    .line 2
    new-instance v2, Ltn4;

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "LONG"

    const/4 v5, 0x1

    invoke-direct {v2, v4, v5, v3}, Ltn4;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v2, Ltn4;->g:Ltn4;

    .line 3
    new-instance v3, Ltn4;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const-string v6, "FLOAT"

    const/4 v7, 0x2

    invoke-direct {v3, v6, v7, v4}, Ltn4;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v3, Ltn4;->h:Ltn4;

    .line 4
    new-instance v4, Ltn4;

    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    const-string v8, "DOUBLE"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Ltn4;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v4, Ltn4;->i:Ltn4;

    .line 5
    new-instance v6, Ltn4;

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v10, "BOOLEAN"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Ltn4;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v6, Ltn4;->j:Ltn4;

    .line 6
    new-instance v8, Ltn4;

    const-string v10, "STRING"

    const/4 v12, 0x5

    const-string v13, ""

    invoke-direct {v8, v10, v12, v13}, Ltn4;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v8, Ltn4;->k:Ltn4;

    .line 7
    new-instance v10, Ltn4;

    sget-object v13, Lvj4;->f:Lvj4;

    const-string v14, "BYTE_STRING"

    const/4 v15, 0x6

    invoke-direct {v10, v14, v15, v13}, Ltn4;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v10, Ltn4;->l:Ltn4;

    .line 8
    new-instance v13, Ltn4;

    const-string v14, "ENUM"

    const/4 v15, 0x7

    const/4 v12, 0x0

    invoke-direct {v13, v14, v15, v12}, Ltn4;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v13, Ltn4;->m:Ltn4;

    .line 9
    new-instance v14, Ltn4;

    const-string v15, "MESSAGE"

    const/16 v11, 0x8

    invoke-direct {v14, v15, v11, v12}, Ltn4;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v14, Ltn4;->n:Ltn4;

    const/16 v12, 0x9

    new-array v12, v12, [Ltn4;

    aput-object v0, v12, v1

    aput-object v2, v12, v5

    aput-object v3, v12, v7

    aput-object v4, v12, v9

    const/4 v0, 0x4

    aput-object v6, v12, v0

    const/4 v0, 0x5

    aput-object v8, v12, v0

    const/4 v0, 0x6

    aput-object v10, v12, v0

    const/4 v0, 0x7

    aput-object v13, v12, v0

    aput-object v14, v12, v11

    .line 10
    sput-object v12, Ltn4;->o:[Ltn4;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Ltn4;->e:Ljava/lang/Object;

    return-void
.end method

.method public static values()[Ltn4;
    .locals 1

    .line 1
    sget-object v0, Ltn4;->o:[Ltn4;

    invoke-virtual {v0}, [Ltn4;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltn4;

    return-object v0
.end method
