.class public final enum Lbd6$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbd6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbd6$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum e:Lbd6$c;

.field public static final enum f:Lbd6$c;

.field public static final enum g:Lbd6$c;

.field public static final enum h:Lbd6$c;

.field public static final enum i:Lbd6$c;

.field public static final enum j:Lbd6$c;

.field public static final enum k:Lbd6$c;

.field public static final enum l:Lbd6$c;

.field public static final enum m:Lbd6$c;

.field public static final enum n:Lbd6$c;

.field public static final enum o:Lbd6$c;

.field public static final enum p:Lbd6$c;

.field public static final synthetic q:[Lbd6$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lbd6$c;

    const-string v1, "NULL_VALUE"

    const/4 v2, 0x0

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lbd6$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbd6$c;->e:Lbd6$c;

    .line 2
    new-instance v1, Lbd6$c;

    const-string v4, "BOOLEAN_VALUE"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v5}, Lbd6$c;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lbd6$c;->f:Lbd6$c;

    .line 3
    new-instance v4, Lbd6$c;

    const-string v6, "INTEGER_VALUE"

    const/4 v7, 0x2

    invoke-direct {v4, v6, v7, v7}, Lbd6$c;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lbd6$c;->g:Lbd6$c;

    .line 4
    new-instance v6, Lbd6$c;

    const-string v8, "DOUBLE_VALUE"

    const/4 v9, 0x3

    invoke-direct {v6, v8, v9, v9}, Lbd6$c;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lbd6$c;->h:Lbd6$c;

    .line 5
    new-instance v8, Lbd6$c;

    const-string v10, "TIMESTAMP_VALUE"

    const/4 v11, 0x4

    const/16 v12, 0xa

    invoke-direct {v8, v10, v11, v12}, Lbd6$c;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lbd6$c;->i:Lbd6$c;

    .line 6
    new-instance v10, Lbd6$c;

    const-string v13, "STRING_VALUE"

    const/4 v14, 0x5

    const/16 v15, 0x11

    invoke-direct {v10, v13, v14, v15}, Lbd6$c;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lbd6$c;->j:Lbd6$c;

    .line 7
    new-instance v13, Lbd6$c;

    const-string v15, "BYTES_VALUE"

    const/4 v11, 0x6

    const/16 v9, 0x12

    invoke-direct {v13, v15, v11, v9}, Lbd6$c;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lbd6$c;->k:Lbd6$c;

    .line 8
    new-instance v9, Lbd6$c;

    const-string v15, "REFERENCE_VALUE"

    const/4 v7, 0x7

    invoke-direct {v9, v15, v7, v14}, Lbd6$c;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lbd6$c;->l:Lbd6$c;

    .line 9
    new-instance v15, Lbd6$c;

    const-string v7, "GEO_POINT_VALUE"

    const/16 v14, 0x8

    invoke-direct {v15, v7, v14, v14}, Lbd6$c;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lbd6$c;->m:Lbd6$c;

    .line 10
    new-instance v7, Lbd6$c;

    const-string v14, "ARRAY_VALUE"

    const/16 v5, 0x9

    invoke-direct {v7, v14, v5, v5}, Lbd6$c;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lbd6$c;->n:Lbd6$c;

    .line 11
    new-instance v14, Lbd6$c;

    const-string v5, "MAP_VALUE"

    invoke-direct {v14, v5, v12, v11}, Lbd6$c;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lbd6$c;->o:Lbd6$c;

    .line 12
    new-instance v5, Lbd6$c;

    const-string v12, "VALUETYPE_NOT_SET"

    invoke-direct {v5, v12, v3, v2}, Lbd6$c;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lbd6$c;->p:Lbd6$c;

    const/16 v12, 0xc

    new-array v12, v12, [Lbd6$c;

    aput-object v0, v12, v2

    const/4 v0, 0x1

    aput-object v1, v12, v0

    const/4 v0, 0x2

    aput-object v4, v12, v0

    const/4 v0, 0x3

    aput-object v6, v12, v0

    const/4 v0, 0x4

    aput-object v8, v12, v0

    const/4 v0, 0x5

    aput-object v10, v12, v0

    aput-object v13, v12, v11

    const/4 v0, 0x7

    aput-object v9, v12, v0

    const/16 v0, 0x8

    aput-object v15, v12, v0

    const/16 v0, 0x9

    aput-object v7, v12, v0

    const/16 v0, 0xa

    aput-object v14, v12, v0

    aput-object v5, v12, v3

    .line 13
    sput-object v12, Lbd6$c;->q:[Lbd6$c;

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

.method public static valueOf(Ljava/lang/String;)Lbd6$c;
    .locals 1

    .line 1
    const-class v0, Lbd6$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbd6$c;

    return-object p0
.end method

.method public static values()[Lbd6$c;
    .locals 1

    .line 1
    sget-object v0, Lbd6$c;->q:[Lbd6$c;

    invoke-virtual {v0}, [Lbd6$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbd6$c;

    return-object v0
.end method
