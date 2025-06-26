.class public final enum Lf14$c;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lvx3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf14;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lf14$c;",
        ">;",
        "Lvx3;"
    }
.end annotation


# static fields
.field public static final enum f:Lf14$c;

.field public static final enum g:Lf14$c;

.field public static final enum h:Lf14$c;

.field public static final enum i:Lf14$c;

.field public static final enum j:Lf14$c;

.field public static final enum k:Lf14$c;

.field public static final enum l:Lf14$c;

.field public static final enum m:Lf14$c;

.field public static final enum n:Lf14$c;

.field public static final enum o:Lf14$c;

.field public static final enum p:Lf14$c;

.field public static final enum q:Lf14$c;

.field public static final enum r:Lf14$c;

.field public static final enum s:Lf14$c;

.field public static final enum t:Lf14$c;

.field public static final enum u:Lf14$c;

.field public static final enum v:Lf14$c;

.field public static final enum w:Lf14$c;

.field public static final enum x:Lf14$c;

.field public static final y:Lwx3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lwx3<",
            "Lf14$c;",
            ">;"
        }
    .end annotation
.end field

.field public static final synthetic z:[Lf14$c;


# instance fields
.field public final e:I


# direct methods
.method public static constructor <clinit>()V
    .locals 23

    new-instance v0, Lf14$c;

    const-string v1, "NONE"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lf14$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lf14$c;->f:Lf14$c;

    new-instance v1, Lf14$c;

    const-string v3, "MOBILE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lf14$c;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lf14$c;->g:Lf14$c;

    new-instance v3, Lf14$c;

    const-string v5, "WIFI"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lf14$c;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lf14$c;->h:Lf14$c;

    new-instance v5, Lf14$c;

    const-string v7, "MOBILE_MMS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v6}, Lf14$c;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lf14$c;->i:Lf14$c;

    new-instance v7, Lf14$c;

    const-string v9, "MOBILE_SUPL"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v8}, Lf14$c;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lf14$c;->j:Lf14$c;

    new-instance v9, Lf14$c;

    const-string v11, "MOBILE_DUN"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v10}, Lf14$c;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lf14$c;->k:Lf14$c;

    new-instance v11, Lf14$c;

    const-string v13, "MOBILE_HIPRI"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v12}, Lf14$c;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lf14$c;->l:Lf14$c;

    new-instance v13, Lf14$c;

    const-string v15, "WIMAX"

    const/4 v12, 0x7

    invoke-direct {v13, v15, v12, v14}, Lf14$c;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lf14$c;->m:Lf14$c;

    new-instance v15, Lf14$c;

    const-string v14, "BLUETOOTH"

    const/16 v10, 0x8

    invoke-direct {v15, v14, v10, v12}, Lf14$c;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lf14$c;->n:Lf14$c;

    new-instance v14, Lf14$c;

    const-string v12, "DUMMY"

    const/16 v8, 0x9

    invoke-direct {v14, v12, v8, v10}, Lf14$c;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lf14$c;->o:Lf14$c;

    new-instance v12, Lf14$c;

    const-string v10, "ETHERNET"

    const/16 v6, 0xa

    invoke-direct {v12, v10, v6, v8}, Lf14$c;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lf14$c;->p:Lf14$c;

    new-instance v10, Lf14$c;

    const-string v8, "MOBILE_FOTA"

    const/16 v4, 0xb

    invoke-direct {v10, v8, v4, v6}, Lf14$c;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lf14$c;->q:Lf14$c;

    new-instance v8, Lf14$c;

    const-string v6, "MOBILE_IMS"

    const/16 v2, 0xc

    invoke-direct {v8, v6, v2, v4}, Lf14$c;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lf14$c;->r:Lf14$c;

    new-instance v6, Lf14$c;

    const-string v4, "MOBILE_CBS"

    move-object/from16 v17, v8

    const/16 v8, 0xd

    invoke-direct {v6, v4, v8, v2}, Lf14$c;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lf14$c;->s:Lf14$c;

    new-instance v4, Lf14$c;

    const-string v2, "WIFI_P2P"

    move-object/from16 v18, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6, v8}, Lf14$c;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lf14$c;->t:Lf14$c;

    new-instance v2, Lf14$c;

    const-string v8, "MOBILE_IA"

    move-object/from16 v19, v4

    const/16 v4, 0xf

    invoke-direct {v2, v8, v4, v6}, Lf14$c;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lf14$c;->u:Lf14$c;

    new-instance v8, Lf14$c;

    const-string v6, "MOBILE_EMERGENCY"

    move-object/from16 v20, v2

    const/16 v2, 0x10

    invoke-direct {v8, v6, v2, v4}, Lf14$c;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lf14$c;->v:Lf14$c;

    new-instance v6, Lf14$c;

    const-string v4, "PROXY"

    move-object/from16 v21, v8

    const/16 v8, 0x11

    invoke-direct {v6, v4, v8, v2}, Lf14$c;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lf14$c;->w:Lf14$c;

    new-instance v4, Lf14$c;

    const-string v2, "VPN"

    move-object/from16 v22, v6

    const/16 v6, 0x12

    invoke-direct {v4, v2, v6, v8}, Lf14$c;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lf14$c;->x:Lf14$c;

    const/16 v2, 0x13

    new-array v2, v2, [Lf14$c;

    const/16 v16, 0x0

    aput-object v0, v2, v16

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v15, v2, v0

    const/16 v0, 0x9

    aput-object v14, v2, v0

    const/16 v0, 0xa

    aput-object v12, v2, v0

    const/16 v0, 0xb

    aput-object v10, v2, v0

    const/16 v0, 0xc

    aput-object v17, v2, v0

    const/16 v0, 0xd

    aput-object v18, v2, v0

    const/16 v0, 0xe

    aput-object v19, v2, v0

    const/16 v0, 0xf

    aput-object v20, v2, v0

    const/16 v0, 0x10

    aput-object v21, v2, v0

    aput-object v22, v2, v8

    aput-object v4, v2, v6

    sput-object v2, Lf14$c;->z:[Lf14$c;

    new-instance v0, Lj14;

    invoke-direct {v0}, Lj14;-><init>()V

    sput-object v0, Lf14$c;->y:Lwx3;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lf14$c;->e:I

    return-void
.end method

.method public static values()[Lf14$c;
    .locals 1

    sget-object v0, Lf14$c;->z:[Lf14$c;

    invoke-virtual {v0}, [Lf14$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lf14$c;

    return-object v0
.end method


# virtual methods
.method public final c()I
    .locals 1

    iget v0, p0, Lf14$c;->e:I

    return v0
.end method
