.class public Ltd;
.super Lsd;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltd$c;,
        Ltd$b;,
        Ltd$a;
    }
.end annotation


# instance fields
.field public final a:Ldd;

.field public final b:Ltd$c;


# direct methods
.method public constructor <init>(Ldd;Lqd;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lsd;-><init>()V

    .line 2
    iput-object p1, p0, Ltd;->a:Ldd;

    .line 3
    sget-object p1, Ltd$c;->d:Lod;

    const-class v0, Ltd$c;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    .line 5
    invoke-static {v2, v1}, Ljo;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6
    iget-object v2, p2, Lqd;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnd;

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 8
    :cond_0
    instance-of v2, p1, Lpd;

    if-eqz v2, :cond_1

    .line 9
    check-cast p1, Lpd;

    invoke-virtual {p1, v1, v0}, Lpd;->a(Ljava/lang/String;Ljava/lang/Class;)Lnd;

    move-result-object p1

    goto :goto_0

    .line 10
    :cond_1
    check-cast p1, Ltd$c$a;

    invoke-virtual {p1, v0}, Ltd$c$a;->a(Ljava/lang/Class;)Lnd;

    move-result-object p1

    :goto_0
    move-object v2, p1

    .line 11
    iget-object p1, p2, Lqd;->a:Ljava/util/HashMap;

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnd;

    if-eqz p1, :cond_2

    .line 12
    invoke-virtual {p1}, Lnd;->a()V

    .line 13
    :cond_2
    :goto_1
    check-cast v2, Ltd$c;

    .line 14
    iput-object v2, p0, Ltd;->b:Ltd$c;

    return-void

    .line 15
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Local and anonymous classes can not be ViewModels"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Ltd;->b:Ltd$c;

    .line 2
    iget-object v1, v0, Ltd$c;->b:Ln4;

    invoke-virtual {v1}, Ln4;->j()I

    move-result v1

    if-lez v1, :cond_3

    .line 3
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Loaders:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 5
    :goto_0
    iget-object v3, v0, Ltd$c;->b:Ln4;

    invoke-virtual {v3}, Ln4;->j()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 6
    iget-object v3, v0, Ltd$c;->b:Ln4;

    invoke-virtual {v3, v2}, Ln4;->k(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltd$a;

    .line 7
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  #"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v0, Ltd$c;->b:Ln4;

    invoke-virtual {v4, v2}, Ln4;->g(I)I

    move-result v4

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ": "

    .line 8
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Ltd$a;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "mId="

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v3, Ltd$a;->k:I

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, " mArgs="

    .line 10
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v3, Ltd$a;->l:Landroid/os/Bundle;

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "mLoader="

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v3, Ltd$a;->m:Lwd;

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 12
    iget-object v4, v3, Ltd$a;->m:Lwd;

    const-string v5, "  "

    invoke-static {v1, v5}, Ljo;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, p2, p3, p4}, Lwd;->b(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 13
    iget-object v4, v3, Ltd$a;->o:Ltd$b;

    if-eqz v4, :cond_0

    .line 14
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "mCallbacks="

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v3, Ltd$a;->o:Ltd$b;

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 15
    iget-object v4, v3, Ltd$a;->o:Ltd$b;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 16
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mDeliveredData="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, v4, Ltd$b;->c:Z

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 18
    :cond_0
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "mData="

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 19
    iget-object v4, v3, Ltd$a;->m:Lwd;

    .line 20
    iget-object v5, v3, Landroidx/lifecycle/LiveData;->d:Ljava/lang/Object;

    .line 21
    sget-object v6, Landroidx/lifecycle/LiveData;->j:Ljava/lang/Object;

    if-eq v5, v6, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    .line 22
    :goto_1
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v6, 0x40

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 24
    invoke-static {v5, v4}, Ld0$h;->e(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string v5, "}"

    .line 25
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 27
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "mStarted="

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 29
    iget v3, v3, Landroidx/lifecycle/LiveData;->c:I

    if-lez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    .line 30
    :goto_2
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Z)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method public c(ILandroid/os/Bundle;Lsd$a;)Lwd;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroid/os/Bundle;",
            "Lsd$a<",
            "TD;>;)",
            "Lwd<",
            "TD;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ltd;->b:Ltd$c;

    .line 2
    iget-boolean v0, v0, Ltd$c;->c:Z

    if-nez v0, :cond_6

    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_5

    .line 4
    iget-object v0, p0, Ltd;->b:Ltd$c;

    .line 5
    iget-object v0, v0, Ltd$c;->b:Ln4;

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, p1, v1}, Ln4;->f(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 7
    check-cast v0, Ltd$a;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0, v2}, Ltd$a;->j(Z)Lwd;

    move-result-object v1

    .line 9
    :cond_0
    :try_start_0
    iget-object v0, p0, Ltd;->b:Ltd$c;

    const/4 v3, 0x1

    .line 10
    iput-boolean v3, v0, Ltd$c;->c:Z

    .line 11
    invoke-interface {p3, p1, p2}, Lsd$a;->g(ILandroid/os/Bundle;)Lwd;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isMemberClass()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 14
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Object returned from onCreateLoader must not be a non-static inner member class: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_2
    :goto_0
    new-instance v3, Ltd$a;

    invoke-direct {v3, p1, p2, v0, v1}, Ltd$a;-><init>(ILandroid/os/Bundle;Lwd;Lwd;)V

    .line 16
    iget-object p2, p0, Ltd;->b:Ltd$c;

    .line 17
    iget-object p2, p2, Ltd$c;->b:Ln4;

    invoke-virtual {p2, p1, v3}, Ln4;->h(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    iget-object p1, p0, Ltd;->b:Ltd$c;

    .line 19
    iput-boolean v2, p1, Ltd$c;->c:Z

    .line 20
    iget-object p1, p0, Ltd;->a:Ldd;

    .line 21
    new-instance p2, Ltd$b;

    iget-object v0, v3, Ltd$a;->m:Lwd;

    invoke-direct {p2, v0, p3}, Ltd$b;-><init>(Lwd;Lsd$a;)V

    .line 22
    invoke-virtual {v3, p1, p2}, Landroidx/lifecycle/LiveData;->d(Ldd;Ljd;)V

    .line 23
    iget-object p3, v3, Ltd$a;->o:Ltd$b;

    if-eqz p3, :cond_3

    .line 24
    invoke-virtual {v3, p3}, Ltd$a;->g(Ljd;)V

    .line 25
    :cond_3
    iput-object p1, v3, Ltd$a;->n:Ldd;

    .line 26
    iput-object p2, v3, Ltd$a;->o:Ltd$b;

    .line 27
    iget-object p1, v3, Ltd$a;->m:Lwd;

    return-object p1

    .line 28
    :cond_4
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Object returned from onCreateLoader must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 29
    iget-object p2, p0, Ltd;->b:Ltd$c;

    .line 30
    iput-boolean v2, p2, Ltd$c;->c:Z

    .line 31
    throw p1

    .line 32
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "restartLoader must be called on the main thread"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 33
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Called while creating a loader"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const/16 v0, 0x80

    const-string v1, "LoaderManager{"

    .line 1
    invoke-static {v0, v1}, Ljo;->w(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v1, p0, Ltd;->a:Ldd;

    invoke-static {v1, v0}, Ld0$h;->e(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string v1, "}}"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
