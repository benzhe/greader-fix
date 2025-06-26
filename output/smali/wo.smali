.class public Lwo;
.super Lfp;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwo$a;
    }
.end annotation


# static fields
.field public static final i:I

.field public static final j:I

.field public static final k:I

.field public static final l:Lep;


# instance fields
.field public final transient e:Lvp;

.field public f:I

.field public g:I

.field public h:Lcp;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    invoke-static {}, Lwo$a;->values()[Lwo$a;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x4

    if-ge v2, v4, :cond_1

    aget-object v4, v0, v2

    .line 2
    iget-boolean v5, v4, Lwo$a;->e:Z

    if-eqz v5, :cond_0

    .line 3
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x1

    shl-int v4, v5, v4

    or-int/2addr v3, v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_1
    sput v3, Lwo;->i:I

    .line 5
    invoke-static {}, Lap$a;->values()[Lap$a;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    const/16 v4, 0xf

    if-ge v2, v4, :cond_3

    aget-object v4, v0, v2

    .line 6
    iget-boolean v5, v4, Lap$a;->e:Z

    if-eqz v5, :cond_2

    .line 7
    iget v4, v4, Lap$a;->f:I

    or-int/2addr v3, v4

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 8
    :cond_3
    sput v3, Lwo;->j:I

    .line 9
    invoke-static {}, Lxo;->values()[Lxo;

    move-result-object v0

    const/4 v2, 0x0

    :goto_2
    const/16 v3, 0xa

    if-ge v1, v3, :cond_5

    aget-object v3, v0, v1

    .line 10
    iget-boolean v4, v3, Lxo;->e:Z

    if-eqz v4, :cond_4

    .line 11
    iget v3, v3, Lxo;->f:I

    or-int/2addr v2, v3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 12
    :cond_5
    sput v2, Lwo;->k:I

    .line 13
    sget-object v0, Lyp;->e:Lpp;

    sput-object v0, Lwo;->l:Lep;

    return-void
.end method

.method public constructor <init>()V
    .locals 10

    .line 1
    invoke-direct {p0}, Lfp;-><init>()V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v2, v0

    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    long-to-int v1, v0

    add-int/2addr v2, v1

    or-int/lit8 v0, v2, 0x1

    .line 3
    new-instance v1, Lvp;

    invoke-direct {v1, v0}, Lvp;-><init>(I)V

    .line 4
    iput-object v1, p0, Lwo;->e:Lvp;

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    const/16 v3, 0x40

    .line 6
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/16 v9, 0x200

    const/4 v5, 0x4

    .line 7
    new-instance v1, Lup;

    const/4 v4, 0x0

    new-array v6, v9, [I

    const/16 v2, 0x80

    new-array v7, v2, [Ljava/lang/String;

    const/16 v8, 0x1c0

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lup;-><init>(III[I[Ljava/lang/String;II)V

    .line 8
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 9
    sget v0, Lwo;->i:I

    iput v0, p0, Lwo;->f:I

    .line 10
    sget v0, Lwo;->j:I

    iput v0, p0, Lwo;->g:I

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lwo;->h:Lcp;

    return-void
.end method


# virtual methods
.method public a(Ljava/io/Reader;)Lap;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lzo;
        }
    .end annotation

    .line 1
    new-instance v1, Llp;

    .line 2
    sget-object v0, Lwo$a;->i:Lwo$a;

    iget v2, p0, Lwo;->f:I

    invoke-virtual {v0, v2}, Lwo$a;->i(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3
    sget-object v0, Lxp;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwp;

    :goto_0
    if-nez v0, :cond_4

    .line 5
    new-instance v0, Lwp;

    invoke-direct {v0}, Lwp;-><init>()V

    .line 6
    sget-object v2, Lxp;->a:Lbq;

    if-eqz v2, :cond_1

    .line 7
    new-instance v3, Ljava/lang/ref/SoftReference;

    iget-object v4, v2, Lbq;->b:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v3, v0, v4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 8
    iget-object v4, v2, Lbq;->a:Ljava/util/Map;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :goto_1
    iget-object v4, v2, Lbq;->b:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v4}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/SoftReference;

    if-eqz v4, :cond_2

    .line 10
    iget-object v5, v2, Lbq;->a:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 11
    :cond_1
    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 12
    :cond_2
    sget-object v2, Lxp;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_2

    .line 13
    :cond_3
    new-instance v0, Lwp;

    invoke-direct {v0}, Lwp;-><init>()V

    :cond_4
    :goto_2
    const/4 v2, 0x0

    .line 14
    invoke-direct {v1, v0, p1, v2}, Llp;-><init>(Lwp;Ljava/lang/Object;Z)V

    .line 15
    new-instance v6, Ltp;

    iget v2, p0, Lwo;->g:I

    iget-object v4, p0, Lwo;->h:Lcp;

    iget-object v0, p0, Lwo;->e:Lvp;

    iget v3, p0, Lwo;->f:I

    .line 16
    new-instance v5, Lvp;

    iget v7, v0, Lvp;->c:I

    iget-object v8, v0, Lvp;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lvp$b;

    invoke-direct {v5, v0, v3, v7, v8}, Lvp;-><init>(Lvp;IILvp$b;)V

    move-object v0, v6

    move-object v3, p1

    .line 17
    invoke-direct/range {v0 .. v5}, Ltp;-><init>(Llp;ILjava/io/Reader;Lcp;Lvp;)V

    return-object v6
.end method
