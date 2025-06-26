.class public final Lc16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le16;


# instance fields
.field public a:Ljj7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljj7<",
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljj7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljj7<",
            "Lc06;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljj7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljj7<",
            "Ltz5;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljj7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljj7<",
            "Landroid/util/DisplayMetrics;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljj7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljj7<",
            "Lf06;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljj7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljj7<",
            "Lf06;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljj7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljj7<",
            "Lf06;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljj7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljj7<",
            "Lf06;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljj7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljj7<",
            "Lf06;",
            ">;"
        }
    .end annotation
.end field

.field public j:Ljj7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljj7<",
            "Lf06;",
            ">;"
        }
    .end annotation
.end field

.field public k:Ljj7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljj7<",
            "Lf06;",
            ">;"
        }
    .end annotation
.end field

.field public l:Ljj7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljj7<",
            "Lf06;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lf16;Lj16;Lc16$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p3, Lg16;

    invoke-direct {p3, p1}, Lg16;-><init>(Lf16;)V

    .line 3
    sget-object p1, Lrz5;->c:Ljava/lang/Object;

    .line 4
    instance-of p1, p3, Lrz5;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Lrz5;

    invoke-direct {p1, p3}, Lrz5;-><init>(Ljj7;)V

    move-object p3, p1

    .line 6
    :goto_0
    iput-object p3, p0, Lc16;->a:Ljj7;

    .line 7
    sget-object p1, Ld06$a;->a:Ld06;

    .line 8
    instance-of p3, p1, Lrz5;

    if-eqz p3, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    new-instance p3, Lrz5;

    invoke-direct {p3, p1}, Lrz5;-><init>(Ljj7;)V

    move-object p1, p3

    .line 10
    :goto_1
    iput-object p1, p0, Lc16;->b:Ljj7;

    .line 11
    iget-object p1, p0, Lc16;->a:Ljj7;

    .line 12
    new-instance p3, Luz5;

    invoke-direct {p3, p1}, Luz5;-><init>(Ljj7;)V

    .line 13
    instance-of p1, p3, Lrz5;

    if-eqz p1, :cond_2

    goto :goto_2

    .line 14
    :cond_2
    new-instance p1, Lrz5;

    invoke-direct {p1, p3}, Lrz5;-><init>(Ljj7;)V

    move-object p3, p1

    .line 15
    :goto_2
    iput-object p3, p0, Lc16;->c:Ljj7;

    .line 16
    iget-object p1, p0, Lc16;->a:Ljj7;

    .line 17
    new-instance p3, Lo16;

    invoke-direct {p3, p2, p1}, Lo16;-><init>(Lj16;Ljj7;)V

    .line 18
    iput-object p3, p0, Lc16;->d:Ljj7;

    .line 19
    new-instance p1, Ls16;

    invoke-direct {p1, p2, p3}, Ls16;-><init>(Lj16;Ljj7;)V

    .line 20
    iput-object p1, p0, Lc16;->e:Ljj7;

    .line 21
    new-instance p1, Lp16;

    invoke-direct {p1, p2, p3}, Lp16;-><init>(Lj16;Ljj7;)V

    .line 22
    iput-object p1, p0, Lc16;->f:Ljj7;

    .line 23
    new-instance p1, Lq16;

    invoke-direct {p1, p2, p3}, Lq16;-><init>(Lj16;Ljj7;)V

    .line 24
    iput-object p1, p0, Lc16;->g:Ljj7;

    .line 25
    new-instance p1, Lr16;

    invoke-direct {p1, p2, p3}, Lr16;-><init>(Lj16;Ljj7;)V

    .line 26
    iput-object p1, p0, Lc16;->h:Ljj7;

    .line 27
    new-instance p1, Lm16;

    invoke-direct {p1, p2, p3}, Lm16;-><init>(Lj16;Ljj7;)V

    .line 28
    iput-object p1, p0, Lc16;->i:Ljj7;

    .line 29
    new-instance p1, Ln16;

    invoke-direct {p1, p2, p3}, Ln16;-><init>(Lj16;Ljj7;)V

    .line 30
    iput-object p1, p0, Lc16;->j:Ljj7;

    .line 31
    new-instance p1, Ll16;

    invoke-direct {p1, p2, p3}, Ll16;-><init>(Lj16;Ljj7;)V

    .line 32
    iput-object p1, p0, Lc16;->k:Ljj7;

    .line 33
    new-instance p1, Lk16;

    invoke-direct {p1, p2, p3}, Lk16;-><init>(Lj16;Ljj7;)V

    .line 34
    iput-object p1, p0, Lc16;->l:Ljj7;

    return-void
.end method


# virtual methods
.method public a()Lc06;
    .locals 1

    .line 1
    iget-object v0, p0, Lc16;->b:Ljj7;

    invoke-interface {v0}, Ljj7;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc06;

    return-object v0
.end method

.method public b()Landroid/app/Application;
    .locals 1

    .line 1
    iget-object v0, p0, Lc16;->a:Ljj7;

    invoke-interface {v0}, Ljj7;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    return-object v0
.end method

.method public c()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljj7<",
            "Lf06;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lsz5;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lsz5;-><init>(I)V

    .line 2
    iget-object v1, p0, Lc16;->e:Ljj7;

    .line 3
    iget-object v2, v0, Lsz5;->a:Ljava/util/Map;

    const-string v3, "IMAGE_ONLY_PORTRAIT"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lc16;->f:Ljj7;

    .line 5
    iget-object v2, v0, Lsz5;->a:Ljava/util/Map;

    const-string v3, "IMAGE_ONLY_LANDSCAPE"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v1, p0, Lc16;->g:Ljj7;

    .line 7
    iget-object v2, v0, Lsz5;->a:Ljava/util/Map;

    const-string v3, "MODAL_LANDSCAPE"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v1, p0, Lc16;->h:Ljj7;

    .line 9
    iget-object v2, v0, Lsz5;->a:Ljava/util/Map;

    const-string v3, "MODAL_PORTRAIT"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v1, p0, Lc16;->i:Ljj7;

    .line 11
    iget-object v2, v0, Lsz5;->a:Ljava/util/Map;

    const-string v3, "CARD_LANDSCAPE"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v1, p0, Lc16;->j:Ljj7;

    .line 13
    iget-object v2, v0, Lsz5;->a:Ljava/util/Map;

    const-string v3, "CARD_PORTRAIT"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object v1, p0, Lc16;->k:Ljj7;

    .line 15
    iget-object v2, v0, Lsz5;->a:Ljava/util/Map;

    const-string v3, "BANNER_PORTRAIT"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v1, p0, Lc16;->l:Ljj7;

    .line 17
    iget-object v2, v0, Lsz5;->a:Ljava/util/Map;

    const-string v3, "BANNER_LANDSCAPE"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object v1, v0, Lsz5;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 19
    iget-object v0, v0, Lsz5;->a:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    .line 20
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public d()Ltz5;
    .locals 1

    .line 1
    iget-object v0, p0, Lc16;->c:Ljj7;

    invoke-interface {v0}, Ljj7;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltz5;

    return-object v0
.end method
