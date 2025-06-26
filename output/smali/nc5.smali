.class public final enum Lnc5;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnc5;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum e:Lnc5;

.field public static final enum f:Lnc5;

.field public static final enum g:Lnc5;

.field public static final enum h:Lnc5;

.field public static final enum i:Lnc5;

.field public static final enum j:Lnc5;

.field public static final enum k:Lnc5;

.field public static final enum l:Lnc5;

.field public static final enum m:Lnc5;

.field public static final enum n:Lnc5;

.field public static final enum o:Lnc5;

.field public static final enum p:Lnc5;

.field public static final synthetic q:[Lnc5;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lnc5;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnc5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnc5;->e:Lnc5;

    new-instance v1, Lnc5;

    const-string v3, "INTERNAL_ERROR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lnc5;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnc5;->f:Lnc5;

    new-instance v3, Lnc5;

    const-string v5, "UNKNOWN_ERROR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lnc5;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lnc5;->g:Lnc5;

    new-instance v5, Lnc5;

    const-string v7, "SERVICE_MISSING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lnc5;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lnc5;->h:Lnc5;

    new-instance v7, Lnc5;

    const-string v9, "SERVICE_VERSION_UPDATE_REQUIRED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lnc5;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lnc5;->i:Lnc5;

    new-instance v9, Lnc5;

    const-string v11, "SERVICE_DISABLED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lnc5;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lnc5;->j:Lnc5;

    new-instance v11, Lnc5;

    const-string v13, "SERVICE_INVALID"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lnc5;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lnc5;->k:Lnc5;

    new-instance v13, Lnc5;

    const-string v15, "ERROR_CONNECTING_TO_SERVICE"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lnc5;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lnc5;->l:Lnc5;

    new-instance v15, Lnc5;

    const-string v14, "CLIENT_LIBRARY_UPDATE_REQUIRED"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lnc5;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lnc5;->m:Lnc5;

    new-instance v14, Lnc5;

    const-string v12, "NETWORK_ERROR"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lnc5;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lnc5;->n:Lnc5;

    new-instance v12, Lnc5;

    const-string v10, "DEVELOPER_KEY_INVALID"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lnc5;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lnc5;->o:Lnc5;

    new-instance v10, Lnc5;

    const-string v8, "INVALID_APPLICATION_SIGNATURE"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lnc5;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lnc5;->p:Lnc5;

    const/16 v8, 0xc

    new-array v8, v8, [Lnc5;

    aput-object v0, v8, v2

    aput-object v1, v8, v4

    const/4 v0, 0x2

    aput-object v3, v8, v0

    const/4 v0, 0x3

    aput-object v5, v8, v0

    const/4 v0, 0x4

    aput-object v7, v8, v0

    const/4 v0, 0x5

    aput-object v9, v8, v0

    const/4 v0, 0x6

    aput-object v11, v8, v0

    const/4 v0, 0x7

    aput-object v13, v8, v0

    const/16 v0, 0x8

    aput-object v15, v8, v0

    const/16 v0, 0x9

    aput-object v14, v8, v0

    const/16 v0, 0xa

    aput-object v12, v8, v0

    aput-object v10, v8, v6

    sput-object v8, Lnc5;->q:[Lnc5;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnc5;
    .locals 1

    const-class v0, Lnc5;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnc5;

    return-object p0
.end method

.method public static values()[Lnc5;
    .locals 1

    sget-object v0, Lnc5;->q:[Lnc5;

    invoke-virtual {v0}, [Lnc5;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnc5;

    return-object v0
.end method
