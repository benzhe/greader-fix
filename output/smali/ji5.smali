.class public Lji5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lii5$g;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:J

.field public final synthetic d:J

.field public final synthetic e:Z

.field public final synthetic f:I


# direct methods
.method public constructor <init>(Lii5;ILjava/lang/String;IJJZILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput p2, p0, Lji5;->a:I

    iput p4, p0, Lji5;->b:I

    iput-wide p5, p0, Lji5;->c:J

    iput-wide p7, p0, Lji5;->d:J

    iput-boolean p9, p0, Lji5;->e:Z

    iput p10, p0, Lji5;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lrl5;)V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget v2, v0, Lji5;->a:I

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget v4, v0, Lji5;->b:I

    iget-wide v5, v0, Lji5;->c:J

    iget-wide v7, v0, Lji5;->d:J

    iget-boolean v9, v0, Lji5;->e:Z

    iget v10, v0, Lji5;->f:I

    sget-object v11, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v12, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 2
    invoke-static {v3}, Lsl5;->j(Ljava/lang/String;)Lpl5;

    move-result-object v3

    .line 3
    invoke-static {v12}, Lsl5;->j(Ljava/lang/String;)Lpl5;

    move-result-object v12

    .line 4
    invoke-static {v11}, Lsl5;->j(Ljava/lang/String;)Lpl5;

    move-result-object v11

    const/16 v13, 0x9

    const/4 v14, 0x2

    .line 5
    invoke-virtual {v1, v13, v14}, Lrl5;->r(II)V

    const/4 v13, 0x3

    .line 6
    invoke-static {v13, v2}, Lrl5;->c(II)I

    move-result v14

    const/4 v15, 0x0

    add-int/2addr v14, v15

    const/4 v15, 0x4

    if-nez v3, :cond_0

    const/16 v17, 0x0

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {v15, v3}, Lrl5;->b(ILpl5;)I

    move-result v17

    :goto_0
    add-int v14, v14, v17

    const/4 v15, 0x5

    .line 8
    invoke-static {v15, v4}, Lrl5;->f(II)I

    move-result v18

    add-int v18, v18, v14

    const/4 v14, 0x6

    .line 9
    invoke-static {v14, v5, v6}, Lrl5;->g(IJ)I

    move-result v19

    add-int v19, v19, v18

    const/4 v14, 0x7

    .line 10
    invoke-static {v14, v7, v8}, Lrl5;->g(IJ)I

    move-result v20

    add-int v20, v20, v19

    const/16 v14, 0xa

    .line 11
    invoke-static {v14, v9}, Lrl5;->a(IZ)I

    move-result v21

    add-int v21, v21, v20

    const/16 v14, 0xc

    .line 12
    invoke-static {v14, v10}, Lrl5;->f(II)I

    move-result v22

    add-int v22, v22, v21

    const/16 v14, 0xd

    if-nez v11, :cond_1

    const/16 v23, 0x0

    goto :goto_1

    .line 13
    :cond_1
    invoke-static {v14, v11}, Lrl5;->b(ILpl5;)I

    move-result v23

    :goto_1
    add-int v22, v22, v23

    const/16 v14, 0xe

    if-nez v12, :cond_2

    const/16 v16, 0x0

    goto :goto_2

    .line 14
    :cond_2
    invoke-static {v14, v12}, Lrl5;->b(ILpl5;)I

    move-result v16

    :goto_2
    add-int v14, v22, v16

    .line 15
    invoke-virtual {v1, v14}, Lrl5;->p(I)V

    .line 16
    invoke-virtual {v1, v13, v2}, Lrl5;->n(II)V

    const/4 v2, 0x4

    .line 17
    invoke-virtual {v1, v2, v3}, Lrl5;->m(ILpl5;)V

    .line 18
    invoke-virtual {v1, v15, v4}, Lrl5;->s(II)V

    const/4 v2, 0x6

    .line 19
    invoke-virtual {v1, v2, v5, v6}, Lrl5;->t(IJ)V

    const/4 v2, 0x7

    .line 20
    invoke-virtual {v1, v2, v7, v8}, Lrl5;->t(IJ)V

    const/16 v2, 0xa

    .line 21
    invoke-virtual {v1, v2, v9}, Lrl5;->l(IZ)V

    const/16 v2, 0xc

    .line 22
    invoke-virtual {v1, v2, v10}, Lrl5;->s(II)V

    if-eqz v11, :cond_3

    const/16 v2, 0xd

    .line 23
    invoke-virtual {v1, v2, v11}, Lrl5;->m(ILpl5;)V

    :cond_3
    if-eqz v12, :cond_4

    const/16 v2, 0xe

    .line 24
    invoke-virtual {v1, v2, v12}, Lrl5;->m(ILpl5;)V

    :cond_4
    return-void
.end method
