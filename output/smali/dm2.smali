.class public final enum Ldm2;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ldm2;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum e:Ldm2;

.field public static final enum f:Ldm2;

.field public static final enum g:Ldm2;

.field public static final enum h:Ldm2;

.field public static final enum i:Ldm2;

.field public static final enum j:Ldm2;

.field public static final enum k:Ldm2;

.field public static final enum l:Ldm2;

.field public static final enum m:Ldm2;

.field public static final enum n:Ldm2;

.field public static final enum o:Ldm2;

.field public static final enum p:Ldm2;

.field public static final enum q:Ldm2;

.field public static final enum r:Ldm2;

.field public static final synthetic s:[Ldm2;


# direct methods
.method public static constructor <clinit>()V
    .locals 17

    .line 1
    new-instance v0, Ldm2;

    const-string v1, "INTERNAL_ERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ldm2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldm2;->e:Ldm2;

    .line 2
    new-instance v1, Ldm2;

    const-string v3, "INVALID_REQUEST"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ldm2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ldm2;->f:Ldm2;

    .line 3
    new-instance v3, Ldm2;

    const-string v5, "NO_FILL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ldm2;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ldm2;->g:Ldm2;

    .line 4
    new-instance v5, Ldm2;

    const-string v7, "APP_ID_MISSING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ldm2;-><init>(Ljava/lang/String;I)V

    sput-object v5, Ldm2;->h:Ldm2;

    .line 5
    new-instance v7, Ldm2;

    const-string v9, "NETWORK_ERROR"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Ldm2;-><init>(Ljava/lang/String;I)V

    sput-object v7, Ldm2;->i:Ldm2;

    .line 6
    new-instance v9, Ldm2;

    const-string v11, "INVALID_AD_UNIT_ID"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Ldm2;-><init>(Ljava/lang/String;I)V

    sput-object v9, Ldm2;->j:Ldm2;

    .line 7
    new-instance v11, Ldm2;

    const-string v13, "INVALID_AD_SIZE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Ldm2;-><init>(Ljava/lang/String;I)V

    sput-object v11, Ldm2;->k:Ldm2;

    .line 8
    new-instance v13, Ldm2;

    const-string v15, "MEDIATION_SHOW_ERROR"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Ldm2;-><init>(Ljava/lang/String;I)V

    sput-object v13, Ldm2;->l:Ldm2;

    .line 9
    new-instance v15, Ldm2;

    const-string v14, "NOT_READY"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Ldm2;-><init>(Ljava/lang/String;I)V

    sput-object v15, Ldm2;->m:Ldm2;

    .line 10
    new-instance v14, Ldm2;

    const-string v12, "AD_REUSED"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Ldm2;-><init>(Ljava/lang/String;I)V

    sput-object v14, Ldm2;->n:Ldm2;

    .line 11
    new-instance v12, Ldm2;

    const-string v10, "APP_NOT_FOREGROUND"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Ldm2;-><init>(Ljava/lang/String;I)V

    sput-object v12, Ldm2;->o:Ldm2;

    .line 12
    new-instance v10, Ldm2;

    const-string v8, "INTERNAL_SHOW_ERROR"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Ldm2;-><init>(Ljava/lang/String;I)V

    sput-object v10, Ldm2;->p:Ldm2;

    .line 13
    new-instance v8, Ldm2;

    const-string v6, "MEDIATION_NO_FILL"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Ldm2;-><init>(Ljava/lang/String;I)V

    sput-object v8, Ldm2;->q:Ldm2;

    .line 14
    new-instance v6, Ldm2;

    const-string v4, "REQUEST_ID_MISMATCH"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Ldm2;-><init>(Ljava/lang/String;I)V

    sput-object v6, Ldm2;->r:Ldm2;

    const/16 v4, 0xe

    new-array v4, v4, [Ldm2;

    const/16 v16, 0x0

    aput-object v0, v4, v16

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v15, v4, v0

    const/16 v0, 0x9

    aput-object v14, v4, v0

    const/16 v0, 0xa

    aput-object v12, v4, v0

    const/16 v0, 0xb

    aput-object v10, v4, v0

    const/16 v0, 0xc

    aput-object v8, v4, v0

    aput-object v6, v4, v2

    .line 15
    sput-object v4, Ldm2;->s:[Ldm2;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Ldm2;
    .locals 1

    .line 1
    sget-object v0, Ldm2;->s:[Ldm2;

    invoke-virtual {v0}, [Ldm2;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldm2;

    return-object v0
.end method
