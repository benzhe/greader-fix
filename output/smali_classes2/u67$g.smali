.class public final enum Lu67$g;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu67;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lu67$g;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum g:Lu67$g;

.field public static final enum h:Lu67$g;

.field public static final enum i:Lu67$g;

.field public static final enum j:Lu67$g;

.field public static final enum k:Lu67$g;

.field public static final enum l:Lu67$g;

.field public static final enum m:Lu67$g;

.field public static final enum n:Lu67$g;

.field public static final enum o:Lu67$g;

.field public static final enum p:Lu67$g;

.field public static final enum q:Lu67$g;

.field public static final enum r:Lu67$g;

.field public static final enum s:Lu67$g;

.field public static final enum t:Lu67$g;

.field public static final u:[Lu67$g;

.field public static final synthetic v:[Lu67$g;


# instance fields
.field public final e:I

.field public final f:Lx47;


# direct methods
.method public static constructor <clinit>()V
    .locals 17

    .line 1
    new-instance v0, Lu67$g;

    sget-object v1, Lx47;->n:Lx47;

    const-string v2, "NO_ERROR"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v3, v1}, Lu67$g;-><init>(Ljava/lang/String;IILx47;)V

    sput-object v0, Lu67$g;->g:Lu67$g;

    .line 2
    new-instance v2, Lu67$g;

    sget-object v4, Lx47;->m:Lx47;

    const-string v5, "PROTOCOL_ERROR"

    const/4 v6, 0x1

    invoke-direct {v2, v5, v6, v6, v4}, Lu67$g;-><init>(Ljava/lang/String;IILx47;)V

    sput-object v2, Lu67$g;->h:Lu67$g;

    .line 3
    new-instance v5, Lu67$g;

    const-string v7, "INTERNAL_ERROR"

    const/4 v8, 0x2

    invoke-direct {v5, v7, v8, v8, v4}, Lu67$g;-><init>(Ljava/lang/String;IILx47;)V

    sput-object v5, Lu67$g;->i:Lu67$g;

    .line 4
    new-instance v7, Lu67$g;

    const-string v9, "FLOW_CONTROL_ERROR"

    const/4 v10, 0x3

    invoke-direct {v7, v9, v10, v10, v4}, Lu67$g;-><init>(Ljava/lang/String;IILx47;)V

    sput-object v7, Lu67$g;->j:Lu67$g;

    .line 5
    new-instance v9, Lu67$g;

    const-string v11, "SETTINGS_TIMEOUT"

    const/4 v12, 0x4

    invoke-direct {v9, v11, v12, v12, v4}, Lu67$g;-><init>(Ljava/lang/String;IILx47;)V

    sput-object v9, Lu67$g;->k:Lu67$g;

    .line 6
    new-instance v11, Lu67$g;

    const-string v13, "STREAM_CLOSED"

    const/4 v14, 0x5

    invoke-direct {v11, v13, v14, v14, v4}, Lu67$g;-><init>(Ljava/lang/String;IILx47;)V

    sput-object v11, Lu67$g;->l:Lu67$g;

    .line 7
    new-instance v13, Lu67$g;

    const-string v15, "FRAME_SIZE_ERROR"

    const/4 v14, 0x6

    invoke-direct {v13, v15, v14, v14, v4}, Lu67$g;-><init>(Ljava/lang/String;IILx47;)V

    sput-object v13, Lu67$g;->m:Lu67$g;

    .line 8
    new-instance v15, Lu67$g;

    const-string v14, "REFUSED_STREAM"

    const/4 v12, 0x7

    invoke-direct {v15, v14, v12, v12, v1}, Lu67$g;-><init>(Ljava/lang/String;IILx47;)V

    sput-object v15, Lu67$g;->n:Lu67$g;

    .line 9
    new-instance v1, Lu67$g;

    sget-object v14, Lx47;->g:Lx47;

    const-string v12, "CANCEL"

    const/16 v10, 0x8

    invoke-direct {v1, v12, v10, v10, v14}, Lu67$g;-><init>(Ljava/lang/String;IILx47;)V

    sput-object v1, Lu67$g;->o:Lu67$g;

    .line 10
    new-instance v12, Lu67$g;

    const-string v14, "COMPRESSION_ERROR"

    const/16 v10, 0x9

    invoke-direct {v12, v14, v10, v10, v4}, Lu67$g;-><init>(Ljava/lang/String;IILx47;)V

    sput-object v12, Lu67$g;->p:Lu67$g;

    .line 11
    new-instance v14, Lu67$g;

    const-string v10, "CONNECT_ERROR"

    const/16 v8, 0xa

    invoke-direct {v14, v10, v8, v8, v4}, Lu67$g;-><init>(Ljava/lang/String;IILx47;)V

    sput-object v14, Lu67$g;->q:Lu67$g;

    .line 12
    new-instance v4, Lu67$g;

    sget-object v10, Lx47;->l:Lx47;

    const-string v8, "Bandwidth exhausted"

    invoke-virtual {v10, v8}, Lx47;->h(Ljava/lang/String;)Lx47;

    move-result-object v8

    const-string v10, "ENHANCE_YOUR_CALM"

    const/16 v6, 0xb

    invoke-direct {v4, v10, v6, v6, v8}, Lu67$g;-><init>(Ljava/lang/String;IILx47;)V

    sput-object v4, Lu67$g;->r:Lu67$g;

    .line 13
    new-instance v8, Lu67$g;

    sget-object v10, Lx47;->j:Lx47;

    const-string v6, "Permission denied as protocol is not secure enough to call"

    invoke-virtual {v10, v6}, Lx47;->h(Ljava/lang/String;)Lx47;

    move-result-object v6

    const-string v10, "INADEQUATE_SECURITY"

    const/16 v3, 0xc

    invoke-direct {v8, v10, v3, v3, v6}, Lu67$g;-><init>(Ljava/lang/String;IILx47;)V

    sput-object v8, Lu67$g;->s:Lu67$g;

    .line 14
    new-instance v6, Lu67$g;

    sget-object v10, Lx47;->h:Lx47;

    const-string v3, "HTTP_1_1_REQUIRED"

    move-object/from16 v16, v8

    const/16 v8, 0xd

    invoke-direct {v6, v3, v8, v8, v10}, Lu67$g;-><init>(Ljava/lang/String;IILx47;)V

    sput-object v6, Lu67$g;->t:Lu67$g;

    const/16 v3, 0xe

    new-array v3, v3, [Lu67$g;

    const/4 v10, 0x0

    aput-object v0, v3, v10

    const/4 v0, 0x1

    aput-object v2, v3, v0

    const/4 v0, 0x2

    aput-object v5, v3, v0

    const/4 v0, 0x3

    aput-object v7, v3, v0

    const/4 v0, 0x4

    aput-object v9, v3, v0

    const/4 v0, 0x5

    aput-object v11, v3, v0

    const/4 v0, 0x6

    aput-object v13, v3, v0

    const/4 v0, 0x7

    aput-object v15, v3, v0

    const/16 v0, 0x8

    aput-object v1, v3, v0

    const/16 v0, 0x9

    aput-object v12, v3, v0

    const/16 v0, 0xa

    aput-object v14, v3, v0

    const/16 v0, 0xb

    aput-object v4, v3, v0

    const/16 v0, 0xc

    aput-object v16, v3, v0

    aput-object v6, v3, v8

    .line 15
    sput-object v3, Lu67$g;->v:[Lu67$g;

    .line 16
    invoke-static {}, Lu67$g;->values()[Lu67$g;

    move-result-object v0

    .line 17
    aget-object v1, v0, v8

    .line 18
    iget v1, v1, Lu67$g;->e:I

    int-to-long v1, v1

    long-to-int v2, v1

    const/4 v1, 0x1

    add-int/2addr v2, v1

    .line 19
    new-array v1, v2, [Lu67$g;

    .line 20
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 21
    iget v5, v4, Lu67$g;->e:I

    int-to-long v5, v5

    long-to-int v6, v5

    .line 22
    aput-object v4, v1, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 23
    :cond_0
    sput-object v1, Lu67$g;->u:[Lu67$g;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILx47;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lx47;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lu67$g;->e:I

    const-string p1, "HTTP/2 error code: "

    .line 3
    invoke-static {p1}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Lx47;->b(Ljava/lang/String;)Lx47;

    move-result-object p1

    iput-object p1, p0, Lu67$g;->f:Lx47;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lu67$g;
    .locals 1

    .line 1
    const-class v0, Lu67$g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lu67$g;

    return-object p0
.end method

.method public static values()[Lu67$g;
    .locals 1

    .line 1
    sget-object v0, Lu67$g;->v:[Lu67$g;

    invoke-virtual {v0}, [Lu67$g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lu67$g;

    return-object v0
.end method
