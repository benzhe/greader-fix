.class public final enum Lv84;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lv84;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum A:Lv84;

.field public static final enum B:Lv84;

.field public static final enum C:Lv84;

.field public static final enum D:Lv84;

.field public static final enum E:Lv84;

.field public static final enum F:Lv84;

.field public static final enum G:Lv84;

.field public static final enum H:Lv84;

.field public static final enum I:Lv84;

.field public static final enum J:Lv84;

.field public static final enum K:Lv84;

.field public static final enum L:Lv84;

.field public static final enum M:Lv84;

.field public static final enum N:Lv84;

.field public static final enum O:Lv84;

.field public static final enum P:Lv84;

.field public static final enum Q:Lv84;

.field public static final enum R:Lv84;

.field public static final enum S:Lv84;

.field public static final enum T:Lv84;

.field public static final enum U:Lv84;

.field public static final enum V:Lv84;

.field public static final enum W:Lv84;

.field public static final enum X:Lv84;

.field public static final enum Y:Lv84;

.field public static final enum Z:Lv84;

.field public static final enum a0:Lv84;

.field public static final enum b0:Lv84;

.field public static final enum c0:Lv84;

.field public static final enum d0:Lv84;

.field public static final e0:[Lv84;

.field public static final enum f:Lv84;

.field public static final synthetic f0:[Lv84;

.field public static final enum g:Lv84;

.field public static final enum h:Lv84;

.field public static final enum i:Lv84;

.field public static final enum j:Lv84;

.field public static final enum k:Lv84;

.field public static final enum l:Lv84;

.field public static final enum m:Lv84;

.field public static final enum n:Lv84;

.field public static final enum o:Lv84;

.field public static final enum p:Lv84;

.field public static final enum q:Lv84;

.field public static final enum r:Lv84;

.field public static final enum s:Lv84;

.field public static final enum t:Lv84;

.field public static final enum u:Lv84;

.field public static final enum v:Lv84;

.field public static final enum w:Lv84;

.field public static final enum x:Lv84;

.field public static final enum y:Lv84;

.field public static final enum z:Lv84;


# instance fields
.field public final e:I


# direct methods
.method public static constructor <clinit>()V
    .locals 22

    new-instance v6, Lv84;

    .line 1
    sget-object v7, Lm94;->k:Lm94;

    const-string v1, "DOUBLE"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, v6

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lv84;-><init>(Ljava/lang/String;IIILm94;)V

    sput-object v6, Lv84;->f:Lv84;

    new-instance v0, Lv84;

    sget-object v14, Lm94;->j:Lm94;

    const-string v9, "FLOAT"

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x1

    move-object v8, v0

    move-object v13, v14

    .line 2
    invoke-direct/range {v8 .. v13}, Lv84;-><init>(Ljava/lang/String;IIILm94;)V

    sput-object v0, Lv84;->g:Lv84;

    new-instance v0, Lv84;

    sget-object v8, Lm94;->i:Lm94;

    const-string v2, "INT64"

    const/4 v3, 0x2

    const/4 v4, 0x2

    const/4 v5, 0x1

    move-object v1, v0

    move-object v6, v8

    .line 3
    invoke-direct/range {v1 .. v6}, Lv84;-><init>(Ljava/lang/String;IIILm94;)V

    sput-object v0, Lv84;->h:Lv84;

    new-instance v0, Lv84;

    const-string v2, "UINT64"

    const/4 v3, 0x3

    const/4 v4, 0x3

    move-object v1, v0

    .line 4
    invoke-direct/range {v1 .. v6}, Lv84;-><init>(Ljava/lang/String;IIILm94;)V

    sput-object v0, Lv84;->i:Lv84;

    new-instance v0, Lv84;

    sget-object v9, Lm94;->h:Lm94;

    const-string v16, "INT32"

    const/16 v17, 0x4

    const/16 v18, 0x4

    const/16 v19, 0x1

    move-object v15, v0

    move-object/from16 v20, v9

    .line 5
    invoke-direct/range {v15 .. v20}, Lv84;-><init>(Ljava/lang/String;IIILm94;)V

    sput-object v0, Lv84;->j:Lv84;

    new-instance v0, Lv84;

    const-string v2, "FIXED64"

    const/4 v3, 0x5

    const/4 v4, 0x5

    move-object v1, v0

    .line 6
    invoke-direct/range {v1 .. v6}, Lv84;-><init>(Ljava/lang/String;IIILm94;)V

    sput-object v0, Lv84;->k:Lv84;

    new-instance v0, Lv84;

    const-string v2, "FIXED32"

    const/4 v3, 0x6

    const/4 v4, 0x6

    move-object v1, v0

    move-object v6, v9

    .line 7
    invoke-direct/range {v1 .. v6}, Lv84;-><init>(Ljava/lang/String;IIILm94;)V

    sput-object v0, Lv84;->l:Lv84;

    new-instance v0, Lv84;

    sget-object v10, Lm94;->l:Lm94;

    const-string v16, "BOOL"

    const/16 v17, 0x7

    const/16 v18, 0x7

    move-object v15, v0

    move-object/from16 v20, v10

    .line 8
    invoke-direct/range {v15 .. v20}, Lv84;-><init>(Ljava/lang/String;IIILm94;)V

    sput-object v0, Lv84;->m:Lv84;

    new-instance v0, Lv84;

    sget-object v11, Lm94;->m:Lm94;

    const-string v2, "STRING"

    const/16 v3, 0x8

    const/16 v4, 0x8

    move-object v1, v0

    move-object v6, v11

    .line 9
    invoke-direct/range {v1 .. v6}, Lv84;-><init>(Ljava/lang/String;IIILm94;)V

    sput-object v0, Lv84;->n:Lv84;

    new-instance v0, Lv84;

    sget-object v12, Lm94;->p:Lm94;

    const-string v16, "MESSAGE"

    const/16 v17, 0x9

    const/16 v18, 0x9

    move-object v15, v0

    move-object/from16 v20, v12

    .line 10
    invoke-direct/range {v15 .. v20}, Lv84;-><init>(Ljava/lang/String;IIILm94;)V

    sput-object v0, Lv84;->o:Lv84;

    new-instance v0, Lv84;

    sget-object v13, Lm94;->n:Lm94;

    const-string v2, "BYTES"

    const/16 v3, 0xa

    const/16 v4, 0xa

    move-object v1, v0

    move-object v6, v13

    .line 11
    invoke-direct/range {v1 .. v6}, Lv84;-><init>(Ljava/lang/String;IIILm94;)V

    sput-object v0, Lv84;->p:Lv84;

    new-instance v0, Lv84;

    const-string v2, "UINT32"

    const/16 v3, 0xb

    const/16 v4, 0xb

    move-object v1, v0

    move-object v6, v9

    .line 12
    invoke-direct/range {v1 .. v6}, Lv84;-><init>(Ljava/lang/String;IIILm94;)V

    sput-object v0, Lv84;->q:Lv84;

    new-instance v0, Lv84;

    sget-object v21, Lm94;->o:Lm94;

    const-string v16, "ENUM"

    const/16 v17, 0xc

    const/16 v18, 0xc

    move-object v15, v0

    move-object/from16 v20, v21

    .line 13
    invoke-direct/range {v15 .. v20}, Lv84;-><init>(Ljava/lang/String;IIILm94;)V

    sput-object v0, Lv84;->r:Lv84;

    new-instance v0, Lv84;

    const-string v2, "SFIXED32"

    const/16 v3, 0xd

    const/16 v4, 0xd

    move-object v1, v0

    .line 14
    invoke-direct/range {v1 .. v6}, Lv84;-><init>(Ljava/lang/String;IIILm94;)V

    sput-object v0, Lv84;->s:Lv84;

    new-instance v0, Lv84;

    const-string v2, "SFIXED64"

    const/16 v3, 0xe

    const/16 v4, 0xe

    move-object v1, v0

    move-object v6, v8

    .line 15
    invoke-direct/range {v1 .. v6}, Lv84;-><init>(Ljava/lang/String;IIILm94;)V

    sput-object v0, Lv84;->t:Lv84;

    new-instance v0, Lv84;

    const-string v2, "SINT32"

    const/16 v3, 0xf

    const/16 v4, 0xf

    move-object v1, v0

    move-object v6, v9

    .line 16
    invoke-direct/range {v1 .. v6}, Lv84;-><init>(Ljava/lang/String;IIILm94;)V

    sput-object v0, Lv84;->u:Lv84;

    new-instance v0, Lv84;

    const-string v2, "SINT64"

    const/16 v3, 0x10

    const/16 v4, 0x10

    move-object v1, v0

    move-object v6, v8

    .line 17
    invoke-direct/range {v1 .. v6}, Lv84;-><init>(Ljava/lang/String;IIILm94;)V

    sput-object v0, Lv84;->v:Lv84;

    new-instance v0, Lv84;

    const-string v2, "GROUP"

    const/16 v3, 0x11

    const/16 v4, 0x11

    move-object v1, v0

    move-object v6, v12

    .line 18
    invoke-direct/range {v1 .. v6}, Lv84;-><init>(Ljava/lang/String;IIILm94;)V

    sput-object v0, Lv84;->w:Lv84;

    new-instance v6, Lv84;

    const-string v1, "DOUBLE_LIST"

    const/16 v2, 0x12

    const/16 v3, 0x12

    const/4 v4, 0x2

    move-object v0, v6

    move-object v5, v7

    .line 19
    invoke-direct/range {v0 .. v5}, Lv84;-><init>(Ljava/lang/String;IIILm94;)V

    sput-object v6, Lv84;->x:Lv84;

    new-instance v0, Lv84;

    const-string v2, "FLOAT_LIST"

    const/16 v3, 0x13

    const/16 v4, 0x13

    const/4 v5, 0x2

    move-object v1, v0

    move-object v6, v14

    .line 20
    invoke-direct/range {v1 .. v6}, Lv84;-><init>(Ljava/lang/String;IIILm94;)V

    sput-object v0, Lv84;->y:Lv84;

    new-instance v0, Lv84;

    const-string v2, "INT64_LIST"

    const/16 v3, 0x14

    const/16 v4, 0x14

    move-object v1, v0

    move-object v6, v8

    .line 21
    invoke-direct/range {v1 .. v6}, Lv84;-><init>(Ljava/lang/String;IIILm94;)V

    sput-object v0, Lv84;->z:Lv84;

    new-instance v0, Lv84;

    const-string v2, "UINT64_LIST"

    const/16 v3, 0x15

    const/16 v4, 0x15

    move-object v1, v0

    .line 22
    invoke-direct/range {v1 .. v6}, Lv84;-><init>(Ljava/lang/String;IIILm94;)V

    sput-object v0, Lv84;->A:Lv84;

    new-instance v0, Lv84;

    const-string v2, "INT32_LIST"

    const/16 v3, 0x16

    const/16 v4, 0x16

    move-object v1, v0

    move-object v6, v9

    .line 23
    invoke-direct/range {v1 .. v6}, Lv84;-><init>(Ljava/lang/String;IIILm94;)V

    sput-object v0, Lv84;->B:Lv84;

    new-instance v0, Lv84;

    const-string v2, "FIXED64_LIST"

    const/16 v3, 0x17

    const/16 v4, 0x17

    move-object v1, v0

    move-object v6, v8

    .line 24
    invoke-direct/range {v1 .. v6}, Lv84;-><init>(Ljava/lang/String;IIILm94;)V

    sput-object v0, Lv84;->C:Lv84;

    new-instance v0, Lv84;

    const-string v2, "FIXED32_LIST"

    const/16 v3, 0x18

    const/16 v4, 0x18

    move-object v1, v0

    move-object v6, v9

    .line 25
    invoke-direct/range {v1 .. v6}, Lv84;-><init>(Ljava/lang/String;IIILm94;)V

    sput-object v0, Lv84;->D:Lv84;

    new-instance v0, Lv84;

    const-string v2, "BOOL_LIST"

    const/16 v3, 0x19

    const/16 v4, 0x19

    move-object v1, v0

    move-object v6, v10

    .line 26
    invoke-direct/range {v1 .. v6}, Lv84;-><init>(Ljava/lang/String;IIILm94;)V

    sput-object v0, Lv84;->E:Lv84;

    new-instance v0, Lv84;

    const-string v2, "STRING_LIST"

    const/16 v3, 0x1a

    const/16 v4, 0x1a

    move-object v1, v0

    move-object v6, v11

    .line 27
    invoke-direct/range {v1 .. v6}, Lv84;-><init>(Ljava/lang/String;IIILm94;)V

    sput-object v0, Lv84;->F:Lv84;

    new-instance v0, Lv84;

    const-string v2, "MESSAGE_LIST"

    const/16 v3, 0x1b

    const/16 v4, 0x1b

    move-object v1, v0

    move-object v6, v12

    .line 28
    invoke-direct/range {v1 .. v6}, Lv84;-><init>(Ljava/lang/String;IIILm94;)V

    sput-object v0, Lv84;->G:Lv84;

    new-instance v0, Lv84;

    const-string v2, "BYTES_LIST"

    const/16 v3, 0x1c

    const/16 v4, 0x1c

    move-object v1, v0

    move-object v6, v13

    .line 29
    invoke-direct/range {v1 .. v6}, Lv84;-><init>(Ljava/lang/String;IIILm94;)V

    sput-object v0, Lv84;->H:Lv84;

    new-instance v0, Lv84;

    const-string v2, "UINT32_LIST"

    const/16 v3, 0x1d

    const/16 v4, 0x1d

    move-object v1, v0

    move-object v6, v9

    .line 30
    invoke-direct/range {v1 .. v6}, Lv84;-><init>(Ljava/lang/String;IIILm94;)V

    sput-object v0, Lv84;->I:Lv84;

    new-instance v0, Lv84;

    const-string v2, "ENUM_LIST"

    const/16 v3, 0x1e

    const/16 v4, 0x1e

    move-object v1, v0

    move-object/from16 v6, v21

    .line 31
    invoke-direct/range {v1 .. v6}, Lv84;-><init>(Ljava/lang/String;IIILm94;)V

    sput-object v0, Lv84;->J:Lv84;

    new-instance v0, Lv84;

    const-string v2, "SFIXED32_LIST"

    const/16 v3, 0x1f

    const/16 v4, 0x1f

    move-object v1, v0

    move-object v6, v9

    .line 32
    invoke-direct/range {v1 .. v6}, Lv84;-><init>(Ljava/lang/String;IIILm94;)V

    sput-object v0, Lv84;->K:Lv84;

    new-instance v0, Lv84;

    const-string v2, "SFIXED64_LIST"

    const/16 v3, 0x20

    const/16 v4, 0x20

    move-object v1, v0

    move-object v6, v8

    .line 33
    invoke-direct/range {v1 .. v6}, Lv84;-><init>(Ljava/lang/String;IIILm94;)V

    sput-object v0, Lv84;->L:Lv84;

    new-instance v0, Lv84;

    const-string v2, "SINT32_LIST"

    const/16 v3, 0x21

    const/16 v4, 0x21

    move-object v1, v0

    move-object v6, v9

    .line 34
    invoke-direct/range {v1 .. v6}, Lv84;-><init>(Ljava/lang/String;IIILm94;)V

    sput-object v0, Lv84;->M:Lv84;

    new-instance v0, Lv84;

    const-string v2, "SINT64_LIST"

    const/16 v3, 0x22

    const/16 v4, 0x22

    move-object v1, v0

    move-object v6, v8

    .line 35
    invoke-direct/range {v1 .. v6}, Lv84;-><init>(Ljava/lang/String;IIILm94;)V

    sput-object v0, Lv84;->N:Lv84;

    new-instance v6, Lv84;

    const-string v1, "DOUBLE_LIST_PACKED"

    const/16 v2, 0x23

    const/16 v3, 0x23

    const/4 v4, 0x3

    move-object v0, v6

    move-object v5, v7

    .line 36
    invoke-direct/range {v0 .. v5}, Lv84;-><init>(Ljava/lang/String;IIILm94;)V

    sput-object v6, Lv84;->O:Lv84;

    new-instance v0, Lv84;

    const-string v2, "FLOAT_LIST_PACKED"

    const/16 v3, 0x24

    const/16 v4, 0x24

    const/4 v5, 0x3

    move-object v1, v0

    move-object v6, v14

    .line 37
    invoke-direct/range {v1 .. v6}, Lv84;-><init>(Ljava/lang/String;IIILm94;)V

    sput-object v0, Lv84;->P:Lv84;

    new-instance v0, Lv84;

    const-string v2, "INT64_LIST_PACKED"

    const/16 v3, 0x25

    const/16 v4, 0x25

    move-object v1, v0

    move-object v6, v8

    .line 38
    invoke-direct/range {v1 .. v6}, Lv84;-><init>(Ljava/lang/String;IIILm94;)V

    sput-object v0, Lv84;->Q:Lv84;

    new-instance v0, Lv84;

    const-string v2, "UINT64_LIST_PACKED"

    const/16 v3, 0x26

    const/16 v4, 0x26

    move-object v1, v0

    .line 39
    invoke-direct/range {v1 .. v6}, Lv84;-><init>(Ljava/lang/String;IIILm94;)V

    sput-object v0, Lv84;->R:Lv84;

    new-instance v0, Lv84;

    const-string v2, "INT32_LIST_PACKED"

    const/16 v3, 0x27

    const/16 v4, 0x27

    move-object v1, v0

    move-object v6, v9

    .line 40
    invoke-direct/range {v1 .. v6}, Lv84;-><init>(Ljava/lang/String;IIILm94;)V

    sput-object v0, Lv84;->S:Lv84;

    new-instance v0, Lv84;

    const-string v2, "FIXED64_LIST_PACKED"

    const/16 v3, 0x28

    const/16 v4, 0x28

    move-object v1, v0

    move-object v6, v8

    .line 41
    invoke-direct/range {v1 .. v6}, Lv84;-><init>(Ljava/lang/String;IIILm94;)V

    sput-object v0, Lv84;->T:Lv84;

    new-instance v0, Lv84;

    const-string v2, "FIXED32_LIST_PACKED"

    const/16 v3, 0x29

    const/16 v4, 0x29

    move-object v1, v0

    move-object v6, v9

    .line 42
    invoke-direct/range {v1 .. v6}, Lv84;-><init>(Ljava/lang/String;IIILm94;)V

    sput-object v0, Lv84;->U:Lv84;

    new-instance v0, Lv84;

    const-string v2, "BOOL_LIST_PACKED"

    const/16 v3, 0x2a

    const/16 v4, 0x2a

    move-object v1, v0

    move-object v6, v10

    .line 43
    invoke-direct/range {v1 .. v6}, Lv84;-><init>(Ljava/lang/String;IIILm94;)V

    sput-object v0, Lv84;->V:Lv84;

    new-instance v0, Lv84;

    const-string v2, "UINT32_LIST_PACKED"

    const/16 v3, 0x2b

    const/16 v4, 0x2b

    move-object v1, v0

    move-object v6, v9

    .line 44
    invoke-direct/range {v1 .. v6}, Lv84;-><init>(Ljava/lang/String;IIILm94;)V

    sput-object v0, Lv84;->W:Lv84;

    new-instance v0, Lv84;

    const-string v2, "ENUM_LIST_PACKED"

    const/16 v3, 0x2c

    const/16 v4, 0x2c

    move-object v1, v0

    move-object/from16 v6, v21

    .line 45
    invoke-direct/range {v1 .. v6}, Lv84;-><init>(Ljava/lang/String;IIILm94;)V

    sput-object v0, Lv84;->X:Lv84;

    new-instance v0, Lv84;

    const-string v2, "SFIXED32_LIST_PACKED"

    const/16 v3, 0x2d

    const/16 v4, 0x2d

    move-object v1, v0

    move-object v6, v9

    .line 46
    invoke-direct/range {v1 .. v6}, Lv84;-><init>(Ljava/lang/String;IIILm94;)V

    sput-object v0, Lv84;->Y:Lv84;

    new-instance v0, Lv84;

    sget-object v7, Lm94;->i:Lm94;

    const-string v14, "SFIXED64_LIST_PACKED"

    const/16 v15, 0x2e

    const/16 v16, 0x2e

    const/16 v17, 0x3

    move-object v13, v0

    move-object/from16 v18, v7

    .line 47
    invoke-direct/range {v13 .. v18}, Lv84;-><init>(Ljava/lang/String;IIILm94;)V

    sput-object v0, Lv84;->Z:Lv84;

    new-instance v0, Lv84;

    const-string v2, "SINT32_LIST_PACKED"

    const/16 v3, 0x2f

    const/16 v4, 0x2f

    move-object v1, v0

    .line 48
    invoke-direct/range {v1 .. v6}, Lv84;-><init>(Ljava/lang/String;IIILm94;)V

    sput-object v0, Lv84;->a0:Lv84;

    new-instance v0, Lv84;

    const-string v2, "SINT64_LIST_PACKED"

    const/16 v3, 0x30

    const/16 v4, 0x30

    move-object v1, v0

    move-object v6, v7

    .line 49
    invoke-direct/range {v1 .. v6}, Lv84;-><init>(Ljava/lang/String;IIILm94;)V

    sput-object v0, Lv84;->b0:Lv84;

    new-instance v0, Lv84;

    const-string v2, "GROUP_LIST"

    const/16 v3, 0x31

    const/16 v4, 0x31

    const/4 v5, 0x2

    move-object v1, v0

    move-object v6, v12

    .line 50
    invoke-direct/range {v1 .. v6}, Lv84;-><init>(Ljava/lang/String;IIILm94;)V

    sput-object v0, Lv84;->c0:Lv84;

    new-instance v0, Lv84;

    sget-object v11, Lm94;->g:Lm94;

    const-string v7, "MAP"

    const/16 v8, 0x32

    const/16 v9, 0x32

    const/4 v10, 0x4

    move-object v6, v0

    .line 51
    invoke-direct/range {v6 .. v11}, Lv84;-><init>(Ljava/lang/String;IIILm94;)V

    sput-object v0, Lv84;->d0:Lv84;

    const/16 v0, 0x33

    new-array v1, v0, [Lv84;

    sget-object v2, Lv84;->f:Lv84;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lv84;->g:Lv84;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Lv84;->h:Lv84;

    const/4 v4, 0x2

    aput-object v2, v1, v4

    sget-object v2, Lv84;->i:Lv84;

    const/4 v4, 0x3

    aput-object v2, v1, v4

    sget-object v2, Lv84;->j:Lv84;

    const/4 v4, 0x4

    aput-object v2, v1, v4

    sget-object v2, Lv84;->k:Lv84;

    const/4 v4, 0x5

    aput-object v2, v1, v4

    sget-object v2, Lv84;->l:Lv84;

    const/4 v4, 0x6

    aput-object v2, v1, v4

    sget-object v2, Lv84;->m:Lv84;

    const/4 v4, 0x7

    aput-object v2, v1, v4

    sget-object v2, Lv84;->n:Lv84;

    const/16 v4, 0x8

    aput-object v2, v1, v4

    sget-object v2, Lv84;->o:Lv84;

    const/16 v4, 0x9

    aput-object v2, v1, v4

    sget-object v2, Lv84;->p:Lv84;

    const/16 v4, 0xa

    aput-object v2, v1, v4

    sget-object v2, Lv84;->q:Lv84;

    const/16 v4, 0xb

    aput-object v2, v1, v4

    sget-object v2, Lv84;->r:Lv84;

    const/16 v4, 0xc

    aput-object v2, v1, v4

    sget-object v2, Lv84;->s:Lv84;

    const/16 v4, 0xd

    aput-object v2, v1, v4

    sget-object v2, Lv84;->t:Lv84;

    const/16 v4, 0xe

    aput-object v2, v1, v4

    sget-object v2, Lv84;->u:Lv84;

    const/16 v4, 0xf

    aput-object v2, v1, v4

    sget-object v2, Lv84;->v:Lv84;

    const/16 v4, 0x10

    aput-object v2, v1, v4

    sget-object v2, Lv84;->w:Lv84;

    const/16 v4, 0x11

    aput-object v2, v1, v4

    sget-object v2, Lv84;->x:Lv84;

    const/16 v4, 0x12

    aput-object v2, v1, v4

    sget-object v2, Lv84;->y:Lv84;

    const/16 v4, 0x13

    aput-object v2, v1, v4

    sget-object v2, Lv84;->z:Lv84;

    const/16 v4, 0x14

    aput-object v2, v1, v4

    sget-object v2, Lv84;->A:Lv84;

    const/16 v4, 0x15

    aput-object v2, v1, v4

    sget-object v2, Lv84;->B:Lv84;

    const/16 v4, 0x16

    aput-object v2, v1, v4

    sget-object v2, Lv84;->C:Lv84;

    const/16 v4, 0x17

    aput-object v2, v1, v4

    sget-object v2, Lv84;->D:Lv84;

    const/16 v4, 0x18

    aput-object v2, v1, v4

    sget-object v2, Lv84;->E:Lv84;

    const/16 v4, 0x19

    aput-object v2, v1, v4

    sget-object v2, Lv84;->F:Lv84;

    const/16 v4, 0x1a

    aput-object v2, v1, v4

    sget-object v2, Lv84;->G:Lv84;

    const/16 v4, 0x1b

    aput-object v2, v1, v4

    sget-object v2, Lv84;->H:Lv84;

    const/16 v4, 0x1c

    aput-object v2, v1, v4

    sget-object v2, Lv84;->I:Lv84;

    const/16 v4, 0x1d

    aput-object v2, v1, v4

    sget-object v2, Lv84;->J:Lv84;

    const/16 v4, 0x1e

    aput-object v2, v1, v4

    sget-object v2, Lv84;->K:Lv84;

    const/16 v4, 0x1f

    aput-object v2, v1, v4

    sget-object v2, Lv84;->L:Lv84;

    const/16 v4, 0x20

    aput-object v2, v1, v4

    sget-object v2, Lv84;->M:Lv84;

    const/16 v4, 0x21

    aput-object v2, v1, v4

    sget-object v2, Lv84;->N:Lv84;

    const/16 v4, 0x22

    aput-object v2, v1, v4

    sget-object v2, Lv84;->O:Lv84;

    const/16 v4, 0x23

    aput-object v2, v1, v4

    sget-object v2, Lv84;->P:Lv84;

    const/16 v4, 0x24

    aput-object v2, v1, v4

    sget-object v2, Lv84;->Q:Lv84;

    const/16 v4, 0x25

    aput-object v2, v1, v4

    sget-object v2, Lv84;->R:Lv84;

    const/16 v4, 0x26

    aput-object v2, v1, v4

    sget-object v2, Lv84;->S:Lv84;

    const/16 v4, 0x27

    aput-object v2, v1, v4

    sget-object v2, Lv84;->T:Lv84;

    const/16 v4, 0x28

    aput-object v2, v1, v4

    sget-object v2, Lv84;->U:Lv84;

    const/16 v4, 0x29

    aput-object v2, v1, v4

    sget-object v2, Lv84;->V:Lv84;

    const/16 v4, 0x2a

    aput-object v2, v1, v4

    sget-object v2, Lv84;->W:Lv84;

    const/16 v4, 0x2b

    aput-object v2, v1, v4

    sget-object v2, Lv84;->X:Lv84;

    const/16 v4, 0x2c

    aput-object v2, v1, v4

    sget-object v2, Lv84;->Y:Lv84;

    const/16 v4, 0x2d

    aput-object v2, v1, v4

    sget-object v2, Lv84;->Z:Lv84;

    const/16 v4, 0x2e

    aput-object v2, v1, v4

    sget-object v2, Lv84;->a0:Lv84;

    const/16 v4, 0x2f

    aput-object v2, v1, v4

    sget-object v2, Lv84;->b0:Lv84;

    const/16 v4, 0x30

    aput-object v2, v1, v4

    sget-object v2, Lv84;->c0:Lv84;

    const/16 v4, 0x31

    aput-object v2, v1, v4

    sget-object v2, Lv84;->d0:Lv84;

    const/16 v4, 0x32

    aput-object v2, v1, v4

    sput-object v1, Lv84;->f0:[Lv84;

    .line 52
    invoke-static {}, Lv84;->values()[Lv84;

    move-result-object v1

    new-array v2, v0, [Lv84;

    .line 53
    sput-object v2, Lv84;->e0:[Lv84;

    :goto_0
    if-ge v3, v0, :cond_0

    .line 54
    aget-object v2, v1, v3

    sget-object v4, Lv84;->e0:[Lv84;

    .line 55
    iget v5, v2, Lv84;->e:I

    aput-object v2, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIILm94;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lm94;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lv84;->e:I

    .line 2
    sget-object p1, Lm94;->g:Lm94;

    add-int/lit8 p1, p4, -0x1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p3, 0x3

    if-eq p1, p3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p5, Lm94;->e:Ljava/lang/Class;

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p5, Lm94;->e:Ljava/lang/Class;

    :goto_0
    if-ne p4, p2, :cond_2

    .line 5
    invoke-virtual {p5}, Ljava/lang/Enum;->ordinal()I

    :cond_2
    return-void
.end method

.method public static values()[Lv84;
    .locals 1

    sget-object v0, Lv84;->f0:[Lv84;

    .line 1
    invoke-virtual {v0}, [Lv84;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lv84;

    return-object v0
.end method
