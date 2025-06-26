.class public final Ls83;
.super Ll53;
.source "SourceFile"


# instance fields
.field public final e:Lu83;

.field public f:Lo53;

.field public final synthetic g:Lt83;


# direct methods
.method public constructor <init>(Lt83;)V
    .locals 2

    .line 1
    iput-object p1, p0, Ls83;->g:Lt83;

    invoke-direct {p0}, Ll53;-><init>()V

    .line 2
    new-instance v0, Lu83;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lu83;-><init>(Lk53;Ls83;)V

    iput-object v0, p0, Ls83;->e:Lu83;

    .line 3
    invoke-virtual {p0}, Ls83;->a()Lo53;

    move-result-object p1

    iput-object p1, p0, Ls83;->f:Lo53;

    return-void
.end method


# virtual methods
.method public final a()Lo53;
    .locals 1

    .line 1
    iget-object v0, p0, Ls83;->e:Lu83;

    invoke-virtual {v0}, Lu83;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ls83;->e:Lu83;

    invoke-virtual {v0}, Lu83;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq53;

    invoke-virtual {v0}, Lk53;->iterator()Ljava/util/Iterator;

    move-result-object v0

    check-cast v0, Lo53;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b()B
    .locals 2

    .line 1
    iget-object v0, p0, Ls83;->f:Lo53;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Lo53;->b()B

    move-result v0

    .line 3
    iget-object v1, p0, Ls83;->f:Lo53;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {p0}, Ls83;->a()Lo53;

    move-result-object v1

    iput-object v1, p0, Ls83;->f:Lo53;

    :cond_0
    return v0

    .line 5
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final hasNext()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ls83;->f:Lo53;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
