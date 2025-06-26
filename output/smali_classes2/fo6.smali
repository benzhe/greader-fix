.class public final Lfo6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lub7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lub7<",
        "Lpo6;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lgo6;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lgo6;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lfo6;->a:Lgo6;

    iput-object p2, p0, Lfo6;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lsb7;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsb7<",
            "Lpo6;",
            ">;)V"
        }
    .end annotation

    const-string v0, "emitter"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lfo6;->a:Lgo6;

    .line 2
    iget-object v0, v0, Lgo6;->a:Lcom/google/firebase/firestore/FirebaseFirestore;

    const-string v1, "promo_codes"

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/FirebaseFirestore;->a(Ljava/lang/String;)Lpo5;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lfo6;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lpo5;->a(Ljava/lang/String;)Lto5;

    move-result-object v0

    .line 5
    sget-object v1, Lkp5;->e:Lkp5;

    .line 6
    new-instance v2, Lf45;

    invoke-direct {v2}, Lf45;-><init>()V

    .line 7
    new-instance v3, Lf45;

    invoke-direct {v3}, Lf45;-><init>()V

    .line 8
    new-instance v4, Ldq5$a;

    invoke-direct {v4}, Ldq5$a;-><init>()V

    const/4 v5, 0x1

    .line 9
    iput-boolean v5, v4, Ldq5$a;->a:Z

    .line 10
    iput-boolean v5, v4, Ldq5$a;->b:Z

    .line 11
    iput-boolean v5, v4, Ldq5$a;->c:Z

    .line 12
    sget-object v5, Lnx5;->b:Ljava/util/concurrent/Executor;

    .line 13
    new-instance v6, Lro5;

    invoke-direct {v6, v2, v3, v1}, Lro5;-><init>(Lf45;Lf45;Lkp5;)V

    .line 14
    new-instance v1, Lso5;

    invoke-direct {v1, v0, v6}, Lso5;-><init>(Lto5;Lvo5;)V

    .line 15
    new-instance v6, Lxp5;

    invoke-direct {v6, v5, v1}, Lxp5;-><init>(Ljava/util/concurrent/Executor;Lvo5;)V

    .line 16
    iget-object v1, v0, Lto5;->a:Lbu5;

    .line 17
    iget-object v1, v1, Lbu5;->e:Liu5;

    .line 18
    invoke-static {v1}, Lyq5;->a(Liu5;)Lyq5;

    move-result-object v1

    .line 19
    iget-object v5, v0, Lto5;->b:Lcom/google/firebase/firestore/FirebaseFirestore;

    .line 20
    iget-object v5, v5, Lcom/google/firebase/firestore/FirebaseFirestore;->h:Lmq5;

    .line 21
    invoke-virtual {v5}, Lmq5;->b()V

    .line 22
    new-instance v7, Lzq5;

    invoke-direct {v7, v1, v4, v6}, Lzq5;-><init>(Lyq5;Ldq5$a;Lvo5;)V

    .line 23
    iget-object v1, v5, Lmq5;->c:Lex5;

    .line 24
    new-instance v4, Lkq5;

    invoke-direct {v4, v5, v7}, Lkq5;-><init>(Lmq5;Lzq5;)V

    .line 25
    new-instance v5, Lcx5;

    invoke-direct {v5, v4}, Lcx5;-><init>(Ljava/lang/Runnable;)V

    .line 26
    invoke-virtual {v1, v5}, Lex5;->a(Ljava/util/concurrent/Callable;)Le45;

    .line 27
    new-instance v1, Ltq5;

    iget-object v0, v0, Lto5;->b:Lcom/google/firebase/firestore/FirebaseFirestore;

    .line 28
    iget-object v0, v0, Lcom/google/firebase/firestore/FirebaseFirestore;->h:Lmq5;

    .line 29
    invoke-direct {v1, v0, v7, v6}, Ltq5;-><init>(Lmq5;Lzq5;Lxp5;)V

    .line 30
    iget-object v0, v3, Lf45;->a:Le55;

    invoke-virtual {v0, v1}, Le55;->s(Ljava/lang/Object;)V

    .line 31
    iget-object v0, v2, Lf45;->a:Le55;

    .line 32
    new-instance v1, Lfo6$a;

    invoke-direct {v1, p1}, Lfo6$a;-><init>(Lsb7;)V

    .line 33
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v2, Lg45;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v2, v1}, Le55;->g(Ljava/util/concurrent/Executor;Lb45;)Le45;

    .line 35
    new-instance v1, Lfo6$b;

    invoke-direct {v1, p1}, Lfo6$b;-><init>(Lsb7;)V

    .line 36
    invoke-virtual {v0, v2, v1}, Le55;->e(Ljava/util/concurrent/Executor;La45;)Le45;

    return-void
.end method
