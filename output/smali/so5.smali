.class public final synthetic Lso5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvo5;


# instance fields
.field public final a:Lto5;

.field public final b:Lvo5;


# direct methods
.method public constructor <init>(Lto5;Lvo5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lso5;->a:Lto5;

    iput-object p2, p0, Lso5;->b:Lvo5;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lzo5;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Lso5;->a:Lto5;

    iget-object v3, v0, Lso5;->b:Lvo5;

    move-object/from16 v4, p1

    check-cast v4, Lmr5;

    const/4 v5, 0x0

    if-eqz v1, :cond_0

    .line 1
    invoke-interface {v3, v5, v1}, Lvo5;->a(Ljava/lang/Object;Lzo5;)V

    goto :goto_3

    :cond_0
    const/4 v1, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    const/4 v7, 0x1

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    :goto_0
    new-array v8, v6, [Ljava/lang/Object;

    const-string v9, "Got event without value or error set"

    .line 2
    invoke-static {v7, v9, v8}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object v7, v4, Lmr5;->b:Ldu5;

    .line 4
    invoke-virtual {v7}, Ldu5;->size()I

    move-result v7

    if-gt v7, v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "Too many documents returned on a document query"

    .line 5
    invoke-static {v1, v7, v6}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 6
    iget-object v1, v4, Lmr5;->b:Ldu5;

    .line 7
    iget-object v6, v2, Lto5;->a:Lbu5;

    invoke-virtual {v1, v6}, Ldu5;->d(Lbu5;)Lyt5;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 8
    iget-object v1, v4, Lmr5;->f:Lln5;

    .line 9
    iget-object v6, v10, Lfu5;->a:Lbu5;

    .line 10
    invoke-virtual {v1, v6}, Lln5;->contains(Ljava/lang/Object;)Z

    move-result v12

    .line 11
    iget-object v8, v2, Lto5;->b:Lcom/google/firebase/firestore/FirebaseFirestore;

    .line 12
    iget-boolean v11, v4, Lmr5;->e:Z

    .line 13
    new-instance v1, Luo5;

    .line 14
    iget-object v9, v10, Lfu5;->a:Lbu5;

    move-object v7, v1

    .line 15
    invoke-direct/range {v7 .. v12}, Luo5;-><init>(Lcom/google/firebase/firestore/FirebaseFirestore;Lbu5;Lyt5;ZZ)V

    goto :goto_2

    .line 16
    :cond_3
    iget-object v14, v2, Lto5;->b:Lcom/google/firebase/firestore/FirebaseFirestore;

    iget-object v15, v2, Lto5;->a:Lbu5;

    .line 17
    iget-boolean v1, v4, Lmr5;->e:Z

    const/16 v18, 0x0

    .line 18
    new-instance v2, Luo5;

    const/16 v16, 0x0

    move-object v13, v2

    move/from16 v17, v1

    invoke-direct/range {v13 .. v18}, Luo5;-><init>(Lcom/google/firebase/firestore/FirebaseFirestore;Lbu5;Lyt5;ZZ)V

    move-object v1, v2

    .line 19
    :goto_2
    invoke-interface {v3, v1, v5}, Lvo5;->a(Ljava/lang/Object;Lzo5;)V

    :goto_3
    return-void
.end method
