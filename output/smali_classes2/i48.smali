.class public Li48;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La48;


# instance fields
.field public final e:Ljava/lang/String;

.field public volatile f:La48;

.field public g:Ljava/lang/Boolean;

.field public h:Ljava/lang/reflect/Method;

.field public i:Lc48;

.field public j:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Le48;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Queue;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Queue<",
            "Le48;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Li48;->e:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Li48;->j:Ljava/util/Queue;

    .line 4
    iput-boolean p3, p0, Li48;->k:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Li48;->f()La48;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, La48;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Li48;->f()La48;

    move-result-object v0

    invoke-interface {v0, p1, p2}, La48;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Li48;->e:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Li48;->f()La48;

    move-result-object v0

    invoke-interface {v0, p1}, La48;->d(Ljava/lang/String;)V

    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Li48;->f()La48;

    move-result-object v0

    invoke-interface {v0, p1, p2}, La48;->e(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    const-class v2, Li48;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    check-cast p1, Li48;

    .line 3
    iget-object v2, p0, Li48;->e:Ljava/lang/String;

    iget-object p1, p1, Li48;->e:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public f()La48;
    .locals 2

    .line 1
    iget-object v0, p0, Li48;->f:La48;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Li48;->f:La48;

    return-object v0

    .line 3
    :cond_0
    iget-boolean v0, p0, Li48;->k:Z

    if-eqz v0, :cond_1

    .line 4
    sget-object v0, Lg48;->e:Lg48;

    return-object v0

    .line 5
    :cond_1
    iget-object v0, p0, Li48;->i:Lc48;

    if-nez v0, :cond_2

    .line 6
    new-instance v0, Lc48;

    iget-object v1, p0, Li48;->j:Ljava/util/Queue;

    invoke-direct {v0, p0, v1}, Lc48;-><init>(Li48;Ljava/util/Queue;)V

    iput-object v0, p0, Li48;->i:Lc48;

    .line 7
    :cond_2
    iget-object v0, p0, Li48;->i:Lc48;

    return-object v0
.end method

.method public g()Z
    .locals 5

    .line 1
    iget-object v0, p0, Li48;->g:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 3
    :cond_0
    :try_start_0
    iget-object v0, p0, Li48;->f:La48;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "log"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ld48;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Li48;->h:Ljava/lang/reflect/Method;

    .line 4
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Li48;->g:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5
    :catch_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Li48;->g:Ljava/lang/Boolean;

    .line 6
    :goto_0
    iget-object v0, p0, Li48;->g:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Li48;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
