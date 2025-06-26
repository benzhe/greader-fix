.class public Ler6;
.super Lt27;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lt27<",
        "Lnr6;",
        ">;"
    }
.end annotation


# instance fields
.field public l:Lap6;

.field public m:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public n:I

.field public o:J

.field public p:Z

.field public q:Lt07;

.field public r:Lan6;

.field public s:Lbn6;

.field public t:Lbn6;

.field public u:Lbn6;

.field public v:Lbn6;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 2

    const/4 p2, 0x0

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lt27;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 2
    iput-object p2, p0, Ler6;->l:Lap6;

    .line 3
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Ler6;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    iput p2, p0, Ler6;->n:I

    const-wide/16 v0, 0x0

    .line 5
    iput-wide v0, p0, Ler6;->o:J

    .line 6
    iput-boolean p2, p0, Ler6;->p:Z

    .line 7
    new-instance p1, Lan6;

    invoke-direct {p1}, Lan6;-><init>()V

    iput-object p1, p0, Ler6;->r:Lan6;

    .line 8
    invoke-virtual {p0}, Ler6;->b()V

    return-void
.end method


# virtual methods
.method public a(Lap6;I)I
    .locals 1

    if-eqz p1, :cond_8

    const/4 v0, 0x1

    if-eq p2, v0, :cond_6

    const/4 v0, 0x2

    if-eq p2, v0, :cond_4

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    goto :goto_4

    .line 1
    :cond_0
    iget-boolean p1, p1, Lap6;->s:Z

    if-eqz p1, :cond_1

    const p1, 0x7f0801a2

    goto :goto_0

    :cond_1
    const p1, 0x7f0800e5

    :goto_0
    return p1

    .line 2
    :cond_2
    iget-boolean p1, p1, Lap6;->r:Z

    if-eqz p1, :cond_3

    const p1, 0x7f080183

    goto :goto_1

    :cond_3
    const p1, 0x7f080180

    :goto_1
    return p1

    .line 3
    :cond_4
    iget-boolean p1, p1, Lap6;->u:Z

    if-eqz p1, :cond_5

    const p1, 0x7f0800e3

    goto :goto_2

    :cond_5
    const p1, 0x7f0800e4

    :goto_2
    return p1

    .line 4
    :cond_6
    iget-boolean p1, p1, Lap6;->v:Z

    if-eqz p1, :cond_7

    const p1, 0x7f08016a

    goto :goto_3

    :cond_7
    const p1, 0x7f080169

    :goto_3
    return p1

    :cond_8
    :goto_4
    const/4 p1, 0x0

    return p1
.end method

.method public b()V
    .locals 4

    .line 1
    iget-object v0, p0, Lt27;->g:Landroid/content/Context;

    .line 2
    invoke-static {v0}, Liw6;->E(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 3
    :goto_0
    invoke-static {v0}, Ln56;->H0(Landroid/content/Context;)I

    move-result v0

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    const/4 v3, 0x2

    .line 4
    :cond_1
    iput v2, p0, Ler6;->n:I

    return-void
.end method
