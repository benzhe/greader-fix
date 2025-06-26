.class public Lgi5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lii5$g;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:I

.field public final synthetic f:Lii5;


# direct methods
.method public constructor <init>(Lii5;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lgi5;->f:Lii5;

    iput-object p2, p0, Lgi5;->a:Ljava/lang/String;

    iput-object p3, p0, Lgi5;->b:Ljava/lang/String;

    iput-object p4, p0, Lgi5;->c:Ljava/lang/String;

    iput-object p5, p0, Lgi5;->d:Ljava/lang/String;

    iput p6, p0, Lgi5;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lrl5;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lgi5;->a:Ljava/lang/String;

    iget-object v3, v0, Lgi5;->b:Ljava/lang/String;

    iget-object v4, v0, Lgi5;->c:Ljava/lang/String;

    iget-object v5, v0, Lgi5;->d:Ljava/lang/String;

    iget v6, v0, Lgi5;->e:I

    iget-object v7, v0, Lgi5;->f:Lii5;

    .line 2
    iget-object v7, v7, Lii5;->q:Ljava/lang/String;

    .line 3
    sget-object v8, Lsl5;->a:Lpl5;

    .line 4
    invoke-static {v2}, Lpl5;->a(Ljava/lang/String;)Lpl5;

    move-result-object v2

    .line 5
    invoke-static {v3}, Lpl5;->a(Ljava/lang/String;)Lpl5;

    move-result-object v3

    .line 6
    invoke-static {v4}, Lpl5;->a(Ljava/lang/String;)Lpl5;

    move-result-object v4

    .line 7
    invoke-static {v5}, Lpl5;->a(Ljava/lang/String;)Lpl5;

    move-result-object v5

    if-eqz v7, :cond_0

    .line 8
    invoke-static {v7}, Lpl5;->a(Ljava/lang/String;)Lpl5;

    move-result-object v7

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    const/4 v8, 0x7

    const/4 v9, 0x2

    .line 9
    invoke-virtual {v1, v8, v9}, Lrl5;->r(II)V

    const/4 v8, 0x1

    .line 10
    invoke-static {v8, v2}, Lrl5;->b(ILpl5;)I

    move-result v10

    add-int/lit8 v10, v10, 0x0

    .line 11
    invoke-static {v9, v3}, Lrl5;->b(ILpl5;)I

    move-result v11

    add-int/2addr v11, v10

    const/4 v10, 0x3

    .line 12
    invoke-static {v10, v4}, Lrl5;->b(ILpl5;)I

    move-result v12

    add-int/2addr v12, v11

    const/4 v11, 0x6

    .line 13
    invoke-static {v11, v5}, Lrl5;->b(ILpl5;)I

    move-result v13

    add-int/2addr v13, v12

    const/16 v12, 0x9

    const/16 v14, 0x8

    if-eqz v7, :cond_1

    .line 14
    sget-object v15, Lsl5;->b:Lpl5;

    invoke-static {v14, v15}, Lrl5;->b(ILpl5;)I

    move-result v15

    add-int/2addr v15, v13

    .line 15
    invoke-static {v12, v7}, Lrl5;->b(ILpl5;)I

    move-result v13

    add-int/2addr v13, v15

    :cond_1
    const/16 v15, 0xa

    .line 16
    invoke-static {v15, v6}, Lrl5;->c(II)I

    move-result v16

    add-int v13, v16, v13

    .line 17
    invoke-virtual {v1, v13}, Lrl5;->p(I)V

    .line 18
    invoke-virtual {v1, v8, v2}, Lrl5;->m(ILpl5;)V

    .line 19
    invoke-virtual {v1, v9, v3}, Lrl5;->m(ILpl5;)V

    .line 20
    invoke-virtual {v1, v10, v4}, Lrl5;->m(ILpl5;)V

    .line 21
    invoke-virtual {v1, v11, v5}, Lrl5;->m(ILpl5;)V

    if-eqz v7, :cond_2

    .line 22
    sget-object v2, Lsl5;->b:Lpl5;

    invoke-virtual {v1, v14, v2}, Lrl5;->m(ILpl5;)V

    .line 23
    invoke-virtual {v1, v12, v7}, Lrl5;->m(ILpl5;)V

    .line 24
    :cond_2
    invoke-virtual {v1, v15, v6}, Lrl5;->n(II)V

    return-void
.end method
