.class public final enum Ll63;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ll63;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum A:Ll63;

.field public static final enum B:Ll63;

.field public static final enum C:Ll63;

.field public static final enum D:Ll63;

.field public static final enum E:Ll63;

.field public static final enum F:Ll63;

.field public static final enum G:Ll63;

.field public static final enum H:Ll63;

.field public static final enum I:Ll63;

.field public static final enum J:Ll63;

.field public static final enum K:Ll63;

.field public static final enum L:Ll63;

.field public static final enum M:Ll63;

.field public static final enum N:Ll63;

.field public static final enum O:Ll63;

.field public static final enum P:Ll63;

.field public static final enum Q:Ll63;

.field public static final enum R:Ll63;

.field public static final enum S:Ll63;

.field public static final enum T:Ll63;

.field public static final enum U:Ll63;

.field public static final enum V:Ll63;

.field public static final enum W:Ll63;

.field public static final enum X:Ll63;

.field public static final enum Y:Ll63;

.field public static final enum Z:Ll63;

.field public static final enum a0:Ll63;

.field public static final enum b0:Ll63;

.field public static final enum c0:Ll63;

.field public static final enum d0:Ll63;

.field public static final e0:[Ll63;

.field public static final enum f:Ll63;

.field public static final synthetic f0:[Ll63;

.field public static final enum g:Ll63;

.field public static final enum h:Ll63;

.field public static final enum i:Ll63;

.field public static final enum j:Ll63;

.field public static final enum k:Ll63;

.field public static final enum l:Ll63;

.field public static final enum m:Ll63;

.field public static final enum n:Ll63;

.field public static final enum o:Ll63;

.field public static final enum p:Ll63;

.field public static final enum q:Ll63;

.field public static final enum r:Ll63;

.field public static final enum s:Ll63;

.field public static final enum t:Ll63;

.field public static final enum u:Ll63;

.field public static final enum v:Ll63;

.field public static final enum w:Ll63;

.field public static final enum x:Ll63;

.field public static final enum y:Ll63;

.field public static final enum z:Ll63;


# instance fields
.field public final e:I


# direct methods
.method public static constructor <clinit>()V
    .locals 17

    .line 1
    new-instance v6, Ll63;

    sget-object v7, Ln63;->e:Ln63;

    sget-object v8, Lg73;->k:Lg73;

    const-string v1, "DOUBLE"

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    move-object v4, v7

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Ll63;-><init>(Ljava/lang/String;IILn63;Lg73;)V

    sput-object v6, Ll63;->f:Ll63;

    .line 2
    new-instance v6, Ll63;

    sget-object v9, Lg73;->j:Lg73;

    const-string v1, "FLOAT"

    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object v0, v6

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Ll63;-><init>(Ljava/lang/String;IILn63;Lg73;)V

    sput-object v6, Ll63;->g:Ll63;

    .line 3
    new-instance v6, Ll63;

    sget-object v10, Lg73;->i:Lg73;

    const-string v1, "INT64"

    const/4 v2, 0x2

    const/4 v3, 0x2

    move-object v0, v6

    move-object v5, v10

    invoke-direct/range {v0 .. v5}, Ll63;-><init>(Ljava/lang/String;IILn63;Lg73;)V

    sput-object v6, Ll63;->h:Ll63;

    .line 4
    new-instance v6, Ll63;

    const-string v1, "UINT64"

    const/4 v2, 0x3

    const/4 v3, 0x3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ll63;-><init>(Ljava/lang/String;IILn63;Lg73;)V

    sput-object v6, Ll63;->i:Ll63;

    .line 5
    new-instance v6, Ll63;

    sget-object v11, Lg73;->h:Lg73;

    const-string v1, "INT32"

    const/4 v2, 0x4

    const/4 v3, 0x4

    move-object v0, v6

    move-object v5, v11

    invoke-direct/range {v0 .. v5}, Ll63;-><init>(Ljava/lang/String;IILn63;Lg73;)V

    sput-object v6, Ll63;->j:Ll63;

    .line 6
    new-instance v6, Ll63;

    const-string v1, "FIXED64"

    const/4 v2, 0x5

    const/4 v3, 0x5

    move-object v0, v6

    move-object v5, v10

    invoke-direct/range {v0 .. v5}, Ll63;-><init>(Ljava/lang/String;IILn63;Lg73;)V

    sput-object v6, Ll63;->k:Ll63;

    .line 7
    new-instance v6, Ll63;

    const-string v1, "FIXED32"

    const/4 v2, 0x6

    const/4 v3, 0x6

    move-object v0, v6

    move-object v5, v11

    invoke-direct/range {v0 .. v5}, Ll63;-><init>(Ljava/lang/String;IILn63;Lg73;)V

    sput-object v6, Ll63;->l:Ll63;

    .line 8
    new-instance v6, Ll63;

    sget-object v12, Lg73;->l:Lg73;

    const-string v1, "BOOL"

    const/4 v2, 0x7

    const/4 v3, 0x7

    move-object v0, v6

    move-object v5, v12

    invoke-direct/range {v0 .. v5}, Ll63;-><init>(Ljava/lang/String;IILn63;Lg73;)V

    sput-object v6, Ll63;->m:Ll63;

    .line 9
    new-instance v6, Ll63;

    sget-object v13, Lg73;->m:Lg73;

    const-string v1, "STRING"

    const/16 v2, 0x8

    const/16 v3, 0x8

    move-object v0, v6

    move-object v5, v13

    invoke-direct/range {v0 .. v5}, Ll63;-><init>(Ljava/lang/String;IILn63;Lg73;)V

    sput-object v6, Ll63;->n:Ll63;

    .line 10
    new-instance v6, Ll63;

    sget-object v14, Lg73;->p:Lg73;

    const-string v1, "MESSAGE"

    const/16 v2, 0x9

    const/16 v3, 0x9

    move-object v0, v6

    move-object v5, v14

    invoke-direct/range {v0 .. v5}, Ll63;-><init>(Ljava/lang/String;IILn63;Lg73;)V

    sput-object v6, Ll63;->o:Ll63;

    .line 11
    new-instance v6, Ll63;

    sget-object v15, Lg73;->n:Lg73;

    const-string v1, "BYTES"

    const/16 v2, 0xa

    const/16 v3, 0xa

    move-object v0, v6

    move-object v5, v15

    invoke-direct/range {v0 .. v5}, Ll63;-><init>(Ljava/lang/String;IILn63;Lg73;)V

    sput-object v6, Ll63;->p:Ll63;

    .line 12
    new-instance v6, Ll63;

    const-string v1, "UINT32"

    const/16 v2, 0xb

    const/16 v3, 0xb

    move-object v0, v6

    move-object v5, v11

    invoke-direct/range {v0 .. v5}, Ll63;-><init>(Ljava/lang/String;IILn63;Lg73;)V

    sput-object v6, Ll63;->q:Ll63;

    .line 13
    new-instance v6, Ll63;

    sget-object v16, Lg73;->o:Lg73;

    const-string v1, "ENUM"

    const/16 v2, 0xc

    const/16 v3, 0xc

    move-object v0, v6

    move-object/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Ll63;-><init>(Ljava/lang/String;IILn63;Lg73;)V

    sput-object v6, Ll63;->r:Ll63;

    .line 14
    new-instance v6, Ll63;

    const-string v1, "SFIXED32"

    const/16 v2, 0xd

    const/16 v3, 0xd

    move-object v0, v6

    move-object v5, v11

    invoke-direct/range {v0 .. v5}, Ll63;-><init>(Ljava/lang/String;IILn63;Lg73;)V

    sput-object v6, Ll63;->s:Ll63;

    .line 15
    new-instance v6, Ll63;

    const-string v1, "SFIXED64"

    const/16 v2, 0xe

    const/16 v3, 0xe

    move-object v0, v6

    move-object v5, v10

    invoke-direct/range {v0 .. v5}, Ll63;-><init>(Ljava/lang/String;IILn63;Lg73;)V

    sput-object v6, Ll63;->t:Ll63;

    .line 16
    new-instance v6, Ll63;

    const-string v1, "SINT32"

    const/16 v2, 0xf

    const/16 v3, 0xf

    move-object v0, v6

    move-object v5, v11

    invoke-direct/range {v0 .. v5}, Ll63;-><init>(Ljava/lang/String;IILn63;Lg73;)V

    sput-object v6, Ll63;->u:Ll63;

    .line 17
    new-instance v6, Ll63;

    const-string v1, "SINT64"

    const/16 v2, 0x10

    const/16 v3, 0x10

    move-object v0, v6

    move-object v5, v10

    invoke-direct/range {v0 .. v5}, Ll63;-><init>(Ljava/lang/String;IILn63;Lg73;)V

    sput-object v6, Ll63;->v:Ll63;

    .line 18
    new-instance v6, Ll63;

    const-string v1, "GROUP"

    const/16 v2, 0x11

    const/16 v3, 0x11

    move-object v0, v6

    move-object v5, v14

    invoke-direct/range {v0 .. v5}, Ll63;-><init>(Ljava/lang/String;IILn63;Lg73;)V

    sput-object v6, Ll63;->w:Ll63;

    .line 19
    new-instance v6, Ll63;

    sget-object v7, Ln63;->f:Ln63;

    const-string v1, "DOUBLE_LIST"

    const/16 v2, 0x12

    const/16 v3, 0x12

    move-object v0, v6

    move-object v4, v7

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Ll63;-><init>(Ljava/lang/String;IILn63;Lg73;)V

    sput-object v6, Ll63;->x:Ll63;

    .line 20
    new-instance v6, Ll63;

    const-string v1, "FLOAT_LIST"

    const/16 v2, 0x13

    const/16 v3, 0x13

    move-object v0, v6

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Ll63;-><init>(Ljava/lang/String;IILn63;Lg73;)V

    sput-object v6, Ll63;->y:Ll63;

    .line 21
    new-instance v6, Ll63;

    const-string v1, "INT64_LIST"

    const/16 v2, 0x14

    const/16 v3, 0x14

    move-object v0, v6

    move-object v5, v10

    invoke-direct/range {v0 .. v5}, Ll63;-><init>(Ljava/lang/String;IILn63;Lg73;)V

    sput-object v6, Ll63;->z:Ll63;

    .line 22
    new-instance v6, Ll63;

    const-string v1, "UINT64_LIST"

    const/16 v2, 0x15

    const/16 v3, 0x15

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ll63;-><init>(Ljava/lang/String;IILn63;Lg73;)V

    sput-object v6, Ll63;->A:Ll63;

    .line 23
    new-instance v6, Ll63;

    const-string v1, "INT32_LIST"

    const/16 v2, 0x16

    const/16 v3, 0x16

    move-object v0, v6

    move-object v5, v11

    invoke-direct/range {v0 .. v5}, Ll63;-><init>(Ljava/lang/String;IILn63;Lg73;)V

    sput-object v6, Ll63;->B:Ll63;

    .line 24
    new-instance v6, Ll63;

    const-string v1, "FIXED64_LIST"

    const/16 v2, 0x17

    const/16 v3, 0x17

    move-object v0, v6

    move-object v5, v10

    invoke-direct/range {v0 .. v5}, Ll63;-><init>(Ljava/lang/String;IILn63;Lg73;)V

    sput-object v6, Ll63;->C:Ll63;

    .line 25
    new-instance v6, Ll63;

    const-string v1, "FIXED32_LIST"

    const/16 v2, 0x18

    const/16 v3, 0x18

    move-object v0, v6

    move-object v5, v11

    invoke-direct/range {v0 .. v5}, Ll63;-><init>(Ljava/lang/String;IILn63;Lg73;)V

    sput-object v6, Ll63;->D:Ll63;

    .line 26
    new-instance v6, Ll63;

    const-string v1, "BOOL_LIST"

    const/16 v2, 0x19

    const/16 v3, 0x19

    move-object v0, v6

    move-object v5, v12

    invoke-direct/range {v0 .. v5}, Ll63;-><init>(Ljava/lang/String;IILn63;Lg73;)V

    sput-object v6, Ll63;->E:Ll63;

    .line 27
    new-instance v6, Ll63;

    const-string v1, "STRING_LIST"

    const/16 v2, 0x1a

    const/16 v3, 0x1a

    move-object v0, v6

    move-object v5, v13

    invoke-direct/range {v0 .. v5}, Ll63;-><init>(Ljava/lang/String;IILn63;Lg73;)V

    sput-object v6, Ll63;->F:Ll63;

    .line 28
    new-instance v6, Ll63;

    const-string v1, "MESSAGE_LIST"

    const/16 v2, 0x1b

    const/16 v3, 0x1b

    move-object v0, v6

    move-object v5, v14

    invoke-direct/range {v0 .. v5}, Ll63;-><init>(Ljava/lang/String;IILn63;Lg73;)V

    sput-object v6, Ll63;->G:Ll63;

    .line 29
    new-instance v6, Ll63;

    const-string v1, "BYTES_LIST"

    const/16 v2, 0x1c

    const/16 v3, 0x1c

    move-object v0, v6

    move-object v5, v15

    invoke-direct/range {v0 .. v5}, Ll63;-><init>(Ljava/lang/String;IILn63;Lg73;)V

    sput-object v6, Ll63;->H:Ll63;

    .line 30
    new-instance v6, Ll63;

    const-string v1, "UINT32_LIST"

    const/16 v2, 0x1d

    const/16 v3, 0x1d

    move-object v0, v6

    move-object v5, v11

    invoke-direct/range {v0 .. v5}, Ll63;-><init>(Ljava/lang/String;IILn63;Lg73;)V

    sput-object v6, Ll63;->I:Ll63;

    .line 31
    new-instance v6, Ll63;

    const-string v1, "ENUM_LIST"

    const/16 v2, 0x1e

    const/16 v3, 0x1e

    move-object v0, v6

    move-object/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Ll63;-><init>(Ljava/lang/String;IILn63;Lg73;)V

    sput-object v6, Ll63;->J:Ll63;

    .line 32
    new-instance v6, Ll63;

    const-string v1, "SFIXED32_LIST"

    const/16 v2, 0x1f

    const/16 v3, 0x1f

    move-object v0, v6

    move-object v5, v11

    invoke-direct/range {v0 .. v5}, Ll63;-><init>(Ljava/lang/String;IILn63;Lg73;)V

    sput-object v6, Ll63;->K:Ll63;

    .line 33
    new-instance v6, Ll63;

    const-string v1, "SFIXED64_LIST"

    const/16 v2, 0x20

    const/16 v3, 0x20

    move-object v0, v6

    move-object v5, v10

    invoke-direct/range {v0 .. v5}, Ll63;-><init>(Ljava/lang/String;IILn63;Lg73;)V

    sput-object v6, Ll63;->L:Ll63;

    .line 34
    new-instance v6, Ll63;

    const-string v1, "SINT32_LIST"

    const/16 v2, 0x21

    const/16 v3, 0x21

    move-object v0, v6

    move-object v5, v11

    invoke-direct/range {v0 .. v5}, Ll63;-><init>(Ljava/lang/String;IILn63;Lg73;)V

    sput-object v6, Ll63;->M:Ll63;

    .line 35
    new-instance v6, Ll63;

    const-string v1, "SINT64_LIST"

    const/16 v2, 0x22

    const/16 v3, 0x22

    move-object v0, v6

    move-object v5, v10

    invoke-direct/range {v0 .. v5}, Ll63;-><init>(Ljava/lang/String;IILn63;Lg73;)V

    sput-object v6, Ll63;->N:Ll63;

    .line 36
    new-instance v6, Ll63;

    sget-object v13, Ln63;->g:Ln63;

    const-string v1, "DOUBLE_LIST_PACKED"

    const/16 v2, 0x23

    const/16 v3, 0x23

    move-object v0, v6

    move-object v4, v13

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Ll63;-><init>(Ljava/lang/String;IILn63;Lg73;)V

    sput-object v6, Ll63;->O:Ll63;

    .line 37
    new-instance v6, Ll63;

    const-string v1, "FLOAT_LIST_PACKED"

    const/16 v2, 0x24

    const/16 v3, 0x24

    move-object v0, v6

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Ll63;-><init>(Ljava/lang/String;IILn63;Lg73;)V

    sput-object v6, Ll63;->P:Ll63;

    .line 38
    new-instance v6, Ll63;

    const-string v1, "INT64_LIST_PACKED"

    const/16 v2, 0x25

    const/16 v3, 0x25

    move-object v0, v6

    move-object v5, v10

    invoke-direct/range {v0 .. v5}, Ll63;-><init>(Ljava/lang/String;IILn63;Lg73;)V

    sput-object v6, Ll63;->Q:Ll63;

    .line 39
    new-instance v6, Ll63;

    const-string v1, "UINT64_LIST_PACKED"

    const/16 v2, 0x26

    const/16 v3, 0x26

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ll63;-><init>(Ljava/lang/String;IILn63;Lg73;)V

    sput-object v6, Ll63;->R:Ll63;

    .line 40
    new-instance v6, Ll63;

    const-string v1, "INT32_LIST_PACKED"

    const/16 v2, 0x27

    const/16 v3, 0x27

    move-object v0, v6

    move-object v5, v11

    invoke-direct/range {v0 .. v5}, Ll63;-><init>(Ljava/lang/String;IILn63;Lg73;)V

    sput-object v6, Ll63;->S:Ll63;

    .line 41
    new-instance v6, Ll63;

    const-string v1, "FIXED64_LIST_PACKED"

    const/16 v2, 0x28

    const/16 v3, 0x28

    move-object v0, v6

    move-object v5, v10

    invoke-direct/range {v0 .. v5}, Ll63;-><init>(Ljava/lang/String;IILn63;Lg73;)V

    sput-object v6, Ll63;->T:Ll63;

    .line 42
    new-instance v6, Ll63;

    const-string v1, "FIXED32_LIST_PACKED"

    const/16 v2, 0x29

    const/16 v3, 0x29

    move-object v0, v6

    move-object v5, v11

    invoke-direct/range {v0 .. v5}, Ll63;-><init>(Ljava/lang/String;IILn63;Lg73;)V

    sput-object v6, Ll63;->U:Ll63;

    .line 43
    new-instance v6, Ll63;

    const-string v1, "BOOL_LIST_PACKED"

    const/16 v2, 0x2a

    const/16 v3, 0x2a

    move-object v0, v6

    move-object v5, v12

    invoke-direct/range {v0 .. v5}, Ll63;-><init>(Ljava/lang/String;IILn63;Lg73;)V

    sput-object v6, Ll63;->V:Ll63;

    .line 44
    new-instance v6, Ll63;

    const-string v1, "UINT32_LIST_PACKED"

    const/16 v2, 0x2b

    const/16 v3, 0x2b

    move-object v0, v6

    move-object v5, v11

    invoke-direct/range {v0 .. v5}, Ll63;-><init>(Ljava/lang/String;IILn63;Lg73;)V

    sput-object v6, Ll63;->W:Ll63;

    .line 45
    new-instance v6, Ll63;

    const-string v1, "ENUM_LIST_PACKED"

    const/16 v2, 0x2c

    const/16 v3, 0x2c

    move-object v0, v6

    move-object/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Ll63;-><init>(Ljava/lang/String;IILn63;Lg73;)V

    sput-object v6, Ll63;->X:Ll63;

    .line 46
    new-instance v6, Ll63;

    const-string v1, "SFIXED32_LIST_PACKED"

    const/16 v2, 0x2d

    const/16 v3, 0x2d

    move-object v0, v6

    move-object v5, v11

    invoke-direct/range {v0 .. v5}, Ll63;-><init>(Ljava/lang/String;IILn63;Lg73;)V

    sput-object v6, Ll63;->Y:Ll63;

    .line 47
    new-instance v6, Ll63;

    sget-object v8, Lg73;->i:Lg73;

    const-string v1, "SFIXED64_LIST_PACKED"

    const/16 v2, 0x2e

    const/16 v3, 0x2e

    move-object v0, v6

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Ll63;-><init>(Ljava/lang/String;IILn63;Lg73;)V

    sput-object v6, Ll63;->Z:Ll63;

    .line 48
    new-instance v6, Ll63;

    sget-object v5, Lg73;->h:Lg73;

    const-string v1, "SINT32_LIST_PACKED"

    const/16 v2, 0x2f

    const/16 v3, 0x2f

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ll63;-><init>(Ljava/lang/String;IILn63;Lg73;)V

    sput-object v6, Ll63;->a0:Ll63;

    .line 49
    new-instance v6, Ll63;

    const-string v1, "SINT64_LIST_PACKED"

    const/16 v2, 0x30

    const/16 v3, 0x30

    move-object v0, v6

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Ll63;-><init>(Ljava/lang/String;IILn63;Lg73;)V

    sput-object v6, Ll63;->b0:Ll63;

    .line 50
    new-instance v6, Ll63;

    const-string v1, "GROUP_LIST"

    const/16 v2, 0x31

    const/16 v3, 0x31

    move-object v0, v6

    move-object v4, v7

    move-object v5, v14

    invoke-direct/range {v0 .. v5}, Ll63;-><init>(Ljava/lang/String;IILn63;Lg73;)V

    sput-object v6, Ll63;->c0:Ll63;

    .line 51
    new-instance v0, Ll63;

    sget-object v12, Ln63;->h:Ln63;

    sget-object v13, Lg73;->g:Lg73;

    const-string v9, "MAP"

    const/16 v10, 0x32

    const/16 v11, 0x32

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Ll63;-><init>(Ljava/lang/String;IILn63;Lg73;)V

    sput-object v0, Ll63;->d0:Ll63;

    const/16 v0, 0x33

    new-array v1, v0, [Ll63;

    .line 52
    sget-object v2, Ll63;->f:Ll63;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Ll63;->g:Ll63;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Ll63;->h:Ll63;

    const/4 v4, 0x2

    aput-object v2, v1, v4

    sget-object v2, Ll63;->i:Ll63;

    const/4 v4, 0x3

    aput-object v2, v1, v4

    sget-object v2, Ll63;->j:Ll63;

    const/4 v4, 0x4

    aput-object v2, v1, v4

    sget-object v2, Ll63;->k:Ll63;

    const/4 v4, 0x5

    aput-object v2, v1, v4

    sget-object v2, Ll63;->l:Ll63;

    const/4 v4, 0x6

    aput-object v2, v1, v4

    sget-object v2, Ll63;->m:Ll63;

    const/4 v4, 0x7

    aput-object v2, v1, v4

    sget-object v2, Ll63;->n:Ll63;

    const/16 v4, 0x8

    aput-object v2, v1, v4

    sget-object v2, Ll63;->o:Ll63;

    const/16 v4, 0x9

    aput-object v2, v1, v4

    sget-object v2, Ll63;->p:Ll63;

    const/16 v4, 0xa

    aput-object v2, v1, v4

    sget-object v2, Ll63;->q:Ll63;

    const/16 v4, 0xb

    aput-object v2, v1, v4

    sget-object v2, Ll63;->r:Ll63;

    const/16 v4, 0xc

    aput-object v2, v1, v4

    sget-object v2, Ll63;->s:Ll63;

    const/16 v4, 0xd

    aput-object v2, v1, v4

    sget-object v2, Ll63;->t:Ll63;

    const/16 v4, 0xe

    aput-object v2, v1, v4

    sget-object v2, Ll63;->u:Ll63;

    const/16 v4, 0xf

    aput-object v2, v1, v4

    sget-object v2, Ll63;->v:Ll63;

    const/16 v4, 0x10

    aput-object v2, v1, v4

    sget-object v2, Ll63;->w:Ll63;

    const/16 v4, 0x11

    aput-object v2, v1, v4

    sget-object v2, Ll63;->x:Ll63;

    const/16 v4, 0x12

    aput-object v2, v1, v4

    sget-object v2, Ll63;->y:Ll63;

    const/16 v4, 0x13

    aput-object v2, v1, v4

    sget-object v2, Ll63;->z:Ll63;

    const/16 v4, 0x14

    aput-object v2, v1, v4

    sget-object v2, Ll63;->A:Ll63;

    const/16 v4, 0x15

    aput-object v2, v1, v4

    sget-object v2, Ll63;->B:Ll63;

    const/16 v4, 0x16

    aput-object v2, v1, v4

    sget-object v2, Ll63;->C:Ll63;

    const/16 v4, 0x17

    aput-object v2, v1, v4

    sget-object v2, Ll63;->D:Ll63;

    const/16 v4, 0x18

    aput-object v2, v1, v4

    sget-object v2, Ll63;->E:Ll63;

    const/16 v4, 0x19

    aput-object v2, v1, v4

    sget-object v2, Ll63;->F:Ll63;

    const/16 v4, 0x1a

    aput-object v2, v1, v4

    sget-object v2, Ll63;->G:Ll63;

    const/16 v4, 0x1b

    aput-object v2, v1, v4

    sget-object v2, Ll63;->H:Ll63;

    const/16 v4, 0x1c

    aput-object v2, v1, v4

    sget-object v2, Ll63;->I:Ll63;

    const/16 v4, 0x1d

    aput-object v2, v1, v4

    sget-object v2, Ll63;->J:Ll63;

    const/16 v4, 0x1e

    aput-object v2, v1, v4

    sget-object v2, Ll63;->K:Ll63;

    const/16 v4, 0x1f

    aput-object v2, v1, v4

    sget-object v2, Ll63;->L:Ll63;

    const/16 v4, 0x20

    aput-object v2, v1, v4

    sget-object v2, Ll63;->M:Ll63;

    const/16 v4, 0x21

    aput-object v2, v1, v4

    sget-object v2, Ll63;->N:Ll63;

    const/16 v4, 0x22

    aput-object v2, v1, v4

    sget-object v2, Ll63;->O:Ll63;

    const/16 v4, 0x23

    aput-object v2, v1, v4

    sget-object v2, Ll63;->P:Ll63;

    const/16 v4, 0x24

    aput-object v2, v1, v4

    sget-object v2, Ll63;->Q:Ll63;

    const/16 v4, 0x25

    aput-object v2, v1, v4

    sget-object v2, Ll63;->R:Ll63;

    const/16 v4, 0x26

    aput-object v2, v1, v4

    sget-object v2, Ll63;->S:Ll63;

    const/16 v4, 0x27

    aput-object v2, v1, v4

    sget-object v2, Ll63;->T:Ll63;

    const/16 v4, 0x28

    aput-object v2, v1, v4

    sget-object v2, Ll63;->U:Ll63;

    const/16 v4, 0x29

    aput-object v2, v1, v4

    sget-object v2, Ll63;->V:Ll63;

    const/16 v4, 0x2a

    aput-object v2, v1, v4

    sget-object v2, Ll63;->W:Ll63;

    const/16 v4, 0x2b

    aput-object v2, v1, v4

    sget-object v2, Ll63;->X:Ll63;

    const/16 v4, 0x2c

    aput-object v2, v1, v4

    sget-object v2, Ll63;->Y:Ll63;

    const/16 v4, 0x2d

    aput-object v2, v1, v4

    sget-object v2, Ll63;->Z:Ll63;

    const/16 v4, 0x2e

    aput-object v2, v1, v4

    sget-object v2, Ll63;->a0:Ll63;

    const/16 v4, 0x2f

    aput-object v2, v1, v4

    sget-object v2, Ll63;->b0:Ll63;

    const/16 v4, 0x30

    aput-object v2, v1, v4

    sget-object v2, Ll63;->c0:Ll63;

    const/16 v4, 0x31

    aput-object v2, v1, v4

    sget-object v2, Ll63;->d0:Ll63;

    const/16 v4, 0x32

    aput-object v2, v1, v4

    .line 53
    sput-object v1, Ll63;->f0:[Ll63;

    .line 54
    invoke-static {}, Ll63;->values()[Ll63;

    move-result-object v1

    new-array v0, v0, [Ll63;

    .line 55
    sput-object v0, Ll63;->e0:[Ll63;

    .line 56
    array-length v0, v1

    :goto_0
    if-ge v3, v0, :cond_0

    aget-object v2, v1, v3

    .line 57
    sget-object v4, Ll63;->e0:[Ll63;

    iget v5, v2, Ll63;->e:I

    aput-object v2, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILn63;Lg73;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ln63;",
            "Lg73;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Ll63;->e:I

    .line 3
    sget-object p1, Lo63;->a:[I

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p5, Lg73;->e:Ljava/lang/Class;

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p5, Lg73;->e:Ljava/lang/Class;

    .line 6
    :goto_0
    sget-object p1, Ln63;->e:Ln63;

    if-ne p4, p1, :cond_2

    .line 7
    sget-object p1, Lo63;->b:[I

    invoke-virtual {p5}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    :cond_2
    return-void
.end method

.method public static values()[Ll63;
    .locals 1

    .line 1
    sget-object v0, Ll63;->f0:[Ll63;

    invoke-virtual {v0}, [Ll63;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ll63;

    return-object v0
.end method
