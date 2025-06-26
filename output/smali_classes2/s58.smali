.class public final Ls58;
.super Ln68;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final h:Ls58;

.field public static final i:Ls58;

.field public static final j:Ls58;

.field public static final k:Ls58;

.field public static final l:Ls58;

.field public static final m:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "Ls58;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final e:I

.field public final transient f:Lp48;

.field public final transient g:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Ls58;

    const/16 v1, 0x74c

    const/16 v2, 0x9

    const/16 v3, 0x8

    invoke-static {v1, v2, v3}, Lp48;->c0(III)Lp48;

    move-result-object v1

    const/4 v2, -0x1

    const-string v4, "Meiji"

    invoke-direct {v0, v2, v1, v4}, Ls58;-><init>(ILp48;Ljava/lang/String;)V

    sput-object v0, Ls58;->h:Ls58;

    .line 2
    new-instance v1, Ls58;

    const/16 v2, 0x778

    const/4 v4, 0x7

    const/16 v5, 0x1e

    invoke-static {v2, v4, v5}, Lp48;->c0(III)Lp48;

    move-result-object v2

    const/4 v4, 0x0

    const-string v5, "Taisho"

    invoke-direct {v1, v4, v2, v5}, Ls58;-><init>(ILp48;Ljava/lang/String;)V

    sput-object v1, Ls58;->i:Ls58;

    .line 3
    new-instance v2, Ls58;

    const/16 v5, 0x786

    const/16 v6, 0xc

    const/16 v7, 0x19

    invoke-static {v5, v6, v7}, Lp48;->c0(III)Lp48;

    move-result-object v5

    const/4 v6, 0x1

    const-string v7, "Showa"

    invoke-direct {v2, v6, v5, v7}, Ls58;-><init>(ILp48;Ljava/lang/String;)V

    sput-object v2, Ls58;->j:Ls58;

    .line 4
    new-instance v5, Ls58;

    const/16 v7, 0x7c5

    invoke-static {v7, v6, v3}, Lp48;->c0(III)Lp48;

    move-result-object v3

    const/4 v7, 0x2

    const-string v8, "Heisei"

    invoke-direct {v5, v7, v3, v8}, Ls58;-><init>(ILp48;Ljava/lang/String;)V

    sput-object v5, Ls58;->k:Ls58;

    .line 5
    new-instance v3, Ls58;

    const/16 v8, 0x7e3

    const/4 v9, 0x5

    invoke-static {v8, v9, v6}, Lp48;->c0(III)Lp48;

    move-result-object v8

    const/4 v10, 0x3

    const-string v11, "Reiwa"

    invoke-direct {v3, v10, v8, v11}, Ls58;-><init>(ILp48;Ljava/lang/String;)V

    sput-object v3, Ls58;->l:Ls58;

    new-array v8, v9, [Ls58;

    aput-object v0, v8, v4

    aput-object v1, v8, v6

    aput-object v2, v8, v7

    aput-object v5, v8, v10

    const/4 v0, 0x4

    aput-object v3, v8, v0

    .line 6
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, v8}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Ls58;->m:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>(ILp48;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ln68;-><init>()V

    .line 2
    iput p1, p0, Ls58;->e:I

    .line 3
    iput-object p2, p0, Ls58;->f:Lp48;

    .line 4
    iput-object p3, p0, Ls58;->g:Ljava/lang/String;

    return-void
.end method

.method public static L(Lp48;)Ls58;
    .locals 4

    .line 1
    sget-object v0, Ls58;->h:Ls58;

    iget-object v0, v0, Ls58;->f:Lp48;

    invoke-virtual {p0, v0}, Lp48;->Z(Le58;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    sget-object v0, Ls58;->m:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ls58;

    .line 3
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 4
    aget-object v2, v0, v1

    .line 5
    iget-object v3, v2, Ls58;->f:Lp48;

    invoke-virtual {p0, v3}, Lp48;->L(Le58;)I

    move-result v3

    if-ltz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0

    .line 6
    :cond_2
    new-instance v0, Ll48;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Date too early: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ll48;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static M(I)Ls58;
    .locals 2

    .line 1
    sget-object v0, Ls58;->m:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ls58;

    .line 2
    sget-object v1, Ls58;->h:Ls58;

    iget v1, v1, Ls58;->e:I

    if-lt p0, v1, :cond_0

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    iget v1, v1, Ls58;->e:I

    if-gt p0, v1, :cond_0

    add-int/lit8 p0, p0, 0x1

    .line 3
    aget-object p0, v0, p0

    return-object p0

    .line 4
    :cond_0
    new-instance p0, Ll48;

    const-string v0, "japaneseEra is invalid"

    invoke-direct {p0, v0}, Ll48;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static N()[Ls58;
    .locals 2

    .line 1
    sget-object v0, Ls58;->m:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ls58;

    .line 2
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ls58;

    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget v0, p0, Ls58;->e:I

    invoke-static {v0}, Ls58;->M(I)Ls58;

    move-result-object v0
    :try_end_0
    .catch Ll48; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Ljava/io/InvalidObjectException;

    const-string v2, "Invalid era"

    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1, v0}, Ljava/io/InvalidObjectException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 4
    throw v1
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lw58;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lw58;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public K()Lp48;
    .locals 3

    .line 1
    iget v0, p0, Ls58;->e:I

    add-int/lit8 v0, v0, 0x1

    .line 2
    invoke-static {}, Ls58;->N()[Ls58;

    move-result-object v1

    .line 3
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    if-lt v0, v2, :cond_0

    .line 4
    sget-object v0, Lp48;->i:Lp48;

    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 5
    aget-object v0, v1, v0

    .line 6
    iget-object v0, v0, Ls58;->f:Lp48;

    const-wide/16 v1, -0x1

    .line 7
    invoke-virtual {v0, v1, v2}, Lp48;->g0(J)Lp48;

    move-result-object v0

    return-object v0
.end method

.method public t(Ly68;)Ld78;
    .locals 1

    .line 1
    sget-object v0, Lq68;->J:Lq68;

    if-ne p1, v0, :cond_0

    .line 2
    sget-object p1, Lq58;->h:Lq58;

    invoke-virtual {p1, v0}, Lq58;->M(Lq68;)Ld78;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lp68;->t(Ly68;)Ld78;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ls58;->g:Ljava/lang/String;

    return-object v0
.end method
