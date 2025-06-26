.class public final Lay6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldc7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ldc7<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lay6;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lbc7;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbc7<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "emiter"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lhh6;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhh6;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const-string v5, "MlKitContext has not been initialized"

    .line 2
    invoke-static {v4, v5}, Lbi;->m(ZLjava/lang/Object;)V

    .line 3
    const-class v4, Lcom/google/mlkit/nl/languageid/LanguageIdentifierImpl$a;

    .line 4
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v5, "MlKitContext has been deleted"

    invoke-static {v0, v5}, Lbi;->m(ZLjava/lang/Object;)V

    .line 6
    iget-object v0, v1, Lhh6;->a:Leg5;

    invoke-virtual {v0, v4}, Lpf5;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/mlkit/nl/languageid/LanguageIdentifierImpl$a;

    .line 8
    sget-object v1, Lai6;->c:Lai6;

    .line 9
    iget-object v4, v0, Lcom/google/mlkit/nl/languageid/LanguageIdentifierImpl$a;->b:Lcom/google/mlkit/nl/languageid/internal/LanguageIdentificationJni;

    iget-object v5, v0, Lcom/google/mlkit/nl/languageid/LanguageIdentifierImpl$a;->a:Lfj4;

    iget-object v0, v0, Lcom/google/mlkit/nl/languageid/LanguageIdentifierImpl$a;->c:Leh6;

    .line 10
    new-instance v6, Lcom/google/mlkit/nl/languageid/LanguageIdentifierImpl;

    .line 11
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v0, v0, Leh6;->a:Ls96;

    invoke-interface {v0}, Ls96;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    .line 13
    invoke-direct {v6, v1, v4, v5, v0}, Lcom/google/mlkit/nl/languageid/LanguageIdentifierImpl;-><init>(Lai6;Lcom/google/mlkit/nl/languageid/internal/LanguageIdentificationJni;Lfj4;Ljava/util/concurrent/Executor;)V

    .line 14
    invoke-static {}, Lgp4;->w()Lgp4$a;

    move-result-object v0

    .line 15
    iget-boolean v1, v0, Lpk4$b;->g:Z

    if-eqz v1, :cond_2

    .line 16
    invoke-virtual {v0}, Lpk4$d;->f()V

    .line 17
    iput-boolean v2, v0, Lpk4$b;->g:Z

    .line 18
    :cond_2
    iget-object v1, v0, Lpk4$b;->f:Lpk4;

    check-cast v1, Lgp4;

    invoke-static {v1}, Lgp4;->s(Lgp4;)V

    .line 19
    invoke-static {}, Lxp4;->p()Lxp4$a;

    move-result-object v1

    iget-object v4, v6, Lcom/google/mlkit/nl/languageid/LanguageIdentifierImpl;->e:Lai6;

    .line 20
    invoke-virtual {v4}, Lai6;->a()Llp4;

    move-result-object v4

    .line 21
    iget-boolean v7, v1, Lpk4$b;->g:Z

    if-eqz v7, :cond_3

    .line 22
    invoke-virtual {v1}, Lpk4$b;->f()V

    .line 23
    iput-boolean v2, v1, Lpk4$b;->g:Z

    .line 24
    :cond_3
    iget-object v7, v1, Lpk4$b;->f:Lpk4;

    check-cast v7, Lxp4;

    invoke-static {v7, v4}, Lxp4;->s(Lxp4;Llp4;)V

    .line 25
    invoke-virtual {v0, v1}, Lgp4$a;->k(Lxp4$a;)Lgp4$a;

    sget-object v1, Loh4;->y:Loh4;

    .line 26
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v4, Lgh6;->b:Ljava/lang/Object;

    new-instance v4, Lgj4;

    invoke-direct {v4, v5, v0, v1}, Lgj4;-><init>(Lfj4;Lgp4$a;Loh4;)V

    .line 28
    invoke-static {}, Lgh6;->a()Lgh6;

    move-result-object v0

    .line 29
    iget-object v0, v0, Lgh6;->a:Landroid/os/Handler;

    .line 30
    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 31
    iget-object v0, v6, Lcom/google/mlkit/nl/languageid/LanguageIdentifierImpl;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentificationJni;

    .line 32
    iget-object v0, v0, Ljh6;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 33
    iget-object v0, p0, Lay6;->a:Ljava/lang/String;

    const-string v1, "Text can not be null"

    .line 34
    invoke-static {v0, v1}, Lbi;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    iget-object v1, v6, Lcom/google/mlkit/nl/languageid/LanguageIdentifierImpl;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentificationJni;

    if-eqz v8, :cond_4

    const/4 v1, 0x1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    const-string v4, "LanguageIdentification has been closed"

    .line 36
    invoke-static {v1, v4}, Lbi;->m(ZLjava/lang/Object;)V

    .line 37
    iget-object v1, v8, Ljh6;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    xor-int/2addr v1, v3

    .line 38
    iget-object v4, v6, Lcom/google/mlkit/nl/languageid/LanguageIdentifierImpl;->g:Ljava/util/concurrent/Executor;

    new-instance v11, Lgi6;

    invoke-direct {v11, v6, v8, v0, v1}, Lgi6;-><init>(Lcom/google/mlkit/nl/languageid/LanguageIdentifierImpl;Lcom/google/mlkit/nl/languageid/internal/LanguageIdentificationJni;Ljava/lang/String;Z)V

    iget-object v0, v6, Lcom/google/mlkit/nl/languageid/LanguageIdentifierImpl;->i:Lv35;

    .line 39
    iget-object v9, v0, Lv35;->a:Lk45;

    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 41
    new-instance v1, Lci6;

    invoke-direct {v1, v8, v0, v4}, Lci6;-><init>(Lcom/google/mlkit/nl/languageid/internal/LanguageIdentificationJni;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/Executor;)V

    .line 42
    iget-object v4, v8, Ljh6;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-lez v4, :cond_5

    const/4 v2, 0x1

    :cond_5
    invoke-static {v2}, Lbi;->l(Z)V

    .line 43
    invoke-virtual {v9}, Lk45;->a()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 44
    new-instance v1, Le55;

    invoke-direct {v1}, Le55;-><init>()V

    .line 45
    invoke-virtual {v1}, Le55;->t()Z

    goto :goto_3

    .line 46
    :cond_6
    new-instance v10, Lv35;

    invoke-direct {v10}, Lv35;-><init>()V

    .line 47
    new-instance v2, Lf45;

    .line 48
    iget-object v3, v10, Lv35;->a:Lk45;

    .line 49
    invoke-direct {v2, v3}, Lf45;-><init>(Lk45;)V

    .line 50
    new-instance v3, Lwh6;

    invoke-direct {v3, v1, v9, v10, v2}, Lwh6;-><init>(Ljava/util/concurrent/Executor;Lk45;Lv35;Lf45;)V

    .line 51
    iget-object v1, v8, Ljh6;->b:Llh6;

    new-instance v4, Lvh6;

    move-object v7, v4

    move-object v12, v2

    invoke-direct/range {v7 .. v12}, Lvh6;-><init>(Ljh6;Lk45;Lv35;Ljava/util/concurrent/Callable;Lf45;)V

    invoke-virtual {v1, v3, v4}, Llh6;->a(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    .line 52
    iget-object v1, v2, Lf45;->a:Le55;

    :goto_3
    const/4 v2, 0x0

    .line 53
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 54
    new-instance v0, Lay6$a;

    invoke-direct {v0, p1}, Lay6$a;-><init>(Lbc7;)V

    .line 55
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v2, Lg45;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, v2, v0}, Le55;->g(Ljava/util/concurrent/Executor;Lb45;)Le45;

    .line 57
    new-instance v0, Lay6$b;

    invoke-direct {v0, p1}, Lay6$b;-><init>(Lbc7;)V

    .line 58
    invoke-virtual {v1, v2, v0}, Le55;->e(Ljava/util/concurrent/Executor;La45;)Le45;

    return-void
.end method
