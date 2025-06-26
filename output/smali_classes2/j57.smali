.class public Lj57;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg67;
.implements Ld87$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj57$h;,
        Lj57$i;
    }
.end annotation


# instance fields
.field public final e:Ld87$b;

.field public final f:Ld87;

.field public final g:Lj57$i;

.field public final h:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ld87$b;Lj57$i;Ld87;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lj57;->h:Ljava/util/Queue;

    const-string v0, "listener"

    .line 3
    invoke-static {p1, v0}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lj57;->e:Ld87$b;

    const-string p1, "transportExecutor"

    .line 4
    invoke-static {p2, p1}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lj57;->g:Lj57$i;

    .line 5
    iput-object p0, p3, Ld87;->e:Ld87$b;

    .line 6
    iput-object p3, p0, Lj57;->f:Ld87;

    return-void
.end method


# virtual methods
.method public a(Lc97$a;)V
    .locals 2

    .line 1
    :goto_0
    invoke-interface {p1}, Lc97$a;->next()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lj57;->h:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lj57;->e:Ld87$b;

    new-instance v1, Lj57$h;

    new-instance v2, Lj57$a;

    invoke-direct {v2, p0, p1}, Lj57$a;-><init>(Lj57;I)V

    const/4 p1, 0x0

    invoke-direct {v1, p0, v2, p1}, Lj57$h;-><init>(Lj57;Ljava/lang/Runnable;Lj57$a;)V

    invoke-interface {v0, v1}, Ld87$b;->a(Lc97$a;)V

    return-void
.end method

.method public c(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lj57;->f:Ld87;

    .line 2
    iput p1, v0, Ld87;->f:I

    return-void
.end method

.method public close()V
    .locals 4

    .line 1
    iget-object v0, p0, Lj57;->f:Ld87;

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Ld87;->w:Z

    .line 3
    iget-object v0, p0, Lj57;->e:Ld87$b;

    new-instance v1, Lj57$h;

    new-instance v2, Lj57$d;

    invoke-direct {v2, p0}, Lj57$d;-><init>(Lj57;)V

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lj57$h;-><init>(Lj57;Ljava/lang/Runnable;Lj57$a;)V

    invoke-interface {v0, v1}, Ld87$b;->a(Lc97$a;)V

    return-void
.end method

.method public d(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lj57;->g:Lj57$i;

    new-instance v1, Lj57$f;

    invoke-direct {v1, p0, p1}, Lj57$f;-><init>(Lj57;Z)V

    invoke-interface {v0, v1}, Lj57$i;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public e(Lv67;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lj57;->f:Ld87;

    invoke-virtual {v0, p1}, Ld87;->e(Lv67;)V

    return-void
.end method

.method public f()V
    .locals 4

    .line 1
    iget-object v0, p0, Lj57;->e:Ld87$b;

    new-instance v1, Lj57$h;

    new-instance v2, Lj57$c;

    invoke-direct {v2, p0}, Lj57$c;-><init>(Lj57;)V

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lj57$h;-><init>(Lj57;Ljava/lang/Runnable;Lj57$a;)V

    invoke-interface {v0, v1}, Ld87$b;->a(Lc97$a;)V

    return-void
.end method

.method public g(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lj57;->g:Lj57$i;

    new-instance v1, Lj57$e;

    invoke-direct {v1, p0, p1}, Lj57$e;-><init>(Lj57;I)V

    invoke-interface {v0, v1}, Lj57$i;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public h(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lj57;->g:Lj57$i;

    new-instance v1, Lj57$g;

    invoke-direct {v1, p0, p1}, Lj57$g;-><init>(Lj57;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lj57$i;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public i(Ln37;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lj57;->f:Ld87;

    invoke-virtual {v0, p1}, Ld87;->i(Ln37;)V

    return-void
.end method

.method public k(Ln87;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lj57;->e:Ld87$b;

    new-instance v1, Lj57$h;

    new-instance v2, Lj57$b;

    invoke-direct {v2, p0, p1}, Lj57$b;-><init>(Lj57;Ln87;)V

    const/4 p1, 0x0

    invoke-direct {v1, p0, v2, p1}, Lj57$h;-><init>(Lj57;Ljava/lang/Runnable;Lj57$a;)V

    invoke-interface {v0, v1}, Ld87$b;->a(Lc97$a;)V

    return-void
.end method
