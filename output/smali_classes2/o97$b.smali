.class public Lo97$b;
.super Lx67;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo97;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final A:I

.field public final B:Ljava/lang/Object;

.field public C:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lna7;",
            ">;"
        }
    .end annotation
.end field

.field public D:Lxs7;

.field public E:Z

.field public F:Z

.field public G:Z

.field public H:I

.field public I:I

.field public final J:Lk97;

.field public final K:Lw97;

.field public final L:Lp97;

.field public M:Z

.field public final N:Lfb7;

.field public final synthetic O:Lo97;


# direct methods
.method public constructor <init>(Lo97;ILa97;Ljava/lang/Object;Lk97;Lw97;Lp97;ILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo97$b;->O:Lo97;

    .line 2
    iget-object p1, p1, Le57;->a:Lg97;

    .line 3
    invoke-direct {p0, p2, p3, p1}, Lx67;-><init>(ILa97;Lg97;)V

    .line 4
    new-instance p1, Lxs7;

    invoke-direct {p1}, Lxs7;-><init>()V

    iput-object p1, p0, Lo97$b;->D:Lxs7;

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lo97$b;->E:Z

    .line 6
    iput-boolean p1, p0, Lo97$b;->F:Z

    .line 7
    iput-boolean p1, p0, Lo97$b;->G:Z

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lo97$b;->M:Z

    const-string p1, "lock"

    .line 9
    invoke-static {p4, p1}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p4, p0, Lo97$b;->B:Ljava/lang/Object;

    .line 10
    iput-object p5, p0, Lo97$b;->J:Lk97;

    .line 11
    iput-object p6, p0, Lo97$b;->K:Lw97;

    .line 12
    iput-object p7, p0, Lo97$b;->L:Lp97;

    .line 13
    iput p8, p0, Lo97$b;->H:I

    .line 14
    iput p8, p0, Lo97$b;->I:I

    .line 15
    iput p8, p0, Lo97$b;->A:I

    .line 16
    sget-object p1, Leb7;->a:Lcb7;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcb7;->a:Lfb7;

    .line 17
    iput-object p1, p0, Lo97$b;->N:Lfb7;

    return-void
.end method

.method public static l(Lo97$b;Li47;Ljava/lang/String;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lo97$b;->O:Lo97;

    .line 2
    iget-object v1, v0, Lo97;->j:Ljava/lang/String;

    .line 3
    iget-object v2, v0, Lo97;->h:Ljava/lang/String;

    .line 4
    iget-boolean v0, v0, Lo97;->p:Z

    .line 5
    iget-object v3, p0, Lo97$b;->L:Lp97;

    .line 6
    iget-object v3, v3, Lp97;->z:Ljavax/net/ssl/SSLSocketFactory;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 7
    :goto_0
    sget-object v6, Ll97;->a:Lna7;

    const-string v6, "headers"

    .line 8
    invoke-static {p1, v6}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "defaultPath"

    .line 9
    invoke-static {p2, v6}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "authority"

    .line 10
    invoke-static {v1, v6}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v6, Lu67;->g:Li47$f;

    invoke-virtual {p1, v6}, Li47;->b(Li47$f;)V

    .line 12
    sget-object v6, Lu67;->h:Li47$f;

    invoke-virtual {p1, v6}, Li47;->b(Li47$f;)V

    .line 13
    sget-object v6, Lu67;->i:Li47$f;

    invoke-virtual {p1, v6}, Li47;->b(Li47$f;)V

    .line 14
    new-instance v7, Ljava/util/ArrayList;

    .line 15
    iget v8, p1, Li47;->b:I

    add-int/lit8 v8, v8, 0x7

    .line 16
    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    if-eqz v3, :cond_1

    .line 17
    sget-object v3, Ll97;->b:Lna7;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 18
    :cond_1
    sget-object v3, Ll97;->a:Lna7;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    if-eqz v0, :cond_2

    .line 19
    sget-object v0, Ll97;->d:Lna7;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 20
    :cond_2
    sget-object v0, Ll97;->c:Lna7;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    :goto_2
    new-instance v0, Lna7;

    sget-object v3, Lna7;->h:Lbt7;

    invoke-direct {v0, v3, v1}, Lna7;-><init>(Lbt7;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    new-instance v0, Lna7;

    sget-object v1, Lna7;->f:Lbt7;

    invoke-direct {v0, v1, p2}, Lna7;-><init>(Lbt7;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    new-instance p2, Lna7;

    .line 24
    iget-object v0, v6, Li47$f;->b:Ljava/lang/String;

    .line 25
    invoke-direct {p2, v0, v2}, Lna7;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    sget-object p2, Ll97;->e:Lna7;

    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    sget-object p2, Ll97;->f:Lna7;

    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    sget-object p2, Le97;->a:Ljava/util/logging/Logger;

    .line 29
    sget-object p2, Lz37;->a:Ljava/nio/charset/Charset;

    .line 30
    iget p2, p1, Li47;->b:I

    mul-int/lit8 p2, p2, 0x2

    .line 31
    new-array v0, p2, [[B

    .line 32
    iget-object v1, p1, Li47;->a:[Ljava/lang/Object;

    instance-of v2, v1, [[B

    if-eqz v2, :cond_3

    .line 33
    invoke-static {v1, v4, v0, v4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4

    :cond_3
    const/4 v1, 0x0

    .line 34
    :goto_3
    iget v2, p1, Li47;->b:I

    if-ge v1, v2, :cond_4

    mul-int/lit8 v2, v1, 0x2

    .line 35
    invoke-virtual {p1, v1}, Li47;->g(I)[B

    move-result-object v3

    aput-object v3, v0, v2

    add-int/2addr v2, v5

    .line 36
    invoke-virtual {p1, v1}, Li47;->k(I)[B

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    :goto_4
    const/4 p1, 0x0

    const/4 v1, 0x0

    :goto_5
    if-ge p1, p2, :cond_a

    .line 37
    aget-object v2, v0, p1

    add-int/lit8 v3, p1, 0x1

    .line 38
    aget-object v3, v0, v3

    .line 39
    sget-object v6, Le97;->b:[B

    invoke-static {v2, v6}, Le97;->a([B[B)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 40
    aput-object v2, v0, v1

    add-int/lit8 v2, v1, 0x1

    .line 41
    sget-object v6, Lz37;->b:Lde5;

    .line 42
    invoke-virtual {v6, v3}, Lde5;->c([B)Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lkd5;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    aput-object v3, v0, v2

    goto :goto_9

    .line 43
    :cond_5
    array-length v6, v3

    const/4 v8, 0x0

    :goto_6
    if-ge v8, v6, :cond_8

    aget-byte v9, v3, v8

    const/16 v10, 0x20

    if-lt v9, v10, :cond_7

    const/16 v10, 0x7e

    if-le v9, v10, :cond_6

    goto :goto_7

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_7
    :goto_7
    const/4 v6, 0x0

    goto :goto_8

    :cond_8
    const/4 v6, 0x1

    :goto_8
    if-eqz v6, :cond_9

    .line 44
    aput-object v2, v0, v1

    add-int/lit8 v2, v1, 0x1

    .line 45
    aput-object v3, v0, v2

    :goto_9
    add-int/lit8 v1, v1, 0x2

    goto :goto_a

    .line 46
    :cond_9
    new-instance v6, Ljava/lang/String;

    sget-object v8, Lkd5;->a:Ljava/nio/charset/Charset;

    invoke-direct {v6, v2, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 47
    sget-object v2, Le97;->a:Ljava/util/logging/Logger;

    const-string v8, "Metadata key="

    const-string v9, ", value="

    invoke-static {v8, v6, v9}, Ljo;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " contains invalid ASCII characters"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :goto_a
    add-int/lit8 p1, p1, 0x2

    goto :goto_5

    :cond_a
    if-ne v1, p2, :cond_b

    goto :goto_b

    .line 48
    :cond_b
    invoke-static {v0, v4, v1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, [[B

    :goto_b
    const/4 p1, 0x0

    .line 49
    :goto_c
    array-length p2, v0

    if-ge p1, p2, :cond_e

    .line 50
    aget-object p2, v0, p1

    invoke-static {p2}, Lbt7;->C([B)Lbt7;

    move-result-object p2

    .line 51
    invoke-virtual {p2}, Lbt7;->O()Ljava/lang/String;

    move-result-object v1

    const-string v2, ":"

    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    sget-object v2, Lu67;->g:Li47$f;

    .line 53
    iget-object v2, v2, Li47$f;->b:Ljava/lang/String;

    .line 54
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    sget-object v2, Lu67;->i:Li47$f;

    .line 55
    iget-object v2, v2, Li47$f;->b:Ljava/lang/String;

    .line 56
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    if-eqz v1, :cond_d

    add-int/lit8 v1, p1, 0x1

    .line 57
    aget-object v1, v0, v1

    invoke-static {v1}, Lbt7;->C([B)Lbt7;

    move-result-object v1

    .line 58
    new-instance v2, Lna7;

    invoke-direct {v2, p2, v1}, Lna7;-><init>(Lbt7;Lbt7;)V

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    add-int/lit8 p1, p1, 0x2

    goto :goto_c

    .line 59
    :cond_e
    iput-object v7, p0, Lo97$b;->C:Ljava/util/List;

    .line 60
    iget-object p1, p0, Lo97$b;->L:Lp97;

    iget-object p0, p0, Lo97$b;->O:Lo97;

    .line 61
    iget-object p2, p1, Lp97;->t:Lx47;

    if-eqz p2, :cond_f

    .line 62
    iget-object p0, p0, Lo97;->m:Lo97$b;

    .line 63
    sget-object p1, Lz57$a;->f:Lz57$a;

    new-instance v0, Li47;

    invoke-direct {v0}, Li47;-><init>()V

    invoke-virtual {p0, p2, p1, v5, v0}, Le57$c;->i(Lx47;Lz57$a;ZLi47;)V

    goto :goto_e

    .line 64
    :cond_f
    iget-object p2, p1, Lp97;->m:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p2

    iget v0, p1, Lp97;->B:I

    if-lt p2, v0, :cond_10

    .line 65
    iget-object p2, p1, Lp97;->C:Ljava/util/LinkedList;

    invoke-virtual {p2, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 66
    invoke-virtual {p1, p0}, Lp97;->u(Lo97;)V

    goto :goto_e

    .line 67
    :cond_10
    invoke-virtual {p1, p0}, Lp97;->x(Lo97;)V

    :goto_e
    return-void
.end method

.method public static m(Lo97$b;Lxs7;ZZ)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lo97$b;->G:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-boolean v0, p0, Lo97$b;->M:Z

    if-eqz v0, :cond_1

    .line 3
    iget-wide v0, p1, Lxs7;->f:J

    long-to-int v1, v0

    .line 4
    iget-object v0, p0, Lo97$b;->D:Lxs7;

    int-to-long v1, v1

    invoke-virtual {v0, p1, v1, v2}, Lxs7;->write(Lxs7;J)V

    .line 5
    iget-boolean p1, p0, Lo97$b;->E:Z

    or-int/2addr p1, p2

    iput-boolean p1, p0, Lo97$b;->E:Z

    .line 6
    iget-boolean p1, p0, Lo97$b;->F:Z

    or-int/2addr p1, p3

    iput-boolean p1, p0, Lo97$b;->F:Z

    goto :goto_1

    .line 7
    :cond_1
    iget-object v0, p0, Lo97$b;->O:Lo97;

    .line 8
    iget v0, v0, Lo97;->l:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    const-string v1, "streamId should be set"

    .line 9
    invoke-static {v0, v1}, Lc50;->G(ZLjava/lang/Object;)V

    .line 10
    iget-object v0, p0, Lo97$b;->K:Lw97;

    iget-object p0, p0, Lo97$b;->O:Lo97;

    .line 11
    iget p0, p0, Lo97;->l:I

    .line 12
    invoke-virtual {v0, p2, p0, p1, p3}, Lw97;->a(ZILxs7;Z)V

    :goto_1
    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lo97$b;->B:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public d(Z)V
    .locals 8

    .line 1
    sget-object v7, Lz57$a;->e:Lz57$a;

    iget-boolean v0, p0, Le57$c;->r:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lo97$b;->L:Lp97;

    iget-object v1, p0, Lo97$b;->O:Lo97;

    .line 3
    iget v1, v1, Lo97;->l:I

    .line 4
    iget-object v2, v0, Lp97;->j:Ljava/lang/Object;

    monitor-enter v2

    .line 5
    :try_start_0
    iget-object v3, v0, Lp97;->m:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo97;

    if-eqz v3, :cond_0

    .line 6
    iget-object v4, v0, Lp97;->h:Lk97;

    sget-object v5, Lka7;->q:Lka7;

    invoke-virtual {v4, v1, v5}, Lk97;->I0(ILka7;)V

    .line 7
    invoke-virtual {v0}, Lp97;->w()Z

    move-result v1

    if-nez v1, :cond_0

    .line 8
    invoke-virtual {v0}, Lp97;->y()V

    .line 9
    invoke-virtual {v0, v3}, Lp97;->r(Lo97;)V

    .line 10
    :cond_0
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 11
    :cond_1
    iget-object v0, p0, Lo97$b;->L:Lp97;

    iget-object v1, p0, Lo97$b;->O:Lo97;

    .line 12
    iget v1, v1, Lo97;->l:I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, v7

    .line 13
    invoke-virtual/range {v0 .. v6}, Lp97;->k(ILx47;Lz57$a;ZLka7;Li47;)V

    .line 14
    :goto_0
    iget-boolean v0, p0, Le57$c;->s:Z

    const-string v1, "status should have been reported on deframer closed"

    invoke-static {v0, v1}, Lc50;->G(ZLjava/lang/Object;)V

    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Le57$c;->p:Z

    .line 16
    iget-boolean v1, p0, Le57$c;->t:Z

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    .line 17
    sget-object p1, Lx47;->m:Lx47;

    const-string v1, "Encountered end-of-stream mid-frame"

    .line 18
    invoke-virtual {p1, v1}, Lx47;->h(Ljava/lang/String;)Lx47;

    move-result-object p1

    new-instance v1, Li47;

    invoke-direct {v1}, Li47;-><init>()V

    .line 19
    invoke-virtual {p0, p1, v7, v0, v1}, Le57$c;->i(Lx47;Lz57$a;ZLi47;)V

    .line 20
    :cond_2
    iget-object p1, p0, Le57$c;->q:Ljava/lang/Runnable;

    if-eqz p1, :cond_3

    .line 21
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    .line 22
    iput-object p1, p0, Le57$c;->q:Ljava/lang/Runnable;

    :cond_3
    return-void
.end method

.method public g(I)V
    .locals 4

    .line 1
    iget v0, p0, Lo97$b;->I:I

    sub-int/2addr v0, p1

    iput v0, p0, Lo97$b;->I:I

    int-to-float p1, v0

    .line 2
    iget v1, p0, Lo97$b;->A:I

    int-to-float v2, v1

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v2, v2, v3

    cmpg-float p1, p1, v2

    if-gtz p1, :cond_0

    sub-int/2addr v1, v0

    .line 3
    iget p1, p0, Lo97$b;->H:I

    add-int/2addr p1, v1

    iput p1, p0, Lo97$b;->H:I

    add-int/2addr v0, v1

    .line 4
    iput v0, p0, Lo97$b;->I:I

    .line 5
    iget-object p1, p0, Lo97$b;->J:Lk97;

    iget-object v0, p0, Lo97$b;->O:Lo97;

    .line 6
    iget v0, v0, Lo97;->l:I

    int-to-long v1, v1

    .line 7
    invoke-virtual {p1, v0, v1, v2}, Lk97;->windowUpdate(IJ)V

    :cond_0
    return-void
.end method

.method public h(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lx47;->e(Ljava/lang/Throwable;)Lx47;

    move-result-object p1

    new-instance v0, Li47;

    invoke-direct {v0}, Li47;-><init>()V

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p0, p1, v1, v0}, Lo97$b;->n(Lx47;ZLi47;)V

    return-void
.end method

.method public final n(Lx47;ZLi47;)V
    .locals 7

    .line 1
    sget-object v0, Lz57$a;->e:Lz57$a;

    iget-boolean v1, p0, Lo97$b;->G:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p0, Lo97$b;->G:Z

    .line 3
    iget-boolean v2, p0, Lo97$b;->M:Z

    if-eqz v2, :cond_2

    .line 4
    iget-object p2, p0, Lo97$b;->L:Lp97;

    iget-object v2, p0, Lo97$b;->O:Lo97;

    .line 5
    iget-object v3, p2, Lp97;->C:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 6
    invoke-virtual {p2, v2}, Lp97;->r(Lo97;)V

    const/4 p2, 0x0

    .line 7
    iput-object p2, p0, Lo97$b;->C:Ljava/util/List;

    .line 8
    iget-object p2, p0, Lo97$b;->D:Lxs7;

    .line 9
    iget-wide v2, p2, Lxs7;->f:J

    .line 10
    invoke-virtual {p2, v2, v3}, Lxs7;->skip(J)V

    const/4 p2, 0x0

    .line 11
    iput-boolean p2, p0, Lo97$b;->M:Z

    if-eqz p3, :cond_1

    goto :goto_0

    .line 12
    :cond_1
    new-instance p3, Li47;

    invoke-direct {p3}, Li47;-><init>()V

    .line 13
    :goto_0
    invoke-virtual {p0, p1, v0, v1, p3}, Le57$c;->i(Lx47;Lz57$a;ZLi47;)V

    goto :goto_2

    .line 14
    :cond_2
    iget-object v1, p0, Lo97$b;->L:Lp97;

    iget-object v2, p0, Lo97$b;->O:Lo97;

    .line 15
    iget v2, v2, Lo97;->l:I

    .line 16
    iget-object v3, v1, Lp97;->j:Ljava/lang/Object;

    monitor-enter v3

    .line 17
    :try_start_0
    iget-object v4, v1, Lp97;->m:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo97;

    if-eqz v4, :cond_5

    .line 18
    iget-object v5, v1, Lp97;->h:Lk97;

    sget-object v6, Lka7;->q:Lka7;

    invoke-virtual {v5, v2, v6}, Lk97;->I0(ILka7;)V

    if-eqz p1, :cond_4

    .line 19
    iget-object v2, v4, Lo97;->m:Lo97$b;

    if-eqz p3, :cond_3

    goto :goto_1

    .line 20
    :cond_3
    new-instance p3, Li47;

    invoke-direct {p3}, Li47;-><init>()V

    .line 21
    :goto_1
    invoke-virtual {v2, p1, v0, p2, p3}, Le57$c;->i(Lx47;Lz57$a;ZLi47;)V

    .line 22
    :cond_4
    invoke-virtual {v1}, Lp97;->w()Z

    move-result p1

    if-nez p1, :cond_5

    .line 23
    invoke-virtual {v1}, Lp97;->y()V

    .line 24
    invoke-virtual {v1, v4}, Lp97;->r(Lo97;)V

    .line 25
    :cond_5
    monitor-exit v3

    :goto_2
    return-void

    :catchall_0
    move-exception p1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public o(Lxs7;Z)V
    .locals 7

    .line 1
    sget-object v3, Lz57$a;->e:Lz57$a;

    iget-wide v0, p1, Lxs7;->f:J

    long-to-int v1, v0

    .line 2
    iget v0, p0, Lo97$b;->H:I

    sub-int/2addr v0, v1

    iput v0, p0, Lo97$b;->H:I

    if-gez v0, :cond_0

    .line 3
    iget-object p1, p0, Lo97$b;->J:Lk97;

    iget-object p2, p0, Lo97$b;->O:Lo97;

    .line 4
    iget p2, p2, Lo97;->l:I

    .line 5
    sget-object v0, Lka7;->m:Lka7;

    invoke-virtual {p1, p2, v0}, Lk97;->I0(ILka7;)V

    .line 6
    iget-object v0, p0, Lo97$b;->L:Lp97;

    iget-object p1, p0, Lo97$b;->O:Lo97;

    .line 7
    iget v1, p1, Lo97;->l:I

    .line 8
    sget-object p1, Lx47;->m:Lx47;

    const-string p2, "Received data size exceeded our receiving window size"

    .line 9
    invoke-virtual {p1, p2}, Lx47;->h(Ljava/lang/String;)Lx47;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 10
    invoke-virtual/range {v0 .. v6}, Lp97;->k(ILx47;Lz57$a;ZLka7;Li47;)V

    return-void

    .line 11
    :cond_0
    new-instance v0, Ls97;

    invoke-direct {v0, p1}, Ls97;-><init>(Lxs7;)V

    .line 12
    iget-object p1, p0, Lx67;->u:Lx47;

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const-string v2, "DATA-----------------------------\n"

    .line 13
    invoke-static {v2}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lx67;->w:Ljava/nio/charset/Charset;

    .line 14
    sget v4, Lo87;->a:I

    const-string v4, "charset"

    .line 15
    invoke-static {v3, v4}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "buffer"

    .line 16
    invoke-static {v0, v4}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-virtual {v0}, Ls97;->d()I

    move-result v4

    .line 18
    new-array v5, v4, [B

    .line 19
    invoke-virtual {v0, v5, v1, v4}, Ls97;->W([BII)V

    .line 20
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v5, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 21
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 22
    invoke-virtual {p1, v2}, Lx47;->b(Ljava/lang/String;)Lx47;

    move-result-object p1

    iput-object p1, p0, Lx67;->u:Lx47;

    .line 23
    invoke-virtual {v0}, Ls97;->close()V

    .line 24
    iget-object p1, p0, Lx67;->u:Lx47;

    .line 25
    iget-object p1, p1, Lx47;->b:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0x3e8

    if-gt p1, v0, :cond_1

    if-eqz p2, :cond_5

    .line 27
    :cond_1
    iget-object p1, p0, Lx67;->u:Lx47;

    iget-object p2, p0, Lx67;->v:Li47;

    .line 28
    invoke-virtual {p0, p1, v1, p2}, Lo97$b;->n(Lx47;ZLi47;)V

    goto :goto_1

    .line 29
    :cond_2
    iget-boolean p1, p0, Lx67;->x:Z

    if-nez p1, :cond_3

    .line 30
    sget-object p1, Lx47;->m:Lx47;

    const-string p2, "headers not received before payload"

    .line 31
    invoke-virtual {p1, p2}, Lx47;->h(Ljava/lang/String;)Lx47;

    move-result-object p1

    new-instance p2, Li47;

    invoke-direct {p2}, Li47;-><init>()V

    .line 32
    invoke-virtual {p0, p1, v1, p2}, Lo97$b;->n(Lx47;ZLi47;)V

    goto :goto_1

    :cond_3
    const-string p1, "frame"

    .line 33
    invoke-static {v0, p1}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    :try_start_0
    iget-boolean p1, p0, Le57$c;->s:Z

    if-eqz p1, :cond_4

    .line 35
    sget-object p1, Le57;->f:Ljava/util/logging/Logger;

    .line 36
    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v4, "Received data on closed stream"

    invoke-virtual {p1, v2, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 37
    invoke-virtual {v0}, Ls97;->close()V

    goto :goto_0

    .line 38
    :cond_4
    :try_start_1
    iget-object p1, p0, Lh57$a;->e:Lg67;

    invoke-interface {p1, v0}, Lg67;->k(Ln87;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 39
    :try_start_2
    invoke-virtual {p0, p1}, Lo97$b;->h(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_0
    if-eqz p2, :cond_5

    .line 40
    sget-object p1, Lx47;->m:Lx47;

    const-string p2, "Received unexpected EOS on DATA frame from server."

    .line 41
    invoke-virtual {p1, p2}, Lx47;->h(Ljava/lang/String;)Lx47;

    move-result-object p1

    iput-object p1, p0, Lx67;->u:Lx47;

    .line 42
    new-instance p1, Li47;

    invoke-direct {p1}, Li47;-><init>()V

    iput-object p1, p0, Lx67;->v:Li47;

    .line 43
    iget-object p2, p0, Lx67;->u:Lx47;

    .line 44
    invoke-virtual {p0, p2, v3, v1, p1}, Le57$c;->i(Lx47;Lz57$a;ZLi47;)V

    :cond_5
    :goto_1
    return-void

    :catchall_1
    move-exception p1

    goto :goto_2

    :catchall_2
    move-exception p1

    const/4 v1, 0x1

    :goto_2
    if-eqz v1, :cond_6

    .line 45
    invoke-virtual {v0}, Ls97;->close()V

    :cond_6
    throw p1
.end method

.method public p(Ljava/util/List;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lna7;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p2, :cond_7

    .line 1
    invoke-static {p1}, Lx97;->a(Ljava/util/List;)[[B

    move-result-object p1

    .line 2
    sget-object p2, Lz37;->a:Ljava/nio/charset/Charset;

    .line 3
    new-instance p2, Li47;

    invoke-direct {p2, p1}, Li47;-><init>([[B)V

    const-string p1, "trailers"

    .line 4
    invoke-static {p2, p1}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v1, p0, Lx67;->u:Lx47;

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lx67;->x:Z

    if-nez v1, :cond_0

    .line 6
    invoke-virtual {p0, p2}, Lx67;->k(Li47;)Lx47;

    move-result-object v1

    iput-object v1, p0, Lx67;->u:Lx47;

    if-eqz v1, :cond_0

    .line 7
    iput-object p2, p0, Lx67;->v:Li47;

    .line 8
    :cond_0
    iget-object v1, p0, Lx67;->u:Lx47;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "trailers: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lx47;->b(Ljava/lang/String;)Lx47;

    move-result-object p1

    iput-object p1, p0, Lx67;->u:Lx47;

    .line 10
    iget-object p2, p0, Lx67;->v:Li47;

    .line 11
    invoke-virtual {p0, p1, v2, p2}, Lo97$b;->n(Lx47;ZLi47;)V

    goto/16 :goto_5

    .line 12
    :cond_1
    sget-object v1, La47;->b:Li47$f;

    invoke-virtual {p2, v1}, Li47;->d(Li47$f;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lx47;

    if-eqz v3, :cond_2

    .line 13
    sget-object v4, La47;->a:Li47$f;

    invoke-virtual {p2, v4}, Li47;->d(Li47$f;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lx47;->h(Ljava/lang/String;)Lx47;

    move-result-object v3

    goto :goto_1

    .line 14
    :cond_2
    iget-boolean v3, p0, Lx67;->x:Z

    if-eqz v3, :cond_3

    .line 15
    sget-object v3, Lx47;->h:Lx47;

    const-string v4, "missing GRPC status in response"

    invoke-virtual {v3, v4}, Lx47;->h(Ljava/lang/String;)Lx47;

    move-result-object v3

    goto :goto_1

    .line 16
    :cond_3
    sget-object v3, Lx67;->z:Li47$f;

    invoke-virtual {p2, v3}, Li47;->d(Li47$f;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_4

    .line 17
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lu67;->f(I)Lx47;

    move-result-object v3

    goto :goto_0

    .line 18
    :cond_4
    sget-object v3, Lx47;->m:Lx47;

    const-string v4, "missing HTTP status code"

    invoke-virtual {v3, v4}, Lx47;->h(Ljava/lang/String;)Lx47;

    move-result-object v3

    :goto_0
    const-string v4, "missing GRPC status, inferred error from HTTP status code"

    .line 19
    invoke-virtual {v3, v4}, Lx47;->b(Ljava/lang/String;)Lx47;

    move-result-object v3

    .line 20
    :goto_1
    sget-object v4, Lx67;->z:Li47$f;

    invoke-virtual {p2, v4}, Li47;->b(Li47$f;)V

    .line 21
    invoke-virtual {p2, v1}, Li47;->b(Li47$f;)V

    .line 22
    sget-object v1, La47;->a:Li47$f;

    invoke-virtual {p2, v1}, Li47;->b(Li47$f;)V

    const-string v1, "status"

    .line 23
    invoke-static {v3, v1}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    invoke-static {p2, p1}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-boolean p1, p0, Le57$c;->s:Z

    if-eqz p1, :cond_5

    .line 26
    sget-object p1, Le57;->f:Ljava/util/logging/Logger;

    .line 27
    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v2

    aput-object p2, v4, v0

    const-string p2, "Received trailers on closed stream:\n {1}\n {2}"

    invoke-virtual {p1, v1, p2, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 28
    :cond_5
    iget-object p1, p0, Le57$c;->k:La97;

    .line 29
    iget-object p1, p1, La97;->a:[La57;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_6

    aget-object v4, p1, v1

    .line 30
    check-cast v4, Le37;

    .line 31
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 32
    :cond_6
    sget-object p1, Lz57$a;->e:Lz57$a;

    invoke-virtual {p0, v3, p1, v2, p2}, Le57$c;->i(Lx47;Lz57$a;ZLi47;)V

    goto/16 :goto_5

    .line 33
    :cond_7
    invoke-static {p1}, Lx97;->a(Ljava/util/List;)[[B

    move-result-object p1

    .line 34
    sget-object p2, Lz37;->a:Ljava/nio/charset/Charset;

    .line 35
    new-instance p2, Li47;

    invoke-direct {p2, p1}, Li47;-><init>([[B)V

    const-string p1, "headers"

    .line 36
    invoke-static {p2, p1}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget-object p1, p0, Lx67;->u:Lx47;

    const-string v1, "headers: "

    if-eqz p1, :cond_8

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lx47;->b(Ljava/lang/String;)Lx47;

    move-result-object p1

    iput-object p1, p0, Lx67;->u:Lx47;

    goto/16 :goto_5

    .line 39
    :cond_8
    :try_start_0
    iget-boolean p1, p0, Lx67;->x:Z

    if-eqz p1, :cond_9

    .line 40
    sget-object p1, Lx47;->m:Lx47;

    const-string v0, "Received headers twice"

    invoke-virtual {p1, v0}, Lx47;->h(Ljava/lang/String;)Lx47;

    move-result-object p1

    iput-object p1, p0, Lx67;->u:Lx47;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lx47;->b(Ljava/lang/String;)Lx47;

    move-result-object p1

    :goto_4
    iput-object p1, p0, Lx67;->u:Lx47;

    .line 42
    iput-object p2, p0, Lx67;->v:Li47;

    .line 43
    invoke-static {p2}, Lx67;->j(Li47;)Ljava/nio/charset/Charset;

    move-result-object p1

    iput-object p1, p0, Lx67;->w:Ljava/nio/charset/Charset;

    goto :goto_5

    .line 44
    :cond_9
    :try_start_1
    sget-object p1, Lx67;->z:Li47$f;

    invoke-virtual {p2, p1}, Li47;->d(Li47$f;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_a

    .line 45
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x64

    if-lt v3, v4, :cond_a

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v3, 0xc8

    if-ge v2, v3, :cond_a

    .line 46
    iget-object p1, p0, Lx67;->u:Lx47;

    if-eqz p1, :cond_c

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_3

    .line 48
    :cond_a
    :try_start_2
    iput-boolean v0, p0, Lx67;->x:Z

    .line 49
    invoke-virtual {p0, p2}, Lx67;->k(Li47;)Lx47;

    move-result-object v0

    iput-object v0, p0, Lx67;->u:Lx47;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_b

    .line 50
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lx47;->b(Ljava/lang/String;)Lx47;

    move-result-object p1

    goto :goto_4

    .line 51
    :cond_b
    :try_start_3
    invoke-virtual {p2, p1}, Li47;->b(Li47$f;)V

    .line 52
    sget-object p1, La47;->b:Li47$f;

    invoke-virtual {p2, p1}, Li47;->b(Li47$f;)V

    .line 53
    sget-object p1, La47;->a:Li47$f;

    invoke-virtual {p2, p1}, Li47;->b(Li47$f;)V

    .line 54
    invoke-virtual {p0, p2}, Le57$c;->f(Li47;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 55
    iget-object p1, p0, Lx67;->u:Lx47;

    if-eqz p1, :cond_c

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_3

    :cond_c
    :goto_5
    return-void

    :catchall_0
    move-exception p1

    .line 57
    iget-object v0, p0, Lx67;->u:Lx47;

    if-eqz v0, :cond_d

    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lx47;->b(Ljava/lang/String;)Lx47;

    move-result-object v0

    iput-object v0, p0, Lx67;->u:Lx47;

    .line 59
    iput-object p2, p0, Lx67;->v:Li47;

    .line 60
    invoke-static {p2}, Lx67;->j(Li47;)Ljava/nio/charset/Charset;

    move-result-object p2

    iput-object p2, p0, Lx67;->w:Ljava/nio/charset/Charset;

    :cond_d
    throw p1
.end method
