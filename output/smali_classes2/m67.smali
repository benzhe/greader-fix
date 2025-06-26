.class public final Lm67;
.super Lg87;
.source "SourceFile"


# instance fields
.field public b:Z

.field public final c:Lx47;

.field public final d:Lz57$a;


# direct methods
.method public constructor <init>(Lx47;)V
    .locals 3

    .line 1
    sget-object v0, Lz57$a;->e:Lz57$a;

    .line 2
    invoke-direct {p0}, Lg87;-><init>()V

    .line 3
    invoke-virtual {p1}, Lx47;->f()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "error must not be OK"

    invoke-static {v1, v2}, Lc50;->t(ZLjava/lang/Object;)V

    .line 4
    iput-object p1, p0, Lm67;->c:Lx47;

    .line 5
    iput-object v0, p0, Lm67;->d:Lz57$a;

    return-void
.end method

.method public constructor <init>(Lx47;Lz57$a;)V
    .locals 2

    .line 6
    invoke-direct {p0}, Lg87;-><init>()V

    .line 7
    invoke-virtual {p1}, Lx47;->f()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "error must not be OK"

    invoke-static {v0, v1}, Lc50;->t(ZLjava/lang/Object;)V

    .line 8
    iput-object p1, p0, Lm67;->c:Lx47;

    .line 9
    iput-object p2, p0, Lm67;->d:Lz57$a;

    return-void
.end method


# virtual methods
.method public h(Lc77;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lm67;->c:Lx47;

    const-string v1, "error"

    invoke-virtual {p1, v1, v0}, Lc77;->b(Ljava/lang/String;Ljava/lang/Object;)Lc77;

    iget-object v0, p0, Lm67;->d:Lz57$a;

    const-string v1, "progress"

    invoke-virtual {p1, v1, v0}, Lc77;->b(Ljava/lang/String;Ljava/lang/Object;)Lc77;

    return-void
.end method

.method public k(Lz57;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lm67;->b:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "already started"

    invoke-static {v0, v2}, Lc50;->G(ZLjava/lang/Object;)V

    .line 2
    iput-boolean v1, p0, Lm67;->b:Z

    .line 3
    iget-object v0, p0, Lm67;->c:Lx47;

    iget-object v1, p0, Lm67;->d:Lz57$a;

    new-instance v2, Li47;

    invoke-direct {v2}, Li47;-><init>()V

    invoke-interface {p1, v0, v1, v2}, Lz57;->e(Lx47;Lz57$a;Li47;)V

    return-void
.end method
