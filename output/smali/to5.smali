.class public Lto5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lbu5;

.field public final b:Lcom/google/firebase/firestore/FirebaseFirestore;


# direct methods
.method public constructor <init>(Lbu5;Lcom/google/firebase/firestore/FirebaseFirestore;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lto5;->a:Lbu5;

    .line 3
    iput-object p2, p0, Lto5;->b:Lcom/google/firebase/firestore/FirebaseFirestore;

    return-void
.end method


# virtual methods
.method public varargs a(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Le45;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Le45<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lto5;->b:Lcom/google/firebase/firestore/FirebaseFirestore;

    .line 2
    iget-object v0, v0, Lcom/google/firebase/firestore/FirebaseFirestore;->f:Lmp5;

    .line 3
    sget-object v1, Lvx5;->a:Ljava/util/Comparator;

    .line 4
    array-length v1, p3

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_e

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-static {v1, p3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 9
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge p2, p3, :cond_2

    .line 10
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    .line 11
    instance-of v3, p3, Ljava/lang/String;

    if-nez v3, :cond_1

    instance-of v3, p3, Lxo5;

    if-eqz v3, :cond_0

    goto :goto_1

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Excepted field name at argument position "

    invoke-static {v0}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/2addr p2, v2

    add-int/2addr p2, v2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " but got "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " in call to update.  The arguments to update should alternate between field names and values"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_1
    add-int/lit8 p2, p2, 0x2

    goto :goto_0

    .line 13
    :cond_2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p2

    rem-int/lit8 p2, p2, 0x2

    if-nez p2, :cond_3

    const/4 p2, 0x1

    goto :goto_2

    :cond_3
    const/4 p2, 0x0

    :goto_2
    new-array p3, p1, [Ljava/lang/Object;

    const-string v3, "Expected fieldAndValues to contain an even number of elements"

    .line 15
    invoke-static {p2, v3, p3}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 16
    new-instance p2, Lgr5;

    sget-object p3, Lir5;->g:Lir5;

    invoke-direct {p2, p3}, Lgr5;-><init>(Lir5;)V

    .line 17
    invoke-virtual {p2}, Lgr5;->a()Lhr5;

    move-result-object p3

    .line 18
    sget-object v3, Lhu5;->b:Lhu5;

    .line 19
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    new-instance v4, Lhu5$a;

    invoke-direct {v4, v3}, Lhu5$a;-><init>(Lhu5;)V

    .line 21
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 22
    :cond_4
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 23
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 25
    instance-of v6, v3, Ljava/lang/String;

    if-nez v6, :cond_6

    instance-of v7, v3, Lxo5;

    if-eqz v7, :cond_5

    goto :goto_4

    :cond_5
    const/4 v7, 0x0

    goto :goto_5

    :cond_6
    :goto_4
    const/4 v7, 0x1

    :goto_5
    new-array v8, p1, [Ljava/lang/Object;

    const-string v9, "Expected argument to be String or FieldPath."

    invoke-static {v7, v9, v8}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-eqz v6, :cond_7

    .line 26
    check-cast v3, Ljava/lang/String;

    .line 27
    invoke-static {v3}, Lxo5;->a(Ljava/lang/String;)Lxo5;

    move-result-object v3

    .line 28
    iget-object v3, v3, Lxo5;->a:Leu5;

    goto :goto_6

    .line 29
    :cond_7
    check-cast v3, Lxo5;

    .line 30
    iget-object v3, v3, Lxo5;->a:Leu5;

    .line 31
    :goto_6
    instance-of v6, v5, Lyo5$c;

    if-eqz v6, :cond_8

    .line 32
    invoke-virtual {p3, v3}, Lhr5;->a(Leu5;)V

    goto :goto_3

    .line 33
    :cond_8
    iget-object v6, p3, Lhr5;->b:Leu5;

    if-nez v6, :cond_9

    const/4 v6, 0x0

    goto :goto_7

    :cond_9
    invoke-virtual {v6, v3}, Lvt5;->i(Lvt5;)Lvt5;

    move-result-object v6

    check-cast v6, Leu5;

    .line 34
    :goto_7
    new-instance v7, Lhr5;

    iget-object v8, p3, Lhr5;->a:Lgr5;

    invoke-direct {v7, v8, v6, p1}, Lhr5;-><init>(Lgr5;Leu5;Z)V

    if-nez v6, :cond_a

    goto :goto_9

    :cond_a
    const/4 v6, 0x0

    .line 35
    :goto_8
    iget-object v8, v7, Lhr5;->b:Leu5;

    invoke-virtual {v8}, Lvt5;->I()I

    move-result v8

    if-ge v6, v8, :cond_b

    .line 36
    iget-object v8, v7, Lhr5;->b:Leu5;

    invoke-virtual {v8, v6}, Lvt5;->y(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lhr5;->e(Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 37
    :cond_b
    :goto_9
    invoke-virtual {v0, v5, v7}, Lmp5;->a(Ljava/lang/Object;Lhr5;)Lbd6;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 38
    invoke-virtual {p3, v3}, Lhr5;->a(Leu5;)V

    .line 39
    invoke-virtual {v4, v3, v5}, Lhu5$a;->c(Leu5;Lbd6;)Lhu5$a;

    goto :goto_3

    .line 40
    :cond_c
    invoke-virtual {v4}, Lhu5$a;->b()Lhu5;

    move-result-object p1

    .line 41
    iget-object p3, p2, Lgr5;->b:Ljava/util/Set;

    .line 42
    new-instance v0, Lou5;

    invoke-direct {v0, p3}, Lou5;-><init>(Ljava/util/Set;)V

    .line 43
    iget-object p2, p2, Lgr5;->c:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 44
    iget-object p3, p0, Lto5;->b:Lcom/google/firebase/firestore/FirebaseFirestore;

    .line 45
    iget-object p3, p3, Lcom/google/firebase/firestore/FirebaseFirestore;->h:Lmq5;

    .line 46
    iget-object v1, p0, Lto5;->a:Lbu5;

    .line 47
    invoke-static {v2}, Lwu5;->a(Z)Lwu5;

    move-result-object v2

    .line 48
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 49
    new-instance v4, Lvu5;

    invoke-direct {v4, v1, p1, v0, v2}, Lvu5;-><init>(Lbu5;Lhu5;Lou5;Lwu5;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_d

    .line 51
    new-instance p1, Lzu5;

    invoke-direct {p1, v1, p2}, Lzu5;-><init>(Lbu5;Ljava/util/List;)V

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    :cond_d
    invoke-virtual {p3}, Lmq5;->b()V

    .line 53
    new-instance p1, Lf45;

    invoke-direct {p1}, Lf45;-><init>()V

    .line 54
    iget-object p2, p3, Lmq5;->c:Lex5;

    .line 55
    new-instance v0, Lgq5;

    invoke-direct {v0, p3, v3, p1}, Lgq5;-><init>(Lmq5;Ljava/util/List;Lf45;)V

    .line 56
    new-instance p3, Lcx5;

    invoke-direct {p3, v0}, Lcx5;-><init>(Ljava/lang/Runnable;)V

    .line 57
    invoke-virtual {p2, p3}, Lex5;->a(Ljava/util/concurrent/Callable;)Le45;

    .line 58
    iget-object p1, p1, Lf45;->a:Le55;

    .line 59
    sget-object p2, Lnx5;->b:Ljava/util/concurrent/Executor;

    .line 60
    sget-object p3, Lvx5;->b:Lw35;

    .line 61
    invoke-virtual {p1, p2, p3}, Le55;->i(Ljava/util/concurrent/Executor;Lw35;)Le45;

    move-result-object p1

    return-object p1

    .line 62
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Missing value in call to update().  There must be an even number of arguments that alternate between field names and values"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lto5;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lto5;

    .line 3
    iget-object v1, p0, Lto5;->a:Lbu5;

    iget-object v3, p1, Lto5;->a:Lbu5;

    invoke-virtual {v1, v3}, Lbu5;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lto5;->b:Lcom/google/firebase/firestore/FirebaseFirestore;

    iget-object p1, p1, Lto5;->b:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lto5;->a:Lbu5;

    invoke-virtual {v0}, Lbu5;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lto5;->b:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method
