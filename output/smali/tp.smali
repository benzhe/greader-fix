.class public Ltp;
.super Lgp;
.source "SourceFile"


# static fields
.field public static final N:I

.field public static final O:I

.field public static final P:I

.field public static final Q:I

.field public static final R:I

.field public static final S:I

.field public static final T:I

.field public static final U:I

.field public static final V:[I


# instance fields
.field public G:Ljava/io/Reader;

.field public H:[C

.field public I:Z

.field public final J:Lvp;

.field public final K:I

.field public L:Z

.field public M:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lap$a;->r:Lap$a;

    .line 2
    iget v0, v0, Lap$a;->f:I

    .line 3
    sput v0, Ltp;->N:I

    .line 4
    sget-object v0, Lap$a;->n:Lap$a;

    .line 5
    iget v0, v0, Lap$a;->f:I

    .line 6
    sput v0, Ltp;->O:I

    .line 7
    sget-object v0, Lap$a;->p:Lap$a;

    .line 8
    iget v0, v0, Lap$a;->f:I

    .line 9
    sput v0, Ltp;->P:I

    .line 10
    sget-object v0, Lap$a;->q:Lap$a;

    .line 11
    iget v0, v0, Lap$a;->f:I

    .line 12
    sput v0, Ltp;->Q:I

    .line 13
    sget-object v0, Lap$a;->k:Lap$a;

    .line 14
    iget v0, v0, Lap$a;->f:I

    .line 15
    sput v0, Ltp;->R:I

    .line 16
    sget-object v0, Lap$a;->j:Lap$a;

    .line 17
    iget v0, v0, Lap$a;->f:I

    .line 18
    sput v0, Ltp;->S:I

    .line 19
    sget-object v0, Lap$a;->h:Lap$a;

    .line 20
    iget v0, v0, Lap$a;->f:I

    .line 21
    sput v0, Ltp;->T:I

    .line 22
    sget-object v0, Lap$a;->i:Lap$a;

    .line 23
    iget v0, v0, Lap$a;->f:I

    .line 24
    sput v0, Ltp;->U:I

    .line 25
    sget-object v0, Lkp;->c:[I

    .line 26
    sput-object v0, Ltp;->V:[I

    return-void
.end method

.method public constructor <init>(Llp;ILjava/io/Reader;Lcp;Lvp;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lgp;-><init>(Llp;I)V

    .line 2
    iput-object p3, p0, Ltp;->G:Ljava/io/Reader;

    .line 3
    iget-object p2, p1, Llp;->d:[C

    if-nez p2, :cond_0

    .line 4
    iget-object p2, p1, Llp;->c:Lwp;

    const/4 p3, 0x0

    .line 5
    invoke-virtual {p2, p3, p3}, Lwp;->a(II)[C

    move-result-object p2

    .line 6
    iput-object p2, p1, Llp;->d:[C

    .line 7
    iput-object p2, p0, Ltp;->H:[C

    .line 8
    iput p3, p0, Lgp;->o:I

    .line 9
    iput p3, p0, Lgp;->p:I

    .line 10
    iput-object p5, p0, Ltp;->J:Lvp;

    .line 11
    iget p1, p5, Lvp;->c:I

    .line 12
    iput p1, p0, Ltp;->K:I

    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Ltp;->I:Z

    return-void

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Trying to call same allocXxx() method second time"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public C0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    :goto_0
    iget p1, p0, Lgp;->o:I

    iget v1, p0, Lgp;->p:I

    const/4 v2, 0x1

    if-lt p1, v1, :cond_0

    invoke-virtual {p0}, Ltp;->p0()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3
    :cond_0
    iget-object p1, p0, Ltp;->H:[C

    iget v1, p0, Lgp;->o:I

    aget-char p1, p1, v1

    .line 4
    invoke-static {p1}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    iget v1, p0, Lgp;->o:I

    add-int/2addr v1, v2

    iput v1, p0, Lgp;->o:I

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    const/16 v1, 0x100

    if-ge p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "..."

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    aput-object p2, p1, v2

    const-string p2, "Unrecognized token \'%s\': was expecting %s"

    .line 9
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 10
    new-instance p2, Lzo;

    invoke-direct {p2, p0, p1}, Lzo;-><init>(Lap;Ljava/lang/String;)V

    .line 11
    throw p2
.end method

.method public F()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ltp;->G:Ljava/io/Reader;

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lgp;->m:Llp;

    .line 3
    iget-boolean v0, v0, Llp;->b:Z

    if-nez v0, :cond_0

    .line 4
    sget-object v0, Lap$a;->g:Lap$a;

    invoke-virtual {p0, v0}, Lap;->f(Lap$a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    :cond_0
    iget-object v0, p0, Ltp;->G:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    :cond_1
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Ltp;->G:Ljava/io/Reader;

    :cond_2
    return-void
.end method

.method public final F0()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :cond_0
    :goto_0
    iget v0, p0, Lgp;->o:I

    iget v1, p0, Lgp;->p:I

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Ltp;->p0()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "Unexpected end-of-input within/between "

    .line 2
    invoke-static {v0}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgp;->v:Lrp;

    invoke-virtual {v1}, Lrp;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " entries"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Lzo;

    invoke-direct {v1, p0, v0}, Lzo;-><init>(Lap;Ljava/lang/String;)V

    .line 4
    throw v1

    .line 5
    :cond_2
    :goto_1
    iget-object v0, p0, Ltp;->H:[C

    iget v1, p0, Lgp;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgp;->o:I

    aget-char v0, v0, v1

    const/16 v1, 0x20

    if-le v0, v1, :cond_5

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_3

    .line 6
    invoke-virtual {p0}, Ltp;->M0()V

    goto :goto_0

    :cond_3
    const/16 v1, 0x23

    if-ne v0, v1, :cond_4

    .line 7
    invoke-virtual {p0}, Ltp;->P0()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    return v0

    :cond_5
    if-ge v0, v1, :cond_0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_6

    .line 8
    iget v0, p0, Lgp;->r:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgp;->r:I

    .line 9
    iput v2, p0, Lgp;->s:I

    goto :goto_0

    :cond_6
    const/16 v1, 0xd

    if-ne v0, v1, :cond_7

    .line 10
    invoke-virtual {p0}, Ltp;->K0()V

    goto :goto_0

    :cond_7
    const/16 v1, 0x9

    if-ne v0, v1, :cond_8

    goto :goto_0

    .line 11
    :cond_8
    invoke-virtual {p0, v0}, Lhp;->y(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final K0()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lgp;->o:I

    iget v1, p0, Lgp;->p:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Ltp;->p0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    iget-object v0, p0, Ltp;->H:[C

    iget v1, p0, Lgp;->o:I

    aget-char v0, v0, v1

    const/16 v2, 0xa

    if-ne v0, v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 3
    iput v1, p0, Lgp;->o:I

    .line 4
    :cond_1
    iget v0, p0, Lgp;->r:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgp;->r:I

    .line 5
    iget v0, p0, Lgp;->o:I

    iput v0, p0, Lgp;->s:I

    return-void
.end method

.method public L()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lgp;->x:Laq;

    const/4 v1, -0x1

    .line 2
    iput v1, v0, Laq;->c:I

    const/4 v1, 0x0

    .line 3
    iput v1, v0, Laq;->i:I

    .line 4
    iput v1, v0, Laq;->d:I

    const/4 v2, 0x0

    .line 5
    iput-object v2, v0, Laq;->b:[C

    .line 6
    iput-object v2, v0, Laq;->k:[C

    .line 7
    iget-boolean v3, v0, Laq;->f:Z

    if-eqz v3, :cond_0

    .line 8
    invoke-virtual {v0}, Laq;->b()V

    .line 9
    :cond_0
    iget-object v3, v0, Laq;->a:Lwp;

    if-eqz v3, :cond_1

    .line 10
    iget-object v4, v0, Laq;->h:[C

    if-eqz v4, :cond_1

    .line 11
    iput-object v2, v0, Laq;->h:[C

    const/4 v0, 0x2

    .line 12
    iget-object v3, v3, Lwp;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v3, v0, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 13
    :cond_1
    iget-object v0, p0, Ltp;->J:Lvp;

    .line 14
    iget-boolean v3, v0, Lvp;->l:Z

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    if-nez v3, :cond_2

    goto :goto_1

    .line 15
    :cond_2
    iget-object v3, v0, Lvp;->a:Lvp;

    if-eqz v3, :cond_5

    iget-boolean v5, v0, Lvp;->e:Z

    if-eqz v5, :cond_5

    .line 16
    new-instance v5, Lvp$b;

    invoke-direct {v5, v0}, Lvp$b;-><init>(Lvp;)V

    .line 17
    iget v6, v5, Lvp$b;->a:I

    .line 18
    iget-object v7, v3, Lvp;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lvp$b;

    .line 19
    iget v8, v7, Lvp$b;->a:I

    if-ne v6, v8, :cond_3

    goto :goto_0

    :cond_3
    const/16 v8, 0x2ee0

    if-le v6, v8, :cond_4

    const/16 v5, 0x40

    .line 20
    new-instance v6, Lvp$b;

    new-array v5, v5, [Ljava/lang/String;

    const/16 v8, 0x20

    new-array v8, v8, [Lvp$a;

    invoke-direct {v6, v1, v1, v5, v8}, Lvp$b;-><init>(II[Ljava/lang/String;[Lvp$a;)V

    move-object v5, v6

    .line 21
    :cond_4
    iget-object v3, v3, Lvp;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v7, v5}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    :goto_0
    iput-boolean v4, v0, Lvp;->l:Z

    .line 23
    :cond_5
    :goto_1
    iget-boolean v0, p0, Ltp;->I:Z

    if-eqz v0, :cond_8

    .line 24
    iget-object v0, p0, Ltp;->H:[C

    if-eqz v0, :cond_8

    .line 25
    iput-object v2, p0, Ltp;->H:[C

    .line 26
    iget-object v3, p0, Lgp;->m:Llp;

    .line 27
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object v4, v3, Llp;->d:[C

    if-eq v0, v4, :cond_7

    .line 29
    array-length v5, v0

    array-length v4, v4

    if-lt v5, v4, :cond_6

    goto :goto_2

    .line 30
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to release buffer smaller than original"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 31
    throw v0

    .line 32
    :cond_7
    :goto_2
    iput-object v2, v3, Llp;->d:[C

    .line 33
    iget-object v2, v3, Llp;->c:Lwp;

    .line 34
    iget-object v2, v2, Lwp;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    :cond_8
    return-void
.end method

.method public final L0(Z)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :cond_0
    :goto_0
    iget v0, p0, Lgp;->o:I

    iget v1, p0, Lgp;->p:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Ltp;->p0()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const-string p1, " within/between "

    .line 2
    invoke-static {p1}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lgp;->v:Lrp;

    invoke-virtual {v0}, Lrp;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " entries"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Lhp;->t(Ljava/lang/String;Lbp;)V

    throw v2

    .line 3
    :cond_2
    :goto_1
    iget-object v0, p0, Ltp;->H:[C

    iget v1, p0, Lgp;->o:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lgp;->o:I

    aget-char v0, v0, v1

    const/16 v1, 0x20

    if-le v0, v1, :cond_7

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_3

    .line 4
    invoke-virtual {p0}, Ltp;->M0()V

    goto :goto_0

    :cond_3
    const/16 v1, 0x23

    if-ne v0, v1, :cond_4

    .line 5
    invoke-virtual {p0}, Ltp;->P0()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_5

    return v0

    :cond_5
    const/16 p1, 0x3a

    if-ne v0, p1, :cond_6

    const/4 p1, 0x1

    goto :goto_0

    :cond_6
    const-string p1, "was expecting a colon to separate field name and value"

    .line 6
    invoke-virtual {p0, v0, p1}, Lhp;->x(ILjava/lang/String;)V

    throw v2

    :cond_7
    if-ge v0, v1, :cond_0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_8

    .line 7
    iget v0, p0, Lgp;->r:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgp;->r:I

    .line 8
    iput v3, p0, Lgp;->s:I

    goto :goto_0

    :cond_8
    const/16 v1, 0xd

    if-ne v0, v1, :cond_9

    .line 9
    invoke-virtual {p0}, Ltp;->K0()V

    goto :goto_0

    :cond_9
    const/16 v1, 0x9

    if-ne v0, v1, :cond_a

    goto :goto_0

    .line 10
    :cond_a
    invoke-virtual {p0, v0}, Lhp;->y(I)V

    throw v2
.end method

.method public final M0()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lap;->e:I

    sget v1, Ltp;->T:I

    and-int/2addr v0, v1

    const/16 v1, 0x2f

    const/4 v2, 0x0

    if-eqz v0, :cond_c

    .line 2
    iget v0, p0, Lgp;->o:I

    iget v3, p0, Lgp;->p:I

    const-string v4, " in a comment"

    if-lt v0, v3, :cond_1

    invoke-virtual {p0}, Ltp;->p0()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, v4, v2}, Lhp;->t(Ljava/lang/String;Lbp;)V

    throw v2

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Ltp;->H:[C

    iget v3, p0, Lgp;->o:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lgp;->o:I

    aget-char v0, v0, v3

    if-ne v0, v1, :cond_2

    .line 5
    invoke-virtual {p0}, Ltp;->N0()V

    goto :goto_3

    :cond_2
    const/16 v3, 0x2a

    if-ne v0, v3, :cond_b

    .line 6
    :cond_3
    :goto_1
    iget v0, p0, Lgp;->o:I

    iget v5, p0, Lgp;->p:I

    if-lt v0, v5, :cond_4

    invoke-virtual {p0}, Ltp;->p0()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 7
    :cond_4
    iget-object v0, p0, Ltp;->H:[C

    iget v5, p0, Lgp;->o:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lgp;->o:I

    aget-char v0, v0, v5

    if-gt v0, v3, :cond_3

    if-ne v0, v3, :cond_7

    .line 8
    iget v0, p0, Lgp;->p:I

    if-lt v6, v0, :cond_6

    invoke-virtual {p0}, Ltp;->p0()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    .line 9
    :cond_5
    invoke-virtual {p0, v4, v2}, Lhp;->t(Ljava/lang/String;Lbp;)V

    throw v2

    .line 10
    :cond_6
    :goto_2
    iget-object v0, p0, Ltp;->H:[C

    iget v5, p0, Lgp;->o:I

    aget-char v0, v0, v5

    if-ne v0, v1, :cond_3

    add-int/lit8 v5, v5, 0x1

    .line 11
    iput v5, p0, Lgp;->o:I

    :goto_3
    return-void

    :cond_7
    const/16 v5, 0x20

    if-ge v0, v5, :cond_3

    const/16 v5, 0xa

    if-ne v0, v5, :cond_8

    .line 12
    iget v0, p0, Lgp;->r:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgp;->r:I

    .line 13
    iput v6, p0, Lgp;->s:I

    goto :goto_1

    :cond_8
    const/16 v5, 0xd

    if-ne v0, v5, :cond_9

    .line 14
    invoke-virtual {p0}, Ltp;->K0()V

    goto :goto_1

    :cond_9
    const/16 v5, 0x9

    if-ne v0, v5, :cond_a

    goto :goto_1

    .line 15
    :cond_a
    invoke-virtual {p0, v0}, Lhp;->y(I)V

    throw v2

    :cond_b
    const-string v1, "was expecting either \'*\' or \'/\' for a comment"

    .line 16
    invoke-virtual {p0, v0, v1}, Lhp;->x(ILjava/lang/String;)V

    throw v2

    :cond_c
    const-string v0, "maybe a (non-standard) comment? (not recognized as one since Feature \'ALLOW_COMMENTS\' not enabled for parser)"

    .line 17
    invoke-virtual {p0, v1, v0}, Lhp;->x(ILjava/lang/String;)V

    throw v2
.end method

.method public final N0()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :cond_0
    :goto_0
    iget v0, p0, Lgp;->o:I

    iget v1, p0, Lgp;->p:I

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Ltp;->p0()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    :cond_1
    iget-object v0, p0, Ltp;->H:[C

    iget v1, p0, Lgp;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgp;->o:I

    aget-char v0, v0, v1

    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    .line 3
    iget v0, p0, Lgp;->r:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgp;->r:I

    .line 4
    iput v2, p0, Lgp;->s:I

    goto :goto_1

    :cond_2
    const/16 v1, 0xd

    if-ne v0, v1, :cond_4

    .line 5
    invoke-virtual {p0}, Ltp;->K0()V

    :cond_3
    :goto_1
    return-void

    :cond_4
    const/16 v1, 0x9

    if-ne v0, v1, :cond_5

    goto :goto_0

    .line 6
    :cond_5
    invoke-virtual {p0, v0}, Lhp;->y(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final O0()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :cond_0
    :goto_0
    iget v0, p0, Lgp;->o:I

    iget v1, p0, Lgp;->p:I

    if-lt v0, v1, :cond_1

    .line 2
    invoke-virtual {p0}, Ltp;->p0()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lgp;->m()V

    const/4 v0, -0x1

    return v0

    .line 4
    :cond_1
    iget-object v0, p0, Ltp;->H:[C

    iget v1, p0, Lgp;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgp;->o:I

    aget-char v0, v0, v1

    const/16 v1, 0x20

    if-le v0, v1, :cond_4

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_2

    .line 5
    invoke-virtual {p0}, Ltp;->M0()V

    goto :goto_0

    :cond_2
    const/16 v1, 0x23

    if-ne v0, v1, :cond_3

    .line 6
    invoke-virtual {p0}, Ltp;->P0()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    return v0

    :cond_4
    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_5

    .line 7
    iget v0, p0, Lgp;->r:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgp;->r:I

    .line 8
    iput v2, p0, Lgp;->s:I

    goto :goto_0

    :cond_5
    const/16 v1, 0xd

    if-ne v0, v1, :cond_6

    .line 9
    invoke-virtual {p0}, Ltp;->K0()V

    goto :goto_0

    :cond_6
    const/16 v1, 0x9

    if-ne v0, v1, :cond_7

    goto :goto_0

    .line 10
    :cond_7
    invoke-virtual {p0, v0}, Lhp;->y(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final P0()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lap;->e:I

    sget v1, Ltp;->U:I

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Ltp;->N0()V

    const/4 v0, 0x1

    return v0
.end method

.method public final Q0()V
    .locals 2

    .line 1
    iget v0, p0, Lgp;->o:I

    .line 2
    iget v1, p0, Lgp;->r:I

    iput v1, p0, Lgp;->t:I

    .line 3
    iget v1, p0, Lgp;->s:I

    sub-int/2addr v0, v1

    iput v0, p0, Lgp;->u:I

    return-void
.end method

.method public final R0(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lgp;->o:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgp;->o:I

    const/16 v1, 0x9

    if-eq p1, v1, :cond_3

    const/16 v1, 0xa

    if-eq p1, v1, :cond_2

    const/16 v0, 0xd

    if-eq p1, v0, :cond_1

    const/16 v0, 0x20

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Expected space separating root-level values"

    .line 2
    invoke-virtual {p0, p1, v0}, Lhp;->x(ILjava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    .line 3
    :cond_1
    invoke-virtual {p0}, Ltp;->K0()V

    return-void

    .line 4
    :cond_2
    iget p1, p0, Lgp;->r:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lgp;->r:I

    .line 5
    iput v0, p0, Lgp;->s:I

    :cond_3
    :goto_0
    return-void
.end method

.method public S0(Ljava/lang/String;Lbp;)C
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lgp;->o:I

    iget v1, p0, Lgp;->p:I

    if-lt v0, v1, :cond_1

    .line 2
    invoke-virtual {p0}, Ltp;->p0()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1, p2}, Lhp;->t(Ljava/lang/String;Lbp;)V

    const/4 p1, 0x0

    throw p1

    .line 4
    :cond_1
    :goto_0
    iget-object p1, p0, Ltp;->H:[C

    iget p2, p0, Lgp;->o:I

    add-int/lit8 v0, p2, 0x1

    iput v0, p0, Lgp;->o:I

    aget-char p1, p1, p2

    return p1
.end method

.method public a()Lyo;
    .locals 9

    .line 1
    iget v0, p0, Lgp;->o:I

    iget v1, p0, Lgp;->s:I

    sub-int/2addr v0, v1

    add-int/lit8 v8, v0, 0x1

    .line 2
    new-instance v0, Lyo;

    invoke-virtual {p0}, Lgp;->I()Ljava/lang/Object;

    move-result-object v2

    iget-wide v3, p0, Lgp;->q:J

    iget v1, p0, Lgp;->o:I

    int-to-long v5, v1

    add-long/2addr v5, v3

    iget v7, p0, Lgp;->r:I

    const-wide/16 v3, -0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lyo;-><init>(Ljava/lang/Object;JJII)V

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lhp;->f:Lbp;

    sget-object v1, Lbp;->r:Lbp;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_f

    .line 2
    iget-boolean v0, p0, Ltp;->L:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Ltp;->L:Z

    .line 4
    iget v1, p0, Lgp;->o:I

    .line 5
    iget v3, p0, Lgp;->p:I

    const/16 v4, 0x22

    if-ge v1, v3, :cond_2

    .line 6
    sget-object v5, Ltp;->V:[I

    .line 7
    array-length v6, v5

    .line 8
    :cond_0
    iget-object v7, p0, Ltp;->H:[C

    aget-char v8, v7, v1

    if-ge v8, v6, :cond_1

    .line 9
    aget v9, v5, v8

    if-eqz v9, :cond_1

    if-ne v8, v4, :cond_2

    .line 10
    iget-object v0, p0, Lgp;->x:Laq;

    iget v2, p0, Lgp;->o:I

    sub-int v3, v1, v2

    invoke-virtual {v0, v7, v2, v3}, Laq;->k([CII)V

    add-int/lit8 v1, v1, 0x1

    .line 11
    iput v1, p0, Lgp;->o:I

    goto/16 :goto_5

    :cond_1
    add-int/lit8 v1, v1, 0x1

    if-lt v1, v3, :cond_0

    .line 12
    :cond_2
    iget-object v3, p0, Lgp;->x:Laq;

    iget-object v5, p0, Ltp;->H:[C

    iget v6, p0, Lgp;->o:I

    sub-int v7, v1, v6

    .line 13
    iput-object v2, v3, Laq;->b:[C

    const/4 v8, -0x1

    .line 14
    iput v8, v3, Laq;->c:I

    .line 15
    iput v0, v3, Laq;->d:I

    .line 16
    iput-object v2, v3, Laq;->j:Ljava/lang/String;

    .line 17
    iput-object v2, v3, Laq;->k:[C

    .line 18
    iget-boolean v8, v3, Laq;->f:Z

    if-eqz v8, :cond_3

    .line 19
    invoke-virtual {v3}, Laq;->b()V

    goto :goto_0

    .line 20
    :cond_3
    iget-object v8, v3, Laq;->h:[C

    if-nez v8, :cond_4

    .line 21
    invoke-virtual {v3, v7}, Laq;->a(I)[C

    move-result-object v8

    iput-object v8, v3, Laq;->h:[C

    .line 22
    :cond_4
    :goto_0
    iput v0, v3, Laq;->g:I

    iput v0, v3, Laq;->i:I

    .line 23
    iget v8, v3, Laq;->c:I

    if-ltz v8, :cond_5

    .line 24
    invoke-virtual {v3, v7}, Laq;->m(I)V

    .line 25
    :cond_5
    iput-object v2, v3, Laq;->j:Ljava/lang/String;

    .line 26
    iput-object v2, v3, Laq;->k:[C

    .line 27
    iget-object v8, v3, Laq;->h:[C

    .line 28
    array-length v9, v8

    iget v10, v3, Laq;->i:I

    sub-int/2addr v9, v10

    if-lt v9, v7, :cond_6

    .line 29
    invoke-static {v5, v6, v8, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 30
    iget v5, v3, Laq;->i:I

    add-int/2addr v5, v7

    iput v5, v3, Laq;->i:I

    goto :goto_1

    :cond_6
    if-lez v9, :cond_7

    .line 31
    invoke-static {v5, v6, v8, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v6, v9

    sub-int/2addr v7, v9

    .line 32
    :cond_7
    invoke-virtual {v3}, Laq;->f()V

    .line 33
    iget-object v8, v3, Laq;->h:[C

    array-length v8, v8

    invoke-static {v8, v7}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 34
    iget-object v9, v3, Laq;->h:[C

    invoke-static {v5, v6, v9, v0, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    iget v9, v3, Laq;->i:I

    add-int/2addr v9, v8

    iput v9, v3, Laq;->i:I

    add-int/2addr v6, v8

    sub-int/2addr v7, v8

    if-gtz v7, :cond_7

    .line 36
    :goto_1
    iput v1, p0, Lgp;->o:I

    .line 37
    iget-object v1, p0, Lgp;->x:Laq;

    invoke-virtual {v1}, Laq;->h()[C

    move-result-object v1

    .line 38
    iget-object v3, p0, Lgp;->x:Laq;

    .line 39
    iget v3, v3, Laq;->i:I

    .line 40
    sget-object v8, Ltp;->V:[I

    .line 41
    array-length v9, v8

    .line 42
    :goto_2
    iget v5, p0, Lgp;->o:I

    iget v6, p0, Lgp;->p:I

    if-lt v5, v6, :cond_9

    .line 43
    invoke-virtual {p0}, Ltp;->p0()Z

    move-result v5

    if-eqz v5, :cond_8

    goto :goto_3

    .line 44
    :cond_8
    sget-object v0, Lbp;->r:Lbp;

    const-string v1, ": was expecting closing quote for a string value"

    invoke-virtual {p0, v1, v0}, Lhp;->t(Ljava/lang/String;Lbp;)V

    throw v2

    .line 45
    :cond_9
    :goto_3
    iget-object v5, p0, Ltp;->H:[C

    iget v6, p0, Lgp;->o:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lgp;->o:I

    aget-char v5, v5, v6

    if-ge v5, v9, :cond_c

    .line 46
    aget v6, v8, v5

    if-eqz v6, :cond_c

    if-ne v5, v4, :cond_a

    .line 47
    iget-object v0, p0, Lgp;->x:Laq;

    .line 48
    iput v3, v0, Laq;->i:I

    goto :goto_5

    :cond_a
    const/16 v6, 0x5c

    if-ne v5, v6, :cond_b

    .line 49
    invoke-virtual {p0}, Ltp;->j0()C

    move-result v5

    goto :goto_4

    :cond_b
    const/16 v6, 0x20

    if-ge v5, v6, :cond_c

    const-string v6, "string value"

    .line 50
    invoke-virtual {p0, v5, v6}, Lgp;->Z(ILjava/lang/String;)V

    .line 51
    :cond_c
    :goto_4
    array-length v6, v1

    if-lt v3, v6, :cond_d

    .line 52
    iget-object v1, p0, Lgp;->x:Laq;

    invoke-virtual {v1}, Laq;->g()[C

    move-result-object v1

    const/4 v3, 0x0

    :cond_d
    add-int/lit8 v6, v3, 0x1

    .line 53
    aput-char v5, v1, v3

    move v3, v6

    goto :goto_2

    .line 54
    :cond_e
    :goto_5
    iget-object v0, p0, Lgp;->x:Laq;

    invoke-virtual {v0}, Laq;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_f
    if-nez v0, :cond_10

    goto :goto_6

    .line 55
    :cond_10
    iget v1, v0, Lbp;->h:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_12

    const/4 v2, 0x6

    if-eq v1, v2, :cond_11

    const/4 v2, 0x7

    if-eq v1, v2, :cond_11

    const/16 v2, 0x8

    if-eq v1, v2, :cond_11

    .line 56
    iget-object v2, v0, Lbp;->e:Ljava/lang/String;

    goto :goto_6

    .line 57
    :cond_11
    iget-object v0, p0, Lgp;->x:Laq;

    invoke-virtual {v0}, Laq;->d()Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    .line 58
    :cond_12
    iget-object v0, p0, Lgp;->v:Lrp;

    .line 59
    iget-object v2, v0, Lrp;->f:Ljava/lang/String;

    :goto_6
    return-object v2
.end method

.method public final g()Lbp;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v6, p0

    .line 1
    iget-object v0, v6, Lhp;->f:Lbp;

    sget-object v1, Lbp;->p:Lbp;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 2
    iget-object v0, v6, Lgp;->w:Lbp;

    .line 3
    iput-object v2, v6, Lgp;->w:Lbp;

    .line 4
    sget-object v1, Lbp;->n:Lbp;

    if-ne v0, v1, :cond_0

    .line 5
    iget-object v1, v6, Lgp;->v:Lrp;

    iget v2, v6, Lgp;->t:I

    iget v3, v6, Lgp;->u:I

    invoke-virtual {v1, v2, v3}, Lrp;->a(II)Lrp;

    move-result-object v1

    iput-object v1, v6, Lgp;->v:Lrp;

    goto :goto_0

    .line 6
    :cond_0
    sget-object v1, Lbp;->l:Lbp;

    if-ne v0, v1, :cond_1

    .line 7
    iget-object v1, v6, Lgp;->v:Lrp;

    iget v2, v6, Lgp;->t:I

    iget v3, v6, Lgp;->u:I

    invoke-virtual {v1, v2, v3}, Lrp;->b(II)Lrp;

    move-result-object v1

    iput-object v1, v6, Lgp;->v:Lrp;

    .line 8
    :cond_1
    :goto_0
    iput-object v0, v6, Lhp;->f:Lbp;

    return-object v0

    :cond_2
    const/4 v0, 0x0

    .line 9
    iput v0, v6, Lgp;->y:I

    .line 10
    iget-boolean v1, v6, Ltp;->L:Z

    const/16 v3, 0x20

    const/16 v4, 0x22

    if-eqz v1, :cond_8

    .line 11
    iput-boolean v0, v6, Ltp;->L:Z

    .line 12
    iget v0, v6, Lgp;->o:I

    .line 13
    iget v1, v6, Lgp;->p:I

    .line 14
    iget-object v5, v6, Ltp;->H:[C

    :goto_1
    if-lt v0, v1, :cond_4

    .line 15
    iput v0, v6, Lgp;->o:I

    .line 16
    invoke-virtual/range {p0 .. p0}, Ltp;->p0()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 17
    iget v0, v6, Lgp;->o:I

    .line 18
    iget v1, v6, Lgp;->p:I

    goto :goto_2

    .line 19
    :cond_3
    sget-object v0, Lbp;->r:Lbp;

    const-string v1, ": was expecting closing quote for a string value"

    invoke-virtual {v6, v1, v0}, Lhp;->t(Ljava/lang/String;Lbp;)V

    throw v2

    :cond_4
    :goto_2
    add-int/lit8 v7, v0, 0x1

    .line 20
    aget-char v0, v5, v0

    const/16 v8, 0x5c

    if-gt v0, v8, :cond_7

    if-ne v0, v8, :cond_5

    .line 21
    iput v7, v6, Lgp;->o:I

    .line 22
    invoke-virtual/range {p0 .. p0}, Ltp;->j0()C

    .line 23
    iget v0, v6, Lgp;->o:I

    .line 24
    iget v1, v6, Lgp;->p:I

    goto :goto_1

    :cond_5
    if-gt v0, v4, :cond_7

    if-ne v0, v4, :cond_6

    .line 25
    iput v7, v6, Lgp;->o:I

    goto :goto_3

    :cond_6
    if-ge v0, v3, :cond_7

    .line 26
    iput v7, v6, Lgp;->o:I

    const-string v8, "string value"

    .line 27
    invoke-virtual {v6, v0, v8}, Lgp;->Z(ILjava/lang/String;)V

    :cond_7
    move v0, v7

    goto :goto_1

    .line 28
    :cond_8
    :goto_3
    iget v0, v6, Lgp;->o:I

    iget v1, v6, Lgp;->p:I

    const/16 v5, 0xa

    const/16 v7, 0xd

    const/16 v8, 0x9

    const/16 v9, 0x2f

    const/16 v10, 0x23

    const/4 v11, 0x1

    if-lt v0, v1, :cond_9

    .line 29
    invoke-virtual/range {p0 .. p0}, Ltp;->p0()Z

    move-result v0

    if-nez v0, :cond_9

    .line 30
    invoke-virtual/range {p0 .. p0}, Lgp;->m()V

    const/4 v0, -0x1

    goto/16 :goto_5

    .line 31
    :cond_9
    iget-object v0, v6, Ltp;->H:[C

    iget v1, v6, Lgp;->o:I

    add-int/lit8 v12, v1, 0x1

    iput v12, v6, Lgp;->o:I

    aget-char v0, v0, v1

    if-le v0, v3, :cond_b

    if-eq v0, v9, :cond_a

    if-ne v0, v10, :cond_16

    :cond_a
    add-int/lit8 v12, v12, -0x1

    .line 32
    iput v12, v6, Lgp;->o:I

    .line 33
    invoke-virtual/range {p0 .. p0}, Ltp;->O0()I

    move-result v0

    goto :goto_5

    :cond_b
    if-eq v0, v3, :cond_f

    if-ne v0, v5, :cond_c

    .line 34
    iget v0, v6, Lgp;->r:I

    add-int/2addr v0, v11

    iput v0, v6, Lgp;->r:I

    .line 35
    iput v12, v6, Lgp;->s:I

    goto :goto_4

    :cond_c
    if-ne v0, v7, :cond_d

    .line 36
    invoke-virtual/range {p0 .. p0}, Ltp;->K0()V

    goto :goto_4

    :cond_d
    if-ne v0, v8, :cond_e

    goto :goto_4

    .line 37
    :cond_e
    invoke-virtual {v6, v0}, Lhp;->y(I)V

    throw v2

    .line 38
    :cond_f
    :goto_4
    iget v0, v6, Lgp;->o:I

    iget v1, v6, Lgp;->p:I

    if-ge v0, v1, :cond_15

    .line 39
    iget-object v1, v6, Ltp;->H:[C

    add-int/lit8 v12, v0, 0x1

    iput v12, v6, Lgp;->o:I

    aget-char v0, v1, v0

    if-le v0, v3, :cond_11

    if-eq v0, v9, :cond_10

    if-ne v0, v10, :cond_16

    :cond_10
    add-int/lit8 v12, v12, -0x1

    .line 40
    iput v12, v6, Lgp;->o:I

    .line 41
    invoke-virtual/range {p0 .. p0}, Ltp;->O0()I

    move-result v0

    goto :goto_5

    :cond_11
    if-eq v0, v3, :cond_f

    if-ne v0, v5, :cond_12

    .line 42
    iget v0, v6, Lgp;->r:I

    add-int/2addr v0, v11

    iput v0, v6, Lgp;->r:I

    .line 43
    iput v12, v6, Lgp;->s:I

    goto :goto_4

    :cond_12
    if-ne v0, v7, :cond_13

    .line 44
    invoke-virtual/range {p0 .. p0}, Ltp;->K0()V

    goto :goto_4

    :cond_13
    if-ne v0, v8, :cond_14

    goto :goto_4

    .line 45
    :cond_14
    invoke-virtual {v6, v0}, Lhp;->y(I)V

    throw v2

    .line 46
    :cond_15
    invoke-virtual/range {p0 .. p0}, Ltp;->O0()I

    move-result v0

    :cond_16
    :goto_5
    if-gez v0, :cond_17

    .line 47
    invoke-virtual/range {p0 .. p0}, Lgp;->close()V

    .line 48
    iput-object v2, v6, Lhp;->f:Lbp;

    return-object v2

    :cond_17
    const/16 v1, 0x5d

    if-eq v0, v1, :cond_79

    const/16 v12, 0x7d

    if-ne v0, v12, :cond_18

    goto/16 :goto_25

    .line 49
    :cond_18
    iget-object v13, v6, Lgp;->v:Lrp;

    .line 50
    iget v14, v13, Lrp;->b:I

    add-int/2addr v14, v11

    iput v14, v13, Lrp;->b:I

    .line 51
    iget v13, v13, Lrp;->a:I

    if-eqz v13, :cond_19

    if-lez v14, :cond_19

    const/4 v13, 0x1

    goto :goto_6

    :cond_19
    const/4 v13, 0x0

    :goto_6
    if-eqz v13, :cond_24

    const/16 v13, 0x2c

    if-ne v0, v13, :cond_23

    .line 52
    :cond_1a
    :goto_7
    iget v0, v6, Lgp;->o:I

    iget v13, v6, Lgp;->p:I

    if-ge v0, v13, :cond_20

    .line 53
    iget-object v13, v6, Ltp;->H:[C

    add-int/lit8 v14, v0, 0x1

    iput v14, v6, Lgp;->o:I

    aget-char v0, v13, v0

    if-le v0, v3, :cond_1c

    if-eq v0, v9, :cond_1b

    if-ne v0, v10, :cond_21

    :cond_1b
    add-int/lit8 v14, v14, -0x1

    .line 54
    iput v14, v6, Lgp;->o:I

    .line 55
    invoke-virtual/range {p0 .. p0}, Ltp;->F0()I

    move-result v0

    goto :goto_8

    :cond_1c
    if-ge v0, v3, :cond_1a

    if-ne v0, v5, :cond_1d

    .line 56
    iget v0, v6, Lgp;->r:I

    add-int/2addr v0, v11

    iput v0, v6, Lgp;->r:I

    .line 57
    iput v14, v6, Lgp;->s:I

    goto :goto_7

    :cond_1d
    if-ne v0, v7, :cond_1e

    .line 58
    invoke-virtual/range {p0 .. p0}, Ltp;->K0()V

    goto :goto_7

    :cond_1e
    if-ne v0, v8, :cond_1f

    goto :goto_7

    .line 59
    :cond_1f
    invoke-virtual {v6, v0}, Lhp;->y(I)V

    throw v2

    .line 60
    :cond_20
    invoke-virtual/range {p0 .. p0}, Ltp;->F0()I

    move-result v0

    .line 61
    :cond_21
    :goto_8
    iget v5, v6, Lap;->e:I

    sget v7, Ltp;->N:I

    and-int/2addr v5, v7

    if-eqz v5, :cond_24

    if-eq v0, v1, :cond_22

    if-ne v0, v12, :cond_24

    .line 62
    :cond_22
    invoke-virtual {v6, v0}, Ltp;->h0(I)V

    .line 63
    iget-object v0, v6, Lhp;->f:Lbp;

    return-object v0

    :cond_23
    const-string v1, "was expecting comma to separate "

    .line 64
    invoke-static {v1}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v6, Lgp;->v:Lrp;

    invoke-virtual {v3}, Lrp;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " entries"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lhp;->x(ILjava/lang/String;)V

    throw v2

    .line 65
    :cond_24
    iget-object v1, v6, Lgp;->v:Lrp;

    .line 66
    iget v1, v1, Lrp;->a:I

    const/4 v5, 0x2

    if-ne v1, v5, :cond_25

    const/4 v1, 0x1

    const/4 v7, 0x1

    goto :goto_9

    :cond_25
    const/4 v1, 0x0

    const/4 v7, 0x0

    :goto_9
    if-eqz v7, :cond_54

    .line 67
    iget v1, v6, Lgp;->o:I

    int-to-long v12, v1

    .line 68
    iput-wide v12, v6, Ltp;->M:J

    if-ne v0, v4, :cond_28

    .line 69
    iget v0, v6, Ltp;->K:I

    .line 70
    sget-object v5, Ltp;->V:[I

    .line 71
    :goto_a
    iget v12, v6, Lgp;->p:I

    if-ge v1, v12, :cond_27

    .line 72
    iget-object v12, v6, Ltp;->H:[C

    aget-char v13, v12, v1

    .line 73
    array-length v14, v5

    if-ge v13, v14, :cond_26

    aget v14, v5, v13

    if-eqz v14, :cond_26

    if-ne v13, v4, :cond_27

    .line 74
    iget v4, v6, Lgp;->o:I

    add-int/lit8 v5, v1, 0x1

    .line 75
    iput v5, v6, Lgp;->o:I

    .line 76
    iget-object v5, v6, Ltp;->J:Lvp;

    sub-int/2addr v1, v4

    invoke-virtual {v5, v12, v4, v1, v0}, Lvp;->c([CIII)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_f

    :cond_26
    mul-int/lit8 v0, v0, 0x21

    add-int/2addr v0, v13

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 77
    :cond_27
    iget v5, v6, Lgp;->o:I

    .line 78
    iput v1, v6, Lgp;->o:I

    .line 79
    invoke-virtual {v6, v5, v0, v4}, Ltp;->t0(III)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_f

    :cond_28
    const/16 v4, 0x27

    if-ne v0, v4, :cond_2d

    .line 80
    iget v5, v6, Lap;->e:I

    sget v12, Ltp;->R:I

    and-int/2addr v5, v12

    if-eqz v5, :cond_2d

    .line 81
    iget v0, v6, Ltp;->K:I

    .line 82
    iget v5, v6, Lgp;->p:I

    if-ge v1, v5, :cond_2c

    .line 83
    sget-object v12, Ltp;->V:[I

    .line 84
    array-length v13, v12

    .line 85
    :cond_29
    iget-object v14, v6, Ltp;->H:[C

    aget-char v15, v14, v1

    if-ne v15, v4, :cond_2a

    .line 86
    iget v4, v6, Lgp;->o:I

    add-int/lit8 v5, v1, 0x1

    .line 87
    iput v5, v6, Lgp;->o:I

    .line 88
    iget-object v5, v6, Ltp;->J:Lvp;

    sub-int/2addr v1, v4

    invoke-virtual {v5, v14, v4, v1, v0}, Lvp;->c([CIII)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_f

    :cond_2a
    if-ge v15, v13, :cond_2b

    .line 89
    aget v14, v12, v15

    if-eqz v14, :cond_2b

    goto :goto_b

    :cond_2b
    mul-int/lit8 v0, v0, 0x21

    add-int/2addr v0, v15

    add-int/lit8 v1, v1, 0x1

    if-lt v1, v5, :cond_29

    .line 90
    :cond_2c
    :goto_b
    iget v5, v6, Lgp;->o:I

    .line 91
    iput v1, v6, Lgp;->o:I

    .line 92
    invoke-virtual {v6, v5, v0, v4}, Ltp;->t0(III)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_f

    .line 93
    :cond_2d
    iget v1, v6, Lap;->e:I

    sget v4, Ltp;->S:I

    and-int/2addr v1, v4

    if-eqz v1, :cond_53

    .line 94
    sget-object v1, Lkp;->e:[I

    .line 95
    array-length v4, v1

    if-ge v0, v4, :cond_2f

    .line 96
    aget v5, v1, v0

    if-nez v5, :cond_2e

    const/4 v5, 0x1

    goto :goto_c

    :cond_2e
    const/4 v5, 0x0

    goto :goto_c

    :cond_2f
    int-to-char v5, v0

    .line 97
    invoke-static {v5}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v5

    :goto_c
    if-eqz v5, :cond_52

    .line 98
    iget v0, v6, Lgp;->o:I

    .line 99
    iget v5, v6, Ltp;->K:I

    .line 100
    iget v12, v6, Lgp;->p:I

    if-ge v0, v12, :cond_33

    .line 101
    :cond_30
    iget-object v13, v6, Ltp;->H:[C

    aget-char v14, v13, v0

    if-ge v14, v4, :cond_31

    .line 102
    aget v15, v1, v14

    if-eqz v15, :cond_32

    .line 103
    iget v1, v6, Lgp;->o:I

    sub-int/2addr v1, v11

    .line 104
    iput v0, v6, Lgp;->o:I

    .line 105
    iget-object v4, v6, Ltp;->J:Lvp;

    sub-int/2addr v0, v1

    invoke-virtual {v4, v13, v1, v0, v5}, Lvp;->c([CIII)Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :cond_31
    int-to-char v13, v14

    .line 106
    invoke-static {v13}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v13

    if-nez v13, :cond_32

    .line 107
    iget v1, v6, Lgp;->o:I

    sub-int/2addr v1, v11

    .line 108
    iput v0, v6, Lgp;->o:I

    .line 109
    iget-object v4, v6, Ltp;->J:Lvp;

    iget-object v12, v6, Ltp;->H:[C

    sub-int/2addr v0, v1

    invoke-virtual {v4, v12, v1, v0, v5}, Lvp;->c([CIII)Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :cond_32
    mul-int/lit8 v5, v5, 0x21

    add-int/2addr v5, v14

    add-int/lit8 v0, v0, 0x1

    if-lt v0, v12, :cond_30

    .line 110
    :cond_33
    iget v4, v6, Lgp;->o:I

    sub-int/2addr v4, v11

    .line 111
    iput v0, v6, Lgp;->o:I

    .line 112
    iget-object v12, v6, Lgp;->x:Laq;

    iget-object v13, v6, Ltp;->H:[C

    sub-int/2addr v0, v4

    invoke-virtual {v12, v13, v4, v0}, Laq;->k([CII)V

    .line 113
    iget-object v0, v6, Lgp;->x:Laq;

    invoke-virtual {v0}, Laq;->h()[C

    move-result-object v0

    .line 114
    iget-object v4, v6, Lgp;->x:Laq;

    .line 115
    iget v4, v4, Laq;->i:I

    .line 116
    array-length v12, v1

    .line 117
    :goto_d
    iget v13, v6, Lgp;->o:I

    iget v14, v6, Lgp;->p:I

    if-lt v13, v14, :cond_34

    .line 118
    invoke-virtual/range {p0 .. p0}, Ltp;->p0()Z

    move-result v13

    if-nez v13, :cond_34

    goto :goto_e

    .line 119
    :cond_34
    iget-object v13, v6, Ltp;->H:[C

    iget v14, v6, Lgp;->o:I

    aget-char v13, v13, v14

    if-ge v13, v12, :cond_35

    .line 120
    aget v14, v1, v13

    if-eqz v14, :cond_50

    goto :goto_e

    .line 121
    :cond_35
    invoke-static {v13}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v14

    if-nez v14, :cond_50

    .line 122
    :goto_e
    iget-object v0, v6, Lgp;->x:Laq;

    .line 123
    iput v4, v0, Laq;->i:I

    .line 124
    invoke-virtual {v0}, Laq;->i()[C

    move-result-object v1

    .line 125
    invoke-virtual {v0}, Laq;->j()I

    move-result v4

    .line 126
    invoke-virtual {v0}, Laq;->l()I

    move-result v0

    .line 127
    iget-object v12, v6, Ltp;->J:Lvp;

    invoke-virtual {v12, v1, v4, v0, v5}, Lvp;->c([CIII)Ljava/lang/String;

    move-result-object v0

    .line 128
    :goto_f
    iget-object v1, v6, Lgp;->v:Lrp;

    .line 129
    iput-object v0, v1, Lrp;->f:Ljava/lang/String;

    .line 130
    iget-object v1, v1, Lrp;->d:Lqp;

    if-eqz v1, :cond_3c

    .line 131
    iget-object v4, v1, Lqp;->b:Ljava/lang/String;

    if-nez v4, :cond_36

    .line 132
    iput-object v0, v1, Lqp;->b:Ljava/lang/String;

    goto :goto_10

    .line 133
    :cond_36
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    goto :goto_11

    .line 134
    :cond_37
    iget-object v4, v1, Lqp;->c:Ljava/lang/String;

    if-nez v4, :cond_38

    .line 135
    iput-object v0, v1, Lqp;->c:Ljava/lang/String;

    :goto_10
    const/4 v4, 0x0

    goto :goto_12

    .line 136
    :cond_38
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    :goto_11
    const/4 v4, 0x1

    goto :goto_12

    .line 137
    :cond_39
    iget-object v4, v1, Lqp;->d:Ljava/util/HashSet;

    if-nez v4, :cond_3a

    .line 138
    new-instance v4, Ljava/util/HashSet;

    const/16 v5, 0x10

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(I)V

    iput-object v4, v1, Lqp;->d:Ljava/util/HashSet;

    .line 139
    iget-object v5, v1, Lqp;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 140
    iget-object v4, v1, Lqp;->d:Ljava/util/HashSet;

    iget-object v5, v1, Lqp;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 141
    :cond_3a
    iget-object v4, v1, Lqp;->d:Ljava/util/HashSet;

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v4, v11

    :goto_12
    if-eqz v4, :cond_3c

    .line 142
    iget-object v1, v1, Lqp;->a:Ljava/lang/Object;

    .line 143
    new-instance v3, Lzo;

    instance-of v4, v1, Lap;

    if-eqz v4, :cond_3b

    move-object v2, v1

    check-cast v2, Lap;

    :cond_3b
    const-string v1, "Duplicate field \'"

    const-string v4, "\'"

    invoke-static {v1, v0, v4}, Ljo;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v2, v0}, Lzo;-><init>(Lap;Ljava/lang/String;)V

    throw v3

    .line 144
    :cond_3c
    sget-object v0, Lbp;->p:Lbp;

    iput-object v0, v6, Lhp;->f:Lbp;

    .line 145
    iget v0, v6, Lgp;->o:I

    add-int/lit8 v1, v0, 0x4

    iget v4, v6, Lgp;->p:I

    if-lt v1, v4, :cond_3d

    const/4 v0, 0x0

    .line 146
    invoke-virtual {v6, v0}, Ltp;->L0(Z)I

    move-result v0

    goto/16 :goto_19

    .line 147
    :cond_3d
    iget-object v1, v6, Ltp;->H:[C

    aget-char v4, v1, v0

    const/16 v5, 0x3a

    if-ne v4, v5, :cond_45

    add-int/2addr v0, v11

    .line 148
    iput v0, v6, Lgp;->o:I

    aget-char v4, v1, v0

    if-le v4, v3, :cond_40

    if-eq v4, v9, :cond_3f

    if-ne v4, v10, :cond_3e

    goto :goto_14

    :cond_3e
    add-int/2addr v0, v11

    .line 149
    iput v0, v6, Lgp;->o:I

    :goto_13
    move v0, v4

    goto/16 :goto_19

    .line 150
    :cond_3f
    :goto_14
    invoke-virtual {v6, v11}, Ltp;->L0(Z)I

    move-result v0

    goto/16 :goto_19

    :cond_40
    if-eq v4, v3, :cond_41

    if-ne v4, v8, :cond_44

    :cond_41
    add-int/2addr v0, v11

    .line 151
    iput v0, v6, Lgp;->o:I

    aget-char v1, v1, v0

    if-le v1, v3, :cond_44

    if-eq v1, v9, :cond_43

    if-ne v1, v10, :cond_42

    goto :goto_16

    :cond_42
    add-int/2addr v0, v11

    .line 152
    iput v0, v6, Lgp;->o:I

    :goto_15
    move v0, v1

    goto/16 :goto_19

    .line 153
    :cond_43
    :goto_16
    invoke-virtual {v6, v11}, Ltp;->L0(Z)I

    move-result v0

    goto/16 :goto_19

    .line 154
    :cond_44
    invoke-virtual {v6, v11}, Ltp;->L0(Z)I

    move-result v0

    goto/16 :goto_19

    :cond_45
    if-eq v4, v3, :cond_46

    if-ne v4, v8, :cond_47

    :cond_46
    add-int/2addr v0, v11

    .line 155
    iput v0, v6, Lgp;->o:I

    aget-char v4, v1, v0

    :cond_47
    if-ne v4, v5, :cond_4f

    .line 156
    iget v0, v6, Lgp;->o:I

    add-int/2addr v0, v11

    iput v0, v6, Lgp;->o:I

    aget-char v4, v1, v0

    if-le v4, v3, :cond_4a

    if-eq v4, v9, :cond_49

    if-ne v4, v10, :cond_48

    goto :goto_17

    :cond_48
    add-int/2addr v0, v11

    .line 157
    iput v0, v6, Lgp;->o:I

    goto :goto_13

    .line 158
    :cond_49
    :goto_17
    invoke-virtual {v6, v11}, Ltp;->L0(Z)I

    move-result v0

    goto :goto_19

    :cond_4a
    if-eq v4, v3, :cond_4b

    if-ne v4, v8, :cond_4e

    :cond_4b
    add-int/2addr v0, v11

    .line 159
    iput v0, v6, Lgp;->o:I

    aget-char v1, v1, v0

    if-le v1, v3, :cond_4e

    if-eq v1, v9, :cond_4d

    if-ne v1, v10, :cond_4c

    goto :goto_18

    :cond_4c
    add-int/2addr v0, v11

    .line 160
    iput v0, v6, Lgp;->o:I

    goto :goto_15

    .line 161
    :cond_4d
    :goto_18
    invoke-virtual {v6, v11}, Ltp;->L0(Z)I

    move-result v0

    goto :goto_19

    .line 162
    :cond_4e
    invoke-virtual {v6, v11}, Ltp;->L0(Z)I

    move-result v0

    goto :goto_19

    :cond_4f
    const/4 v0, 0x0

    .line 163
    invoke-virtual {v6, v0}, Ltp;->L0(Z)I

    move-result v0

    goto :goto_19

    .line 164
    :cond_50
    iget v14, v6, Lgp;->o:I

    add-int/2addr v14, v11

    iput v14, v6, Lgp;->o:I

    mul-int/lit8 v5, v5, 0x21

    add-int/2addr v5, v13

    add-int/lit8 v14, v4, 0x1

    .line 165
    aput-char v13, v0, v4

    .line 166
    array-length v4, v0

    if-lt v14, v4, :cond_51

    .line 167
    iget-object v0, v6, Lgp;->x:Laq;

    invoke-virtual {v0}, Laq;->g()[C

    move-result-object v0

    const/4 v4, 0x0

    goto/16 :goto_d

    :cond_51
    move v4, v14

    goto/16 :goto_d

    :cond_52
    const-string v1, "was expecting either valid name character (for unquoted name) or double-quote (for quoted) to start field name"

    .line 168
    invoke-virtual {v6, v0, v1}, Lhp;->x(ILjava/lang/String;)V

    throw v2

    :cond_53
    const-string v1, "was expecting double-quote to start field name"

    .line 169
    invoke-virtual {v6, v0, v1}, Lhp;->x(ILjava/lang/String;)V

    throw v2

    .line 170
    :cond_54
    :goto_19
    invoke-virtual/range {p0 .. p0}, Ltp;->Q0()V

    const/16 v1, 0x22

    if-eq v0, v1, :cond_77

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_75

    const/16 v1, 0x66

    const/16 v3, 0x65

    const/16 v4, 0x30

    const/16 v5, 0x6c

    if-eq v0, v1, :cond_72

    const/16 v1, 0x6e

    const/16 v8, 0x75

    if-eq v0, v1, :cond_6f

    const/16 v1, 0x74

    if-eq v0, v1, :cond_6c

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_6a

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_69

    const/16 v1, 0x2d

    const/16 v2, 0x45

    const/16 v5, 0x39

    const/16 v8, 0x2e

    if-eq v0, v1, :cond_5e

    if-eq v0, v8, :cond_5c

    packed-switch v0, :pswitch_data_0

    .line 171
    invoke-virtual {v6, v0}, Ltp;->m0(I)Lbp;

    move-result-object v0

    goto/16 :goto_24

    .line 172
    :pswitch_0
    iget v1, v6, Lgp;->o:I

    add-int/lit8 v9, v1, -0x1

    .line 173
    iget v10, v6, Lgp;->p:I

    if-ne v0, v4, :cond_55

    const/4 v0, 0x0

    .line 174
    invoke-virtual {v6, v0, v9}, Ltp;->v0(ZI)Lbp;

    move-result-object v0

    goto/16 :goto_24

    :cond_55
    :goto_1a
    const/4 v0, 0x0

    if-lt v1, v10, :cond_56

    .line 175
    iput v9, v6, Lgp;->o:I

    .line 176
    invoke-virtual {v6, v0, v9}, Ltp;->v0(ZI)Lbp;

    move-result-object v0

    goto/16 :goto_24

    .line 177
    :cond_56
    iget-object v0, v6, Ltp;->H:[C

    add-int/lit8 v12, v1, 0x1

    aget-char v1, v0, v1

    if-lt v1, v4, :cond_58

    if-le v1, v5, :cond_57

    goto :goto_1b

    :cond_57
    add-int/lit8 v11, v11, 0x1

    move v1, v12

    goto :goto_1a

    :cond_58
    :goto_1b
    if-eq v1, v8, :cond_5b

    if-eq v1, v3, :cond_5b

    if-ne v1, v2, :cond_59

    goto :goto_1c

    :cond_59
    add-int/lit8 v12, v12, -0x1

    .line 178
    iput v12, v6, Lgp;->o:I

    .line 179
    iget-object v0, v6, Lgp;->v:Lrp;

    invoke-virtual {v0}, Lrp;->d()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 180
    invoke-virtual {v6, v1}, Ltp;->R0(I)V

    :cond_5a
    sub-int/2addr v12, v9

    .line 181
    iget-object v0, v6, Lgp;->x:Laq;

    iget-object v1, v6, Ltp;->H:[C

    invoke-virtual {v0, v1, v9, v12}, Laq;->k([CII)V

    const/4 v0, 0x0

    .line 182
    invoke-virtual {v6, v0, v11}, Lgp;->d0(ZI)Lbp;

    move-result-object v0

    goto/16 :goto_24

    .line 183
    :cond_5b
    :goto_1c
    iput v12, v6, Lgp;->o:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v2, v9

    move v3, v12

    move v5, v11

    .line 184
    invoke-virtual/range {v0 .. v5}, Ltp;->s0(IIIZI)Lbp;

    move-result-object v0

    goto/16 :goto_24

    .line 185
    :cond_5c
    sget-object v0, Lsp;->m:Lsp;

    .line 186
    iget-object v0, v0, Lsp;->e:Lap$a;

    .line 187
    invoke-virtual {v6, v0}, Lap;->f(Lap$a;)Z

    move-result v0

    if-nez v0, :cond_5d

    .line 188
    invoke-virtual {v6, v8}, Ltp;->m0(I)Lbp;

    move-result-object v0

    goto/16 :goto_24

    :cond_5d
    const/16 v1, 0x2e

    .line 189
    iget v3, v6, Lgp;->o:I

    add-int/lit8 v2, v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Ltp;->s0(IIIZI)Lbp;

    move-result-object v0

    goto/16 :goto_24

    .line 190
    :cond_5e
    iget v0, v6, Lgp;->o:I

    add-int/lit8 v9, v0, -0x1

    .line 191
    iget v1, v6, Lgp;->p:I

    if-lt v0, v1, :cond_5f

    .line 192
    invoke-virtual {v6, v11, v9}, Ltp;->v0(ZI)Lbp;

    move-result-object v0

    goto/16 :goto_24

    .line 193
    :cond_5f
    iget-object v10, v6, Ltp;->H:[C

    add-int/lit8 v12, v0, 0x1

    aget-char v0, v10, v0

    if-gt v0, v5, :cond_68

    if-ge v0, v4, :cond_60

    goto :goto_20

    :cond_60
    if-ne v0, v4, :cond_61

    .line 194
    invoke-virtual {v6, v11, v9}, Ltp;->v0(ZI)Lbp;

    move-result-object v0

    goto/16 :goto_24

    :cond_61
    const/4 v0, 0x1

    const/4 v10, 0x1

    :goto_1d
    if-lt v12, v1, :cond_62

    .line 195
    invoke-virtual {v6, v11, v9}, Ltp;->v0(ZI)Lbp;

    move-result-object v0

    goto/16 :goto_24

    .line 196
    :cond_62
    iget-object v0, v6, Ltp;->H:[C

    add-int/lit8 v13, v12, 0x1

    aget-char v12, v0, v12

    if-lt v12, v4, :cond_64

    if-le v12, v5, :cond_63

    goto :goto_1e

    :cond_63
    add-int/lit8 v10, v10, 0x1

    move v12, v13

    goto :goto_1d

    :cond_64
    :goto_1e
    if-eq v12, v8, :cond_67

    if-eq v12, v3, :cond_67

    if-ne v12, v2, :cond_65

    goto :goto_1f

    :cond_65
    add-int/lit8 v13, v13, -0x1

    .line 197
    iput v13, v6, Lgp;->o:I

    .line 198
    iget-object v0, v6, Lgp;->v:Lrp;

    invoke-virtual {v0}, Lrp;->d()Z

    move-result v0

    if-eqz v0, :cond_66

    .line 199
    invoke-virtual {v6, v12}, Ltp;->R0(I)V

    :cond_66
    sub-int/2addr v13, v9

    .line 200
    iget-object v0, v6, Lgp;->x:Laq;

    iget-object v1, v6, Ltp;->H:[C

    invoke-virtual {v0, v1, v9, v13}, Laq;->k([CII)V

    .line 201
    invoke-virtual {v6, v11, v10}, Lgp;->d0(ZI)Lbp;

    move-result-object v0

    goto/16 :goto_24

    .line 202
    :cond_67
    :goto_1f
    iput v13, v6, Lgp;->o:I

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move v1, v12

    move v2, v9

    move v3, v13

    move v5, v10

    .line 203
    invoke-virtual/range {v0 .. v5}, Ltp;->s0(IIIZI)Lbp;

    move-result-object v0

    goto/16 :goto_24

    .line 204
    :cond_68
    :goto_20
    iput v12, v6, Lgp;->o:I

    .line 205
    invoke-virtual {v6, v0, v11}, Ltp;->k0(IZ)Lbp;

    move-result-object v0

    goto/16 :goto_24

    :cond_69
    const-string v1, "expected a value"

    .line 206
    invoke-virtual {v6, v0, v1}, Lhp;->x(ILjava/lang/String;)V

    throw v2

    :cond_6a
    if-nez v7, :cond_6b

    .line 207
    iget-object v0, v6, Lgp;->v:Lrp;

    iget v1, v6, Lgp;->t:I

    iget v2, v6, Lgp;->u:I

    invoke-virtual {v0, v1, v2}, Lrp;->b(II)Lrp;

    move-result-object v0

    iput-object v0, v6, Lgp;->v:Lrp;

    .line 208
    :cond_6b
    sget-object v0, Lbp;->l:Lbp;

    goto/16 :goto_24

    .line 209
    :cond_6c
    iget v0, v6, Lgp;->o:I

    add-int/lit8 v1, v0, 0x3

    .line 210
    iget v2, v6, Lgp;->p:I

    if-ge v1, v2, :cond_6e

    .line 211
    iget-object v1, v6, Ltp;->H:[C

    .line 212
    aget-char v2, v1, v0

    const/16 v5, 0x72

    if-ne v2, v5, :cond_6e

    add-int/2addr v0, v11

    aget-char v2, v1, v0

    if-ne v2, v8, :cond_6e

    add-int/2addr v0, v11

    aget-char v2, v1, v0

    if-ne v2, v3, :cond_6e

    add-int/2addr v0, v11

    .line 213
    aget-char v1, v1, v0

    if-lt v1, v4, :cond_6d

    const/16 v2, 0x5d

    if-eq v1, v2, :cond_6d

    const/16 v2, 0x7d

    if-ne v1, v2, :cond_6e

    .line 214
    :cond_6d
    iput v0, v6, Lgp;->o:I

    goto :goto_21

    :cond_6e
    const-string v0, "true"

    .line 215
    invoke-virtual {v6, v0, v11}, Ltp;->r0(Ljava/lang/String;I)V

    .line 216
    :goto_21
    sget-object v0, Lbp;->u:Lbp;

    goto/16 :goto_24

    .line 217
    :cond_6f
    iget v0, v6, Lgp;->o:I

    add-int/lit8 v1, v0, 0x3

    .line 218
    iget v2, v6, Lgp;->p:I

    if-ge v1, v2, :cond_71

    .line 219
    iget-object v1, v6, Ltp;->H:[C

    .line 220
    aget-char v2, v1, v0

    if-ne v2, v8, :cond_71

    add-int/2addr v0, v11

    aget-char v2, v1, v0

    if-ne v2, v5, :cond_71

    add-int/2addr v0, v11

    aget-char v2, v1, v0

    if-ne v2, v5, :cond_71

    add-int/2addr v0, v11

    .line 221
    aget-char v1, v1, v0

    if-lt v1, v4, :cond_70

    const/16 v2, 0x5d

    if-eq v1, v2, :cond_70

    const/16 v2, 0x7d

    if-ne v1, v2, :cond_71

    .line 222
    :cond_70
    iput v0, v6, Lgp;->o:I

    goto :goto_22

    :cond_71
    const-string v0, "null"

    .line 223
    invoke-virtual {v6, v0, v11}, Ltp;->r0(Ljava/lang/String;I)V

    .line 224
    :goto_22
    sget-object v0, Lbp;->w:Lbp;

    goto :goto_24

    .line 225
    :cond_72
    iget v0, v6, Lgp;->o:I

    add-int/lit8 v1, v0, 0x4

    .line 226
    iget v2, v6, Lgp;->p:I

    if-ge v1, v2, :cond_74

    .line 227
    iget-object v1, v6, Ltp;->H:[C

    .line 228
    aget-char v2, v1, v0

    const/16 v8, 0x61

    if-ne v2, v8, :cond_74

    add-int/2addr v0, v11

    aget-char v2, v1, v0

    if-ne v2, v5, :cond_74

    add-int/2addr v0, v11

    aget-char v2, v1, v0

    const/16 v5, 0x73

    if-ne v2, v5, :cond_74

    add-int/2addr v0, v11

    aget-char v2, v1, v0

    if-ne v2, v3, :cond_74

    add-int/2addr v0, v11

    .line 229
    aget-char v1, v1, v0

    if-lt v1, v4, :cond_73

    const/16 v2, 0x5d

    if-eq v1, v2, :cond_73

    const/16 v2, 0x7d

    if-ne v1, v2, :cond_74

    .line 230
    :cond_73
    iput v0, v6, Lgp;->o:I

    goto :goto_23

    :cond_74
    const-string v0, "false"

    .line 231
    invoke-virtual {v6, v0, v11}, Ltp;->r0(Ljava/lang/String;I)V

    .line 232
    :goto_23
    sget-object v0, Lbp;->v:Lbp;

    goto :goto_24

    :cond_75
    if-nez v7, :cond_76

    .line 233
    iget-object v0, v6, Lgp;->v:Lrp;

    iget v1, v6, Lgp;->t:I

    iget v2, v6, Lgp;->u:I

    invoke-virtual {v0, v1, v2}, Lrp;->a(II)Lrp;

    move-result-object v0

    iput-object v0, v6, Lgp;->v:Lrp;

    .line 234
    :cond_76
    sget-object v0, Lbp;->n:Lbp;

    goto :goto_24

    .line 235
    :cond_77
    iput-boolean v11, v6, Ltp;->L:Z

    .line 236
    sget-object v0, Lbp;->r:Lbp;

    :goto_24
    if-eqz v7, :cond_78

    .line 237
    iput-object v0, v6, Lgp;->w:Lbp;

    .line 238
    iget-object v0, v6, Lhp;->f:Lbp;

    return-object v0

    .line 239
    :cond_78
    iput-object v0, v6, Lhp;->f:Lbp;

    return-object v0

    .line 240
    :cond_79
    :goto_25
    invoke-virtual {v6, v0}, Ltp;->h0(I)V

    .line 241
    iget-object v0, v6, Lhp;->f:Lbp;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final g0(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-char p3, p3

    .line 1
    invoke-static {p3}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 p3, 0x0

    .line 2
    invoke-virtual {p1, p3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltp;->z0(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final h0(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lzo;
        }
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0x7d

    const/16 v2, 0x5d

    if-ne p1, v2, :cond_1

    .line 1
    invoke-virtual {p0}, Ltp;->Q0()V

    .line 2
    iget-object v3, p0, Lgp;->v:Lrp;

    invoke-virtual {v3}, Lrp;->c()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3
    iget-object v3, p0, Lgp;->v:Lrp;

    .line 4
    iget-object v3, v3, Lrp;->c:Lrp;

    .line 5
    iput-object v3, p0, Lgp;->v:Lrp;

    .line 6
    sget-object v3, Lbp;->o:Lbp;

    iput-object v3, p0, Lhp;->f:Lbp;

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0, p1, v1}, Lgp;->Q(IC)V

    throw v0

    :cond_1
    :goto_0
    if-ne p1, v1, :cond_4

    .line 8
    invoke-virtual {p0}, Ltp;->Q0()V

    .line 9
    iget-object v1, p0, Lgp;->v:Lrp;

    .line 10
    iget v3, v1, Lrp;->a:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_3

    .line 11
    iget-object p1, v1, Lrp;->c:Lrp;

    .line 12
    iput-object p1, p0, Lgp;->v:Lrp;

    .line 13
    sget-object p1, Lbp;->m:Lbp;

    iput-object p1, p0, Lhp;->f:Lbp;

    goto :goto_2

    .line 14
    :cond_3
    invoke-virtual {p0, p1, v2}, Lgp;->Q(IC)V

    throw v0

    :cond_4
    :goto_2
    return-void
.end method

.method public j0()C
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lgp;->o:I

    iget v1, p0, Lgp;->p:I

    const-string v2, " in character escape sequence"

    const/4 v3, 0x0

    if-lt v0, v1, :cond_1

    .line 2
    invoke-virtual {p0}, Ltp;->p0()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lbp;->r:Lbp;

    invoke-virtual {p0, v2, v0}, Lhp;->t(Ljava/lang/String;Lbp;)V

    throw v3

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Ltp;->H:[C

    iget v1, p0, Lgp;->o:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lgp;->o:I

    aget-char v0, v0, v1

    const/16 v1, 0x22

    if-eq v0, v1, :cond_e

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_e

    const/16 v1, 0x5c

    if-eq v0, v1, :cond_e

    const/16 v1, 0x62

    if-eq v0, v1, :cond_d

    const/16 v1, 0x66

    if-eq v0, v1, :cond_c

    const/16 v1, 0x6e

    if-eq v0, v1, :cond_b

    const/16 v1, 0x72

    if-eq v0, v1, :cond_a

    const/16 v1, 0x74

    if-eq v0, v1, :cond_9

    const/16 v1, 0x75

    if-eq v0, v1, :cond_4

    .line 5
    sget-object v1, Lap$a;->m:Lap$a;

    invoke-virtual {p0, v1}, Lap;->f(Lap$a;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/16 v1, 0x27

    if-ne v0, v1, :cond_3

    .line 6
    sget-object v1, Lap$a;->k:Lap$a;

    invoke-virtual {p0, v1}, Lap;->f(Lap$a;)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_1
    return v0

    :cond_3
    const-string v1, "Unrecognized character escape "

    .line 7
    invoke-static {v1}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lhp;->k(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8
    new-instance v1, Lzo;

    invoke-direct {v1, p0, v0}, Lzo;-><init>(Lap;Ljava/lang/String;)V

    .line 9
    throw v1

    :cond_4
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    const/4 v4, 0x4

    if-ge v0, v4, :cond_8

    .line 10
    iget v4, p0, Lgp;->o:I

    iget v5, p0, Lgp;->p:I

    if-lt v4, v5, :cond_6

    .line 11
    invoke-virtual {p0}, Ltp;->p0()Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_3

    .line 12
    :cond_5
    sget-object v0, Lbp;->r:Lbp;

    invoke-virtual {p0, v2, v0}, Lhp;->t(Ljava/lang/String;Lbp;)V

    throw v3

    .line 13
    :cond_6
    :goto_3
    iget-object v4, p0, Ltp;->H:[C

    iget v5, p0, Lgp;->o:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lgp;->o:I

    aget-char v4, v4, v5

    .line 14
    sget-object v5, Lkp;->g:[I

    and-int/lit16 v6, v4, 0xff

    aget v5, v5, v6

    if-ltz v5, :cond_7

    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v1, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    const-string v0, "expected a hex-digit for character escape sequence"

    .line 15
    invoke-virtual {p0, v4, v0}, Lhp;->x(ILjava/lang/String;)V

    throw v3

    :cond_8
    int-to-char v0, v1

    return v0

    :cond_9
    const/16 v0, 0x9

    return v0

    :cond_a
    const/16 v0, 0xd

    return v0

    :cond_b
    const/16 v0, 0xa

    return v0

    :cond_c
    const/16 v0, 0xc

    return v0

    :cond_d
    const/16 v0, 0x8

    :cond_e
    return v0
.end method

.method public k0(IZ)Lbp;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0x49

    if-ne p1, v1, :cond_9

    .line 1
    iget p1, p0, Lgp;->o:I

    iget v1, p0, Lgp;->p:I

    if-lt p1, v1, :cond_1

    .line 2
    invoke-virtual {p0}, Ltp;->p0()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget-object p1, Lbp;->s:Lbp;

    invoke-virtual {p0, p1}, Lhp;->w(Lbp;)V

    throw v0

    .line 4
    :cond_1
    :goto_0
    iget-object p1, p0, Ltp;->H:[C

    iget v1, p0, Lgp;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgp;->o:I

    aget-char p1, p1, v1

    const/16 v1, 0x4e

    const-wide/high16 v2, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    const-wide/high16 v4, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    const-string v6, "\': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"

    const-string v7, "Non-standard token \'"

    const/4 v8, 0x3

    if-ne p1, v1, :cond_5

    if-eqz p2, :cond_2

    const-string p1, "-INF"

    goto :goto_1

    :cond_2
    const-string p1, "+INF"

    .line 5
    :goto_1
    invoke-virtual {p0, p1, v8}, Ltp;->r0(Ljava/lang/String;I)V

    .line 6
    iget v0, p0, Lap;->e:I

    sget v1, Ltp;->P:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_4

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    move-wide v2, v4

    .line 7
    :goto_2
    invoke-virtual {p0, p1, v2, v3}, Lgp;->a0(Ljava/lang/String;D)Lbp;

    move-result-object p1

    return-object p1

    .line 8
    :cond_4
    invoke-static {v7, p1, v6}, Ljo;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 9
    new-instance p2, Lzo;

    invoke-direct {p2, p0, p1}, Lzo;-><init>(Lap;Ljava/lang/String;)V

    .line 10
    throw p2

    :cond_5
    const/16 v1, 0x6e

    if-ne p1, v1, :cond_9

    if-eqz p2, :cond_6

    const-string p1, "-Infinity"

    goto :goto_3

    :cond_6
    const-string p1, "+Infinity"

    .line 11
    :goto_3
    invoke-virtual {p0, p1, v8}, Ltp;->r0(Ljava/lang/String;I)V

    .line 12
    iget v0, p0, Lap;->e:I

    sget v1, Ltp;->P:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_8

    if-eqz p2, :cond_7

    goto :goto_4

    :cond_7
    move-wide v2, v4

    .line 13
    :goto_4
    invoke-virtual {p0, p1, v2, v3}, Lgp;->a0(Ljava/lang/String;D)Lbp;

    move-result-object p1

    return-object p1

    .line 14
    :cond_8
    invoke-static {v7, p1, v6}, Ljo;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 15
    new-instance p2, Lzo;

    invoke-direct {p2, p0, p1}, Lzo;-><init>(Lap;Ljava/lang/String;)V

    .line 16
    throw p2

    :cond_9
    const-string p2, "expected digit (0-9) to follow minus sign, for valid numeric value"

    .line 17
    invoke-virtual {p0, p1, p2}, Lhp;->E(ILjava/lang/String;)V

    throw v0
.end method

.method public m0(I)Lbp;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x27

    if-eq p1, v2, :cond_9

    const/16 v2, 0x49

    const/4 v3, 0x1

    if-eq p1, v2, :cond_7

    const/16 v2, 0x4e

    if-eq p1, v2, :cond_5

    const/16 v2, 0x5d

    if-eq p1, v2, :cond_3

    const/16 v2, 0x2b

    if-eq p1, v2, :cond_0

    const/16 v0, 0x2c

    if-eq p1, v0, :cond_4

    goto/16 :goto_4

    .line 1
    :cond_0
    iget p1, p0, Lgp;->o:I

    iget v2, p0, Lgp;->p:I

    if-lt p1, v2, :cond_2

    .line 2
    invoke-virtual {p0}, Ltp;->p0()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    sget-object p1, Lbp;->s:Lbp;

    invoke-virtual {p0, p1}, Lhp;->w(Lbp;)V

    throw v1

    .line 4
    :cond_2
    :goto_0
    iget-object p1, p0, Ltp;->H:[C

    iget v1, p0, Lgp;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgp;->o:I

    aget-char p1, p1, v1

    invoke-virtual {p0, p1, v0}, Ltp;->k0(IZ)Lbp;

    move-result-object p1

    return-object p1

    .line 5
    :cond_3
    iget-object v0, p0, Lgp;->v:Lrp;

    invoke-virtual {v0}, Lrp;->c()Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_4

    .line 6
    :cond_4
    iget-object v0, p0, Lgp;->v:Lrp;

    invoke-virtual {v0}, Lrp;->d()Z

    move-result v0

    if-nez v0, :cond_10

    .line 7
    iget v0, p0, Lap;->e:I

    sget v2, Ltp;->Q:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_10

    .line 8
    iget p1, p0, Lgp;->o:I

    sub-int/2addr p1, v3

    iput p1, p0, Lgp;->o:I

    .line 9
    sget-object p1, Lbp;->w:Lbp;

    return-object p1

    :cond_5
    const-string p1, "NaN"

    .line 10
    invoke-virtual {p0, p1, v3}, Ltp;->r0(Ljava/lang/String;I)V

    .line 11
    iget v0, p0, Lap;->e:I

    sget v1, Ltp;->P:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_6

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 12
    invoke-virtual {p0, p1, v0, v1}, Lgp;->a0(Ljava/lang/String;D)Lbp;

    move-result-object p1

    return-object p1

    .line 13
    :cond_6
    new-instance p1, Lzo;

    const-string v0, "Non-standard token \'NaN\': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"

    invoke-direct {p1, p0, v0}, Lzo;-><init>(Lap;Ljava/lang/String;)V

    .line 14
    throw p1

    :cond_7
    const-string p1, "Infinity"

    .line 15
    invoke-virtual {p0, p1, v3}, Ltp;->r0(Ljava/lang/String;I)V

    .line 16
    iget v0, p0, Lap;->e:I

    sget v1, Ltp;->P:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_8

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 17
    invoke-virtual {p0, p1, v0, v1}, Lgp;->a0(Ljava/lang/String;D)Lbp;

    move-result-object p1

    return-object p1

    .line 18
    :cond_8
    new-instance p1, Lzo;

    const-string v0, "Non-standard token \'Infinity\': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"

    invoke-direct {p1, p0, v0}, Lzo;-><init>(Lap;Ljava/lang/String;)V

    .line 19
    throw p1

    .line 20
    :cond_9
    iget v0, p0, Lap;->e:I

    sget v3, Ltp;->R:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_10

    .line 21
    iget-object p1, p0, Lgp;->x:Laq;

    invoke-virtual {p1}, Laq;->e()[C

    move-result-object p1

    .line 22
    iget-object v0, p0, Lgp;->x:Laq;

    .line 23
    iget v0, v0, Laq;->i:I

    .line 24
    :goto_1
    iget v3, p0, Lgp;->o:I

    iget v4, p0, Lgp;->p:I

    if-lt v3, v4, :cond_b

    .line 25
    invoke-virtual {p0}, Ltp;->p0()Z

    move-result v3

    if-eqz v3, :cond_a

    goto :goto_2

    .line 26
    :cond_a
    sget-object p1, Lbp;->r:Lbp;

    const-string v0, ": was expecting closing quote for a string value"

    invoke-virtual {p0, v0, p1}, Lhp;->t(Ljava/lang/String;Lbp;)V

    throw v1

    .line 27
    :cond_b
    :goto_2
    iget-object v3, p0, Ltp;->H:[C

    iget v4, p0, Lgp;->o:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lgp;->o:I

    aget-char v3, v3, v4

    const/16 v4, 0x5c

    if-gt v3, v4, :cond_e

    if-ne v3, v4, :cond_c

    .line 28
    invoke-virtual {p0}, Ltp;->j0()C

    move-result v3

    goto :goto_3

    :cond_c
    if-gt v3, v2, :cond_e

    if-ne v3, v2, :cond_d

    .line 29
    iget-object p1, p0, Lgp;->x:Laq;

    .line 30
    iput v0, p1, Laq;->i:I

    .line 31
    sget-object p1, Lbp;->r:Lbp;

    return-object p1

    :cond_d
    const/16 v4, 0x20

    if-ge v3, v4, :cond_e

    const-string v4, "string value"

    .line 32
    invoke-virtual {p0, v3, v4}, Lgp;->Z(ILjava/lang/String;)V

    .line 33
    :cond_e
    :goto_3
    array-length v4, p1

    if-lt v0, v4, :cond_f

    .line 34
    iget-object p1, p0, Lgp;->x:Laq;

    invoke-virtual {p1}, Laq;->g()[C

    move-result-object p1

    const/4 v0, 0x0

    :cond_f
    add-int/lit8 v4, v0, 0x1

    .line 35
    aput-char v3, p1, v0

    move v0, v4

    goto :goto_1

    .line 36
    :cond_10
    :goto_4
    invoke-static {p1}, Ljava/lang/Character;->isJavaIdentifierStart(I)Z

    move-result v0

    const-string v2, "(JSON String, Number (or \'NaN\'/\'INF\'/\'+INF\'), Array, Object or token \'null\', \'true\' or \'false\')"

    const-string v3, "(JSON String, Number, Array, Object or token \'null\', \'true\' or \'false\')"

    if-eqz v0, :cond_12

    const-string v0, ""

    .line 37
    invoke-static {v0}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    int-to-char p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 38
    sget-object v0, Lap$a;->p:Lap$a;

    invoke-virtual {p0, v0}, Lap;->f(Lap$a;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_5

    :cond_11
    move-object v2, v3

    .line 39
    :goto_5
    invoke-virtual {p0, p1, v2}, Ltp;->C0(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :cond_12
    const-string v0, "expected a valid value "

    .line 40
    invoke-static {v0}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 41
    sget-object v4, Lap$a;->p:Lap$a;

    invoke-virtual {p0, v4}, Lap;->f(Lap$a;)Z

    move-result v4

    if-eqz v4, :cond_13

    goto :goto_6

    :cond_13
    move-object v2, v3

    .line 42
    :goto_6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lhp;->x(ILjava/lang/String;)V

    throw v1
.end method

.method public p0()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ltp;->G:Ljava/io/Reader;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    iget-object v2, p0, Ltp;->H:[C

    array-length v3, v2

    invoke-virtual {v0, v2, v1, v3}, Ljava/io/Reader;->read([CII)I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    iget v2, p0, Lgp;->p:I

    .line 4
    iget-wide v3, p0, Lgp;->q:J

    int-to-long v5, v2

    add-long/2addr v3, v5

    iput-wide v3, p0, Lgp;->q:J

    .line 5
    iget v3, p0, Lgp;->s:I

    sub-int/2addr v3, v2

    iput v3, p0, Lgp;->s:I

    .line 6
    iget-wide v2, p0, Ltp;->M:J

    sub-long/2addr v2, v5

    iput-wide v2, p0, Ltp;->M:J

    .line 7
    iput v1, p0, Lgp;->o:I

    .line 8
    iput v0, p0, Lgp;->p:I

    const/4 v0, 0x1

    return v0

    .line 9
    :cond_0
    invoke-virtual {p0}, Ltp;->F()V

    if-eqz v0, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Reader returned 0 characters when trying to read "

    invoke-static {v1}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lgp;->p:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final r0(Ljava/lang/String;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 2
    iget v1, p0, Lgp;->o:I

    add-int/2addr v1, v0

    iget v2, p0, Lgp;->p:I

    const/4 v3, 0x0

    const/16 v4, 0x7d

    const/16 v5, 0x5d

    const/16 v6, 0x30

    const/4 v7, 0x0

    if-lt v1, v2, :cond_5

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 4
    :cond_0
    iget v1, p0, Lgp;->o:I

    iget v2, p0, Lgp;->p:I

    if-lt v1, v2, :cond_1

    invoke-virtual {p0}, Ltp;->p0()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_1
    iget-object v1, p0, Ltp;->H:[C

    iget v2, p0, Lgp;->o:I

    aget-char v1, v1, v2

    .line 5
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v1, v2, :cond_4

    .line 6
    iget v1, p0, Lgp;->o:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lgp;->o:I

    add-int/lit8 p2, p2, 0x1

    if-lt p2, v0, :cond_0

    .line 7
    iget v0, p0, Lgp;->p:I

    if-lt v1, v0, :cond_2

    invoke-virtual {p0}, Ltp;->p0()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    iget-object v0, p0, Ltp;->H:[C

    iget v1, p0, Lgp;->o:I

    aget-char v0, v0, v1

    if-lt v0, v6, :cond_3

    if-eq v0, v5, :cond_3

    if-eq v0, v4, :cond_3

    .line 9
    invoke-virtual {p0, p1, p2, v0}, Ltp;->g0(Ljava/lang/String;II)V

    :cond_3
    :goto_0
    return-void

    .line 10
    :cond_4
    invoke-virtual {p1, v7, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltp;->z0(Ljava/lang/String;)V

    throw v3

    .line 11
    :cond_5
    iget-object v1, p0, Ltp;->H:[C

    iget v2, p0, Lgp;->o:I

    aget-char v1, v1, v2

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v1, v2, :cond_7

    .line 12
    iget v1, p0, Lgp;->o:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lgp;->o:I

    add-int/lit8 p2, p2, 0x1

    if-lt p2, v0, :cond_5

    .line 13
    iget-object v0, p0, Ltp;->H:[C

    aget-char v0, v0, v1

    if-lt v0, v6, :cond_6

    if-eq v0, v5, :cond_6

    if-eq v0, v4, :cond_6

    .line 14
    invoke-virtual {p0, p1, p2, v0}, Ltp;->g0(Ljava/lang/String;II)V

    :cond_6
    return-void

    .line 15
    :cond_7
    invoke-virtual {p1, v7, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltp;->z0(Ljava/lang/String;)V

    throw v3
.end method

.method public final s0(IIIZI)Lbp;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lgp;->p:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x39

    const/16 v4, 0x30

    const/16 v5, 0x2e

    if-ne p1, v5, :cond_4

    const/4 p1, 0x0

    :goto_0
    if-lt p3, v0, :cond_0

    .line 2
    invoke-virtual {p0, p4, p2}, Ltp;->v0(ZI)Lbp;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object v5, p0, Ltp;->H:[C

    add-int/lit8 v6, p3, 0x1

    aget-char p3, v5, p3

    if-lt p3, v4, :cond_2

    if-le p3, v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    move p3, v6

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    move p1, p3

    move p3, v6

    goto :goto_2

    :cond_3
    const-string p1, "Decimal point not followed by a digit"

    .line 4
    invoke-virtual {p0, p3, p1}, Lhp;->E(ILjava/lang/String;)V

    throw v1

    :cond_4
    :goto_2
    const/16 v5, 0x65

    if-eq p1, v5, :cond_5

    const/16 v5, 0x45

    if-ne p1, v5, :cond_c

    :cond_5
    if-lt p3, v0, :cond_6

    .line 5
    iput p2, p0, Lgp;->o:I

    .line 6
    invoke-virtual {p0, p4, p2}, Ltp;->v0(ZI)Lbp;

    move-result-object p1

    return-object p1

    .line 7
    :cond_6
    iget-object p1, p0, Ltp;->H:[C

    add-int/lit8 v5, p3, 0x1

    aget-char p3, p1, p3

    const/16 v6, 0x2d

    if-eq p3, v6, :cond_7

    const/16 v6, 0x2b

    if-ne p3, v6, :cond_9

    :cond_7
    if-lt v5, v0, :cond_8

    .line 8
    iput p2, p0, Lgp;->o:I

    .line 9
    invoke-virtual {p0, p4, p2}, Ltp;->v0(ZI)Lbp;

    move-result-object p1

    return-object p1

    :cond_8
    add-int/lit8 p3, v5, 0x1

    .line 10
    aget-char p1, p1, v5

    move v5, p3

    move p3, p1

    :cond_9
    move p1, p3

    move p3, v5

    const/4 v5, 0x0

    :goto_3
    if-gt p1, v3, :cond_b

    if-lt p1, v4, :cond_b

    add-int/lit8 v5, v5, 0x1

    if-lt p3, v0, :cond_a

    .line 11
    iput p2, p0, Lgp;->o:I

    .line 12
    invoke-virtual {p0, p4, p2}, Ltp;->v0(ZI)Lbp;

    move-result-object p1

    return-object p1

    .line 13
    :cond_a
    iget-object p1, p0, Ltp;->H:[C

    add-int/lit8 v6, p3, 0x1

    aget-char p1, p1, p3

    move p3, v6

    goto :goto_3

    :cond_b
    if-eqz v5, :cond_e

    :cond_c
    add-int/lit8 p3, p3, -0x1

    .line 14
    iput p3, p0, Lgp;->o:I

    .line 15
    iget-object v0, p0, Lgp;->v:Lrp;

    invoke-virtual {v0}, Lrp;->d()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 16
    invoke-virtual {p0, p1}, Ltp;->R0(I)V

    :cond_d
    sub-int/2addr p3, p2

    .line 17
    iget-object p1, p0, Lgp;->x:Laq;

    iget-object v0, p0, Ltp;->H:[C

    invoke-virtual {p1, v0, p2, p3}, Laq;->k([CII)V

    .line 18
    iput-boolean p4, p0, Lgp;->E:Z

    .line 19
    iput p5, p0, Lgp;->F:I

    .line 20
    iput v2, p0, Lgp;->y:I

    .line 21
    sget-object p1, Lbp;->t:Lbp;

    return-object p1

    :cond_e
    const-string p2, "Exponent indicator not followed by a digit"

    .line 22
    invoke-virtual {p0, p1, p2}, Lhp;->E(ILjava/lang/String;)V

    throw v1
.end method

.method public final t0(III)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lgp;->x:Laq;

    iget-object v1, p0, Ltp;->H:[C

    iget v2, p0, Lgp;->o:I

    sub-int/2addr v2, p1

    invoke-virtual {v0, v1, p1, v2}, Laq;->k([CII)V

    .line 2
    iget-object p1, p0, Lgp;->x:Laq;

    invoke-virtual {p1}, Laq;->h()[C

    move-result-object p1

    .line 3
    iget-object v0, p0, Lgp;->x:Laq;

    .line 4
    iget v0, v0, Laq;->i:I

    .line 5
    :goto_0
    iget v1, p0, Lgp;->o:I

    iget v2, p0, Lgp;->p:I

    if-lt v1, v2, :cond_1

    .line 6
    invoke-virtual {p0}, Ltp;->p0()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    sget-object p1, Lbp;->p:Lbp;

    const-string p2, " in field name"

    invoke-virtual {p0, p2, p1}, Lhp;->t(Ljava/lang/String;Lbp;)V

    const/4 p1, 0x0

    throw p1

    .line 8
    :cond_1
    :goto_1
    iget-object v1, p0, Ltp;->H:[C

    iget v2, p0, Lgp;->o:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lgp;->o:I

    aget-char v1, v1, v2

    const/16 v2, 0x5c

    if-gt v1, v2, :cond_4

    if-ne v1, v2, :cond_2

    .line 9
    invoke-virtual {p0}, Ltp;->j0()C

    move-result v1

    goto :goto_2

    :cond_2
    if-gt v1, p3, :cond_4

    if-ne v1, p3, :cond_3

    .line 10
    iget-object p1, p0, Lgp;->x:Laq;

    .line 11
    iput v0, p1, Laq;->i:I

    .line 12
    invoke-virtual {p1}, Laq;->i()[C

    move-result-object p3

    .line 13
    invoke-virtual {p1}, Laq;->j()I

    move-result v0

    .line 14
    invoke-virtual {p1}, Laq;->l()I

    move-result p1

    .line 15
    iget-object v1, p0, Ltp;->J:Lvp;

    invoke-virtual {v1, p3, v0, p1, p2}, Lvp;->c([CIII)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    const/16 v2, 0x20

    if-ge v1, v2, :cond_4

    const-string v2, "name"

    .line 16
    invoke-virtual {p0, v1, v2}, Lgp;->Z(ILjava/lang/String;)V

    :cond_4
    :goto_2
    mul-int/lit8 p2, p2, 0x21

    add-int/2addr p2, v1

    add-int/lit8 v2, v0, 0x1

    .line 17
    aput-char v1, p1, v0

    .line 18
    array-length v0, p1

    if-lt v2, v0, :cond_5

    .line 19
    iget-object p1, p0, Lgp;->x:Laq;

    invoke-virtual {p1}, Laq;->g()[C

    move-result-object p1

    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_0
.end method

.method public final v0(ZI)Lbp;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    if-eqz v1, :cond_0

    add-int/lit8 v2, p2, 0x1

    goto :goto_0

    :cond_0
    move/from16 v2, p2

    .line 1
    :goto_0
    iput v2, v0, Lgp;->o:I

    .line 2
    iget-object v2, v0, Lgp;->x:Laq;

    invoke-virtual {v2}, Laq;->e()[C

    move-result-object v2

    const/16 v3, 0x2d

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_1

    .line 3
    aput-char v3, v2, v4

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 4
    :goto_1
    iget v6, v0, Lgp;->o:I

    iget v7, v0, Lgp;->p:I

    if-ge v6, v7, :cond_2

    iget-object v7, v0, Ltp;->H:[C

    add-int/lit8 v8, v6, 0x1

    iput v8, v0, Lgp;->o:I

    aget-char v6, v7, v6

    goto :goto_2

    :cond_2
    sget-object v6, Lbp;->s:Lbp;

    const-string v7, "No digit following minus sign"

    .line 5
    invoke-virtual {v0, v7, v6}, Ltp;->S0(Ljava/lang/String;Lbp;)C

    move-result v6

    :goto_2
    const/16 v7, 0x39

    const/16 v8, 0x30

    if-ne v6, v8, :cond_b

    .line 6
    iget v6, v0, Lgp;->o:I

    iget v9, v0, Lgp;->p:I

    if-ge v6, v9, :cond_3

    .line 7
    iget-object v10, v0, Ltp;->H:[C

    aget-char v10, v10, v6

    if-lt v10, v8, :cond_a

    if-le v10, v7, :cond_3

    goto :goto_3

    :cond_3
    if-lt v6, v9, :cond_4

    .line 8
    invoke-virtual/range {p0 .. p0}, Ltp;->p0()Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_3

    .line 9
    :cond_4
    iget-object v6, v0, Ltp;->H:[C

    iget v9, v0, Lgp;->o:I

    aget-char v6, v6, v9

    if-lt v6, v8, :cond_a

    if-le v6, v7, :cond_5

    goto :goto_3

    .line 10
    :cond_5
    iget v10, v0, Lap;->e:I

    sget v11, Ltp;->O:I

    and-int/2addr v10, v11

    if-eqz v10, :cond_9

    add-int/2addr v9, v5

    .line 11
    iput v9, v0, Lgp;->o:I

    if-ne v6, v8, :cond_b

    .line 12
    :cond_6
    iget v9, v0, Lgp;->o:I

    iget v10, v0, Lgp;->p:I

    if-lt v9, v10, :cond_7

    invoke-virtual/range {p0 .. p0}, Ltp;->p0()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 13
    :cond_7
    iget-object v6, v0, Ltp;->H:[C

    iget v9, v0, Lgp;->o:I

    aget-char v6, v6, v9

    if-lt v6, v8, :cond_a

    if-le v6, v7, :cond_8

    goto :goto_3

    :cond_8
    add-int/lit8 v9, v9, 0x1

    .line 14
    iput v9, v0, Lgp;->o:I

    if-eq v6, v8, :cond_6

    goto :goto_4

    :cond_9
    const-string v1, "Invalid numeric value: "

    const-string v2, "Leading zeroes not allowed"

    .line 15
    invoke-static {v1, v2}, Ljo;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 16
    new-instance v2, Lzo;

    invoke-direct {v2, v0, v1}, Lzo;-><init>(Lap;Ljava/lang/String;)V

    .line 17
    throw v2

    :cond_a
    :goto_3
    const/16 v6, 0x30

    :cond_b
    :goto_4
    const/4 v9, 0x0

    :goto_5
    if-lt v6, v8, :cond_e

    if-gt v6, v7, :cond_e

    add-int/lit8 v9, v9, 0x1

    .line 18
    array-length v10, v2

    if-lt v4, v10, :cond_c

    .line 19
    iget-object v2, v0, Lgp;->x:Laq;

    invoke-virtual {v2}, Laq;->g()[C

    move-result-object v2

    const/4 v4, 0x0

    :cond_c
    add-int/lit8 v10, v4, 0x1

    .line 20
    aput-char v6, v2, v4

    .line 21
    iget v4, v0, Lgp;->o:I

    iget v6, v0, Lgp;->p:I

    if-lt v4, v6, :cond_d

    invoke-virtual/range {p0 .. p0}, Ltp;->p0()Z

    move-result v4

    if-nez v4, :cond_d

    const/4 v6, 0x0

    const/4 v4, 0x1

    move v4, v10

    const/4 v10, 0x1

    goto :goto_6

    .line 22
    :cond_d
    iget-object v4, v0, Ltp;->H:[C

    iget v6, v0, Lgp;->o:I

    add-int/lit8 v11, v6, 0x1

    iput v11, v0, Lgp;->o:I

    aget-char v6, v4, v6

    move v4, v10

    goto :goto_5

    :cond_e
    const/4 v10, 0x0

    :goto_6
    if-nez v9, :cond_f

    .line 23
    invoke-virtual {v0, v6, v1}, Ltp;->k0(IZ)Lbp;

    move-result-object v1

    return-object v1

    :cond_f
    const/16 v11, 0x2e

    const/4 v12, 0x0

    if-ne v6, v11, :cond_16

    .line 24
    array-length v11, v2

    if-lt v4, v11, :cond_10

    .line 25
    iget-object v2, v0, Lgp;->x:Laq;

    invoke-virtual {v2}, Laq;->g()[C

    move-result-object v2

    const/4 v4, 0x0

    :cond_10
    add-int/lit8 v11, v4, 0x1

    .line 26
    aput-char v6, v2, v4

    const/4 v4, 0x0

    .line 27
    :goto_7
    iget v13, v0, Lgp;->o:I

    iget v14, v0, Lgp;->p:I

    if-lt v13, v14, :cond_11

    invoke-virtual/range {p0 .. p0}, Ltp;->p0()Z

    move-result v13

    if-nez v13, :cond_11

    const/4 v10, 0x1

    goto :goto_8

    .line 28
    :cond_11
    iget-object v6, v0, Ltp;->H:[C

    iget v13, v0, Lgp;->o:I

    add-int/lit8 v14, v13, 0x1

    iput v14, v0, Lgp;->o:I

    aget-char v6, v6, v13

    if-lt v6, v8, :cond_14

    if-le v6, v7, :cond_12

    goto :goto_8

    :cond_12
    add-int/lit8 v4, v4, 0x1

    .line 29
    array-length v13, v2

    if-lt v11, v13, :cond_13

    .line 30
    iget-object v2, v0, Lgp;->x:Laq;

    invoke-virtual {v2}, Laq;->g()[C

    move-result-object v2

    const/4 v11, 0x0

    :cond_13
    add-int/lit8 v13, v11, 0x1

    .line 31
    aput-char v6, v2, v11

    move v11, v13

    goto :goto_7

    :cond_14
    :goto_8
    if-eqz v4, :cond_15

    move/from16 v16, v11

    move v11, v4

    move/from16 v4, v16

    goto :goto_9

    :cond_15
    const-string v1, "Decimal point not followed by a digit"

    .line 32
    invoke-virtual {v0, v6, v1}, Lhp;->E(ILjava/lang/String;)V

    throw v12

    :cond_16
    const/4 v11, 0x0

    :goto_9
    const/16 v13, 0x65

    if-eq v6, v13, :cond_18

    const/16 v13, 0x45

    if-ne v6, v13, :cond_17

    goto :goto_a

    :cond_17
    const/4 v2, 0x0

    goto/16 :goto_f

    .line 33
    :cond_18
    :goto_a
    array-length v13, v2

    if-lt v4, v13, :cond_19

    .line 34
    iget-object v2, v0, Lgp;->x:Laq;

    invoke-virtual {v2}, Laq;->g()[C

    move-result-object v2

    const/4 v4, 0x0

    :cond_19
    add-int/lit8 v13, v4, 0x1

    .line 35
    aput-char v6, v2, v4

    .line 36
    iget v4, v0, Lgp;->o:I

    iget v6, v0, Lgp;->p:I

    const-string v14, "expected a digit for number exponent"

    if-ge v4, v6, :cond_1a

    iget-object v6, v0, Ltp;->H:[C

    add-int/lit8 v15, v4, 0x1

    iput v15, v0, Lgp;->o:I

    aget-char v4, v6, v4

    goto :goto_b

    .line 37
    :cond_1a
    invoke-virtual {v0, v14, v12}, Ltp;->S0(Ljava/lang/String;Lbp;)C

    move-result v4

    :goto_b
    if-eq v4, v3, :cond_1b

    const/16 v3, 0x2b

    if-ne v4, v3, :cond_1e

    .line 38
    :cond_1b
    array-length v3, v2

    if-lt v13, v3, :cond_1c

    .line 39
    iget-object v2, v0, Lgp;->x:Laq;

    invoke-virtual {v2}, Laq;->g()[C

    move-result-object v2

    const/4 v13, 0x0

    :cond_1c
    add-int/lit8 v3, v13, 0x1

    .line 40
    aput-char v4, v2, v13

    .line 41
    iget v4, v0, Lgp;->o:I

    iget v6, v0, Lgp;->p:I

    if-ge v4, v6, :cond_1d

    iget-object v6, v0, Ltp;->H:[C

    add-int/lit8 v13, v4, 0x1

    iput v13, v0, Lgp;->o:I

    aget-char v4, v6, v4

    goto :goto_c

    .line 42
    :cond_1d
    invoke-virtual {v0, v14, v12}, Ltp;->S0(Ljava/lang/String;Lbp;)C

    move-result v4

    :goto_c
    move v13, v3

    :cond_1e
    const/4 v3, 0x0

    move v6, v4

    :goto_d
    if-gt v6, v7, :cond_21

    if-lt v6, v8, :cond_21

    add-int/lit8 v3, v3, 0x1

    .line 43
    array-length v4, v2

    if-lt v13, v4, :cond_1f

    .line 44
    iget-object v2, v0, Lgp;->x:Laq;

    invoke-virtual {v2}, Laq;->g()[C

    move-result-object v2

    const/4 v13, 0x0

    :cond_1f
    add-int/lit8 v4, v13, 0x1

    .line 45
    aput-char v6, v2, v13

    .line 46
    iget v13, v0, Lgp;->o:I

    iget v14, v0, Lgp;->p:I

    if-lt v13, v14, :cond_20

    invoke-virtual/range {p0 .. p0}, Ltp;->p0()Z

    move-result v13

    if-nez v13, :cond_20

    const/4 v2, 0x1

    move v2, v3

    const/4 v10, 0x1

    goto :goto_e

    .line 47
    :cond_20
    iget-object v6, v0, Ltp;->H:[C

    iget v13, v0, Lgp;->o:I

    add-int/lit8 v14, v13, 0x1

    iput v14, v0, Lgp;->o:I

    aget-char v6, v6, v13

    move v13, v4

    goto :goto_d

    :cond_21
    move v2, v3

    move v4, v13

    :goto_e
    if-eqz v2, :cond_24

    :goto_f
    if-nez v10, :cond_22

    .line 48
    iget v3, v0, Lgp;->o:I

    sub-int/2addr v3, v5

    iput v3, v0, Lgp;->o:I

    .line 49
    iget-object v3, v0, Lgp;->v:Lrp;

    invoke-virtual {v3}, Lrp;->d()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 50
    invoke-virtual {v0, v6}, Ltp;->R0(I)V

    .line 51
    :cond_22
    iget-object v3, v0, Lgp;->x:Laq;

    .line 52
    iput v4, v3, Laq;->i:I

    if-ge v11, v5, :cond_23

    if-ge v2, v5, :cond_23

    .line 53
    iput-boolean v1, v0, Lgp;->E:Z

    .line 54
    iput v9, v0, Lgp;->F:I

    const/4 v1, 0x0

    .line 55
    iput v1, v0, Lgp;->y:I

    .line 56
    sget-object v1, Lbp;->s:Lbp;

    goto :goto_10

    :cond_23
    const/4 v2, 0x0

    .line 57
    iput-boolean v1, v0, Lgp;->E:Z

    .line 58
    iput v9, v0, Lgp;->F:I

    .line 59
    iput v2, v0, Lgp;->y:I

    .line 60
    sget-object v1, Lbp;->t:Lbp;

    :goto_10
    return-object v1

    :cond_24
    const-string v1, "Exponent indicator not followed by a digit"

    .line 61
    invoke-virtual {v0, v6, v1}, Lhp;->E(ILjava/lang/String;)V

    throw v12
.end method

.method public z0(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lap$a;->p:Lap$a;

    invoke-virtual {p0, v0}, Lap;->f(Lap$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "(JSON String, Number (or \'NaN\'/\'INF\'/\'+INF\'), Array, Object or token \'null\', \'true\' or \'false\')"

    goto :goto_0

    :cond_0
    const-string v0, "(JSON String, Number, Array, Object or token \'null\', \'true\' or \'false\')"

    .line 2
    :goto_0
    invoke-virtual {p0, p1, v0}, Ltp;->C0(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
