.class public final enum Ltr$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ltr$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum f:Ltr$b;

.field public static final enum g:Ltr$b;

.field public static final enum h:Ltr$b;

.field public static final enum i:Ltr$b;

.field public static final enum j:Ltr$b;

.field public static final enum k:Ltr$b;

.field public static final enum l:Ltr$b;

.field public static final enum m:Ltr$b;

.field public static final enum n:Ltr$b;

.field public static final enum o:Ltr$b;

.field public static final enum p:Ltr$b;

.field public static final enum q:Ltr$b;

.field public static final enum r:Ltr$b;

.field public static final enum s:Ltr$b;

.field public static final enum t:Ltr$b;

.field public static final enum u:Ltr$b;

.field public static final enum v:Ltr$b;

.field public static final enum w:Ltr$b;

.field public static final enum x:Ltr$b;

.field public static final y:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ltr$b;",
            ">;"
        }
    .end annotation
.end field

.field public static final synthetic z:[Ltr$b;


# instance fields
.field public final e:I


# direct methods
.method public static constructor <clinit>()V
    .locals 40

    .line 1
    new-instance v0, Ltr$b;

    const-string v1, "MOBILE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Ltr$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ltr$b;->f:Ltr$b;

    .line 2
    new-instance v1, Ltr$b;

    const-string v3, "WIFI"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Ltr$b;-><init>(Ljava/lang/String;II)V

    sput-object v1, Ltr$b;->g:Ltr$b;

    .line 3
    new-instance v3, Ltr$b;

    const-string v5, "MOBILE_MMS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Ltr$b;-><init>(Ljava/lang/String;II)V

    sput-object v3, Ltr$b;->h:Ltr$b;

    .line 4
    new-instance v5, Ltr$b;

    const-string v7, "MOBILE_SUPL"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Ltr$b;-><init>(Ljava/lang/String;II)V

    sput-object v5, Ltr$b;->i:Ltr$b;

    .line 5
    new-instance v7, Ltr$b;

    const-string v9, "MOBILE_DUN"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Ltr$b;-><init>(Ljava/lang/String;II)V

    sput-object v7, Ltr$b;->j:Ltr$b;

    .line 6
    new-instance v9, Ltr$b;

    const-string v11, "MOBILE_HIPRI"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Ltr$b;-><init>(Ljava/lang/String;II)V

    sput-object v9, Ltr$b;->k:Ltr$b;

    .line 7
    new-instance v11, Ltr$b;

    const-string v13, "WIMAX"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Ltr$b;-><init>(Ljava/lang/String;II)V

    sput-object v11, Ltr$b;->l:Ltr$b;

    .line 8
    new-instance v13, Ltr$b;

    const-string v15, "BLUETOOTH"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Ltr$b;-><init>(Ljava/lang/String;II)V

    sput-object v13, Ltr$b;->m:Ltr$b;

    .line 9
    new-instance v15, Ltr$b;

    const-string v14, "DUMMY"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Ltr$b;-><init>(Ljava/lang/String;II)V

    sput-object v15, Ltr$b;->n:Ltr$b;

    .line 10
    new-instance v14, Ltr$b;

    const-string v12, "ETHERNET"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Ltr$b;-><init>(Ljava/lang/String;II)V

    sput-object v14, Ltr$b;->o:Ltr$b;

    .line 11
    new-instance v12, Ltr$b;

    const-string v10, "MOBILE_FOTA"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v8}, Ltr$b;-><init>(Ljava/lang/String;II)V

    sput-object v12, Ltr$b;->p:Ltr$b;

    .line 12
    new-instance v10, Ltr$b;

    const-string v8, "MOBILE_IMS"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6, v6}, Ltr$b;-><init>(Ljava/lang/String;II)V

    sput-object v10, Ltr$b;->q:Ltr$b;

    .line 13
    new-instance v8, Ltr$b;

    const-string v6, "MOBILE_CBS"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4, v4}, Ltr$b;-><init>(Ljava/lang/String;II)V

    sput-object v8, Ltr$b;->r:Ltr$b;

    .line 14
    new-instance v6, Ltr$b;

    const-string v4, "WIFI_P2P"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2, v2}, Ltr$b;-><init>(Ljava/lang/String;II)V

    sput-object v6, Ltr$b;->s:Ltr$b;

    .line 15
    new-instance v4, Ltr$b;

    const-string v2, "MOBILE_IA"

    move-object/from16 v30, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6, v6}, Ltr$b;-><init>(Ljava/lang/String;II)V

    sput-object v4, Ltr$b;->t:Ltr$b;

    .line 16
    new-instance v2, Ltr$b;

    const-string v6, "MOBILE_EMERGENCY"

    move-object/from16 v32, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4, v4}, Ltr$b;-><init>(Ljava/lang/String;II)V

    sput-object v2, Ltr$b;->u:Ltr$b;

    .line 17
    new-instance v6, Ltr$b;

    const-string v4, "PROXY"

    move-object/from16 v34, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2, v2}, Ltr$b;-><init>(Ljava/lang/String;II)V

    sput-object v6, Ltr$b;->v:Ltr$b;

    .line 18
    new-instance v4, Ltr$b;

    const-string v2, "VPN"

    move-object/from16 v36, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6, v6}, Ltr$b;-><init>(Ljava/lang/String;II)V

    sput-object v4, Ltr$b;->w:Ltr$b;

    .line 19
    new-instance v2, Ltr$b;

    const-string v6, "NONE"

    move-object/from16 v38, v4

    const/16 v4, 0x12

    move-object/from16 v39, v8

    const/4 v8, -0x1

    invoke-direct {v2, v6, v4, v8}, Ltr$b;-><init>(Ljava/lang/String;II)V

    sput-object v2, Ltr$b;->x:Ltr$b;

    const/16 v6, 0x13

    new-array v6, v6, [Ltr$b;

    const/16 v28, 0x0

    aput-object v0, v6, v28

    const/16 v26, 0x1

    aput-object v1, v6, v26

    const/16 v24, 0x2

    aput-object v3, v6, v24

    const/16 v22, 0x3

    aput-object v5, v6, v22

    const/16 v20, 0x4

    aput-object v7, v6, v20

    const/16 v18, 0x5

    aput-object v9, v6, v18

    const/16 v16, 0x6

    aput-object v11, v6, v16

    const/16 v17, 0x7

    aput-object v13, v6, v17

    const/16 v19, 0x8

    aput-object v15, v6, v19

    const/16 v21, 0x9

    aput-object v14, v6, v21

    const/16 v23, 0xa

    aput-object v12, v6, v23

    const/16 v25, 0xb

    aput-object v10, v6, v25

    const/16 v27, 0xc

    aput-object v39, v6, v27

    const/16 v29, 0xd

    aput-object v30, v6, v29

    const/16 v31, 0xe

    aput-object v32, v6, v31

    const/16 v33, 0xf

    aput-object v34, v6, v33

    const/16 v35, 0x10

    aput-object v36, v6, v35

    const/16 v37, 0x11

    aput-object v38, v6, v37

    aput-object v2, v6, v4

    .line 20
    sput-object v6, Ltr$b;->z:[Ltr$b;

    .line 21
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    sput-object v4, Ltr$b;->y:Landroid/util/SparseArray;

    const/4 v6, 0x0

    .line 22
    invoke-virtual {v4, v6, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x1

    .line 23
    invoke-virtual {v4, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x2

    .line 24
    invoke-virtual {v4, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x3

    .line 25
    invoke-virtual {v4, v0, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x4

    .line 26
    invoke-virtual {v4, v0, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x5

    .line 27
    invoke-virtual {v4, v0, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x6

    .line 28
    invoke-virtual {v4, v0, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x7

    .line 29
    invoke-virtual {v4, v0, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v0, 0x8

    .line 30
    invoke-virtual {v4, v0, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v0, 0x9

    .line 31
    invoke-virtual {v4, v0, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v0, 0xa

    .line 32
    invoke-virtual {v4, v0, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v0, 0xb

    .line 33
    invoke-virtual {v4, v0, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object/from16 v0, v39

    const/16 v1, 0xc

    .line 34
    invoke-virtual {v4, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object/from16 v0, v30

    const/16 v1, 0xd

    .line 35
    invoke-virtual {v4, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object/from16 v0, v32

    const/16 v1, 0xe

    .line 36
    invoke-virtual {v4, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object/from16 v0, v34

    const/16 v1, 0xf

    .line 37
    invoke-virtual {v4, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object/from16 v0, v36

    const/16 v1, 0x10

    .line 38
    invoke-virtual {v4, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object/from16 v0, v38

    const/16 v1, 0x11

    .line 39
    invoke-virtual {v4, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 40
    invoke-virtual {v4, v8, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

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

    .line 2
    iput p3, p0, Ltr$b;->e:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ltr$b;
    .locals 1

    .line 1
    const-class v0, Ltr$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ltr$b;

    return-object p0
.end method

.method public static values()[Ltr$b;
    .locals 1

    .line 1
    sget-object v0, Ltr$b;->z:[Ltr$b;

    invoke-virtual {v0}, [Ltr$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltr$b;

    return-object v0
.end method
